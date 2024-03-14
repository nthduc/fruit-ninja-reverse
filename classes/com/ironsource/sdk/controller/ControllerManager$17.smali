.class Lcom/ironsource/sdk/controller/ControllerManager$17;
.super Ljava/lang/Object;
.source "ControllerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/ControllerManager;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/ControllerManager;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/ControllerManager;)V
    .registers 2

    .line 386
    iput-object p1, p0, Lcom/ironsource/sdk/controller/ControllerManager$17;->this$0:Lcom/ironsource/sdk/controller/ControllerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 389
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager$17;->this$0:Lcom/ironsource/sdk/controller/ControllerManager;

    # getter for: Lcom/ironsource/sdk/controller/ControllerManager;->mController:Lcom/ironsource/sdk/controller/IronSourceController;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/ControllerManager;->access$500(Lcom/ironsource/sdk/controller/ControllerManager;)Lcom/ironsource/sdk/controller/IronSourceController;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 390
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager$17;->this$0:Lcom/ironsource/sdk/controller/ControllerManager;

    # getter for: Lcom/ironsource/sdk/controller/ControllerManager;->mController:Lcom/ironsource/sdk/controller/IronSourceController;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/ControllerManager;->access$500(Lcom/ironsource/sdk/controller/ControllerManager;)Lcom/ironsource/sdk/controller/IronSourceController;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/sdk/controller/IronSourceController;->destroy()V

    .line 391
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager$17;->this$0:Lcom/ironsource/sdk/controller/ControllerManager;

    const/4 v1, 0x0

    # setter for: Lcom/ironsource/sdk/controller/ControllerManager;->mController:Lcom/ironsource/sdk/controller/IronSourceController;
    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/ControllerManager;->access$502(Lcom/ironsource/sdk/controller/ControllerManager;Lcom/ironsource/sdk/controller/IronSourceController;)Lcom/ironsource/sdk/controller/IronSourceController;

    :cond_17
    return-void
.end method
