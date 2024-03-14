.class public final Lcom/google/games/bridge/NativeBridgeActivity;
.super Landroid/app/Activity;
.source "NativeBridgeActivity.java"


# static fields
.field private static final BG_COLOR:I = 0x40ffffff

.field private static final BRIDGED_INTENT:Ljava/lang/String; = "BRIDGED_INTENT"

.field private static final GPG_RESPONSE_CODE:I = 0x475047

.field private static final TAG:Ljava/lang/String; = "NativeBridgeActivity"


# instance fields
.field private pendingResult:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "gpg"

    .line 48
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private native forwardActivityResult(IILandroid/content/Intent;)V
.end method

.method public static launchBridgeIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 4

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Launching bridge activity: parent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeBridgeActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/games/bridge/NativeBridgeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "BRIDGED_INTENT"

    .line 111
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    const-string v0, "NativeBridgeActivity"

    const v1, 0x475047

    if-ne p1, v1, :cond_13

    const-string v1, "Forwarding activity result to native SDK."

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/google/games/bridge/NativeBridgeActivity;->forwardActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/google/games/bridge/NativeBridgeActivity;->pendingResult:Z

    goto :goto_2c

    .line 98
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult for unknown request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " calling finish()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_2c
    invoke-virtual {p0}, Lcom/google/games/bridge/NativeBridgeActivity;->finish()V

    .line 103
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 52
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v1, 0x40ffffff    # 7.9999995f

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 54
    invoke-virtual {p0, v0}, Lcom/google/games/bridge/NativeBridgeActivity;->setContentView(Landroid/view/View;)V

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .line 149
    iget-boolean v0, p0, Lcom/google/games/bridge/NativeBridgeActivity;->pendingResult:Z

    if-eqz v0, :cond_15

    const-string v0, "NativeBridgeActivity"

    const-string v1, "onDestroy called with pendingResult == true.  forwarding canceled result"

    .line 150
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x475047

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 151
    invoke-direct {p0, v0, v2, v1}, Lcom/google/games/bridge/NativeBridgeActivity;->forwardActivityResult(IILandroid/content/Intent;)V

    .line 152
    iput-boolean v2, p0, Lcom/google/games/bridge/NativeBridgeActivity;->pendingResult:Z

    .line 155
    :cond_15
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onStart()V
    .registers 3

    .line 60
    invoke-virtual {p0}, Lcom/google/games/bridge/NativeBridgeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "BRIDGED_INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_14

    const v1, 0x475047

    .line 62
    invoke-virtual {p0, v0, v1}, Lcom/google/games/bridge/NativeBridgeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 64
    :cond_14
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 6

    const v0, 0x475047

    if-ne p2, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 80
    :goto_8
    iput-boolean v0, p0, Lcom/google/games/bridge/NativeBridgeActivity;->pendingResult:Z

    .line 81
    iget-boolean v0, p0, Lcom/google/games/bridge/NativeBridgeActivity;->pendingResult:Z

    const-string v1, "NativeBridgeActivity"

    if-eqz v0, :cond_25

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "starting GPG activity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 84
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "starting non-GPG activity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_41
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
