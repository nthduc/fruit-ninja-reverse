.class Lcom/ironsource/mediationsdk/DemandOnlyRvSmash$1;
.super Ljava/util/TimerTask;
.source "DemandOnlyRvSmash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->startLoadTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 87
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load timed out state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->getStateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->logInternal(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->access$000(Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;

    sget-object v1, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    sget-object v2, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->NOT_LOADED:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->compareAndSetState(Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 89
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;

    # getter for: Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->mLoadStartTime:J
    invoke-static {v2}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->access$100(Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 90
    iget-object v2, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;

    # getter for: Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/DemandOnlyRvManagerListener;
    invoke-static {v2}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->access$200(Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;)Lcom/ironsource/mediationsdk/sdk/DemandOnlyRvManagerListener;

    move-result-object v2

    new-instance v3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v4, 0x41f

    const-string v5, "load timed out"

    invoke-direct {v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    iget-object v4, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/ironsource/mediationsdk/sdk/DemandOnlyRvManagerListener;->onRewardedVideoAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;J)V

    :cond_4c
    return-void
.end method
