.class abstract Lcom/facebook/login/NativeAppLoginMethodHandler;
.super Lcom/facebook/login/LoginMethodHandler;
.source "NativeAppLoginMethodHandler.java"


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/login/LoginClient;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    return-void
.end method

.method private getError(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 3

    const-string v0, "error"

    .line 130
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "error_type"

    .line 132
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method private getErrorMessage(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 3

    const-string v0, "error_message"

    .line 138
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "error_description"

    .line 140
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method private handleResultCancel(Lcom/facebook/login/LoginClient$Request;Landroid/content/Intent;)Lcom/facebook/login/LoginClient$Result;
    .registers 6

    .line 112
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 113
    invoke-direct {p0, p2}, Lcom/facebook/login/NativeAppLoginMethodHandler;->getError(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error_code"

    .line 115
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    const-string v2, "CONNECTION_FAILURE"

    .line 120
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 121
    invoke-direct {p0, p2}, Lcom/facebook/login/NativeAppLoginMethodHandler;->getErrorMessage(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    .line 123
    invoke-static {p1, v0, p2, v1}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object p1

    return-object p1

    .line 126
    :cond_2b
    invoke-static {p1, v0}, Lcom/facebook/login/LoginClient$Result;->createCancelResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object p1

    return-object p1
.end method

.method private handleResultOk(Lcom/facebook/login/LoginClient$Request;Landroid/content/Intent;)Lcom/facebook/login/LoginClient$Result;
    .registers 9

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 77
    invoke-direct {p0, p2}, Lcom/facebook/login/NativeAppLoginMethodHandler;->getError(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error_code"

    .line 79
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1a

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    :cond_1a
    move-object v1, v3

    .line 80
    :goto_1b
    invoke-direct {p0, p2}, Lcom/facebook/login/NativeAppLoginMethodHandler;->getErrorMessage(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "e2e"

    .line 82
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 83
    invoke-static {v4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2e

    .line 84
    invoke-virtual {p0, v4}, Lcom/facebook/login/NativeAppLoginMethodHandler;->logWebLoginCompleted(Ljava/lang/String;)V

    :cond_2e
    if-nez v0, :cond_51

    if-nez v1, :cond_51

    if-nez v2, :cond_51

    .line 91
    :try_start_34
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getPermissions()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;

    .line 94
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-static {v0, p2, v1, v2}, Lcom/facebook/login/NativeAppLoginMethodHandler;->createAccessTokenFromWebBundle(Ljava/util/Collection;Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;Ljava/lang/String;)Lcom/facebook/AccessToken;

    move-result-object p2

    .line 95
    invoke-static {p1, p2}, Lcom/facebook/login/LoginClient$Result;->createTokenResult(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/LoginClient$Result;

    move-result-object p1
    :try_end_46
    .catch Lcom/facebook/FacebookException; {:try_start_34 .. :try_end_46} :catch_47

    return-object p1

    :catch_47
    move-exception p2

    .line 97
    invoke-virtual {p2}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v3, p2}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object p1

    return-object p1

    :cond_51
    const-string p2, "logged_out"

    .line 99
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5d

    const/4 p1, 0x1

    .line 100
    sput-boolean p1, Lcom/facebook/login/CustomTabLoginMethodHandler;->calledThroughLoggedOutAppSwitch:Z

    return-object v3

    .line 102
    :cond_5d
    sget-object p2, Lcom/facebook/internal/ServerProtocol;->errorsProxyAuthDisabled:Ljava/util/Collection;

    invoke-interface {p2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_66

    return-object v3

    .line 104
    :cond_66
    sget-object p2, Lcom/facebook/internal/ServerProtocol;->errorsUserCanceled:Ljava/util/Collection;

    invoke-interface {p2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_73

    .line 105
    invoke-static {p1, v3}, Lcom/facebook/login/LoginClient$Result;->createCancelResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object p1

    return-object p1

    .line 107
    :cond_73
    invoke-static {p1, v0, v2, v1}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method onActivityResult(IILandroid/content/Intent;)Z
    .registers 5

    .line 52
    iget-object p1, p0, Lcom/facebook/login/NativeAppLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient;->getPendingRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object p1

    if-nez p3, :cond_f

    const-string p2, "Operation canceled"

    .line 56
    invoke-static {p1, p2}, Lcom/facebook/login/LoginClient$Result;->createCancelResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object p1

    goto :goto_25

    :cond_f
    if-nez p2, :cond_16

    .line 58
    invoke-direct {p0, p1, p3}, Lcom/facebook/login/NativeAppLoginMethodHandler;->handleResultCancel(Lcom/facebook/login/LoginClient$Request;Landroid/content/Intent;)Lcom/facebook/login/LoginClient$Result;

    move-result-object p1

    goto :goto_25

    :cond_16
    const/4 v0, -0x1

    if-eq p2, v0, :cond_21

    const/4 p2, 0x0

    const-string p3, "Unexpected resultCode from authorization."

    .line 61
    invoke-static {p1, p3, p2}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object p1

    goto :goto_25

    .line 64
    :cond_21
    invoke-direct {p0, p1, p3}, Lcom/facebook/login/NativeAppLoginMethodHandler;->handleResultOk(Lcom/facebook/login/LoginClient$Request;Landroid/content/Intent;)Lcom/facebook/login/LoginClient$Result;

    move-result-object p1

    :goto_25
    if-eqz p1, :cond_2d

    .line 68
    iget-object p2, p0, Lcom/facebook/login/NativeAppLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {p2, p1}, Lcom/facebook/login/LoginClient;->completeAndValidate(Lcom/facebook/login/LoginClient$Result;)V

    goto :goto_32

    .line 70
    :cond_2d
    iget-object p1, p0, Lcom/facebook/login/NativeAppLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient;->tryNextHandler()V

    :goto_32
    const/4 p1, 0x1

    return p1
.end method

.method abstract tryAuthorize(Lcom/facebook/login/LoginClient$Request;)Z
.end method

.method protected tryIntent(Landroid/content/Intent;I)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 151
    :cond_4
    :try_start_4
    iget-object v1, p0, Lcom/facebook/login/NativeAppLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v1}, Lcom/facebook/login/LoginClient;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_d} :catch_f

    const/4 p1, 0x1

    return p1

    :catch_f
    return v0
.end method
