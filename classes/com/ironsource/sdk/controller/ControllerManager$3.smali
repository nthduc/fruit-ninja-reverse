.class Lcom/ironsource/sdk/controller/ControllerManager$3;
.super Ljava/lang/Object;
.source "ControllerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/ControllerManager;->handleControllerStageFailed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/ControllerManager;

.field final synthetic val$failureReason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/ControllerManager;Ljava/lang/String;)V
    .registers 3

    .line 187
    iput-object p1, p0, Lcom/ironsource/sdk/controller/ControllerManager$3;->this$0:Lcom/ironsource/sdk/controller/ControllerManager;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/ControllerManager$3;->val$failureReason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 190
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager$3;->this$0:Lcom/ironsource/sdk/controller/ControllerManager;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerManager$3;->val$failureReason:Ljava/lang/String;

    # invokes: Lcom/ironsource/sdk/controller/ControllerManager;->createNativeController(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/ControllerManager;->access$100(Lcom/ironsource/sdk/controller/ControllerManager;Ljava/lang/String;)V

    return-void
.end method
