.class public Lcom/facebook/FacebookActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "FacebookActivity.java"


# static fields
.field private static FRAGMENT_TAG:Ljava/lang/String; = "SingleFragment"

.field public static PASS_THROUGH_CANCEL_ACTION:Ljava/lang/String; = "PassThrough"

.field private static final TAG:Ljava/lang/String; = "com.facebook.FacebookActivity"


# instance fields
.field private singleFragment:Landroidx/fragment/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private handlePassThroughError()V
    .registers 4

    .line 130
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 133
    invoke-static {v0}, Lcom/facebook/internal/NativeProtocol;->getMethodArgumentsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 134
    invoke-static {v0}, Lcom/facebook/internal/NativeProtocol;->getExceptionFromErrorData(Landroid/os/Bundle;)Lcom/facebook/FacebookException;

    move-result-object v0

    .line 136
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/facebook/internal/NativeProtocol;->createProtocolResultIntent(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/FacebookException;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    .line 137
    invoke-virtual {p0, v1, v0}, Lcom/facebook/FacebookActivity;->setResult(ILandroid/content/Intent;)V

    .line 138
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->finish()V

    return-void
.end method


# virtual methods
.method public getCurrentFragment()Landroidx/fragment/app/Fragment;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/facebook/FacebookActivity;->singleFragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method protected getFragment()Landroidx/fragment/app/Fragment;
    .registers 6

    .line 87
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 89
    sget-object v2, Lcom/facebook/FacebookActivity;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_67

    .line 92
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FacebookDialogFragment"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2b

    .line 93
    new-instance v2, Lcom/facebook/internal/FacebookDialogFragment;

    invoke-direct {v2}, Lcom/facebook/internal/FacebookDialogFragment;-><init>()V

    .line 94
    invoke-virtual {v2, v3}, Lcom/facebook/internal/FacebookDialogFragment;->setRetainInstance(Z)V

    .line 95
    sget-object v0, Lcom/facebook/FacebookActivity;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/internal/FacebookDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_67

    .line 98
    :cond_2b
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "DeviceShareDialogFragment"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 99
    new-instance v2, Lcom/facebook/share/internal/DeviceShareDialogFragment;

    invoke-direct {v2}, Lcom/facebook/share/internal/DeviceShareDialogFragment;-><init>()V

    .line 100
    invoke-virtual {v2, v3}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->setRetainInstance(Z)V

    const-string v3, "content"

    .line 101
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {v2, v0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->setShareContent(Lcom/facebook/share/model/ShareContent;)V

    .line 102
    sget-object v0, Lcom/facebook/FacebookActivity;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_67

    .line 105
    :cond_50
    new-instance v2, Lcom/facebook/login/LoginFragment;

    invoke-direct {v2}, Lcom/facebook/login/LoginFragment;-><init>()V

    .line 106
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 108
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/facebook/common/R$id;->com_facebook_fragment_container:I

    sget-object v3, Lcom/facebook/FacebookActivity;->FRAGMENT_TAG:Ljava/lang/String;

    .line 109
    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_67
    :goto_67
    return-object v2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 118
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 120
    iget-object v0, p0, Lcom/facebook/FacebookActivity;->singleFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_a

    .line 121
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_a
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 61
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 68
    invoke-static {}, Lcom/facebook/FacebookSdk;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 69
    sget-object v0, Lcom/facebook/FacebookActivity;->TAG:Ljava/lang/String;

    const-string v1, "Facebook SDK not initialized. Make sure you call sdkInitialize inside your Application\'s onCreate method."

    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 76
    :cond_1b
    sget v0, Lcom/facebook/common/R$layout;->com_facebook_activity_layout:I

    invoke-virtual {p0, v0}, Lcom/facebook/FacebookActivity;->setContentView(I)V

    .line 78
    sget-object v0, Lcom/facebook/FacebookActivity;->PASS_THROUGH_CANCEL_ACTION:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 79
    invoke-direct {p0}, Lcom/facebook/FacebookActivity;->handlePassThroughError()V

    return-void

    .line 83
    :cond_30
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/FacebookActivity;->singleFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method
