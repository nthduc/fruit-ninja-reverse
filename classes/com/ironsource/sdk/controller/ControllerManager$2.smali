.class Lcom/ironsource/sdk/controller/ControllerManager$2;
.super Landroid/os/CountDownTimer;
.source "ControllerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/ControllerManager;->createWebController(Landroid/app/Activity;Lcom/ironsource/sdk/service/TokenService;Lcom/ironsource/sdk/controller/DemandSourceManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/ControllerManager;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/ControllerManager;JJ)V
    .registers 6

    .line 101
    iput-object p1, p0, Lcom/ironsource/sdk/controller/ControllerManager$2;->this$0:Lcom/ironsource/sdk/controller/ControllerManager;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .line 110
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager$2;->this$0:Lcom/ironsource/sdk/controller/ControllerManager;

    # getter for: Lcom/ironsource/sdk/controller/ControllerManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/ControllerManager;->access$200(Lcom/ironsource/sdk/controller/ControllerManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Global Controller Timer Finish"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager$2;->this$0:Lcom/ironsource/sdk/controller/ControllerManager;

    # invokes: Lcom/ironsource/sdk/controller/ControllerManager;->destroyWebControllerIfExist()V
    invoke-static {v0}, Lcom/ironsource/sdk/controller/ControllerManager;->access$300(Lcom/ironsource/sdk/controller/ControllerManager;)V

    .line 113
    # getter for: Lcom/ironsource/sdk/controller/ControllerManager;->mUiHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/ironsource/sdk/controller/ControllerManager;->access$400()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ironsource/sdk/controller/ControllerManager$2$1;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/controller/ControllerManager$2$1;-><init>(Lcom/ironsource/sdk/controller/ControllerManager$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTick(J)V
    .registers 6

    .line 105
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager$2;->this$0:Lcom/ironsource/sdk/controller/ControllerManager;

    # getter for: Lcom/ironsource/sdk/controller/ControllerManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/ControllerManager;->access$200(Lcom/ironsource/sdk/controller/ControllerManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Global Controller Timer Tick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
