.class Lcom/ironsource/mediationsdk/ProgIsManager$1;
.super Ljava/lang/Object;
.source "ProgIsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/ProgIsManager;->makeAuction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/ProgIsManager;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/ProgIsManager;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsManager$1;->this$0:Lcom/ironsource/mediationsdk/ProgIsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 122
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager$1;->this$0:Lcom/ironsource/mediationsdk/ProgIsManager;

    const-string v1, ""

    # setter for: Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentAuctionId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->access$002(Lcom/ironsource/mediationsdk/ProgIsManager;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgIsManager$1;->this$0:Lcom/ironsource/mediationsdk/ProgIsManager;

    # getter for: Lcom/ironsource/mediationsdk/ProgIsManager;->mInitMangerTime:J
    invoke-static {v3}, Lcom/ironsource/mediationsdk/ProgIsManager;->access$100(Lcom/ironsource/mediationsdk/ProgIsManager;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 126
    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgIsManager$1;->this$0:Lcom/ironsource/mediationsdk/ProgIsManager;

    # getter for: Lcom/ironsource/mediationsdk/ProgIsManager;->mTimeToWaitBeforeFirstAction:J
    invoke-static {v3}, Lcom/ironsource/mediationsdk/ProgIsManager;->access$200(Lcom/ironsource/mediationsdk/ProgIsManager;)J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v1, 0x0

    cmp-long v5, v3, v1

    if-lez v5, :cond_3b

    .line 128
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/ironsource/mediationsdk/ProgIsManager$1$1;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/ProgIsManager$1$1;-><init>(Lcom/ironsource/mediationsdk/ProgIsManager$1;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 138
    :cond_3b
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager$1;->this$0:Lcom/ironsource/mediationsdk/ProgIsManager;

    const/16 v2, 0x7d0

    const/4 v3, 0x0

    check-cast v3, [[Ljava/lang/Object;

    # invokes: Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V
    invoke-static {v1, v2, v3}, Lcom/ironsource/mediationsdk/ProgIsManager;->access$400(Lcom/ironsource/mediationsdk/ProgIsManager;I[[Ljava/lang/Object;)V

    .line 139
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 140
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 142
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager$1;->this$0:Lcom/ironsource/mediationsdk/ProgIsManager;

    # getter for: Lcom/ironsource/mediationsdk/ProgIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->access$500(Lcom/ironsource/mediationsdk/ProgIsManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5d
    :goto_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/ProgIsSmash;

    .line 143
    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgIsManager$1;->this$0:Lcom/ironsource/mediationsdk/ProgIsManager;

    # getter for: Lcom/ironsource/mediationsdk/ProgIsManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;
    invoke-static {v3}, Lcom/ironsource/mediationsdk/ProgIsManager;->access$600(Lcom/ironsource/mediationsdk/ProgIsManager;)Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;->isCapped(Lcom/ironsource/mediationsdk/ProgSmash;)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 144
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->isBidder()Z

    move-result v3

    const-string v4, ","

    if-eqz v3, :cond_a8

    .line 145
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getBiddingData()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_5d

    .line 147
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceType()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5d

    .line 151
    :cond_a8
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceType()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5d

    .line 157
    :cond_cd
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_135

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_135

    .line 158
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager$1;->this$0:Lcom/ironsource/mediationsdk/ProgIsManager;

    const/16 v1, 0x8fc

    new-array v5, v2, [[Ljava/lang/Object;

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "errorCode"

    aput-object v7, v6, v4

    const/16 v8, 0x3ed

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v3

    aput-object v6, v5, v4

    new-array v6, v2, [Ljava/lang/Object;

    const-string v9, "duration"

    aput-object v9, v6, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v3

    aput-object v6, v5, v3

    # invokes: Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V
    invoke-static {v0, v1, v5}, Lcom/ironsource/mediationsdk/ProgIsManager;->access$400(Lcom/ironsource/mediationsdk/ProgIsManager;I[[Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager$1;->this$0:Lcom/ironsource/mediationsdk/ProgIsManager;

    const-string v1, "makeAuction() failed - No candidates available for auctioning"

    # invokes: Lcom/ironsource/mediationsdk/ProgIsManager;->logInternal(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->access$700(Lcom/ironsource/mediationsdk/ProgIsManager;Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v0

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const-string v5, "No candidates available for auctioning"

    invoke-direct {v1, v8, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 161
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager$1;->this$0:Lcom/ironsource/mediationsdk/ProgIsManager;

    const/16 v1, 0x83e

    new-array v5, v3, [[Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v7, v2, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    aput-object v2, v5, v4

    # invokes: Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V
    invoke-static {v0, v1, v5}, Lcom/ironsource/mediationsdk/ProgIsManager;->access$400(Lcom/ironsource/mediationsdk/ProgIsManager;I[[Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager$1;->this$0:Lcom/ironsource/mediationsdk/ProgIsManager;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_READY_TO_LOAD:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    # invokes: Lcom/ironsource/mediationsdk/ProgIsManager;->setState(Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V
    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->access$800(Lcom/ironsource/mediationsdk/ProgIsManager;Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V

    return-void

    .line 166
    :cond_135
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager$1;->this$0:Lcom/ironsource/mediationsdk/ProgIsManager;

    const/16 v5, 0x906

    new-array v8, v3, [[Ljava/lang/Object;

    new-array v9, v2, [Ljava/lang/Object;

    const-string v10, "ext1"

    aput-object v10, v9, v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v3

    aput-object v9, v8, v4

    # invokes: Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V
    invoke-static {v1, v5, v8}, Lcom/ironsource/mediationsdk/ProgIsManager;->access$400(Lcom/ironsource/mediationsdk/ProgIsManager;I[[Ljava/lang/Object;)V

    .line 168
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getSessionDepth(I)I

    move-result v9

    .line 169
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager$1;->this$0:Lcom/ironsource/mediationsdk/ProgIsManager;

    # getter for: Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;
    invoke-static {v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->access$900(Lcom/ironsource/mediationsdk/ProgIsManager;)Lcom/ironsource/mediationsdk/AuctionHandler;

    move-result-object v0

    if-eqz v0, :cond_173

    .line 170
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager$1;->this$0:Lcom/ironsource/mediationsdk/ProgIsManager;

    # getter for: Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;
    invoke-static {v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->access$900(Lcom/ironsource/mediationsdk/ProgIsManager;)Lcom/ironsource/mediationsdk/AuctionHandler;

    move-result-object v4

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager$1;->this$0:Lcom/ironsource/mediationsdk/ProgIsManager;

    # getter for: Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionHistory:Lcom/ironsource/mediationsdk/AuctionHistory;
    invoke-static {v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->access$1000(Lcom/ironsource/mediationsdk/ProgIsManager;)Lcom/ironsource/mediationsdk/AuctionHistory;

    move-result-object v8

    invoke-virtual/range {v4 .. v9}, Lcom/ironsource/mediationsdk/AuctionHandler;->executeAuction(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Lcom/ironsource/mediationsdk/AuctionHistory;I)V

    :cond_173
    return-void
.end method
