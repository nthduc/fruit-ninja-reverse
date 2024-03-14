.class Lcom/vungle/warren/downloader/AssetDownloader$2;
.super Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;
.source "AssetDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/downloader/AssetDownloader;->load(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/downloader/AssetDownloader;

.field final synthetic val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;


# direct methods
.method constructor <init>(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    .registers 4

    .line 314
    iput-object p1, p0, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iput-object p3, p0, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-direct {p0, p2}, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;-><init>(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 34

    move-object/from16 v1, p0

    .line 318
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->setRunnable(Ljava/lang/Runnable;)V

    .line 322
    new-instance v2, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;

    invoke-direct {v2}, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;-><init>()V

    .line 323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->timestampDownloadStart:J

    .line 327
    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    iget-object v4, v4, Lcom/vungle/warren/downloader/DownloadRequestMediator;->url:Ljava/lang/String;

    .line 328
    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    iget-object v5, v5, Lcom/vungle/warren/downloader/DownloadRequestMediator;->filePath:Ljava/lang/String;

    .line 329
    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    iget-object v6, v6, Lcom/vungle/warren/downloader/DownloadRequestMediator;->metaPath:Ljava/lang/String;

    .line 331
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 332
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 334
    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;
    invoke-static {v6}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v6

    if-eqz v6, :cond_40

    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    iget-boolean v6, v6, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v6, :cond_40

    .line 335
    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;
    invoke-static {v6}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v6

    invoke-interface {v6, v13}, Lcom/vungle/warren/downloader/DownloaderCache;->startTracking(Ljava/io/File;)V

    :cond_40
    move-object v15, v3

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_44
    if-nez v7, :cond_ea2

    .line 341
    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Start load: url: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x2

    const/4 v9, 0x3

    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 352
    :try_start_62
    iget-object v11, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v11, v6}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v11
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_68} :catch_a3d
    .catchall {:try_start_62 .. :try_end_68} :catchall_a2e

    if-nez v11, :cond_177

    .line 353
    :try_start_6a
    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v11

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Abort download, wrong state "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v8, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 354
    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->debugString(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;
    invoke-static {v3, v8}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 353
    invoke-static {v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_8a} :catch_15e
    .catchall {:try_start_6a .. :try_end_8a} :catchall_14f

    .line 612
    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request is done "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->debugString(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v2

    if-eq v2, v10, :cond_da

    if-eq v2, v9, :cond_d3

    if-eq v2, v7, :cond_cb

    const/4 v3, 0x5

    if-eq v2, v3, :cond_c3

    if-nez v14, :cond_da

    .line 632
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->removeMediator(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    invoke-static {v2, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2700(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_da

    .line 624
    :cond_c3
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->onErrorMediator(Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    invoke-static {v2, v15, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2500(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_da

    .line 621
    :cond_cb
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->onSuccessMediator(Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    invoke-static {v2, v13, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2400(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_da

    .line 627
    :cond_d3
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->onCancelledMediator(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    invoke-static {v2, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2600(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 637
    :cond_da
    :goto_da
    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Done with request in state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v4}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 638
    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->debugString(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 637
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v2

    .line 646
    :try_start_10b
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->removeNetworkListener()V
    invoke-static {v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2800(Lcom/vungle/warren/downloader/AssetDownloader;)V

    .line 647
    monitor-exit v2
    :try_end_111
    .catchall {:try_start_10b .. :try_end_111} :catchall_14b

    const/4 v2, 0x0

    .line 649
    invoke-static {v2}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 650
    invoke-static {v2}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 652
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;
    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v2

    if-eqz v2, :cond_14a

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    iget-boolean v2, v2, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v2, :cond_14a

    .line 653
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;
    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v2

    invoke-interface {v2, v13}, Lcom/vungle/warren/downloader/DownloaderCache;->stopTracking(Ljava/io/File;)V

    .line 654
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-virtual {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled()Z

    move-result v2

    if-nez v2, :cond_141

    .line 655
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;
    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v2

    invoke-interface {v2}, Lcom/vungle/warren/downloader/DownloaderCache;->clear()V

    goto :goto_14a

    .line 657
    :cond_141
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;
    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v2

    invoke-interface {v2}, Lcom/vungle/warren/downloader/DownloaderCache;->purge()Ljava/util/List;

    :cond_14a
    :goto_14a
    return-void

    :catchall_14b
    move-exception v0

    move-object v3, v0

    .line 647
    :try_start_14d
    monitor-exit v2
    :try_end_14e
    .catchall {:try_start_14d .. :try_end_14e} :catchall_14b

    throw v3

    :catchall_14f
    move-exception v0

    move-object v2, v0

    move/from16 v26, v14

    move-object v12, v15

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v27, 0x0

    goto/16 :goto_da2

    :catch_15e
    move-exception v0

    move-object v10, v2

    move-object/from16 v22, v4

    move-object v4, v5

    move/from16 v26, v14

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    :goto_16a
    const/4 v11, 0x5

    const/16 v19, 0x0

    const/16 v27, 0x0

    move-object v2, v0

    move-object/from16 v32, v15

    move v15, v12

    move-object/from16 v12, v32

    goto/16 :goto_a53

    .line 358
    :cond_177
    :try_start_177
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->isAnyConnected(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Z
    invoke-static {v3, v6}, Lcom/vungle/warren/downloader/AssetDownloader;->access$500(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Z

    move-result v3

    if-eqz v3, :cond_9fa

    .line 362
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->setConnected(Z)V

    .line 365
    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3
    :try_end_18b
    .catch Ljava/lang/Throwable; {:try_start_177 .. :try_end_18b} :catch_a22
    .catchall {:try_start_177 .. :try_end_18b} :catchall_a1b

    if-eqz v3, :cond_19e

    :try_start_18d
    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_19e

    .line 366
    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_19e
    .catch Ljava/lang/Throwable; {:try_start_18d .. :try_end_19e} :catch_15e
    .catchall {:try_start_18d .. :try_end_19e} :catchall_14f

    .line 369
    :cond_19e
    :try_start_19e
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_1a2
    .catch Ljava/lang/Throwable; {:try_start_19e .. :try_end_1a2} :catch_a22
    .catchall {:try_start_19e .. :try_end_1a2} :catchall_a1b

    const-wide/16 v20, 0x0

    if-eqz v3, :cond_1ad

    :try_start_1a6
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v22
    :try_end_1aa
    .catch Ljava/lang/Throwable; {:try_start_1a6 .. :try_end_1aa} :catch_15e
    .catchall {:try_start_1a6 .. :try_end_1aa} :catchall_14f

    move-wide/from16 v9, v22

    goto :goto_1af

    :cond_1ad
    move-wide/from16 v9, v20

    .line 371
    :goto_1af
    :try_start_1af
    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1b8
    .catch Ljava/lang/Throwable; {:try_start_1af .. :try_end_1b8} :catch_9eb
    .catchall {:try_start_1af .. :try_end_1b8} :catchall_9e4

    :try_start_1b8
    const-string v3, "already downloaded : "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", file exists = "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 375
    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->debugString(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;
    invoke-static {v3, v6}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 371
    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->extractMeta(Ljava/io/File;)Ljava/util/HashMap;
    invoke-static {v3, v5}, Lcom/vungle/warren/downloader/AssetDownloader;->access$600(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v3

    .line 379
    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v8, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->useCacheWithoutVerification(Lcom/vungle/warren/downloader/DownloadRequestMediator;Ljava/io/File;Ljava/util/Map;)Z
    invoke-static {v6, v8, v13, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$700(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;Ljava/io/File;Ljava/util/Map;)Z

    move-result v6
    :try_end_1ec
    .catch Ljava/lang/Throwable; {:try_start_1b8 .. :try_end_1ec} :catch_9eb
    .catchall {:try_start_1b8 .. :try_end_1ec} :catchall_a1b

    if-eqz v6, :cond_2d2

    .line 380
    :try_start_1ee
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v3, v7}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V

    .line 381
    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v6, "Using cache without verification, dispatch existing file"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1fc
    .catch Ljava/lang/Throwable; {:try_start_1ee .. :try_end_1fc} :catch_2c3
    .catchall {:try_start_1ee .. :try_end_1fc} :catchall_14f

    .line 612
    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request is done "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->debugString(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v2

    const/4 v6, 0x2

    if-eq v2, v6, :cond_24e

    const/4 v8, 0x3

    if-eq v2, v8, :cond_247

    if-eq v2, v7, :cond_23f

    const/4 v11, 0x5

    if-eq v2, v11, :cond_237

    if-nez v14, :cond_24e

    .line 632
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->removeMediator(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    invoke-static {v2, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2700(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_24e

    .line 624
    :cond_237
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->onErrorMediator(Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    invoke-static {v2, v15, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2500(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_24e

    .line 621
    :cond_23f
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->onSuccessMediator(Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    invoke-static {v2, v13, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2400(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_24e

    .line 627
    :cond_247
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->onCancelledMediator(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    invoke-static {v2, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2600(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 637
    :cond_24e
    :goto_24e
    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Done with request in state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v4}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 638
    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->debugString(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 637
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v2

    .line 646
    :try_start_27f
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->removeNetworkListener()V
    invoke-static {v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2800(Lcom/vungle/warren/downloader/AssetDownloader;)V

    .line 647
    monitor-exit v2
    :try_end_285
    .catchall {:try_start_27f .. :try_end_285} :catchall_2bf

    const/4 v2, 0x0

    .line 649
    invoke-static {v2}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 650
    invoke-static {v2}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 652
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;
    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v2

    if-eqz v2, :cond_2be

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    iget-boolean v2, v2, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v2, :cond_2be

    .line 653
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;
    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v2

    invoke-interface {v2, v13}, Lcom/vungle/warren/downloader/DownloaderCache;->stopTracking(Ljava/io/File;)V

    .line 654
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-virtual {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled()Z

    move-result v2

    if-nez v2, :cond_2b5

    .line 655
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;
    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v2

    invoke-interface {v2}, Lcom/vungle/warren/downloader/DownloaderCache;->clear()V

    goto :goto_2be

    .line 657
    :cond_2b5
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;
    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v2

    invoke-interface {v2}, Lcom/vungle/warren/downloader/DownloaderCache;->purge()Ljava/util/List;

    :cond_2be
    :goto_2be
    return-void

    :catchall_2bf
    move-exception v0

    move-object v3, v0

    .line 647
    :try_start_2c1
    monitor-exit v2
    :try_end_2c2
    .catchall {:try_start_2c1 .. :try_end_2c2} :catchall_2bf

    throw v3

    :catch_2c3
    move-exception v0

    move-object v10, v2

    move-object/from16 v22, v4

    move-object v4, v5

    move/from16 v26, v14

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x3

    goto/16 :goto_16a

    :cond_2d2
    const/4 v8, 0x3

    const/4 v11, 0x5

    .line 386
    :try_start_2d4
    new-instance v6, Lokhttp3/Request$Builder;

    invoke-direct {v6}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v6, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v6

    .line 388
    iget-object v7, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;
    :try_end_2df
    .catch Ljava/lang/Throwable; {:try_start_2d4 .. :try_end_2df} :catch_9d5
    .catchall {:try_start_2d4 .. :try_end_2df} :catchall_9ce

    move-object/from16 v23, v15

    const/4 v15, 0x4

    move-wide/from16 v30, v9

    const/4 v10, 0x3

    move-wide/from16 v8, v30

    move-object v10, v13

    move-object v11, v3

    move v15, v12

    move-object v12, v6

    :try_start_2eb
    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->appendHeaders(JLjava/io/File;Ljava/util/HashMap;Lokhttp3/Request$Builder;)V
    invoke-static/range {v7 .. v12}, Lcom/vungle/warren/downloader/AssetDownloader;->access$800(Lcom/vungle/warren/downloader/AssetDownloader;JLjava/io/File;Ljava/util/HashMap;Lokhttp3/Request$Builder;)V

    .line 390
    iget-object v7, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->okHttpClient:Lokhttp3/OkHttpClient;
    invoke-static {v7}, Lcom/vungle/warren/downloader/AssetDownloader;->access$900(Lcom/vungle/warren/downloader/AssetDownloader;)Lokhttp3/OkHttpClient;

    move-result-object v7

    invoke-virtual {v6}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v6

    invoke-virtual {v7, v6}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v6
    :try_end_2fc
    .catch Ljava/lang/Throwable; {:try_start_2eb .. :try_end_2fc} :catch_9b6
    .catchall {:try_start_2eb .. :try_end_2fc} :catchall_9b0

    .line 391
    :try_start_2fc
    invoke-interface {v6}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v7
    :try_end_300
    .catch Ljava/lang/Throwable; {:try_start_2fc .. :try_end_300} :catch_998
    .catchall {:try_start_2fc .. :try_end_300} :catchall_989

    .line 393
    :try_start_300
    iget-object v8, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->getContentLength(Lokhttp3/Response;)J
    invoke-static {v8, v7}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1000(Lcom/vungle/warren/downloader/AssetDownloader;Lokhttp3/Response;)J

    move-result-wide v8

    .line 395
    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Response code: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lokhttp3/Response;->code()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {v7}, Lokhttp3/Response;->code()I

    move-result v10
    :try_end_330
    .catch Ljava/lang/Throwable; {:try_start_300 .. :try_end_330} :catch_972
    .catchall {:try_start_300 .. :try_end_330} :catchall_964

    .line 399
    :try_start_330
    iget-object v11, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v12, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->notModified(Ljava/io/File;Lokhttp3/Response;Lcom/vungle/warren/downloader/DownloadRequestMediator;Ljava/util/HashMap;)Z
    invoke-static {v11, v13, v7, v12, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1100(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lokhttp3/Response;Lcom/vungle/warren/downloader/DownloadRequestMediator;Ljava/util/HashMap;)Z

    move-result v11
    :try_end_338
    .catch Ljava/lang/Throwable; {:try_start_330 .. :try_end_338} :catch_94c
    .catchall {:try_start_330 .. :try_end_338} :catchall_964

    if-nez v11, :cond_80e

    :try_start_33a
    iget-object v11, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v12, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 400
    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->useCacheOnFail(Lcom/vungle/warren/downloader/DownloadRequestMediator;Ljava/io/File;Ljava/util/Map;I)Z
    invoke-static {v11, v12, v13, v3, v10}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1200(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;Ljava/io/File;Ljava/util/Map;I)Z

    move-result v11

    if-eqz v11, :cond_346

    goto/16 :goto_80e

    .line 418
    :cond_346
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v11, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    move-object/from16 v24, v3

    move-wide/from16 v25, v30

    move/from16 v27, v10

    move-object/from16 v28, v7

    move-object/from16 v29, v11

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->partialMalformed(JILokhttp3/Response;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Z
    invoke-static/range {v24 .. v29}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1400(Lcom/vungle/warren/downloader/AssetDownloader;JILokhttp3/Response;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Z

    move-result v3
    :try_end_358
    .catch Ljava/lang/Throwable; {:try_start_33a .. :try_end_358} :catch_7f6
    .catchall {:try_start_33a .. :try_end_358} :catchall_7e7

    if-eqz v3, :cond_40e

    add-int/lit8 v12, v15, 0x1

    .line 420
    :try_start_35c
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget v3, v3, Lcom/vungle/warren/downloader/AssetDownloader;->maxReconnectAttempts:I

    if-ge v15, v3, :cond_3d6

    .line 421
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    const/4 v8, 0x0

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->deleteFileAndMeta(Ljava/io/File;Ljava/io/File;Z)V
    invoke-static {v3, v13, v5, v8}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1500(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Ljava/io/File;Z)V
    :try_end_368
    .catch Ljava/lang/Throwable; {:try_start_35c .. :try_end_368} :catch_3f7
    .catchall {:try_start_35c .. :try_end_368} :catchall_3ed

    if-eqz v7, :cond_377

    .line 604
    invoke-virtual {v7}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    if-eqz v3, :cond_377

    .line 605
    invoke-virtual {v7}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->close()V

    :cond_377
    if-eqz v6, :cond_37c

    .line 609
    invoke-interface {v6}, Lokhttp3/Call;->cancel()V

    .line 612
    :cond_37c
    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "request is done "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v8, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->debugString(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not removing connections and listener "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v8, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 641
    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->debugString(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 640
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v3

    .line 646
    :try_start_3bf
    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->removeNetworkListener()V
    invoke-static {v6}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2800(Lcom/vungle/warren/downloader/AssetDownloader;)V

    .line 647
    monitor-exit v3
    :try_end_3c5
    .catchall {:try_start_3bf .. :try_end_3c5} :catchall_3d2

    const/4 v3, 0x0

    .line 649
    invoke-static {v3}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 650
    invoke-static {v3}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    move-object/from16 v15, v23

    const/4 v3, 0x0

    const/4 v7, 0x0

    goto/16 :goto_44

    :catchall_3d2
    move-exception v0

    move-object v2, v0

    .line 647
    :try_start_3d4
    monitor-exit v3
    :try_end_3d5
    .catchall {:try_start_3d4 .. :try_end_3d5} :catchall_3d2

    throw v2

    .line 426
    :cond_3d6
    :try_start_3d6
    new-instance v3, Lcom/vungle/warren/downloader/Downloader$RequestException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Lcom/vungle/warren/downloader/Downloader$RequestException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3ed
    .catch Ljava/lang/Throwable; {:try_start_3d6 .. :try_end_3ed} :catch_3f7
    .catchall {:try_start_3d6 .. :try_end_3ed} :catchall_3ed

    :catchall_3ed
    move-exception v0

    move-object v2, v0

    move-object/from16 v27, v6

    move/from16 v26, v14

    move-object/from16 v12, v23

    goto/16 :goto_7ef

    :catch_3f7
    move-exception v0

    move-object/from16 v22, v4

    move-object v4, v5

    move-object/from16 v27, v6

    move v5, v10

    move v15, v12

    :goto_3ff
    move/from16 v26, v14

    :goto_401
    move-object/from16 v12, v23

    :goto_403
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v11, 0x5

    const/16 v19, 0x0

    move-object v10, v2

    :goto_40b
    move-object v2, v0

    goto/16 :goto_a53

    .line 429
    :cond_40e
    :try_start_40e
    invoke-virtual {v7}, Lokhttp3/Response;->isSuccessful()Z

    move-result v3
    :try_end_412
    .catch Ljava/lang/Throwable; {:try_start_40e .. :try_end_412} :catch_7f6
    .catchall {:try_start_40e .. :try_end_412} :catchall_7e7

    if-eqz v3, :cond_7b8

    const/16 v3, 0xce

    if-eq v10, v3, :cond_429

    .line 435
    :try_start_418
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    const/4 v11, 0x0

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->deleteFileAndMeta(Ljava/io/File;Ljava/io/File;Z)V
    invoke-static {v3, v13, v5, v11}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1500(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Ljava/io/File;Z)V
    :try_end_41e
    .catch Ljava/lang/Throwable; {:try_start_418 .. :try_end_41e} :catch_421
    .catchall {:try_start_418 .. :try_end_41e} :catchall_3ed

    move-wide/from16 v11, v20

    goto :goto_42b

    :catch_421
    move-exception v0

    move-object/from16 v22, v4

    move-object v4, v5

    move-object/from16 v27, v6

    move v5, v10

    goto :goto_3ff

    :cond_429
    move-wide/from16 v11, v30

    .line 438
    :goto_42b
    :try_start_42b
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 440
    invoke-virtual {v7}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v3
    :try_end_432
    .catch Ljava/lang/Throwable; {:try_start_42b .. :try_end_432} :catch_7a2
    .catchall {:try_start_42b .. :try_end_432} :catchall_7e7

    move/from16 v17, v15

    .line 442
    :try_start_434
    iget-object v15, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->checkEncoding(Ljava/io/File;Ljava/io/File;Lokhttp3/Headers;)V
    invoke-static {v15, v13, v5, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1600(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Ljava/io/File;Lokhttp3/Headers;)V

    .line 443
    iget-object v15, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->makeMeta(Ljava/io/File;Lokhttp3/Headers;Ljava/lang/String;)Ljava/util/HashMap;
    invoke-static {v15, v5, v3, v4}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1700(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lokhttp3/Headers;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 445
    invoke-static {v7}, Lokhttp3/internal/http/HttpHeaders;->hasBody(Lokhttp3/Response;)Z

    move-result v15

    if-eqz v15, :cond_775

    .line 448
    iget-object v15, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;
    invoke-static {v15}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v15
    :try_end_44b
    .catch Ljava/lang/Throwable; {:try_start_434 .. :try_end_44b} :catch_78e
    .catchall {:try_start_434 .. :try_end_44b} :catchall_7e7

    if-eqz v15, :cond_478

    .line 449
    :try_start_44d
    iget-object v15, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;
    invoke-static {v15}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v15
    :try_end_453
    .catch Ljava/lang/Throwable; {:try_start_44d .. :try_end_453} :catch_46c
    .catchall {:try_start_44d .. :try_end_453} :catchall_3ed

    move-object/from16 v22, v4

    move-object/from16 v24, v5

    :try_start_457
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v15, v13, v4, v5}, Lcom/vungle/warren/downloader/DownloaderCache;->setCacheLastUpdateTimestamp(Ljava/io/File;J)V
    :try_end_45e
    .catch Ljava/lang/Throwable; {:try_start_457 .. :try_end_45e} :catch_45f
    .catchall {:try_start_457 .. :try_end_45e} :catchall_3ed

    goto :goto_47c

    :catch_45f
    move-exception v0

    move-object/from16 v27, v6

    move v5, v10

    move/from16 v26, v14

    move/from16 v15, v17

    move-object/from16 v12, v23

    move-object/from16 v4, v24

    goto :goto_403

    :catch_46c
    move-exception v0

    move-object/from16 v22, v4

    move-object v4, v5

    move-object/from16 v27, v6

    move v5, v10

    move/from16 v26, v14

    move/from16 v15, v17

    goto :goto_401

    :cond_478
    move-object/from16 v22, v4

    move-object/from16 v24, v5

    .line 452
    :goto_47c
    :try_start_47c
    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->decodeGzipIfNeeded(Lokhttp3/Response;)Lokhttp3/ResponseBody;
    invoke-static {v4, v7}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1800(Lcom/vungle/warren/downloader/AssetDownloader;Lokhttp3/Response;)Lokhttp3/ResponseBody;

    move-result-object v4

    .line 454
    invoke-virtual {v4}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v5
    :try_end_486
    .catch Ljava/lang/Throwable; {:try_start_47c .. :try_end_486} :catch_769
    .catchall {:try_start_47c .. :try_end_486} :catchall_7e7

    .line 456
    :try_start_486
    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v15
    :try_end_48a
    .catch Ljava/lang/Throwable; {:try_start_486 .. :try_end_48a} :catch_751
    .catchall {:try_start_486 .. :try_end_48a} :catchall_747

    move/from16 v25, v10

    :try_start_48c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_491
    .catch Ljava/lang/Throwable; {:try_start_48c .. :try_end_491} :catch_739
    .catchall {:try_start_48c .. :try_end_491} :catchall_747

    move/from16 v26, v14

    :try_start_493
    const-string v14, "Start download from bytes: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;
    :try_end_49d
    .catch Ljava/lang/Throwable; {:try_start_493 .. :try_end_49d} :catch_734
    .catchall {:try_start_493 .. :try_end_49d} :catchall_730

    move-object/from16 v27, v6

    :try_start_49f
    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 457
    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->debugString(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;
    invoke-static {v14, v6}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 456
    invoke-static {v15, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-long/2addr v8, v11

    .line 462
    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "final offset = "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c8
    .catch Ljava/lang/Throwable; {:try_start_49f .. :try_end_4c8} :catch_72d
    .catchall {:try_start_49f .. :try_end_4c8} :catchall_72b

    cmp-long v6, v11, v20

    if-nez v6, :cond_4ea

    .line 464
    :try_start_4cc
    invoke-static {v13}, Lokio/Okio;->sink(Ljava/io/File;)Lokio/Sink;

    move-result-object v6
    :try_end_4d0
    .catch Ljava/lang/Throwable; {:try_start_4cc .. :try_end_4d0} :catch_4d7
    .catchall {:try_start_4cc .. :try_end_4d0} :catchall_4d1

    goto :goto_4ee

    :catchall_4d1
    move-exception v0

    move-object v2, v0

    move-object/from16 v12, v23

    goto/16 :goto_7f0

    :catch_4d7
    move-exception v0

    move-object v10, v2

    move-object v6, v5

    move/from16 v15, v17

    move-object/from16 v12, v23

    move-object/from16 v4, v24

    move/from16 v5, v25

    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v11, 0x5

    const/16 v19, 0x0

    goto/16 :goto_40b

    :cond_4ea
    :try_start_4ea
    invoke-static {v13}, Lokio/Okio;->appendingSink(Ljava/io/File;)Lokio/Sink;

    move-result-object v6

    :goto_4ee
    invoke-static {v6}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v6
    :try_end_4f2
    .catch Ljava/lang/Throwable; {:try_start_4ea .. :try_end_4f2} :catch_72d
    .catchall {:try_start_4ea .. :try_end_4f2} :catchall_72b

    const/4 v10, 0x0

    .line 467
    :try_start_4f3
    iput v10, v2, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    .line 468
    invoke-virtual {v4}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v14

    iput-wide v14, v2, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->sizeBytes:J

    .line 469
    iput-wide v11, v2, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->startBytes:J

    .line 471
    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v10, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->onProgressMediator(Lcom/vungle/warren/downloader/DownloadRequestMediator;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V
    invoke-static {v4, v10, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1900(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V

    move-wide/from16 v14, v20

    const/4 v4, 0x0

    .line 474
    :goto_507
    iget-object v10, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    move/from16 v28, v4

    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v10
    :try_end_510
    .catch Ljava/lang/Throwable; {:try_start_4f3 .. :try_end_510} :catch_717
    .catchall {:try_start_4f3 .. :try_end_510} :catchall_70f

    if-eqz v10, :cond_5a5

    .line 475
    :try_start_512
    invoke-interface {v6}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object v4
    :try_end_516
    .catch Ljava/lang/Throwable; {:try_start_512 .. :try_end_516} :catch_594
    .catchall {:try_start_512 .. :try_end_516} :catchall_58c

    move-object v10, v2

    move-object/from16 v29, v3

    const-wide/16 v2, 0x800

    :try_start_51b
    invoke-interface {v5, v4, v2, v3}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v30, -0x1

    cmp-long v4, v2, v30

    if-eqz v4, :cond_5a8

    .line 477
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_582

    .line 481
    invoke-interface {v6}, Lokio/BufferedSink;->emit()Lokio/BufferedSink;

    add-long/2addr v14, v2

    add-long v2, v11, v14

    const-wide/16 v30, 0x64

    cmp-long v4, v8, v20

    if-lez v4, :cond_53d

    mul-long v2, v2, v30

    .line 488
    div-long/2addr v2, v8

    long-to-int v3, v2

    move v4, v3

    goto :goto_53f

    :cond_53d
    move/from16 v4, v28

    .line 491
    :goto_53f
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_57a

    .line 495
    :goto_547
    iget v2, v10, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->progressPercent:I

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->progressStep:I
    invoke-static {v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2000(Lcom/vungle/warren/downloader/AssetDownloader;)I

    move-result v3

    add-int/2addr v2, v3

    if-gt v2, v4, :cond_576

    iget v2, v10, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->progressPercent:I

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    .line 496
    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->progressStep:I
    invoke-static {v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2000(Lcom/vungle/warren/downloader/AssetDownloader;)I

    move-result v3

    add-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v28, v2, v30

    if-gtz v28, :cond_576

    const/4 v2, 0x1

    .line 498
    iput v2, v10, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    .line 499
    iget v2, v10, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->progressPercent:I

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->progressStep:I
    invoke-static {v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2000(Lcom/vungle/warren/downloader/AssetDownloader;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v10, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->progressPercent:I

    .line 500
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->onProgressMediator(Lcom/vungle/warren/downloader/DownloadRequestMediator;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V
    invoke-static {v2, v3, v10}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1900(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V

    goto :goto_547

    :cond_576
    move-object v2, v10

    move-object/from16 v3, v29

    goto :goto_507

    .line 492
    :cond_57a
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Request is not connected"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 478
    :cond_582
    new-instance v2, Lcom/vungle/warren/downloader/Downloader$RequestException;

    const-string v3, "File is not existing"

    invoke-direct {v2, v3}, Lcom/vungle/warren/downloader/Downloader$RequestException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_58a
    .catch Ljava/lang/Throwable; {:try_start_51b .. :try_end_58a} :catch_58a
    .catchall {:try_start_51b .. :try_end_58a} :catchall_58c

    :catch_58a
    move-exception v0

    goto :goto_596

    :catchall_58c
    move-exception v0

    move-object v2, v0

    move-object/from16 v19, v6

    move-object/from16 v12, v23

    goto/16 :goto_a39

    :catch_594
    move-exception v0

    move-object v10, v2

    :goto_596
    move-object v2, v0

    move-object/from16 v19, v6

    move/from16 v15, v17

    move-object/from16 v12, v23

    move-object/from16 v4, v24

    :goto_59f
    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v11, 0x5

    goto/16 :goto_726

    :cond_5a5
    move-object v10, v2

    move-object/from16 v29, v3

    .line 504
    :cond_5a8
    :try_start_5a8
    invoke-interface {v6}, Lokio/BufferedSink;->flush()V

    .line 506
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v2
    :try_end_5b2
    .catch Ljava/lang/Throwable; {:try_start_5a8 .. :try_end_5b2} :catch_70d
    .catchall {:try_start_5a8 .. :try_end_5b2} :catchall_70f

    if-eqz v2, :cond_5f2

    .line 508
    :try_start_5b4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "DOWNLOAD_COMPLETE"

    .line 509
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v9, v29

    invoke-virtual {v9, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "Last-Cache-Verification"

    .line 510
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "Last-Download"

    .line 511
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;
    :try_end_5d9
    .catch Ljava/lang/Throwable; {:try_start_5b4 .. :try_end_5d9} :catch_5e7
    .catchall {:try_start_5b4 .. :try_end_5d9} :catchall_58c

    move-object/from16 v4, v24

    :try_start_5db
    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->saveMeta(Ljava/io/File;Ljava/util/HashMap;)V
    invoke-static {v2, v4, v9}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1300(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Ljava/util/HashMap;)V

    .line 514
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V
    :try_end_5e4
    .catch Ljava/lang/Throwable; {:try_start_5db .. :try_end_5e4} :catch_5e5
    .catchall {:try_start_5db .. :try_end_5e4} :catchall_58c

    goto :goto_61e

    :catch_5e5
    move-exception v0

    goto :goto_5ea

    :catch_5e7
    move-exception v0

    move-object/from16 v4, v24

    :goto_5ea
    move-object v2, v0

    move-object/from16 v19, v6

    move/from16 v15, v17

    move-object/from16 v12, v23

    goto :goto_59f

    :cond_5f2
    move-object/from16 v4, v24

    const/4 v2, 0x6

    .line 516
    :try_start_5f5
    iput v2, v10, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    .line 517
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->onProgressMediator(Lcom/vungle/warren/downloader/DownloadRequestMediator;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V
    invoke-static {v2, v3, v10}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1900(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V

    .line 518
    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "State has changed, cancelling download "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v9, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->debugString(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61e
    .catch Ljava/lang/Throwable; {:try_start_5f5 .. :try_end_61e} :catch_709
    .catchall {:try_start_5f5 .. :try_end_61e} :catchall_70f

    :goto_61e
    if-eqz v7, :cond_62d

    .line 604
    invoke-virtual {v7}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    if-eqz v2, :cond_62d

    .line 605
    invoke-virtual {v7}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->close()V

    :cond_62d
    if-eqz v27, :cond_632

    .line 609
    invoke-interface/range {v27 .. v27}, Lokhttp3/Call;->cancel()V

    .line 612
    :cond_632
    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "request is done "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v8, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->debugString(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v2

    const/4 v8, 0x2

    if-eq v2, v8, :cond_66d

    const/4 v9, 0x3

    if-eq v2, v9, :cond_684

    const/4 v3, 0x4

    if-eq v2, v3, :cond_67a

    const/4 v11, 0x5

    if-eq v2, v11, :cond_670

    if-nez v26, :cond_66d

    .line 632
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->removeMediator(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    invoke-static {v2, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2700(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    :cond_66d
    move-object/from16 v12, v23

    goto :goto_68d

    .line 624
    :cond_670
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    move-object/from16 v12, v23

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->onErrorMediator(Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    invoke-static {v2, v12, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2500(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_68d

    :cond_67a
    move-object/from16 v12, v23

    .line 621
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->onSuccessMediator(Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    invoke-static {v2, v13, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2400(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_68d

    :cond_684
    move-object/from16 v12, v23

    .line 627
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->onCancelledMediator(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    invoke-static {v2, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2600(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 637
    :goto_68d
    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Done with request in state "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v7}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v8, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 638
    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->debugString(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 637
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v2

    .line 646
    :try_start_6be
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->removeNetworkListener()V
    invoke-static {v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2800(Lcom/vungle/warren/downloader/AssetDownloader;)V

    .line 647
    monitor-exit v2
    :try_end_6c4
    .catchall {:try_start_6be .. :try_end_6c4} :catchall_705

    .line 649
    invoke-static {v6}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 650
    invoke-static {v5}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 652
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;
    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v2

    if-eqz v2, :cond_6fc

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    iget-boolean v2, v2, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v2, :cond_6fc

    .line 653
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;
    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v2

    invoke-interface {v2, v13}, Lcom/vungle/warren/downloader/DownloaderCache;->stopTracking(Ljava/io/File;)V

    .line 654
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-virtual {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled()Z

    move-result v2

    if-nez v2, :cond_6f3

    .line 655
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;
    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v2

    invoke-interface {v2}, Lcom/vungle/warren/downloader/DownloaderCache;->clear()V

    goto :goto_6fc

    .line 657
    :cond_6f3
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;
    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v2

    invoke-interface {v2}, Lcom/vungle/warren/downloader/DownloaderCache;->purge()Ljava/util/List;

    :cond_6fc
    :goto_6fc
    move-object v15, v12

    move/from16 v12, v17

    move/from16 v14, v26

    const/4 v7, 0x1

    const/4 v9, 0x0

    goto/16 :goto_d91

    :catchall_705
    move-exception v0

    move-object v3, v0

    .line 647
    :try_start_707
    monitor-exit v2
    :try_end_708
    .catchall {:try_start_707 .. :try_end_708} :catchall_705

    throw v3

    :catch_709
    move-exception v0

    move-object/from16 v12, v23

    goto :goto_71d

    :catch_70d
    move-exception v0

    goto :goto_719

    :catchall_70f
    move-exception v0

    move-object/from16 v12, v23

    move-object v2, v0

    move-object/from16 v19, v6

    goto/16 :goto_a39

    :catch_717
    move-exception v0

    move-object v10, v2

    :goto_719
    move-object/from16 v12, v23

    move-object/from16 v4, v24

    :goto_71d
    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v11, 0x5

    move-object v2, v0

    move-object/from16 v19, v6

    move/from16 v15, v17

    const/4 v3, 0x0

    :goto_726
    move-object v6, v5

    move/from16 v5, v25

    goto/16 :goto_a53

    :catchall_72b
    move-exception v0

    goto :goto_74c

    :catch_72d
    move-exception v0

    move-object v10, v2

    goto :goto_73f

    :catchall_730
    move-exception v0

    move-object/from16 v27, v6

    goto :goto_74c

    :catch_734
    move-exception v0

    move-object v10, v2

    move-object/from16 v27, v6

    goto :goto_73f

    :catch_739
    move-exception v0

    move-object v10, v2

    move-object/from16 v27, v6

    move/from16 v26, v14

    :goto_73f
    move-object/from16 v12, v23

    move-object/from16 v4, v24

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v11, 0x5

    goto :goto_760

    :catchall_747
    move-exception v0

    move-object/from16 v27, v6

    move/from16 v26, v14

    :goto_74c
    move-object/from16 v12, v23

    move-object v2, v0

    goto/16 :goto_7f0

    :catch_751
    move-exception v0

    move-object/from16 v27, v6

    move/from16 v25, v10

    move/from16 v26, v14

    move-object/from16 v12, v23

    move-object/from16 v4, v24

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v11, 0x5

    move-object v10, v2

    :goto_760
    move-object v2, v0

    move-object v6, v5

    move/from16 v15, v17

    move/from16 v5, v25

    const/4 v3, 0x0

    goto/16 :goto_80a

    :catch_769
    move-exception v0

    move-object/from16 v27, v6

    move/from16 v25, v10

    move/from16 v26, v14

    move-object/from16 v12, v23

    move-object/from16 v4, v24

    goto :goto_79a

    :cond_775
    move-object/from16 v22, v4

    move-object v4, v5

    move-object/from16 v27, v6

    move/from16 v25, v10

    move/from16 v26, v14

    move-object/from16 v12, v23

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v11, 0x5

    move-object v10, v2

    .line 446
    :try_start_784
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Response body is null"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_78c
    .catch Ljava/lang/Throwable; {:try_start_784 .. :try_end_78c} :catch_78c
    .catchall {:try_start_784 .. :try_end_78c} :catchall_83e

    :catch_78c
    move-exception v0

    goto :goto_79e

    :catch_78e
    move-exception v0

    move-object/from16 v22, v4

    move-object v4, v5

    move-object/from16 v27, v6

    move/from16 v25, v10

    move/from16 v26, v14

    move-object/from16 v12, v23

    :goto_79a
    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v11, 0x5

    move-object v10, v2

    :goto_79e
    move-object v2, v0

    move/from16 v15, v17

    goto :goto_7b5

    :catch_7a2
    move-exception v0

    move-object/from16 v22, v4

    move-object v4, v5

    move-object/from16 v27, v6

    move/from16 v25, v10

    move/from16 v26, v14

    move/from16 v17, v15

    move-object/from16 v12, v23

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v11, 0x5

    move-object v10, v2

    move-object v2, v0

    :goto_7b5
    move/from16 v5, v25

    goto :goto_808

    :cond_7b8
    move-object/from16 v22, v4

    move-object v4, v5

    move-object/from16 v27, v6

    move/from16 v25, v10

    move/from16 v26, v14

    move/from16 v17, v15

    move-object/from16 v12, v23

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v11, 0x5

    move-object v10, v2

    .line 430
    :try_start_7c9
    new-instance v2, Lcom/vungle/warren/downloader/Downloader$RequestException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Code: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7d5
    .catch Ljava/lang/Throwable; {:try_start_7c9 .. :try_end_7d5} :catch_7e2
    .catchall {:try_start_7c9 .. :try_end_7d5} :catchall_83e

    move/from16 v5, v25

    :try_start_7d7
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vungle/warren/downloader/Downloader$RequestException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_7e2
    move-exception v0

    move/from16 v5, v25

    goto/16 :goto_841

    :catchall_7e7
    move-exception v0

    move-object/from16 v27, v6

    move/from16 v26, v14

    move-object/from16 v12, v23

    :goto_7ee
    move-object v2, v0

    :goto_7ef
    const/4 v5, 0x0

    :goto_7f0
    const/16 v18, 0x1

    const/16 v19, 0x0

    goto/16 :goto_da2

    :catch_7f6
    move-exception v0

    move-object/from16 v22, v4

    move-object v4, v5

    move-object/from16 v27, v6

    move v5, v10

    move/from16 v26, v14

    move/from16 v17, v15

    move-object/from16 v12, v23

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v11, 0x5

    move-object v10, v2

    move-object v2, v0

    :goto_808
    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_80a
    const/16 v19, 0x0

    goto/16 :goto_a53

    :cond_80e
    :goto_80e
    move-object/from16 v22, v4

    move-object v4, v5

    move-object/from16 v27, v6

    move v5, v10

    move/from16 v26, v14

    move/from16 v17, v15

    move-object/from16 v12, v23

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v11, 0x5

    move-object v10, v2

    const/16 v2, 0x130

    if-ne v5, v2, :cond_845

    const-string v2, "Last-Cache-Verification"

    .line 404
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 403
    invoke-virtual {v3, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->saveMeta(Ljava/io/File;Ljava/util/HashMap;)V
    invoke-static {v2, v4, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1300(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Ljava/util/HashMap;)V

    .line 406
    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Verification success, dispatch existing file"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83d
    .catch Ljava/lang/Throwable; {:try_start_7d7 .. :try_end_83d} :catch_840
    .catchall {:try_start_7d7 .. :try_end_83d} :catchall_83e

    goto :goto_861

    :catchall_83e
    move-exception v0

    goto :goto_7ee

    :catch_840
    move-exception v0

    :goto_841
    move-object v2, v0

    move/from16 v15, v17

    goto :goto_808

    .line 409
    :cond_845
    :try_start_845
    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Using local cache file despite response code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v7}, Lokhttp3/Response;->code()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 409
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :goto_861
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V
    :try_end_867
    .catch Ljava/lang/Throwable; {:try_start_845 .. :try_end_867} :catch_942
    .catchall {:try_start_845 .. :try_end_867} :catchall_940

    if-eqz v7, :cond_876

    .line 604
    invoke-virtual {v7}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    if-eqz v2, :cond_876

    .line 605
    invoke-virtual {v7}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->close()V

    :cond_876
    if-eqz v27, :cond_87b

    .line 609
    invoke-interface/range {v27 .. v27}, Lokhttp3/Call;->cancel()V

    .line 612
    :cond_87b
    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request is done "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->debugString(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v2

    if-eq v2, v8, :cond_8cb

    if-eq v2, v9, :cond_8c4

    const/4 v3, 0x4

    if-eq v2, v3, :cond_8bc

    if-eq v2, v11, :cond_8b4

    if-nez v26, :cond_8cb

    .line 632
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->removeMediator(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    invoke-static {v2, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2700(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_8cb

    .line 624
    :cond_8b4
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->onErrorMediator(Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    invoke-static {v2, v12, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2500(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_8cb

    .line 621
    :cond_8bc
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->onSuccessMediator(Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    invoke-static {v2, v13, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2400(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_8cb

    .line 627
    :cond_8c4
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->onCancelledMediator(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    invoke-static {v2, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2600(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 637
    :cond_8cb
    :goto_8cb
    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Done with request in state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v4}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 638
    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->debugString(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 637
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v2

    .line 646
    :try_start_8fc
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->removeNetworkListener()V
    invoke-static {v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2800(Lcom/vungle/warren/downloader/AssetDownloader;)V

    .line 647
    monitor-exit v2
    :try_end_902
    .catchall {:try_start_8fc .. :try_end_902} :catchall_93c

    const/4 v3, 0x0

    .line 649
    invoke-static {v3}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 650
    invoke-static {v3}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 652
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;
    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v2

    if-eqz v2, :cond_93b

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    iget-boolean v2, v2, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v2, :cond_93b

    .line 653
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;
    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v2

    invoke-interface {v2, v13}, Lcom/vungle/warren/downloader/DownloaderCache;->stopTracking(Ljava/io/File;)V

    .line 654
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-virtual {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled()Z

    move-result v2

    if-nez v2, :cond_932

    .line 655
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;
    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v2

    invoke-interface {v2}, Lcom/vungle/warren/downloader/DownloaderCache;->clear()V

    goto :goto_93b

    .line 657
    :cond_932
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;
    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v2

    invoke-interface {v2}, Lcom/vungle/warren/downloader/DownloaderCache;->purge()Ljava/util/List;

    :cond_93b
    :goto_93b
    return-void

    :catchall_93c
    move-exception v0

    move-object v3, v0

    .line 647
    :try_start_93e
    monitor-exit v2
    :try_end_93f
    .catchall {:try_start_93e .. :try_end_93f} :catchall_93c

    throw v3

    :catchall_940
    move-exception v0

    goto :goto_96b

    :catch_942
    move-exception v0

    const/4 v3, 0x0

    move-object v2, v0

    move-object v6, v3

    move-object/from16 v19, v6

    move/from16 v15, v17

    goto/16 :goto_a53

    :catch_94c
    move-exception v0

    move-object/from16 v22, v4

    move-object v4, v5

    move-object/from16 v27, v6

    move v5, v10

    move/from16 v26, v14

    move/from16 v17, v15

    move-object/from16 v12, v23

    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v11, 0x5

    move-object v10, v2

    move-object v2, v0

    move-object v6, v3

    move-object/from16 v19, v6

    goto/16 :goto_a53

    :catchall_964
    move-exception v0

    move-object/from16 v27, v6

    move/from16 v26, v14

    move-object/from16 v12, v23

    :goto_96b
    const/4 v3, 0x0

    move-object v2, v0

    move-object v5, v3

    move-object/from16 v19, v5

    goto/16 :goto_a39

    :catch_972
    move-exception v0

    move-object v10, v2

    move-object/from16 v22, v4

    move-object v4, v5

    move-object/from16 v27, v6

    move/from16 v26, v14

    move/from16 v17, v15

    move-object/from16 v12, v23

    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v11, 0x5

    move-object v2, v0

    move-object v6, v3

    move-object/from16 v19, v6

    goto/16 :goto_a52

    :catchall_989
    move-exception v0

    move-object/from16 v27, v6

    move/from16 v26, v14

    move-object/from16 v12, v23

    const/4 v3, 0x0

    move-object v2, v0

    move-object v5, v3

    move-object v7, v5

    move-object/from16 v19, v7

    goto/16 :goto_a39

    :catch_998
    move-exception v0

    move-object v10, v2

    move-object/from16 v22, v4

    move-object v4, v5

    move-object/from16 v27, v6

    move/from16 v26, v14

    move/from16 v17, v15

    move-object/from16 v12, v23

    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v11, 0x5

    move-object v2, v0

    move-object v6, v3

    move-object v7, v6

    move-object/from16 v19, v7

    goto/16 :goto_a52

    :catchall_9b0
    move-exception v0

    move/from16 v26, v14

    move-object/from16 v12, v23

    goto :goto_9d2

    :catch_9b6
    move-exception v0

    move-object v10, v2

    move-object/from16 v22, v4

    move-object v4, v5

    move/from16 v26, v14

    move/from16 v17, v15

    move-object/from16 v12, v23

    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v11, 0x5

    move-object v2, v0

    move-object v6, v3

    move-object v7, v6

    move-object/from16 v19, v7

    move-object/from16 v27, v19

    goto/16 :goto_a52

    :catchall_9ce
    move-exception v0

    move/from16 v26, v14

    move-object v12, v15

    :goto_9d2
    const/4 v3, 0x0

    goto/16 :goto_a32

    :catch_9d5
    move-exception v0

    move-object v10, v2

    move-object/from16 v22, v4

    move-object v4, v5

    move/from16 v17, v12

    move/from16 v26, v14

    move-object v12, v15

    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x3

    goto/16 :goto_a49

    :catchall_9e4
    move-exception v0

    move/from16 v26, v14

    move-object v12, v15

    const/4 v3, 0x0

    const/4 v8, 0x2

    goto :goto_a20

    :catch_9eb
    move-exception v0

    move-object v10, v2

    move-object/from16 v22, v4

    move-object v4, v5

    move/from16 v17, v12

    move/from16 v26, v14

    move-object v12, v15

    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x3

    goto/16 :goto_a48

    :cond_9fa
    move-object v10, v2

    move-object/from16 v22, v4

    move-object v4, v5

    move/from16 v17, v12

    move/from16 v26, v14

    move-object v12, v15

    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v11, 0x5

    .line 359
    :try_start_a06
    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Request is not connected to required network"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    new-instance v2, Ljava/io/IOException;

    const-string v5, "Not connected to correct network"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_a17
    .catch Ljava/lang/Throwable; {:try_start_a06 .. :try_end_a17} :catch_a19
    .catchall {:try_start_a06 .. :try_end_a17} :catchall_a17

    :catchall_a17
    move-exception v0

    goto :goto_a32

    :catch_a19
    move-exception v0

    goto :goto_a49

    :catchall_a1b
    move-exception v0

    move/from16 v26, v14

    move-object v12, v15

    const/4 v3, 0x0

    :goto_a20
    const/4 v11, 0x5

    goto :goto_a32

    :catch_a22
    move-exception v0

    move-object v10, v2

    move-object/from16 v22, v4

    move-object v4, v5

    move/from16 v17, v12

    move/from16 v26, v14

    move-object v12, v15

    const/4 v3, 0x0

    goto :goto_a47

    :catchall_a2e
    move-exception v0

    move/from16 v26, v14

    move-object v12, v15

    :goto_a32
    move-object v2, v0

    move-object v5, v3

    move-object v7, v5

    move-object/from16 v19, v7

    move-object/from16 v27, v19

    :goto_a39
    const/16 v18, 0x1

    goto/16 :goto_da2

    :catch_a3d
    move-exception v0

    move-object v10, v2

    move-object/from16 v22, v4

    move-object v4, v5

    move/from16 v17, v12

    move/from16 v26, v14

    move-object v12, v15

    :goto_a47
    const/4 v8, 0x2

    :goto_a48
    const/4 v11, 0x5

    :goto_a49
    move-object v2, v0

    move-object v6, v3

    move-object v7, v6

    move-object/from16 v19, v7

    move-object/from16 v27, v19

    move/from16 v15, v17

    :goto_a52
    const/4 v5, -0x1

    .line 523
    :goto_a53
    :try_start_a53
    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v14

    const-string v3, "Exception on download"

    invoke-static {v14, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 524
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v3, v9}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v3
    :try_end_a62
    .catchall {:try_start_a53 .. :try_end_a62} :catchall_d9c

    if-nez v3, :cond_a6d

    .line 525
    :try_start_a64
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v3, v11}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V
    :try_end_a69
    .catchall {:try_start_a64 .. :try_end_a69} :catchall_a6a

    goto :goto_a6d

    :catchall_a6a
    move-exception v0

    goto/16 :goto_d9e

    .line 528
    :cond_a6d
    :goto_a6d
    :try_start_a6d
    instance-of v3, v2, Ljava/io/IOException;
    :try_end_a6f
    .catchall {:try_start_a6d .. :try_end_a6f} :catchall_d9c

    if-eqz v3, :cond_c71

    .line 529
    :try_start_a71
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v14, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->isAnyConnected(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Z
    invoke-static {v3, v14}, Lcom/vungle/warren/downloader/AssetDownloader;->access$500(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Z

    move-result v3

    if-nez v3, :cond_b78

    if-nez v7, :cond_b78

    .line 532
    iget-object v14, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v11, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    iget-object v8, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    .line 533
    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->extractMeta(Ljava/io/File;)Ljava/util/HashMap;
    invoke-static {v8, v4}, Lcom/vungle/warren/downloader/AssetDownloader;->access$600(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v8

    const/4 v9, -0x1

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->useCacheOnFail(Lcom/vungle/warren/downloader/DownloadRequestMediator;Ljava/io/File;Ljava/util/Map;I)Z
    invoke-static {v14, v11, v13, v8, v9}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1200(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;Ljava/io/File;Ljava/util/Map;I)Z

    move-result v8

    if-eqz v8, :cond_b78

    .line 535
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v2

    if-nez v2, :cond_a9d

    .line 536
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V
    :try_end_a9d
    .catchall {:try_start_a71 .. :try_end_a9d} :catchall_a6a

    :cond_a9d
    if-eqz v7, :cond_aac

    .line 604
    invoke-virtual {v7}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    if-eqz v2, :cond_aac

    .line 605
    invoke-virtual {v7}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->close()V

    :cond_aac
    if-eqz v27, :cond_ab1

    .line 609
    invoke-interface/range {v27 .. v27}, Lokhttp3/Call;->cancel()V

    .line 612
    :cond_ab1
    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request is done "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->debugString(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_b04

    const/4 v3, 0x3

    if-eq v2, v3, :cond_afd

    const/4 v3, 0x4

    if-eq v2, v3, :cond_af5

    const/4 v3, 0x5

    if-eq v2, v3, :cond_aed

    if-nez v26, :cond_b04

    .line 632
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->removeMediator(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    invoke-static {v2, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2700(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_b04

    .line 624
    :cond_aed
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->onErrorMediator(Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    invoke-static {v2, v12, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2500(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_b04

    .line 621
    :cond_af5
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->onSuccessMediator(Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    invoke-static {v2, v13, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2400(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_b04

    .line 627
    :cond_afd
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->onCancelledMediator(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    invoke-static {v2, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2600(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 637
    :cond_b04
    :goto_b04
    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Done with request in state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v4}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 638
    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->debugString(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 637
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v2

    .line 646
    :try_start_b35
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->removeNetworkListener()V
    invoke-static {v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2800(Lcom/vungle/warren/downloader/AssetDownloader;)V

    .line 647
    monitor-exit v2
    :try_end_b3b
    .catchall {:try_start_b35 .. :try_end_b3b} :catchall_b74

    .line 649
    invoke-static/range {v19 .. v19}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 650
    invoke-static {v6}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 652
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;
    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v2

    if-eqz v2, :cond_b73

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    iget-boolean v2, v2, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v2, :cond_b73

    .line 653
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;
    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v2

    invoke-interface {v2, v13}, Lcom/vungle/warren/downloader/DownloaderCache;->stopTracking(Ljava/io/File;)V

    .line 654
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-virtual {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled()Z

    move-result v2

    if-nez v2, :cond_b6a

    .line 655
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;
    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v2

    invoke-interface {v2}, Lcom/vungle/warren/downloader/DownloaderCache;->clear()V

    goto :goto_b73

    .line 657
    :cond_b6a
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;
    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v2

    invoke-interface {v2}, Lcom/vungle/warren/downloader/DownloaderCache;->purge()Ljava/util/List;

    :cond_b73
    :goto_b73
    return-void

    :catchall_b74
    move-exception v0

    move-object v3, v0

    .line 647
    :try_start_b76
    monitor-exit v2
    :try_end_b77
    .catchall {:try_start_b76 .. :try_end_b77} :catchall_b74

    throw v3

    .line 543
    :cond_b78
    :try_start_b78
    iget-object v8, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v8, v3}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->setConnected(Z)V

    .line 545
    new-instance v8, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    iget-object v9, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    .line 546
    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->mapExceptionToReason(Ljava/lang/Throwable;Z)I
    invoke-static {v9, v2, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2100(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/lang/Throwable;Z)I

    move-result v9

    invoke-direct {v8, v5, v2, v9}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V
    :try_end_b88
    .catchall {:try_start_b78 .. :try_end_b88} :catchall_a6a

    if-nez v3, :cond_c06

    const/4 v2, 0x5

    .line 549
    :try_start_b8b
    iput v2, v10, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    .line 550
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->onProgressMediator(Lcom/vungle/warren/downloader/DownloadRequestMediator;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V
    invoke-static {v2, v3, v10}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1900(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V

    .line 552
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v2

    if-nez v2, :cond_c06

    add-int/lit8 v2, v15, 0x1

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget v3, v3, Lcom/vungle/warren/downloader/AssetDownloader;->maxReconnectAttempts:I

    if-ge v15, v3, :cond_bfd

    const/4 v3, 0x0

    .line 555
    :goto_ba6
    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget v5, v5, Lcom/vungle/warren/downloader/AssetDownloader;->retryCountOnConnectionLost:I

    if-ge v3, v5, :cond_bfd

    .line 557
    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v9, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget v9, v9, Lcom/vungle/warren/downloader/AssetDownloader;->reconnectTimeout:I

    int-to-long v11, v9

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->sleep(J)V
    invoke-static {v5, v11, v12}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2200(Lcom/vungle/warren/downloader/AssetDownloader;J)V

    .line 559
    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v9, 0x3

    invoke-virtual {v5, v9}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v5

    if-eqz v5, :cond_bc0

    goto :goto_bfd

    .line 563
    :cond_bc0
    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v9, "Trying to reconnect"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v9, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->isAnyConnected(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Z
    invoke-static {v5, v9}, Lcom/vungle/warren/downloader/AssetDownloader;->access$500(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Z

    move-result v5

    if-eqz v5, :cond_bf4

    .line 566
    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Reconnected, starting download again"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bdc
    .catchall {:try_start_b8b .. :try_end_bdc} :catchall_c00

    .line 568
    :try_start_bdc
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->setConnected(Z)V

    .line 569
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v3, v5}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V
    :try_end_be7
    .catchall {:try_start_bdc .. :try_end_be7} :catchall_bec

    move v15, v2

    const/4 v9, 0x0

    const/16 v16, 0x0

    goto :goto_c09

    :catchall_bec
    move-exception v0

    move-object v2, v0

    move-object v5, v6

    move-object v12, v8

    const/16 v18, 0x0

    goto/16 :goto_da2

    .line 573
    :cond_bf4
    :try_start_bf4
    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->setConnected(Z)V
    :try_end_bfa
    .catchall {:try_start_bf4 .. :try_end_bfa} :catchall_c00

    add-int/lit8 v3, v3, 0x1

    goto :goto_ba6

    :cond_bfd
    :goto_bfd
    const/4 v9, 0x0

    move v15, v2

    goto :goto_c07

    :catchall_c00
    move-exception v0

    move-object v2, v0

    move-object v5, v6

    move-object v12, v8

    goto/16 :goto_a39

    :cond_c06
    const/4 v9, 0x0

    :goto_c07
    const/16 v16, 0x1

    .line 578
    :goto_c09
    :try_start_c09
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v2
    :try_end_c0c
    .catchall {:try_start_c09 .. :try_end_c0c} :catchall_c69

    if-eqz v16, :cond_c57

    .line 580
    :try_start_c0e
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v3}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isConnected()Z

    move-result v3

    if-nez v3, :cond_c57

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v3}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isPausable()Z

    move-result v3

    if-eqz v3, :cond_c57

    .line 581
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->isAnyConnected(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Z
    invoke-static {v3, v5}, Lcom/vungle/warren/downloader/AssetDownloader;->access$500(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Z

    move-result v3

    if-eqz v3, :cond_c48

    .line 582
    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Reconnected, starting download again"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c31
    .catchall {:try_start_c0e .. :try_end_c31} :catchall_c52

    .line 584
    :try_start_c31
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->setConnected(Z)V

    .line 585
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v3, v5}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V
    :try_end_c3c
    .catchall {:try_start_c31 .. :try_end_c3c} :catchall_c41

    move/from16 v14, v26

    const/16 v16, 0x0

    goto :goto_c59

    :catchall_c41
    move-exception v0

    move-object v3, v0

    move/from16 v14, v26

    const/16 v16, 0x0

    goto :goto_c60

    .line 587
    :cond_c48
    :try_start_c48
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->pause(Lcom/vungle/warren/downloader/DownloadRequestMediator;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)Z
    invoke-static {v3, v5, v10, v8}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2300(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)Z

    move-result v3
    :try_end_c50
    .catchall {:try_start_c48 .. :try_end_c50} :catchall_c52

    move v14, v3

    goto :goto_c59

    :catchall_c52
    move-exception v0

    move-object v3, v0

    move/from16 v14, v26

    goto :goto_c60

    :cond_c57
    move/from16 v14, v26

    .line 590
    :goto_c59
    :try_start_c59
    monitor-exit v2

    move-object v3, v8

    move/from16 v26, v14

    goto :goto_c90

    :catchall_c5e
    move-exception v0

    move-object v3, v0

    :goto_c60
    monitor-exit v2
    :try_end_c61
    .catchall {:try_start_c59 .. :try_end_c61} :catchall_c5e

    :try_start_c61
    throw v3
    :try_end_c62
    .catchall {:try_start_c61 .. :try_end_c62} :catchall_c62

    :catchall_c62
    move-exception v0

    move-object v2, v0

    move-object v5, v6

    move-object v12, v8

    move/from16 v26, v14

    goto :goto_c6d

    :catchall_c69
    move-exception v0

    move-object v2, v0

    move-object v5, v6

    move-object v12, v8

    :goto_c6d
    move/from16 v18, v16

    goto/16 :goto_da2

    :cond_c71
    const/4 v9, 0x0

    .line 592
    :try_start_c72
    instance-of v3, v2, Lcom/vungle/warren/downloader/Downloader$RequestException;
    :try_end_c74
    .catchall {:try_start_c72 .. :try_end_c74} :catchall_d9c

    if-eqz v3, :cond_c82

    .line 593
    :try_start_c76
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    const/4 v8, 0x1

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->deleteFileAndMeta(Ljava/io/File;Ljava/io/File;Z)V
    invoke-static {v3, v13, v4, v8}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1500(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Ljava/io/File;Z)V

    .line 594
    new-instance v3, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    invoke-direct {v3, v5, v2, v8}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V
    :try_end_c81
    .catchall {:try_start_c76 .. :try_end_c81} :catchall_a6a

    goto :goto_c8e

    .line 597
    :cond_c82
    :try_start_c82
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;
    :try_end_c84
    .catchall {:try_start_c82 .. :try_end_c84} :catchall_d9c

    const/4 v8, 0x1

    :try_start_c85
    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->deleteFileAndMeta(Ljava/io/File;Ljava/io/File;Z)V
    invoke-static {v3, v13, v4, v8}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1500(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Ljava/io/File;Z)V

    .line 598
    new-instance v3, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    const/4 v11, 0x4

    invoke-direct {v3, v5, v2, v11}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V
    :try_end_c8e
    .catchall {:try_start_c85 .. :try_end_c8e} :catchall_a6a

    :goto_c8e
    const/16 v16, 0x1

    :goto_c90
    if-eqz v7, :cond_c9f

    .line 604
    invoke-virtual {v7}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    if-eqz v2, :cond_c9f

    .line 605
    invoke-virtual {v7}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->close()V

    :cond_c9f
    if-eqz v27, :cond_ca4

    .line 609
    invoke-interface/range {v27 .. v27}, Lokhttp3/Call;->cancel()V

    .line 612
    :cond_ca4
    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "request is done "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v8, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->debugString(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v16, :cond_d28

    .line 616
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_cf9

    const/4 v5, 0x3

    if-eq v2, v5, :cond_cf2

    const/4 v5, 0x4

    if-eq v2, v5, :cond_cea

    const/4 v5, 0x5

    if-eq v2, v5, :cond_ce2

    if-nez v26, :cond_cf9

    .line 632
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->removeMediator(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    invoke-static {v2, v5}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2700(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_cf9

    .line 624
    :cond_ce2
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->onErrorMediator(Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    invoke-static {v2, v3, v5}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2500(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_cf9

    .line 621
    :cond_cea
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->onSuccessMediator(Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    invoke-static {v2, v13, v5}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2400(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_cf9

    .line 627
    :cond_cf2
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->onCancelledMediator(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    invoke-static {v2, v5}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2600(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 637
    :cond_cf9
    :goto_cf9
    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Done with request in state "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v7}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v8, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 638
    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->debugString(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 637
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d48

    .line 640
    :cond_d28
    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not removing connections and listener "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v8, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 641
    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->debugString(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 640
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :goto_d48
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v2

    .line 646
    :try_start_d4b
    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->removeNetworkListener()V
    invoke-static {v5}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2800(Lcom/vungle/warren/downloader/AssetDownloader;)V

    .line 647
    monitor-exit v2
    :try_end_d51
    .catchall {:try_start_d4b .. :try_end_d51} :catchall_d98

    .line 649
    invoke-static/range {v19 .. v19}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 650
    invoke-static {v6}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v16, :cond_d8b

    .line 652
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;
    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v2

    if-eqz v2, :cond_d8b

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    iget-boolean v2, v2, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v2, :cond_d8b

    .line 653
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;
    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v2

    invoke-interface {v2, v13}, Lcom/vungle/warren/downloader/DownloaderCache;->stopTracking(Ljava/io/File;)V

    .line 654
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-virtual {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled()Z

    move-result v2

    if-nez v2, :cond_d82

    .line 655
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;
    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v2

    invoke-interface {v2}, Lcom/vungle/warren/downloader/DownloaderCache;->clear()V

    goto :goto_d8b

    .line 657
    :cond_d82
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;
    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v2

    invoke-interface {v2}, Lcom/vungle/warren/downloader/DownloaderCache;->purge()Ljava/util/List;

    :cond_d8b
    :goto_d8b
    move v12, v15

    move/from16 v7, v16

    move/from16 v14, v26

    move-object v15, v3

    :goto_d91
    move-object v5, v4

    move-object v2, v10

    move-object/from16 v4, v22

    const/4 v3, 0x0

    goto/16 :goto_44

    :catchall_d98
    move-exception v0

    move-object v3, v0

    .line 647
    :try_start_d9a
    monitor-exit v2
    :try_end_d9b
    .catchall {:try_start_d9a .. :try_end_d9b} :catchall_d98

    throw v3

    :catchall_d9c
    move-exception v0

    const/4 v8, 0x1

    :goto_d9e
    move-object v2, v0

    move-object v5, v6

    goto/16 :goto_a39

    :goto_da2
    if-eqz v7, :cond_db1

    .line 604
    invoke-virtual {v7}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    if-eqz v3, :cond_db1

    .line 605
    invoke-virtual {v7}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->close()V

    :cond_db1
    if-eqz v27, :cond_db6

    .line 609
    invoke-interface/range {v27 .. v27}, Lokhttp3/Call;->cancel()V

    .line 612
    :cond_db6
    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "request is done "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v7, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->debugString(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v18, :cond_e3a

    .line 616
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v3}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_e0b

    const/4 v4, 0x3

    if-eq v3, v4, :cond_e04

    const/4 v4, 0x4

    if-eq v3, v4, :cond_dfc

    const/4 v4, 0x5

    if-eq v3, v4, :cond_df4

    if-nez v26, :cond_e0b

    .line 632
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->removeMediator(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    invoke-static {v3, v4}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2700(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_e0b

    .line 624
    :cond_df4
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->onErrorMediator(Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    invoke-static {v3, v12, v4}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2500(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_e0b

    .line 621
    :cond_dfc
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->onSuccessMediator(Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    invoke-static {v3, v13, v4}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2400(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_e0b

    .line 627
    :cond_e04
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->onCancelledMediator(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    invoke-static {v3, v4}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2600(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 637
    :cond_e0b
    :goto_e0b
    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Done with request in state "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v6}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v7, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 638
    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->debugString(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 637
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e5a

    .line 640
    :cond_e3a
    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not removing connections and listener "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v7, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 641
    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->debugString(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 640
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :goto_e5a
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v3

    .line 646
    :try_start_e5d
    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # invokes: Lcom/vungle/warren/downloader/AssetDownloader;->removeNetworkListener()V
    invoke-static {v4}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2800(Lcom/vungle/warren/downloader/AssetDownloader;)V

    .line 647
    monitor-exit v3
    :try_end_e63
    .catchall {:try_start_e5d .. :try_end_e63} :catchall_e9e

    .line 649
    invoke-static/range {v19 .. v19}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 650
    invoke-static {v5}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v18, :cond_e9d

    .line 652
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;
    invoke-static {v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v3

    if-eqz v3, :cond_e9d

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    iget-boolean v3, v3, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v3, :cond_e9d

    .line 653
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;
    invoke-static {v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v3

    invoke-interface {v3, v13}, Lcom/vungle/warren/downloader/DownloaderCache;->stopTracking(Ljava/io/File;)V

    .line 654
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-virtual {v3}, Lcom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled()Z

    move-result v3

    if-nez v3, :cond_e94

    .line 655
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;
    invoke-static {v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v3

    invoke-interface {v3}, Lcom/vungle/warren/downloader/DownloaderCache;->clear()V

    goto :goto_e9d

    .line 657
    :cond_e94
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    # getter for: Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;
    invoke-static {v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v3

    invoke-interface {v3}, Lcom/vungle/warren/downloader/DownloaderCache;->purge()Ljava/util/List;

    :cond_e9d
    :goto_e9d
    throw v2

    :catchall_e9e
    move-exception v0

    move-object v2, v0

    .line 647
    :try_start_ea0
    monitor-exit v3
    :try_end_ea1
    .catchall {:try_start_ea0 .. :try_end_ea1} :catchall_e9e

    throw v2

    :cond_ea2
    return-void
.end method
