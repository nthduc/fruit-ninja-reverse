.class final Lcom/vungle/warren/Vungle$14;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Lcom/vungle/warren/persistence/CacheManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/Vungle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCacheChanged()V
    .registers 6

    .line 1496
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    # getter for: Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/vungle/warren/Vungle;->access$300(Lcom/vungle/warren/Vungle;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 1499
    :cond_9
    # invokes: Lcom/vungle/warren/Vungle;->stopPlaying()V
    invoke-static {}, Lcom/vungle/warren/Vungle;->access$1800()V

    .line 1500
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    # getter for: Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/vungle/warren/Vungle;->access$300(Lcom/vungle/warren/Vungle;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/warren/ServiceLocator;->getInstance(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v0

    .line 1502
    const-class v1, Lcom/vungle/warren/persistence/CacheManager;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/persistence/CacheManager;

    .line 1503
    const-class v2, Lcom/vungle/warren/downloader/Downloader;

    invoke-virtual {v0, v2}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/downloader/Downloader;

    .line 1504
    invoke-virtual {v1}, Lcom/vungle/warren/persistence/CacheManager;->getCache()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_54

    .line 1505
    invoke-interface {v0}, Lcom/vungle/warren/downloader/Downloader;->getAllRequests()Ljava/util/List;

    move-result-object v2

    .line 1506
    invoke-virtual {v1}, Lcom/vungle/warren/persistence/CacheManager;->getCache()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1507
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3c
    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/warren/downloader/DownloadRequest;

    .line 1508
    iget-object v4, v3, Lcom/vungle/warren/downloader/DownloadRequest;->path:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3c

    .line 1509
    invoke-interface {v0, v3}, Lcom/vungle/warren/downloader/Downloader;->cancel(Lcom/vungle/warren/downloader/DownloadRequest;)V

    goto :goto_3c

    .line 1513
    :cond_54
    invoke-interface {v0}, Lcom/vungle/warren/downloader/Downloader;->init()V

    return-void
.end method
