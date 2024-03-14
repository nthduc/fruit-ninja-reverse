.class public Lcom/facebook/login/CustomTabLoginMethodHandler;
.super Lcom/facebook/login/WebLoginMethodHandler;
.source "CustomTabLoginMethodHandler.java"


# static fields
.field private static final API_EC_DIALOG_CANCEL:I = 0x1069

.field private static final CHALLENGE_LENGTH:I = 0x14

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/login/CustomTabLoginMethodHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final CUSTOM_TAB_REQUEST_CODE:I = 0x1

.field private static final OAUTH_DIALOG:Ljava/lang/String; = "oauth"

.field public static calledThroughLoggedOutAppSwitch:Z = false


# instance fields
.field private currentPackage:Ljava/lang/String;

.field private expectedChallenge:Ljava/lang/String;

.field private validRedirectURI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 239
    new-instance v0, Lcom/facebook/login/CustomTabLoginMethodHandler$1;

    invoke-direct {v0}, Lcom/facebook/login/CustomTabLoginMethodHandler$1;-><init>()V

    sput-object v0, Lcom/facebook/login/CustomTabLoginMethodHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 229
    invoke-direct {p0, p1}, Lcom/facebook/login/WebLoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    const-string v0, ""

    .line 53
    iput-object v0, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->validRedirectURI:Ljava/lang/String;

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->expectedChallenge:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/facebook/login/LoginClient;)V
    .registers 3

    .line 56
    invoke-direct {p0, p1}, Lcom/facebook/login/WebLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    const-string p1, ""

    .line 53
    iput-object p1, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->validRedirectURI:Ljava/lang/String;

    const/16 p1, 0x14

    .line 57
    invoke-static {p1}, Lcom/facebook/internal/Utility;->generateRandomString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->expectedChallenge:Ljava/lang/String;

    const/4 p1, 0x0

    .line 58
    sput-boolean p1, Lcom/facebook/login/CustomTabLoginMethodHandler;->calledThroughLoggedOutAppSwitch:Z

    .line 62
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0}, Lcom/facebook/login/CustomTabLoginMethodHandler;->getDeveloperDefinedRedirectURI()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->hasCustomTabRedirectActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 64
    invoke-direct {p0}, Lcom/facebook/login/CustomTabLoginMethodHandler;->getDeveloperDefinedRedirectURI()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->validRedirectURI:Ljava/lang/String;

    goto :goto_3b

    .line 68
    :cond_27
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/facebook/internal/CustomTabUtils;->getDefaultRedirectURI()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->hasCustomTabRedirectActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 71
    invoke-static {}, Lcom/facebook/internal/CustomTabUtils;->getDefaultRedirectURI()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->validRedirectURI:Ljava/lang/String;

    :cond_3b
    :goto_3b
    return-void
.end method

.method private getChromePackage()Ljava/lang/String;
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->currentPackage:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 134
    :cond_5
    invoke-static {}, Lcom/facebook/internal/CustomTabUtils;->getChromePackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->currentPackage:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->currentPackage:Ljava/lang/String;

    return-object v0
.end method

