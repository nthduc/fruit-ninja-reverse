.class Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;
.super Ljava/util/TimerTask;
.source "RewardedVideoSmash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/RewardedVideoSmash;->startInitTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/RewardedVideoSmash;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;->this$0:Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .line 73
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;->this$0:Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    monitor-enter v0

    .line 74
    :try_start_3
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;->cancel()Z

    .line 75
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;->this$0:Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    # getter for: Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;
    invoke-static {v1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->access$000(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    move-result-object v1

    if-eqz v1, :cond_dc

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;->this$0:Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;->this$0:Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 78
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;->this$0:Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 79
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;->this$0:Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    # getter for: Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mLoadStartTime:J
    invoke-static {v5}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->access$100(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)J

    move-result-wide v5

    sub-long/2addr v2, v5

    .line 80
    iget-object v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;->this$0:Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    # getter for: Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mShouldSendLoadEvents:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v5}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->access$200(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    const/16 v7, 0x401

    const/4 v8, 0x2

    if-eqz v5, :cond_ac

    .line 81
    iget-object v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;->this$0:Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    const/16 v9, 0x4b0

    new-array v10, v8, [[Ljava/lang/Object;

    new-array v11, v8, [Ljava/lang/Object;

    const-string v12, "errorCode"

    aput-object v12, v11, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v6

    aput-object v11, v10, v4

    new-array v11, v8, [Ljava/lang/Object;

    const-string v12, "duration"

    aput-object v12, v11, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v6

    aput-object v11, v10, v6

    # invokes: Lcom/ironsource/mediationsdk/RewardedVideoSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V
    invoke-static {v5, v9, v10}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->access$300(Lcom/ironsource/mediationsdk/RewardedVideoSmash;I[[Ljava/lang/Object;)V

    .line 82
    iget-object v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;->this$0:Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    const/16 v9, 0x4bc

    const/4 v10, 0x3

    new-array v10, v10, [[Ljava/lang/Object;

    new-array v11, v8, [Ljava/lang/Object;

    const-string v12, "errorCode"

    aput-object v12, v11, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v11, v6

    aput-object v11, v10, v4

    new-array v7, v8, [Ljava/lang/Object;

    const-string v11, "reason"

    aput-object v11, v7, v4

    aput-object v1, v7, v6

    aput-object v7, v10, v6

    new-array v1, v8, [Ljava/lang/Object;

    const-string v7, "duration"

    aput-object v7, v1, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object v1, v10, v8

    # invokes: Lcom/ironsource/mediationsdk/RewardedVideoSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V
    invoke-static {v5, v9, v10}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->access$300(Lcom/ironsource/mediationsdk/RewardedVideoSmash;I[[Ljava/lang/Object;)V

    goto :goto_d1

    .line 84
    :cond_ac
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;->this$0:Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    const/16 v5, 0x4b8

    new-array v9, v8, [[Ljava/lang/Object;

    new-array v10, v8, [Ljava/lang/Object;

    const-string v11, "errorCode"

    aput-object v11, v10, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v6

    aput-object v10, v9, v4

    new-array v7, v8, [Ljava/lang/Object;

    const-string v8, "duration"

    aput-object v8, v7, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v6

    aput-object v7, v9, v6

    # invokes: Lcom/ironsource/mediationsdk/RewardedVideoSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V
    invoke-static {v1, v5, v9}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->access$300(Lcom/ironsource/mediationsdk/RewardedVideoSmash;I[[Ljava/lang/Object;)V

    .line 86
    :goto_d1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;->this$0:Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    # getter for: Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;
    invoke-static {v1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->access$000(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;->this$0:Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-interface {v1, v4, v2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAvailabilityChanged(ZLcom/ironsource/mediationsdk/RewardedVideoSmash;)V

    .line 88
    :cond_dc
    monitor-exit v0

    return-void

    :catchall_de
    move-exception v1

    monitor-exit v0
    :try_end_e0
    .catchall {:try_start_3 .. :try_end_e0} :catchall_de

    throw v1
.end method
