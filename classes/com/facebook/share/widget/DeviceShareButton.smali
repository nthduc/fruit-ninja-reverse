.class public final Lcom/facebook/share/widget/DeviceShareButton;
.super Lcom/facebook/FacebookButtonBase;
.source "DeviceShareButton.java"


# instance fields
.field private dialog:Lcom/facebook/share/DeviceShareDialog;

.field private enabledExplicitlySet:Z

.field private requestCode:I

.field private shareContent:Lcom/facebook/share/model/ShareContent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/share/widget/DeviceShareButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/share/widget/DeviceShareButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    const/4 v4, 0x0

    const-string v5, "fb_device_share_button_create"

    const-string v6, "fb_device_share_button_did_tap"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 63
    invoke-direct/range {v0 .. v6}, Lcom/facebook/FacebookButtonBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 42
    iput p1, p0, Lcom/facebook/share/widget/DeviceShareButton;->requestCode:I

    .line 43
    iput-boolean p1, p0, Lcom/facebook/share/widget/DeviceShareButton;->enabledExplicitlySet:Z

    const/4 p2, 0x0

    .line 44
    iput-object p2, p0, Lcom/facebook/share/widget/DeviceShareButton;->dialog:Lcom/facebook/share/DeviceShareDialog;

    .line 70
    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_1c

    const/4 p2, 0x0

    goto :goto_20

    :cond_1c
    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getDefaultRequestCode()I

    move-result p2

    :goto_20
    iput p2, p0, Lcom/facebook/share/widget/DeviceShareButton;->requestCode:I

    .line 71
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/DeviceShareButton;->internalSetEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/widget/DeviceShareButton;Landroid/view/View;)V
    .registers 2

    .line 40
    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/DeviceShareButton;->callExternalOnClickListener(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/share/widget/DeviceShareButton;)Lcom/facebook/share/DeviceShareDialog;
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getDialog()Lcom/facebook/share/DeviceShareDialog;

    move-result-object p0

    return-object p0
.end method

.method private canShare()Z
    .registers 3

    .line 187
    new-instance v0, Lcom/facebook/share/DeviceShareDialog;

    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/share/DeviceShareDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getShareContent()Lcom/facebook/share/model/ShareContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/DeviceShareDialog;->canShow(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getDialog()Lcom/facebook/share/DeviceShareDialog;
    .registers 3

    .line 191
    iget-object v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->dialog:Lcom/facebook/share/DeviceShareDialog;

    if-eqz v0, :cond_5

    return-object v0

    .line 194
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 195
    new-instance v0, Lcom/facebook/share/DeviceShareDialog;

    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/share/DeviceShareDialog;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->dialog:Lcom/facebook/share/DeviceShareDialog;

    goto :goto_34

    .line 196
    :cond_17
    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getNativeFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 197
    new-instance v0, Lcom/facebook/share/DeviceShareDialog;

    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getNativeFragment()Landroid/app/Fragment;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/share/DeviceShareDialog;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->dialog:Lcom/facebook/share/DeviceShareDialog;

    goto :goto_34

    .line 199
    :cond_29
    new-instance v0, Lcom/facebook/share/DeviceShareDialog;

    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/share/DeviceShareDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->dialog:Lcom/facebook/share/DeviceShareDialog;

    .line 201
    :goto_34
    iget-object v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->dialog:Lcom/facebook/share/DeviceShareDialog;

    return-object v0
.end method

.method private internalSetEnabled(Z)V
    .registers 2

    .line 172
    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/DeviceShareButton;->setEnabled(Z)V

    const/4 p1, 0x0

    .line 173
    iput-boolean p1, p0, Lcom/facebook/share/widget/DeviceShareButton;->enabledExplicitlySet:Z

    return-void
.end method

.method private setRequestCode(I)V
    .registers 5

    .line 177
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->isFacebookRequestCode(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 183
    iput p1, p0, Lcom/facebook/share/widget/DeviceShareButton;->requestCode:I

    return-void

    .line 178
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cannot be within the range reserved by the Facebook SDK."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected configureButton(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->configureButton(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 148
    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getShareOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/DeviceShareButton;->setInternalOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected getDefaultRequestCode()I
    .registers 2

    .line 158
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Share:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    return v0
.end method

.method protected getDefaultStyleResource()I
    .registers 2

    .line 153
    sget v0, Lcom/facebook/share/R$style;->com_facebook_button_share:I

    return v0
.end method

.method public getRequestCode()I
    .registers 2

    .line 102
    iget v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->requestCode:I

    return v0
.end method

.method public getShareContent()Lcom/facebook/share/model/ShareContent;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->shareContent:Lcom/facebook/share/model/ShareContent;

    return-object v0
.end method

.method protected getShareOnClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .line 162
    new-instance v0, Lcom/facebook/share/widget/DeviceShareButton$1;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/DeviceShareButton$1;-><init>(Lcom/facebook/share/widget/DeviceShareButton;)V

    return-object v0
.end method

.method public registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/CallbackManager;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/DeviceShareDialog$Result;",
            ">;)V"
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getDialog()Lcom/facebook/share/DeviceShareDialog;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/share/DeviceShareDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    return-void
.end method

.method public registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/CallbackManager;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/DeviceShareDialog$Result;",
            ">;I)V"
        }
    .end annotation

    .line 137
    invoke-direct {p0, p3}, Lcom/facebook/share/widget/DeviceShareButton;->setRequestCode(I)V

    .line 138
    invoke-direct {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getDialog()Lcom/facebook/share/DeviceShareDialog;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/share/DeviceShareDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;I)V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    .line 97
    invoke-super {p0, p1}, Lcom/facebook/FacebookButtonBase;->setEnabled(Z)V

    const/4 p1, 0x1

    .line 98
    iput-boolean p1, p0, Lcom/facebook/share/widget/DeviceShareButton;->enabledExplicitlySet:Z

    return-void
.end method

.method public setShareContent(Lcom/facebook/share/model/ShareContent;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/facebook/share/widget/DeviceShareButton;->shareContent:Lcom/facebook/share/model/ShareContent;

    .line 90
    iget-boolean p1, p0, Lcom/facebook/share/widget/DeviceShareButton;->enabledExplicitlySet:Z

    if-nez p1, :cond_d

    .line 91
    invoke-direct {p0}, Lcom/facebook/share/widget/DeviceShareButton;->canShare()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/facebook/share/widget/DeviceShareButton;->internalSetEnabled(Z)V

    :cond_d
    return-void
.end method
