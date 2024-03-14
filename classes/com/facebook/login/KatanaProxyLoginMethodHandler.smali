.class Lcom/facebook/login/KatanaProxyLoginMethodHandler;
.super Lcom/facebook/login/NativeAppLoginMethodHandler;
.source "KatanaProxyLoginMethodHandler.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/login/KatanaProxyLoginMethodHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 82
    new-instance v0, Lcom/facebook/login/KatanaProxyLoginMethodHandler$1;

    invoke-direct {v0}, Lcom/facebook/login/KatanaProxyLoginMethodHandler$1;-><init>()V

    sput-object v0, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Lcom/facebook/login/NativeAppLoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/login/LoginClient;)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Lcom/facebook/login/NativeAppLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method getNameForLogging()Ljava/lang/String;
    .registers 2

    const-string v0, "katana_proxy_auth"

    return-object v0
.end method

.method tryAuthorize(Lcom/facebook/login/LoginClient$Request;)Z
    .registers 13

    .line 44
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getLoginBehavior()Lcom/facebook/login/LoginBehavior;

    move-result-object v0

    .line 45
    sget-boolean v1, Lcom/facebook/FacebookSdk;->ignoreAppSwitchToLoggedOut:Z

    if-eqz v1, :cond_17

    .line 47
    invoke-static {}, Lcom/facebook/internal/CustomTabUtils;->getChromePackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 48
    invoke-virtual {v0}, Lcom/facebook/login/LoginBehavior;->allowsCustomTabAuth()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    const/4 v10, 0x1

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    const/4 v10, 0x0

    .line 49
    :goto_19
    invoke-static {}, Lcom/facebook/login/LoginClient;->getE2E()Ljava/lang/String;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    .line 52
    invoke-virtual {v1}, Lcom/facebook/login/LoginClient;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 53
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getPermissions()Ljava/util/Set;

    move-result-object v3

    .line 56
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->isRerequest()Z

    move-result v5

    .line 57
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->hasPublishPermission()Z

    move-result v6

    .line 58
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getDefaultAudience()Lcom/facebook/login/DefaultAudience;

    move-result-object v7

    .line 59
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getAuthId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->getClientState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 60
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getAuthType()Ljava/lang/String;

    move-result-object v9

    move-object v4, v0

    .line 51
    invoke-static/range {v1 .. v10}, Lcom/facebook/internal/NativeProtocol;->createProxyAuthIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;ZZLcom/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "e2e"

    .line 63
    invoke-virtual {p0, v1, v0}, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    invoke-static {}, Lcom/facebook/login/LoginClient;->getLoginRequestCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->tryIntent(Landroid/content/Intent;I)Z

    move-result p1

    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 79
    invoke-super {p0, p1, p2}, Lcom/facebook/login/NativeAppLoginMethodHandler;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
