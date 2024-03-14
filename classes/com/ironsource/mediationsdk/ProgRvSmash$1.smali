.class Lcom/ironsource/mediationsdk/ProgRvSmash$1;
.super Ljava/util/TimerTask;
.source "ProgRvSmash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/ProgRvSmash;->startLoadTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/ProgRvSmash;)V
    .registers 2

    .line 557
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 564
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    # getter for: Lcom/ironsource/mediationsdk/ProgRvSmash;->mStateLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->access$000(Lcom/ironsource/mediationsdk/ProgRvSmash;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 565
    :try_start_7
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    # getter for: Lcom/ironsource/mediationsdk/ProgRvSmash;->mState:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;
    invoke-static {v1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->access$100(Lcom/ironsource/mediationsdk/ProgRvSmash;)Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_fc

    const/16 v3, 0x401

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "Rewarded Video - load instance time out"

    if-eq v1, v2, :cond_28

    :try_start_17
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    # getter for: Lcom/ironsource/mediationsdk/ProgRvSmash;->mState:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;
    invoke-static {v1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->access$100(Lcom/ironsource/mediationsdk/ProgRvSmash;)Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    if-ne v1, v2, :cond_22

    goto :goto_28

    :cond_22
    const/16 v1, 0x1fe

    const/4 v1, 0x0

    const/16 v2, 0x1fe

    goto :goto_42

    .line 566
    :cond_28
    :goto_28
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    # getter for: Lcom/ironsource/mediationsdk/ProgRvSmash;->mState:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;
    invoke-static {v1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->access$100(Lcom/ironsource/mediationsdk/ProgRvSmash;)Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    if-ne v1, v2, :cond_35

    const/16 v1, 0x401

    goto :goto_39

    :cond_35
    const/16 v1, 0x408

    const-string v6, "Rewarded Video - init instance time out"

    .line 574
    :goto_39
    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    sget-object v7, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->NOT_LOADED:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    # invokes: Lcom/ironsource/mediationsdk/ProgRvSmash;->setState(Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;)V
    invoke-static {v2, v7}, Lcom/ironsource/mediationsdk/ProgRvSmash;->access$200(Lcom/ironsource/mediationsdk/ProgRvSmash;Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;)V

    move v2, v1

    const/4 v1, 0x1

    .line 577
    :goto_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_17 .. :try_end_43} :catchall_fc

    .line 579
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    # invokes: Lcom/ironsource/mediationsdk/ProgRvSmash;->logInternal(Ljava/lang/String;)V
    invoke-static {v0, v6}, Lcom/ironsource/mediationsdk/ProgRvSmash;->access$300(Lcom/ironsource/mediationsdk/ProgRvSmash;Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v7, 0x2

    if-eqz v1, :cond_bc

    .line 582
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    const/16 v3, 0x4b0

    new-array v8, v7, [[Ljava/lang/Object;

    new-array v9, v7, [Ljava/lang/Object;

    const-string v10, "errorCode"

    aput-object v10, v9, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    aput-object v9, v8, v5

    new-array v9, v7, [Ljava/lang/Object;

    const-string v10, "duration"

    aput-object v10, v9, v5

    iget-object v10, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    # invokes: Lcom/ironsource/mediationsdk/ProgRvSmash;->getElapsedTime()J
    invoke-static {v10}, Lcom/ironsource/mediationsdk/ProgRvSmash;->access$400(Lcom/ironsource/mediationsdk/ProgRvSmash;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v4

    aput-object v9, v8, v4

    invoke-virtual {v1, v3, v8}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    .line 583
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    const/16 v3, 0x4bc

    new-array v0, v0, [[Ljava/lang/Object;

    new-array v8, v7, [Ljava/lang/Object;

    const-string v9, "errorCode"

    aput-object v9, v8, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v4

    aput-object v8, v0, v5

    new-array v2, v7, [Ljava/lang/Object;

    const-string v8, "reason"

    aput-object v8, v2, v5

    aput-object v6, v2, v4

    aput-object v2, v0, v4

    new-array v2, v7, [Ljava/lang/Object;

    const-string v6, "duration"

    aput-object v6, v2, v5

    iget-object v5, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    # invokes: Lcom/ironsource/mediationsdk/ProgRvSmash;->getElapsedTime()J
    invoke-static {v5}, Lcom/ironsource/mediationsdk/ProgRvSmash;->access$400(Lcom/ironsource/mediationsdk/ProgRvSmash;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    aput-object v2, v0, v7

    invoke-virtual {v1, v3, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    .line 584
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    # getter for: Lcom/ironsource/mediationsdk/ProgRvSmash;->mListener:Lcom/ironsource/mediationsdk/ProgRvManagerListener;
    invoke-static {v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->access$600(Lcom/ironsource/mediationsdk/ProgRvSmash;)Lcom/ironsource/mediationsdk/ProgRvManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    # getter for: Lcom/ironsource/mediationsdk/ProgRvSmash;->mCurrentAuctionId:Ljava/lang/String;
    invoke-static {v1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->access$500(Lcom/ironsource/mediationsdk/ProgRvSmash;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/ironsource/mediationsdk/ProgRvManagerListener;->onLoadError(Lcom/ironsource/mediationsdk/ProgRvSmash;Ljava/lang/String;)V

    goto :goto_fb

    .line 586
    :cond_bc
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    const/16 v2, 0x4b8

    new-array v0, v0, [[Ljava/lang/Object;

    new-array v6, v7, [Ljava/lang/Object;

    const-string v8, "errorCode"

    aput-object v8, v6, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v4

    aput-object v6, v0, v5

    new-array v3, v7, [Ljava/lang/Object;

    const-string v6, "duration"

    aput-object v6, v3, v5

    iget-object v6, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    # invokes: Lcom/ironsource/mediationsdk/ProgRvSmash;->getElapsedTime()J
    invoke-static {v6}, Lcom/ironsource/mediationsdk/ProgRvSmash;->access$400(Lcom/ironsource/mediationsdk/ProgRvSmash;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    aput-object v3, v0, v4

    new-array v3, v7, [Ljava/lang/Object;

    const-string v6, "ext1"

    aput-object v6, v3, v5

    iget-object v5, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    # getter for: Lcom/ironsource/mediationsdk/ProgRvSmash;->mState:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;
    invoke-static {v5}, Lcom/ironsource/mediationsdk/ProgRvSmash;->access$100(Lcom/ironsource/mediationsdk/ProgRvSmash;)Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object v3, v0, v7

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    :goto_fb
    return-void

    :catchall_fc
    move-exception v1

    .line 577
    :try_start_fd
    monitor-exit v0
    :try_end_fe
    .catchall {:try_start_fd .. :try_end_fe} :catchall_fc

    throw v1
.end method
