.class public Lcom/ironsource/mediationsdk/RvLoadTrigger;
.super Ljava/lang/Object;
.source "RvLoadTrigger.java"


# instance fields
.field private mAuctionSettings:Lcom/ironsource/mediationsdk/utils/AuctionSettings;

.field private mListener:Lcom/ironsource/mediationsdk/RvLoadTriggerCallback;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/utils/AuctionSettings;Lcom/ironsource/mediationsdk/RvLoadTriggerCallback;)V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/ironsource/mediationsdk/RvLoadTrigger;->mAuctionSettings:Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    .line 22
    iput-object p2, p0, Lcom/ironsource/mediationsdk/RvLoadTrigger;->mListener:Lcom/ironsource/mediationsdk/RvLoadTriggerCallback;

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcom/ironsource/mediationsdk/RvLoadTrigger;->mTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/RvLoadTrigger;)Lcom/ironsource/mediationsdk/RvLoadTriggerCallback;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/ironsource/mediationsdk/RvLoadTrigger;->mListener:Lcom/ironsource/mediationsdk/RvLoadTriggerCallback;

    return-object p0
.end method

.method private stopTimer()V
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RvLoadTrigger;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_a

    .line 82
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/ironsource/mediationsdk/RvLoadTrigger;->mTimer:Ljava/util/Timer;

    :cond_a
    return-void
.end method


# virtual methods
.method public declared-synchronized loadError()V
    .registers 5

    monitor-enter p0

    .line 68
    :try_start_1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RvLoadTrigger;->stopTimer()V

    .line 69
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/RvLoadTrigger;->mTimer:Ljava/util/Timer;

    .line 70
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RvLoadTrigger;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/ironsource/mediationsdk/RvLoadTrigger$3;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/RvLoadTrigger$3;-><init>(Lcom/ironsource/mediationsdk/RvLoadTrigger;)V

    iget-object v2, p0, Lcom/ironsource/mediationsdk/RvLoadTrigger;->mAuctionSettings:Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    .line 75
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getAuctionRetryInterval()J

    move-result-wide v2

    .line 70
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 76
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized showEnd()V
    .registers 5

    monitor-enter p0

    .line 44
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RvLoadTrigger;->mAuctionSettings:Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getIsAuctionOnShowStart()Z

    move-result v0

    if-nez v0, :cond_23

    .line 45
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RvLoadTrigger;->stopTimer()V

    .line 46
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/RvLoadTrigger;->mTimer:Ljava/util/Timer;

    .line 47
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RvLoadTrigger;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/ironsource/mediationsdk/RvLoadTrigger$2;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/RvLoadTrigger$2;-><init>(Lcom/ironsource/mediationsdk/RvLoadTrigger;)V

    iget-object v2, p0, Lcom/ironsource/mediationsdk/RvLoadTrigger;->mAuctionSettings:Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    .line 52
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getTimeToWaitBeforeAuctionMs()J

    move-result-wide v2

    .line 47
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 54
    :cond_23
    monitor-exit p0

    return-void

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public showError()V
    .registers 2

    .line 59
    monitor-enter p0

    .line 60
    :try_start_1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RvLoadTrigger;->stopTimer()V

    .line 61
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_b

    .line 62
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RvLoadTrigger;->mListener:Lcom/ironsource/mediationsdk/RvLoadTriggerCallback;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/RvLoadTriggerCallback;->onLoadTriggered()V

    return-void

    :catchall_b
    move-exception v0

    .line 61
    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public declared-synchronized showStart()V
    .registers 5

    monitor-enter p0

    .line 29
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RvLoadTrigger;->mAuctionSettings:Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getIsAuctionOnShowStart()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 30
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RvLoadTrigger;->stopTimer()V

    .line 31
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/RvLoadTrigger;->mTimer:Ljava/util/Timer;

    .line 32
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RvLoadTrigger;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/ironsource/mediationsdk/RvLoadTrigger$1;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/RvLoadTrigger$1;-><init>(Lcom/ironsource/mediationsdk/RvLoadTrigger;)V

    iget-object v2, p0, Lcom/ironsource/mediationsdk/RvLoadTrigger;->mAuctionSettings:Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    .line 37
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getTimeToWaitBeforeAuctionMs()J

    move-result-wide v2

    .line 32
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 39
    :cond_23
    monitor-exit p0

    return-void

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method
