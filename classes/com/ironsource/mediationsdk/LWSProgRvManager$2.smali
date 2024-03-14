.class Lcom/ironsource/mediationsdk/LWSProgRvManager$2;
.super Ljava/lang/Object;
.source "LWSProgRvManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/LWSProgRvManager;->makeAuction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/LWSProgRvManager;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/LWSProgRvManager;)V
    .registers 2

    .line 616
    iput-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 619
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvManager;

    const-string v1, "makeAuction()"

    # invokes: Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->access$100(Lcom/ironsource/mediationsdk/LWSProgRvManager;Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvManager;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    # setter for: Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionStartTime:J
    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->access$202(Lcom/ironsource/mediationsdk/LWSProgRvManager;J)J

    .line 623
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 624
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 627
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvManager;

    # getter for: Lcom/ironsource/mediationsdk/LWSProgRvManager;->smashes:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->access$300(Lcom/ironsource/mediationsdk/LWSProgRvManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_32
    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ae

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    .line 628
    iget-object v3, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvManager;

    # getter for: Lcom/ironsource/mediationsdk/LWSProgRvManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;
    invoke-static {v3}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->access$400(Lcom/ironsource/mediationsdk/LWSProgRvManager;)Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;->isCapped(Lcom/ironsource/mediationsdk/ProgSmash;)Z

    move-result v3

    if-nez v3, :cond_32

    iget-object v3, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvManager;

    .line 629
    # getter for: Lcom/ironsource/mediationsdk/LWSProgRvManager;->waterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;
    invoke-static {v3}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->access$500(Lcom/ironsource/mediationsdk/LWSProgRvManager;)Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;->shouldAddSmashToWaterfallRequest(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 630
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->isBidder()Z

    move-result v3

    const-string v4, ","

    if-eqz v3, :cond_89

    .line 631
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getBiddingData()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 633
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceType()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    .line 637
    :cond_89
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceType()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    .line 644
    :cond_ae
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_f5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_f5

    .line 645
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvManager;

    const/16 v1, 0x515

    new-array v5, v2, [[Ljava/lang/Object;

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "errorCode"

    aput-object v7, v6, v4

    const/16 v7, 0x3ed

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    aput-object v6, v5, v4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "duration"

    aput-object v6, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object v2, v5, v3

    # invokes: Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;)V
    invoke-static {v0, v1, v5}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->access$600(Lcom/ironsource/mediationsdk/LWSProgRvManager;I[[Ljava/lang/Object;)V

    .line 646
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvManager;

    const-string v1, "makeAuction() failed - No candidates available for auctioning"

    # invokes: Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->access$100(Lcom/ironsource/mediationsdk/LWSProgRvManager;Ljava/lang/String;)V

    .line 647
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvManager;

    # invokes: Lcom/ironsource/mediationsdk/LWSProgRvManager;->handleLoadFailure()V
    invoke-static {v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->access$700(Lcom/ironsource/mediationsdk/LWSProgRvManager;)V

    return-void

    .line 651
    :cond_f5
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "makeAuction() - request waterfall is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V
    invoke-static {v1, v7}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->access$100(Lcom/ironsource/mediationsdk/LWSProgRvManager;Ljava/lang/String;)V

    .line 654
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvManager;

    const/16 v7, 0x3e8

    # invokes: Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEventWithoutAuctionId(I)V
    invoke-static {v1, v7}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->access$800(Lcom/ironsource/mediationsdk/LWSProgRvManager;I)V

    .line 655
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvManager;

    const/16 v7, 0x514

    # invokes: Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEventWithoutAuctionId(I)V
    invoke-static {v1, v7}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->access$800(Lcom/ironsource/mediationsdk/LWSProgRvManager;I)V

    .line 656
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvManager;

    const/16 v7, 0x51e

    new-array v8, v3, [[Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v9, "ext1"

    aput-object v9, v2, v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    aput-object v2, v8, v4

    # invokes: Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEventWithoutAuctionId(I[[Ljava/lang/Object;)V
    invoke-static {v1, v7, v8}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->access$900(Lcom/ironsource/mediationsdk/LWSProgRvManager;I[[Ljava/lang/Object;)V

    .line 658
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvManager;

    # getter for: Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;
    invoke-static {v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->access$1200(Lcom/ironsource/mediationsdk/LWSProgRvManager;)Lcom/ironsource/mediationsdk/AuctionHandler;

    move-result-object v3

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvManager;

    # getter for: Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionHistory:Lcom/ironsource/mediationsdk/AuctionHistory;
    invoke-static {v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->access$1000(Lcom/ironsource/mediationsdk/LWSProgRvManager;)Lcom/ironsource/mediationsdk/AuctionHistory;

    move-result-object v7

    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvManager;

    # getter for: Lcom/ironsource/mediationsdk/LWSProgRvManager;->mSessionDepth:I
    invoke-static {v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->access$1100(Lcom/ironsource/mediationsdk/LWSProgRvManager;)I

    move-result v8

    invoke-virtual/range {v3 .. v8}, Lcom/ironsource/mediationsdk/AuctionHandler;->executeAuction(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Lcom/ironsource/mediationsdk/AuctionHistory;I)V

    return-void
.end method
