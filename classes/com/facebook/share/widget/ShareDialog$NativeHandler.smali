.class Lcom/facebook/share/widget/ShareDialog$NativeHandler;
.super Lcom/facebook/internal/FacebookDialogBase$ModeHandler;
.source "ShareDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/ShareDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase<",
        "Lcom/facebook/share/model/ShareContent;",
        "Lcom/facebook/share/Sharer$Result;",
        ">.ModeHandler;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/widget/ShareDialog;


# direct methods
.method private constructor <init>(Lcom/facebook/share/widget/ShareDialog;)V
    .registers 2

    .line 296
    iput-object p1, p0, Lcom/facebook/share/widget/ShareDialog$NativeHandler;->this$0:Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {p0, p1}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;-><init>(Lcom/facebook/internal/FacebookDialogBase;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/widget/ShareDialog;Lcom/facebook/share/widget/ShareDialog$1;)V
    .registers 3

    .line 296
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/ShareDialog$NativeHandler;-><init>(Lcom/facebook/share/widget/ShareDialog;)V

    return-void
.end method


# virtual methods
.method public canShow(Lcom/facebook/share/model/ShareContent;Z)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_44

    .line 304
    instance-of v1, p1, Lcom/facebook/share/model/ShareCameraEffectContent;

    if-nez v1, :cond_44

    instance-of v1, p1, Lcom/facebook/share/model/ShareStoryContent;

    if-eqz v1, :cond_c

    goto :goto_44

    :cond_c
    const/4 v1, 0x1

    if-nez p2, :cond_36

    .line 317
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareContent;->getShareHashtag()Lcom/facebook/share/model/ShareHashtag;

    move-result-object p2

    if-eqz p2, :cond_1c

    .line 318
    sget-object p2, Lcom/facebook/share/internal/ShareDialogFeature;->HASHTAG:Lcom/facebook/share/internal/ShareDialogFeature;

    .line 319
    invoke-static {p2}, Lcom/facebook/internal/DialogPresenter;->canPresentNativeDialogWithFeature(Lcom/facebook/internal/DialogFeature;)Z

    move-result p2

    goto :goto_1d

    :cond_1c
    const/4 p2, 0x1

    .line 321
    :goto_1d
    instance-of v2, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v2, :cond_37

    move-object v2, p1

    check-cast v2, Lcom/facebook/share/model/ShareLinkContent;

    .line 322
    invoke-virtual {v2}, Lcom/facebook/share/model/ShareLinkContent;->getQuote()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 323
    sget-object v2, Lcom/facebook/share/internal/ShareDialogFeature;->LINK_SHARE_QUOTES:Lcom/facebook/share/internal/ShareDialogFeature;

    .line 324
    invoke-static {v2}, Lcom/facebook/internal/DialogPresenter;->canPresentNativeDialogWithFeature(Lcom/facebook/internal/DialogFeature;)Z

    move-result v2

    and-int/2addr p2, v2

    goto :goto_37

    :cond_36
    const/4 p2, 0x1

    :cond_37
    :goto_37
    if-eqz p2, :cond_44

    .line 328
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    # invokes: Lcom/facebook/share/widget/ShareDialog;->canShowNative(Ljava/lang/Class;)Z
    invoke-static {p1}, Lcom/facebook/share/widget/ShareDialog;->access$500(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_44

    const/4 v0, 0x1

    :cond_44
    :goto_44
    return v0
.end method

.method public bridge synthetic canShow(Ljava/lang/Object;Z)Z
    .registers 3

    .line 296
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/share/widget/ShareDialog$NativeHandler;->canShow(Lcom/facebook/share/model/ShareContent;Z)Z

    move-result p1

    return p1
.end method

.method public createAppCall(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/AppCall;
    .registers 5

    .line 333
    iget-object v0, p0, Lcom/facebook/share/widget/ShareDialog$NativeHandler;->this$0:Lcom/facebook/share/widget/ShareDialog;

    # invokes: Lcom/facebook/share/widget/ShareDialog;->getActivityContext()Landroid/app/Activity;
    invoke-static {v0}, Lcom/facebook/share/widget/ShareDialog;->access$600(Lcom/facebook/share/widget/ShareDialog;)Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/facebook/share/widget/ShareDialog$Mode;->NATIVE:Lcom/facebook/share/widget/ShareDialog$Mode;

    # invokes: Lcom/facebook/share/widget/ShareDialog;->logDialogShare(Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)V
    invoke-static {v0, v1, p1, v2}, Lcom/facebook/share/widget/ShareDialog;->access$700(Lcom/facebook/share/widget/ShareDialog;Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)V

    .line 335
    invoke-static {p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateForNativeShare(Lcom/facebook/share/model/ShareContent;)V

    .line 337
    iget-object v0, p0, Lcom/facebook/share/widget/ShareDialog$NativeHandler;->this$0:Lcom/facebook/share/widget/ShareDialog;

    invoke-virtual {v0}, Lcom/facebook/share/widget/ShareDialog;->createBaseAppCall()Lcom/facebook/internal/AppCall;

    move-result-object v0

    .line 338
    iget-object v1, p0, Lcom/facebook/share/widget/ShareDialog$NativeHandler;->this$0:Lcom/facebook/share/widget/ShareDialog;

    invoke-virtual {v1}, Lcom/facebook/share/widget/ShareDialog;->getShouldFailOnDataError()Z

    move-result v1

    .line 340
    new-instance v2, Lcom/facebook/share/widget/ShareDialog$NativeHandler$1;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/facebook/share/widget/ShareDialog$NativeHandler$1;-><init>(Lcom/facebook/share/widget/ShareDialog$NativeHandler;Lcom/facebook/internal/AppCall;Lcom/facebook/share/model/ShareContent;Z)V

    .line 355
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    # invokes: Lcom/facebook/share/widget/ShareDialog;->getFeature(Ljava/lang/Class;)Lcom/facebook/internal/DialogFeature;
    invoke-static {p1}, Lcom/facebook/share/widget/ShareDialog;->access$800(Ljava/lang/Class;)Lcom/facebook/internal/DialogFeature;

    move-result-object p1

    .line 340
    invoke-static {v0, v2, p1}, Lcom/facebook/internal/DialogPresenter;->setupAppCallForNativeDialog(Lcom/facebook/internal/AppCall;Lcom/facebook/internal/DialogPresenter$ParameterProvider;Lcom/facebook/internal/DialogFeature;)V

    return-object v0
.end method

.method public bridge synthetic createAppCall(Ljava/lang/Object;)Lcom/facebook/internal/AppCall;
    .registers 2

    .line 296
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/ShareDialog$NativeHandler;->createAppCall(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/AppCall;

    move-result-object p1

    return-object p1
.end method

.method public getMode()Ljava/lang/Object;
    .registers 2

    .line 299
    sget-object v0, Lcom/facebook/share/widget/ShareDialog$Mode;->NATIVE:Lcom/facebook/share/widget/ShareDialog$Mode;

    return-object v0
.end method
