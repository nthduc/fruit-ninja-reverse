.class Lcom/ironsource/mediationsdk/RvLoadTrigger$3;
.super Ljava/util/TimerTask;
.source "RvLoadTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/RvLoadTrigger;->loadError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/RvLoadTrigger;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/RvLoadTrigger;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/ironsource/mediationsdk/RvLoadTrigger$3;->this$0:Lcom/ironsource/mediationsdk/RvLoadTrigger;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RvLoadTrigger$3;->this$0:Lcom/ironsource/mediationsdk/RvLoadTrigger;

    # getter for: Lcom/ironsource/mediationsdk/RvLoadTrigger;->mListener:Lcom/ironsource/mediationsdk/RvLoadTriggerCallback;
    invoke-static {v0}, Lcom/ironsource/mediationsdk/RvLoadTrigger;->access$000(Lcom/ironsource/mediationsdk/RvLoadTrigger;)Lcom/ironsource/mediationsdk/RvLoadTriggerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/RvLoadTriggerCallback;->onLoadTriggered()V

    return-void
.end method
