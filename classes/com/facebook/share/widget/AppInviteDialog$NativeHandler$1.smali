.class Lcom/facebook/share/widget/AppInviteDialog$NativeHandler$1;
.super Ljava/lang/Object;
.source "AppInviteDialog.java"

# interfaces
.implements Lcom/facebook/internal/DialogPresenter$ParameterProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/widget/AppInviteDialog$NativeHandler;->createAppCall(Lcom/facebook/share/model/AppInviteContent;)Lcom/facebook/internal/AppCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/share/widget/AppInviteDialog$NativeHandler;

.field final synthetic val$content:Lcom/facebook/share/model/AppInviteContent;


# direct methods
.method constructor <init>(Lcom/facebook/share/widget/AppInviteDialog$NativeHandler;Lcom/facebook/share/model/AppInviteContent;)V
    .registers 3

    .line 196
    iput-object p1, p0, Lcom/facebook/share/widget/AppInviteDialog$NativeHandler$1;->this$1:Lcom/facebook/share/widget/AppInviteDialog$NativeHandler;

    iput-object p2, p0, Lcom/facebook/share/widget/AppInviteDialog$NativeHandler$1;->val$content:Lcom/facebook/share/model/AppInviteContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLegacyParameters()Landroid/os/Bundle;
    .registers 3

    const-string v0, "AppInviteDialog"

    const-string v1, "Attempting to present the AppInviteDialog with an outdated Facebook app on the device"

    .line 206
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public getParameters()Landroid/os/Bundle;
    .registers 2

    .line 199
    iget-object v0, p0, Lcom/facebook/share/widget/AppInviteDialog$NativeHandler$1;->val$content:Lcom/facebook/share/model/AppInviteContent;

    # invokes: Lcom/facebook/share/widget/AppInviteDialog;->createParameters(Lcom/facebook/share/model/AppInviteContent;)Landroid/os/Bundle;
    invoke-static {v0}, Lcom/facebook/share/widget/AppInviteDialog;->access$200(Lcom/facebook/share/model/AppInviteContent;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
