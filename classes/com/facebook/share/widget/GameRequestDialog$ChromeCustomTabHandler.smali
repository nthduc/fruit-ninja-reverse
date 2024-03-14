.class Lcom/facebook/share/widget/GameRequestDialog$ChromeCustomTabHandler;
.super Lcom/facebook/internal/FacebookDialogBase$ModeHandler;
.source "GameRequestDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/GameRequestDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChromeCustomTabHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase<",
        "Lcom/facebook/share/model/GameRequestContent;",
        "Lcom/facebook/share/widget/GameRequestDialog$Result;",
        ">.ModeHandler;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/widget/GameRequestDialog;


# direct methods
.method private constructor <init>(Lcom/facebook/share/widget/GameRequestDialog;)V
    .registers 2

    .line 218
    iput-object p1, p0, Lcom/facebook/share/widget/GameRequestDialog$ChromeCustomTabHandler;->this$0:Lcom/facebook/share/widget/GameRequestDialog;

    invoke-direct {p0, p1}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;-><init>(Lcom/facebook/internal/FacebookDialogBase;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/widget/GameRequestDialog;Lcom/facebook/share/widget/GameRequestDialog$1;)V
    .registers 3

    .line 218
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/GameRequestDialog$ChromeCustomTabHandler;-><init>(Lcom/facebook/share/widget/GameRequestDialog;)V

    return-void
.end method


# virtual methods
.method public canShow(Lcom/facebook/share/model/GameRequestContent;Z)Z
    .registers 3

    .line 221
    invoke-static {}, Lcom/facebook/internal/CustomTabUtils;->getChromePackage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 222
    iget-object p1, p0, Lcom/facebook/share/widget/GameRequestDialog$ChromeCustomTabHandler;->this$0:Lcom/facebook/share/widget/GameRequestDialog;

    .line 224
    # invokes: Lcom/facebook/share/widget/GameRequestDialog;->getActivityContext()Landroid/app/Activity;
    invoke-static {p1}, Lcom/facebook/share/widget/GameRequestDialog;->access$300(Lcom/facebook/share/widget/GameRequestDialog;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {}, Lcom/facebook/internal/CustomTabUtils;->getDefaultRedirectURI()Ljava/lang/String;

    move-result-object p2

    .line 223
    invoke-static {p1, p2}, Lcom/facebook/internal/Validate;->hasCustomTabRedirectActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1
.end method

.method public bridge synthetic canShow(Ljava/lang/Object;Z)Z
    .registers 3

    .line 218
    check-cast p1, Lcom/facebook/share/model/GameRequestContent;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/share/widget/GameRequestDialog$ChromeCustomTabHandler;->canShow(Lcom/facebook/share/model/GameRequestContent;Z)Z

    move-result p1

    return p1
.end method

.method public createAppCall(Lcom/facebook/share/model/GameRequestContent;)Lcom/facebook/internal/AppCall;
    .registers 5

    .line 229
    invoke-static {p1}, Lcom/facebook/share/internal/GameRequestValidation;->validate(Lcom/facebook/share/model/GameRequestContent;)V

    .line 230
    iget-object v0, p0, Lcom/facebook/share/widget/GameRequestDialog$ChromeCustomTabHandler;->this$0:Lcom/facebook/share/widget/GameRequestDialog;

    invoke-virtual {v0}, Lcom/facebook/share/widget/GameRequestDialog;->createBaseAppCall()Lcom/facebook/internal/AppCall;

    move-result-object v0

    .line 232
    invoke-static {p1}, Lcom/facebook/share/internal/WebDialogParameters;->create(Lcom/facebook/share/model/GameRequestContent;)Landroid/os/Bundle;

    move-result-object p1

    .line 234
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    const-string v2, "app_id"

    if-eqz v1, :cond_1d

    .line 236
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 238
    :cond_1d
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :goto_24
    invoke-static {}, Lcom/facebook/internal/CustomTabUtils;->getDefaultRedirectURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "redirect_uri"

    .line 242
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "apprequests"

    .line 245
    invoke-static {v0, v1, p1}, Lcom/facebook/internal/DialogPresenter;->setupAppCallForCustomTabDialog(Lcom/facebook/internal/AppCall;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public bridge synthetic createAppCall(Ljava/lang/Object;)Lcom/facebook/internal/AppCall;
    .registers 2

    .line 218
    check-cast p1, Lcom/facebook/share/model/GameRequestContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/GameRequestDialog$ChromeCustomTabHandler;->createAppCall(Lcom/facebook/share/model/GameRequestContent;)Lcom/facebook/internal/AppCall;

    move-result-object p1

    return-object p1
.end method
