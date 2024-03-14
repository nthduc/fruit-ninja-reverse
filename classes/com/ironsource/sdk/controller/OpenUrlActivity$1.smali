.class Lcom/ironsource/sdk/controller/OpenUrlActivity$1;
.super Ljava/lang/Object;
.source "OpenUrlActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/OpenUrlActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/OpenUrlActivity;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/OpenUrlActivity;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$1;->this$0:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .registers 5

    and-int/lit16 p1, p1, 0x1002

    if-nez p1, :cond_24

    .line 93
    iget-object p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$1;->this$0:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    # getter for: Lcom/ironsource/sdk/controller/OpenUrlActivity;->mUiThreadHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->access$100(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$1;->this$0:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    # getter for: Lcom/ironsource/sdk/controller/OpenUrlActivity;->decorViewSettings:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->access$000(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 94
    iget-object p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$1;->this$0:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    # getter for: Lcom/ironsource/sdk/controller/OpenUrlActivity;->mUiThreadHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->access$100(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$1;->this$0:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    # getter for: Lcom/ironsource/sdk/controller/OpenUrlActivity;->decorViewSettings:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->access$000(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_24
    return-void
.end method