.method private getDeveloperDefinedRedirectURI()Ljava/lang/String;
    .registers 2

    .line 87
    invoke-super {p0}, Lcom/facebook/login/WebLoginMethodHandler;->getRedirectUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isCustomTabsAllowed()Z
    .registers 2

    .line 127
    invoke-direct {p0}, Lcom/facebook/login/CustomTabLoginMethodHandler;->getChromePackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/facebook/login/CustomTabLoginMethodHandler;->getRedirectUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private onCustomTabComplete(Ljava/lang/String;Lcom/facebook/login/LoginClient$Request;)V
    .registers 9

    if-eqz p1, :cond_bb

    const-string v0, "fbconnect://cct."

    .line 154
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 155
    invoke-super {p0}, Lcom/facebook/login/WebLoginMethodHandler;->getRedirectUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 156
    :cond_14
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 157
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->parseUrlQueryString(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 158
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/internal/Utility;->parseUrlQueryString(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 160
    invoke-direct {p0, v0}, Lcom/facebook/login/CustomTabLoginMethodHandler;->validateChallengeParam(Landroid/os/Bundle;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_3d

    .line 161
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "Invalid state parameter"

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-super {p0, p2, v1, p1}, Lcom/facebook/login/WebLoginMethodHandler;->onComplete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    return-void

    :cond_3d
    const-string p1, "error"

    .line 165
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4b

    const-string p1, "error_type"

    .line 167
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_4b
    const-string v2, "error_msg"

    .line 170
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_59

    const-string v2, "error_message"

    .line 172
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_59
    if-nez v2, :cond_61

    const-string v2, "error_description"

    .line 175
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_61
    const-string v3, "error_code"

    .line 177
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 179
    invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, -0x1

    if-nez v4, :cond_73

    .line 181
    :try_start_6e
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_72
    .catch Ljava/lang/NumberFormatException; {:try_start_6e .. :try_end_72} :catch_73

    goto :goto_74

    :catch_73
    :cond_73
    const/4 v3, -0x1

    .line 187
    :goto_74
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 188
    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_86

    if-ne v3, v5, :cond_86

    .line 190
    invoke-super {p0, p2, v0, v1}, Lcom/facebook/login/WebLoginMethodHandler;->onComplete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    goto :goto_bb

    :cond_86
    if-eqz p1, :cond_a1

    const-string v0, "access_denied"

    .line 192
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_98

    const-string v0, "OAuthAccessDeniedException"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 193
    :cond_98
    new-instance p1, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {p1}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V

    invoke-super {p0, p2, v1, p1}, Lcom/facebook/login/WebLoginMethodHandler;->onComplete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    goto :goto_bb

    :cond_a1
    const/16 v0, 0x1069

    if-ne v3, v0, :cond_ae

    .line 195
    new-instance p1, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {p1}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V

    invoke-super {p0, p2, v1, p1}, Lcom/facebook/login/WebLoginMethodHandler;->onComplete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    goto :goto_bb

    .line 197
    :cond_ae
    new-instance v0, Lcom/facebook/FacebookRequestError;

    invoke-direct {v0, v3, p1, v2}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance p1, Lcom/facebook/FacebookServiceException;

    invoke-direct {p1, v0, v2}, Lcom/facebook/FacebookServiceException;-><init>(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)V

    invoke-super {p0, p2, v1, p1}, Lcom/facebook/login/WebLoginMethodHandler;->onComplete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    :cond_bb
    :goto_bb
    return-void
.end method

.method private validateChallengeParam(Landroid/os/Bundle;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "state"

    .line 211
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a

    return v0

    .line 215
    :cond_a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "7_challenge"

    .line 216
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 217
    iget-object v1, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->expectedChallenge:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1b} :catch_1c

    return p1

    :catch_1c
    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method getNameForLogging()Ljava/lang/String;
    .registers 2

    const-string v0, "custom_tab"

    return-object v0
.end method

.method protected getRedirectUrl()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->validRedirectURI:Ljava/lang/String;

    return-object v0
.end method

.method protected getSSODevice()Ljava/lang/String;
    .registers 2

    const-string v0, "chrome_custom_tab"

    return-object v0
.end method

.method getTokenSource()Lcom/facebook/AccessTokenSource;
    .registers 2

    .line 83
    sget-object v0, Lcom/facebook/AccessTokenSource;->CHROME_CUSTOM_TAB:Lcom/facebook/AccessTokenSource;

    return-object v0
.end method

.method onActivityResult(IILandroid/content/Intent;)Z
    .registers 6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    .line 141
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/login/WebLoginMethodHandler;->onActivityResult(IILandroid/content/Intent;)Z

    move-result p1

    return p1

    .line 143
    :cond_8
    iget-object p1, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient;->getPendingRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object p1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1b

    .line 145
    sget-object p2, Lcom/facebook/CustomTabMainActivity;->EXTRA_URL:Ljava/lang/String;

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/facebook/login/CustomTabLoginMethodHandler;->onCustomTabComplete(Ljava/lang/String;Lcom/facebook/login/LoginClient$Request;)V

    return v0

    :cond_1b
    const/4 p2, 0x0

    .line 148
    new-instance p3, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {p3}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V

    invoke-super {p0, p1, p2, p3}, Lcom/facebook/login/WebLoginMethodHandler;->onComplete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    const/4 p1, 0x0

    return p1
.end method

.method protected putChallengeParam(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->expectedChallenge:Ljava/lang/String;

    const-string v1, "7_challenge"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method tryAuthorize(Lcom/facebook/login/LoginClient$Request;)Z
    .registers 6

    .line 102
    invoke-direct {p0}, Lcom/facebook/login/CustomTabLoginMethodHandler;->isCustomTabsAllowed()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 106
    :cond_8
    invoke-virtual {p0, p1}, Lcom/facebook/login/CustomTabLoginMethodHandler;->getParameters(Lcom/facebook/login/LoginClient$Request;)Landroid/os/Bundle;

    move-result-object v0

    .line 107
    invoke-virtual {p0, v0, p1}, Lcom/facebook/login/CustomTabLoginMethodHandler;->addExtraParameters(Landroid/os/Bundle;Lcom/facebook/login/LoginClient$Request;)Landroid/os/Bundle;

    move-result-object p1

    .line 108
    sget-boolean v0, Lcom/facebook/login/CustomTabLoginMethodHandler;->calledThroughLoggedOutAppSwitch:Z

    if-eqz v0, :cond_1b

    const-string v0, "cct_over_app_switch"

    const-string v1, "1"

    .line 109
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_1b
    sget-boolean v0, Lcom/facebook/FacebookSdk;->hasCustomTabsPrefetching:Z

    const-string v1, "oauth"

    if-eqz v0, :cond_28

    .line 112
    invoke-static {v1, p1}, Lcom/facebook/internal/CustomTab;->getURIForAction(Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/login/CustomTabPrefetchHelper;->mayLaunchUrl(Landroid/net/Uri;)V

    .line 115
    :cond_28
    iget-object v0, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 117
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/facebook/CustomTabMainActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    sget-object v0, Lcom/facebook/CustomTabMainActivity;->EXTRA_ACTION:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    sget-object v0, Lcom/facebook/CustomTabMainActivity;->EXTRA_PARAMS:Ljava/lang/String;

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 120
    sget-object p1, Lcom/facebook/CustomTabMainActivity;->EXTRA_CHROME_PACKAGE:Ljava/lang/String;

    invoke-direct {p0}, Lcom/facebook/login/CustomTabLoginMethodHandler;->getChromePackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    iget-object p1, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v2, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 235
    invoke-super {p0, p1, p2}, Lcom/facebook/login/WebLoginMethodHandler;->writeToParcel(Landroid/os/Parcel;I)V

    .line 236
    iget-object p2, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->expectedChallenge:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
