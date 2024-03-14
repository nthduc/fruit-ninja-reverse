.class Lcom/vungle/warren/AdLoader$1;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/AdLoader;->loadAd(Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/DownloadCallbackWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/AdLoader;

.field final synthetic val$adRequestStartTimeStamp:J

.field final synthetic val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

.field final synthetic val$op:Lcom/vungle/warren/AdLoader$Operation;


# direct methods
.method constructor <init>(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/DownloadCallbackWrapper;Lcom/vungle/warren/AdLoader$Operation;J)V
    .registers 6

    .line 445
    iput-object p1, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    iput-object p2, p0, Lcom/vungle/warren/AdLoader$1;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    iput-object p3, p0, Lcom/vungle/warren/AdLoader$1;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iput-wide p4, p0, Lcom/vungle/warren/AdLoader$1;->val$adRequestStartTimeStamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 448
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    # getter for: Lcom/vungle/warren/AdLoader;->vungleApi:Lcom/vungle/warren/VungleStaticApi;
    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$100(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/VungleStaticApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/warren/VungleStaticApi;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    .line 449
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$1;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$1;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 453
    :cond_1e
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    # getter for: Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;
    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v0

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$1;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    const-class v3, Lcom/vungle/warren/model/Placement;

    invoke-virtual {v0, v2, v3}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Placement;

    if-nez v0, :cond_47

    .line 455
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$1;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$1;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 459
    :cond_47
    iget-object v2, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$1;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->size:Lcom/vungle/warren/AdConfig$AdSize;

    # invokes: Lcom/vungle/warren/AdLoader;->isSizeInvalid(Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdConfig$AdSize;)Z
    invoke-static {v2, v0, v3}, Lcom/vungle/warren/AdLoader;->access$300(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 460
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$1;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    const/16 v3, 0x1c

    invoke-direct {v2, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$1;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 464
    :cond_64
    iget-object v2, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    # getter for: Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;
    invoke-static {v2}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v2

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vungle/warren/persistence/Repository;->findValidAdvertisementForPlacement(Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/model/Advertisement;

    .line 465
    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getPlacementAdType()I

    move-result v3

    const/16 v4, 0x1a

    const/4 v5, 0x1

    if-ne v3, v5, :cond_ae

    if-eqz v2, :cond_ae

    invoke-virtual {v2}, Lcom/vungle/warren/model/Advertisement;->getAdConfig()Lcom/vungle/warren/AdConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vungle/warren/AdConfig;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v3

    iget-object v6, p0, Lcom/vungle/warren/AdLoader$1;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v6, v6, Lcom/vungle/warren/AdLoader$Operation;->size:Lcom/vungle/warren/AdConfig$AdSize;

    if-eq v3, v6, :cond_ae

    .line 467
    :try_start_91
    iget-object v3, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    # getter for: Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;
    invoke-static {v3}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v3

    invoke-virtual {v2}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/vungle/warren/persistence/Repository;->deleteAdvertisement(Ljava/lang/String;)V
    :try_end_9e
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_91 .. :try_end_9e} :catch_9f

    goto :goto_ae

    .line 469
    :catch_9f
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$1;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v2, v4}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$1;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_ae
    :goto_ae
    if-eqz v2, :cond_d0

    .line 475
    iget-object v3, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-virtual {v3, v2}, Lcom/vungle/warren/AdLoader;->canPlayAd(Lcom/vungle/warren/model/Advertisement;)Z

    move-result v3

    if-eqz v3, :cond_d0

    .line 476
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    # getter for: Lcom/vungle/warren/AdLoader;->sequence:Lcom/vungle/warren/OperationSequence;
    invoke-static {v1}, Lcom/vungle/warren/AdLoader;->access$400(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/OperationSequence;

    move-result-object v1

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$1;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/vungle/warren/OperationSequence;->reportFinished(Ljava/lang/String;)V

    .line 477
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$1;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$1;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v1, v3, v0, v2}, Lcom/vungle/warren/DownloadCallbackWrapper;->onReady(Ljava/lang/String;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V

    goto/16 :goto_2a0

    .line 478
    :cond_d0
    iget-object v3, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    # invokes: Lcom/vungle/warren/AdLoader;->canReDownload(Lcom/vungle/warren/model/Advertisement;)Z
    invoke-static {v3, v2}, Lcom/vungle/warren/AdLoader;->access$500(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/model/Advertisement;)Z

    move-result v3

    const/4 v6, 0x4

    if-eqz v3, :cond_17d

    .line 479
    # getter for: Lcom/vungle/warren/AdLoader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/AdLoader;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Found valid adv but not ready - downloading content"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    # getter for: Lcom/vungle/warren/AdLoader;->runtimeValues:Lcom/vungle/warren/RuntimeValues;
    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$700(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/RuntimeValues;

    move-result-object v0

    iget-object v0, v0, Lcom/vungle/warren/RuntimeValues;->settings:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/VungleSettings;

    if-eqz v0, :cond_149

    .line 482
    iget-object v3, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    # getter for: Lcom/vungle/warren/AdLoader;->cacheManager:Lcom/vungle/warren/persistence/CacheManager;
    invoke-static {v3}, Lcom/vungle/warren/AdLoader;->access$800(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/CacheManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vungle/warren/persistence/CacheManager;->getBytesAvailable()J

    move-result-wide v7

    invoke-virtual {v0}, Lcom/vungle/warren/VungleSettings;->getMinimumSpaceForAd()J

    move-result-wide v9

    cmp-long v0, v7, v9

    if-gez v0, :cond_105

    goto :goto_149

    .line 496
    :cond_105
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$1;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    # invokes: Lcom/vungle/warren/AdLoader;->setLoading(Ljava/lang/String;Z)V
    invoke-static {v0, v3, v5}, Lcom/vungle/warren/AdLoader;->access$900(Lcom/vungle/warren/AdLoader;Ljava/lang/String;Z)V

    .line 498
    invoke-virtual {v2}, Lcom/vungle/warren/model/Advertisement;->getState()I

    move-result v0

    if-eqz v0, :cond_132

    .line 500
    :try_start_114
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    # getter for: Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;
    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v0

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$1;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v5}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    :try_end_122
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_114 .. :try_end_122} :catch_123

    goto :goto_132

    .line 502
    :catch_123
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$1;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v2, v4}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$1;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 506
    :cond_132
    :goto_132
    iget-wide v0, p0, Lcom/vungle/warren/AdLoader$1;->val$adRequestStartTimeStamp:J

    invoke-virtual {v2, v0, v1}, Lcom/vungle/warren/model/Advertisement;->setAdRequestStartTime(J)V

    .line 507
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/vungle/warren/model/Advertisement;->setAssetDownloadStartTime(J)V

    .line 508
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$1;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$1;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    # invokes: Lcom/vungle/warren/AdLoader;->downloadAdAssets(Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/AdLoader$DownloadCallback;)V
    invoke-static {v0, v1, v2, v3}, Lcom/vungle/warren/AdLoader;->access$1000(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/AdLoader$DownloadCallback;)V

    goto/16 :goto_2a0

    .line 483
    :cond_149
    :goto_149
    invoke-virtual {v2}, Lcom/vungle/warren/model/Advertisement;->getState()I

    move-result v0

    if-eq v0, v6, :cond_16c

    .line 485
    :try_start_14f
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    # getter for: Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;
    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v0

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$1;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v6}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    :try_end_15c
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_14f .. :try_end_15c} :catch_15d

    goto :goto_16c

    .line 487
    :catch_15d
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$1;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v2, v4}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$1;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 491
    :cond_16c
    :goto_16c
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$1;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    const/16 v3, 0x13

    invoke-direct {v2, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$1;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 509
    :cond_17d
    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getWakeupTime()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v3, v7, v9

    if-lez v3, :cond_1f1

    .line 510
    iget-object v2, p0, Lcom/vungle/warren/AdLoader$1;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v3, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v3, v5}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v4, p0, Lcom/vungle/warren/AdLoader$1;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v4, v4, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    # getter for: Lcom/vungle/warren/AdLoader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/AdLoader;->access$600()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Placement "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is  snoozed"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->isAutoCached()Z

    move-result v1

    if-eqz v1, :cond_2a0

    .line 515
    # getter for: Lcom/vungle/warren/AdLoader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/AdLoader;->access$600()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is sleeping rescheduling it "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$1;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->size:Lcom/vungle/warren/AdConfig$AdSize;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getWakeupTime()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/vungle/warren/AdLoader;->loadEndless(Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdConfig$AdSize;J)V

    goto/16 :goto_2a0

    .line 519
    :cond_1f1
    # getter for: Lcom/vungle/warren/AdLoader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/AdLoader;->access$600()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "didn\'t find cached adv for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/vungle/warren/AdLoader$1;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v8, v8, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " downloading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_231

    .line 523
    :try_start_214
    iget-object v3, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    # getter for: Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;
    invoke-static {v3}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v3

    iget-object v7, p0, Lcom/vungle/warren/AdLoader$1;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v7, v7, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v3, v2, v7, v6}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    :try_end_221
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_214 .. :try_end_221} :catch_222

    goto :goto_231

    .line 525
    :catch_222
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$1;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v2, v4}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$1;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 531
    :cond_231
    :goto_231
    iget-object v2, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    # getter for: Lcom/vungle/warren/AdLoader;->runtimeValues:Lcom/vungle/warren/RuntimeValues;
    invoke-static {v2}, Lcom/vungle/warren/AdLoader;->access$700(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/RuntimeValues;

    move-result-object v2

    iget-object v2, v2, Lcom/vungle/warren/RuntimeValues;->settings:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/VungleSettings;

    if-eqz v2, :cond_26d

    .line 532
    iget-object v3, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    # getter for: Lcom/vungle/warren/AdLoader;->cacheManager:Lcom/vungle/warren/persistence/CacheManager;
    invoke-static {v3}, Lcom/vungle/warren/AdLoader;->access$800(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/CacheManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vungle/warren/persistence/CacheManager;->getBytesAvailable()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/vungle/warren/VungleSettings;->getMinimumSpaceForAd()J

    move-result-wide v6

    cmp-long v2, v3, v6

    if-gez v2, :cond_26d

    .line 533
    iget-object v2, p0, Lcom/vungle/warren/AdLoader$1;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v3, Lcom/vungle/warren/error/VungleException;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->isAutoCached()Z

    move-result v0

    if-eqz v0, :cond_260

    const/16 v0, 0x12

    goto :goto_262

    :cond_260
    const/16 v0, 0x11

    :goto_262
    invoke-direct {v3, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v0, p0, Lcom/vungle/warren/AdLoader$1;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 539
    :cond_26d
    # getter for: Lcom/vungle/warren/AdLoader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/AdLoader;->access$600()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No adv for placement "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " getting new data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$1;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    # invokes: Lcom/vungle/warren/AdLoader;->setLoading(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v5}, Lcom/vungle/warren/AdLoader;->access$900(Lcom/vungle/warren/AdLoader;Ljava/lang/String;Z)V

    .line 543
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$1;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$1;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    # invokes: Lcom/vungle/warren/AdLoader;->fetchAdMetadata(Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdLoader$DownloadCallback;)V
    invoke-static {v1, v2, v0, v3}, Lcom/vungle/warren/AdLoader;->access$1100(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdLoader$DownloadCallback;)V

    :cond_2a0
    :goto_2a0
    return-void
.end method
