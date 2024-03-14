.class public Lcom/facebook/internal/ImageDownloader;
.super Ljava/lang/Object;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/ImageDownloader$DownloadImageWorkItem;,
        Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;,
        Lcom/facebook/internal/ImageDownloader$DownloaderContext;,
        Lcom/facebook/internal/ImageDownloader$RequestKey;
    }
.end annotation


# static fields
.field private static final CACHE_READ_QUEUE_MAX_CONCURRENT:I = 0x2

.field private static final DOWNLOAD_QUEUE_MAX_CONCURRENT:I = 0x8

.field private static cacheReadQueue:Lcom/facebook/internal/WorkQueue;

.field private static downloadQueue:Lcom/facebook/internal/WorkQueue;

.field private static handler:Landroid/os/Handler;

.field private static final pendingRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/internal/ImageDownloader$RequestKey;",
            "Lcom/facebook/internal/ImageDownloader$DownloaderContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 47
    new-instance v0, Lcom/facebook/internal/WorkQueue;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/facebook/internal/WorkQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/internal/ImageDownloader;->downloadQueue:Lcom/facebook/internal/WorkQueue;

    .line 48
    new-instance v0, Lcom/facebook/internal/WorkQueue;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/facebook/internal/WorkQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/internal/ImageDownloader;->cacheReadQueue:Lcom/facebook/internal/WorkQueue;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;Z)V
    .registers 3

    .line 43
    invoke-static {p0, p1, p2}, Lcom/facebook/internal/ImageDownloader;->readFromCache(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;)V
    .registers 2

    .line 43
    invoke-static {p0, p1}, Lcom/facebook/internal/ImageDownloader;->download(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;)V

    return-void
.end method

.method public static cancelRequest(Lcom/facebook/internal/ImageRequest;)Z
    .registers 5

    .line 85
    new-instance v0, Lcom/facebook/internal/ImageDownloader$RequestKey;

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getCallerTag()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/facebook/internal/ImageDownloader$RequestKey;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 86
    sget-object p0, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter p0

    .line 87
    :try_start_10
    sget-object v1, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    const/4 v2, 0x1

    if-eqz v1, :cond_2c

    .line 95
    iget-object v3, v1, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->workItem:Lcom/facebook/internal/WorkQueue$WorkItem;

    invoke-interface {v3}, Lcom/facebook/internal/WorkQueue$WorkItem;->cancel()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 96
    sget-object v1, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    .line 100
    :cond_29
    iput-boolean v2, v1, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled:Z

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    .line 103
    :goto_2d
    monitor-exit p0

    return v2

    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_10 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public static clearCache(Landroid/content/Context;)V
    .registers 1

    .line 119
    invoke-static {p0}, Lcom/facebook/internal/ImageResponseCache;->clearCache(Landroid/content/Context;)V

    .line 120
    invoke-static {}, Lcom/facebook/internal/UrlRedirectCache;->clearCache()V

    return-void
.end method

.method private static download(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;)V
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 217
    :try_start_3
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_14} :catch_b0
    .catchall {:try_start_3 .. :try_end_14} :catchall_a7

    .line 219
    :try_start_14
    invoke-virtual {v3, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 221
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_93

    const/16 p1, 0x12d

    if-eq v4, p1, :cond_60

    const/16 p1, 0x12e

    if-eq v4, p1, :cond_60

    .line 249
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_2b} :catch_a4
    .catchall {:try_start_14 .. :try_end_2b} :catchall_a2

    .line 250
    :try_start_2b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_4a

    .line 252
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x80

    .line 253
    new-array v6, v6, [C

    .line 255
    :goto_3b
    array-length v7, v6

    invoke-virtual {v5, v6, v1, v7}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v7

    if-lez v7, :cond_46

    .line 256
    invoke-virtual {v4, v6, v1, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_3b

    .line 258
    :cond_46
    invoke-static {v5}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_4f

    :cond_4a
    const-string v5, "Unexpected error while downloading an image."

    .line 260
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :goto_4f
    new-instance v5, Lcom/facebook/FacebookException;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_58} :catch_5e
    .catchall {:try_start_2b .. :try_end_58} :catchall_5b

    move-object v4, v0

    move-object v0, v5

    goto :goto_9b

    :catchall_5b
    move-exception p0

    move-object v0, p1

    goto :goto_a9

    :catch_5e
    move-exception v4

    goto :goto_b3

    :cond_60
    :try_start_60
    const-string p1, "location"

    .line 227
    invoke-virtual {v3, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 228
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8b

    .line 229
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 230
    iget-object v2, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Landroid/net/Uri;

    invoke-static {v2, p1}, Lcom/facebook/internal/UrlRedirectCache;->cacheUriRedirect(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 234
    invoke-static {p0}, Lcom/facebook/internal/ImageDownloader;->removePendingRequest(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    move-result-object v2

    if-eqz v2, :cond_8b

    .line 235
    iget-boolean v4, v2, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled:Z

    if-nez v4, :cond_8b

    .line 236
    iget-object v2, v2, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/facebook/internal/ImageRequest;

    new-instance v4, Lcom/facebook/internal/ImageDownloader$RequestKey;

    iget-object v5, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->tag:Ljava/lang/Object;

    invoke-direct {v4, p1, v5}, Lcom/facebook/internal/ImageDownloader$RequestKey;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    invoke-static {v2, v4, v1}, Lcom/facebook/internal/ImageDownloader;->enqueueCacheRead(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_8b} :catch_8f
    .catchall {:try_start_60 .. :try_end_8b} :catchall_a2

    :cond_8b
    move-object p1, v0

    move-object v4, p1

    const/4 v2, 0x0

    goto :goto_9b

    :catch_8f
    move-exception v4

    move-object p1, v0

    const/4 v2, 0x0

    goto :goto_b3

    .line 244
    :cond_93
    :try_start_93
    invoke-static {p1, v3}, Lcom/facebook/internal/ImageResponseCache;->interceptAndCacheImageStream(Landroid/content/Context;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_97} :catch_a4
    .catchall {:try_start_93 .. :try_end_97} :catchall_a2

    .line 245
    :try_start_97
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9b} :catch_5e
    .catchall {:try_start_97 .. :try_end_9b} :catchall_5b

    .line 268
    :goto_9b
    invoke-static {p1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 269
    invoke-static {v3}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    goto :goto_bc

    :catchall_a2
    move-exception p0

    goto :goto_a9

    :catch_a4
    move-exception v4

    move-object p1, v0

    goto :goto_b3

    :catchall_a7
    move-exception p0

    move-object v3, v0

    .line 268
    :goto_a9
    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 269
    invoke-static {v3}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    .line 270
    throw p0

    :catch_b0
    move-exception v4

    move-object p1, v0

    move-object v3, p1

    .line 268
    :goto_b3
    invoke-static {p1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 269
    invoke-static {v3}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    move-object v8, v4

    move-object v4, v0

    move-object v0, v8

    :goto_bc
    if-eqz v2, :cond_c1

    .line 273
    invoke-static {p0, v0, v4, v1}, Lcom/facebook/internal/ImageDownloader;->issueResponse(Lcom/facebook/internal/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V

    :cond_c1
    return-void
.end method

.method public static downloadAsync(Lcom/facebook/internal/ImageRequest;)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    .line 70
    :cond_3
    new-instance v0, Lcom/facebook/internal/ImageDownloader$RequestKey;

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getCallerTag()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/ImageDownloader$RequestKey;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 71
    sget-object v1, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v1

    .line 72
    :try_start_13
    sget-object v2, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    if-eqz v2, :cond_28

    .line 74
    iput-object p0, v2, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/facebook/internal/ImageRequest;

    const/4 p0, 0x0

    .line 75
    iput-boolean p0, v2, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled:Z

    .line 76
    iget-object p0, v2, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->workItem:Lcom/facebook/internal/WorkQueue$WorkItem;

    invoke-interface {p0}, Lcom/facebook/internal/WorkQueue$WorkItem;->moveToFront()V

    goto :goto_2f

    .line 78
    :cond_28
    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->isCachedRedirectAllowed()Z

    move-result v2

    invoke-static {p0, v0, v2}, Lcom/facebook/internal/ImageDownloader;->enqueueCacheRead(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V

    .line 80
    :goto_2f
    monitor-exit v1

    return-void

    :catchall_31
    move-exception p0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_13 .. :try_end_33} :catchall_31

    throw p0
.end method

.method private static enqueueCacheRead(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V
    .registers 6

    .line 125
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->cacheReadQueue:Lcom/facebook/internal/WorkQueue;

    new-instance v1, Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;

    .line 129
    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;-><init>(Landroid/content/Context;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V

    .line 125
    invoke-static {p0, p1, v0, v1}, Lcom/facebook/internal/ImageDownloader;->enqueueRequest(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static enqueueDownload(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;)V
    .registers 5

    .line 133
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->downloadQueue:Lcom/facebook/internal/WorkQueue;

    new-instance v1, Lcom/facebook/internal/ImageDownloader$DownloadImageWorkItem;

    .line 134
    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/facebook/internal/ImageDownloader$DownloadImageWorkItem;-><init>(Landroid/content/Context;Lcom/facebook/internal/ImageDownloader$RequestKey;)V

    .line 133
    invoke-static {p0, p1, v0, v1}, Lcom/facebook/internal/ImageDownloader;->enqueueRequest(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static enqueueRequest(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V
    .registers 7

    .line 139
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v0

    .line 140
    :try_start_3
    new-instance v1, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;-><init>(Lcom/facebook/internal/ImageDownloader$1;)V

    .line 141
    iput-object p0, v1, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/facebook/internal/ImageRequest;

    .line 142
    sget-object p0, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-virtual {p2, p3}, Lcom/facebook/internal/WorkQueue;->addActiveWorkItem(Ljava/lang/Runnable;)Lcom/facebook/internal/WorkQueue$WorkItem;

    move-result-object p0

    iput-object p0, v1, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->workItem:Lcom/facebook/internal/WorkQueue$WorkItem;

    .line 153
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method private static declared-synchronized getHandler()Landroid/os/Handler;
    .registers 3

    const-class v0, Lcom/facebook/internal/ImageDownloader;

    monitor-enter v0

    .line 278
    :try_start_3
    sget-object v1, Lcom/facebook/internal/ImageDownloader;->handler:Landroid/os/Handler;

    if-nez v1, :cond_12

    .line 279
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/facebook/internal/ImageDownloader;->handler:Landroid/os/Handler;

    .line 281
    :cond_12
    sget-object v1, Lcom/facebook/internal/ImageDownloader;->handler:Landroid/os/Handler;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v0

    return-object v1

    :catchall_16
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static issueResponse(Lcom/facebook/internal/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V
    .registers 11

    .line 160
    invoke-static {p0}, Lcom/facebook/internal/ImageDownloader;->removePendingRequest(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 161
    iget-boolean v0, p0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled:Z

    if-nez v0, :cond_22

    .line 162
    iget-object v2, p0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/facebook/internal/ImageRequest;

    .line 163
    invoke-virtual {v2}, Lcom/facebook/internal/ImageRequest;->getCallback()Lcom/facebook/internal/ImageRequest$Callback;

    move-result-object v6

    if-eqz v6, :cond_22

    .line 165
    invoke-static {}, Lcom/facebook/internal/ImageDownloader;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/facebook/internal/ImageDownloader$1;

    move-object v1, v0

    move-object v3, p1

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/facebook/internal/ImageDownloader$1;-><init>(Lcom/facebook/internal/ImageRequest;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lcom/facebook/internal/ImageRequest$Callback;)V

    .line 166
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_22
    return-void
.end method

.method public static prioritizeRequest(Lcom/facebook/internal/ImageRequest;)V
    .registers 3

    .line 109
    new-instance v0, Lcom/facebook/internal/ImageDownloader$RequestKey;

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getCallerTag()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/facebook/internal/ImageDownloader$RequestKey;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 110
    sget-object p0, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter p0

    .line 111
    :try_start_10
    sget-object v1, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    if-eqz v0, :cond_1f

    .line 113
    iget-object v0, v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->workItem:Lcom/facebook/internal/WorkQueue$WorkItem;

    invoke-interface {v0}, Lcom/facebook/internal/WorkQueue$WorkItem;->moveToFront()V

    .line 115
    :cond_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_21

    throw v0
.end method

.method private static readFromCache(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;Z)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_14

    .line 183
    iget-object p2, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Landroid/net/Uri;

    invoke-static {p2}, Lcom/facebook/internal/UrlRedirectCache;->getRedirectedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_14

    .line 185
    invoke-static {p2, p1}, Lcom/facebook/internal/ImageResponseCache;->getCachedImageStream(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object p2

    if-eqz p2, :cond_15

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    move-object p2, v1

    :cond_15
    :goto_15
    if-nez v0, :cond_1d

    .line 191
    iget-object p2, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Landroid/net/Uri;

    invoke-static {p2, p1}, Lcom/facebook/internal/ImageResponseCache;->getCachedImageStream(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object p2

    :cond_1d
    if-eqz p2, :cond_2a

    .line 196
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 197
    invoke-static {p2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 198
    invoke-static {p0, v1, p1, v0}, Lcom/facebook/internal/ImageDownloader;->issueResponse(Lcom/facebook/internal/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V

    goto :goto_39

    .line 202
    :cond_2a
    invoke-static {p0}, Lcom/facebook/internal/ImageDownloader;->removePendingRequest(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    move-result-object p1

    if-eqz p1, :cond_39

    .line 203
    iget-boolean p2, p1, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled:Z

    if-nez p2, :cond_39

    .line 204
    iget-object p1, p1, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/facebook/internal/ImageRequest;

    invoke-static {p1, p0}, Lcom/facebook/internal/ImageDownloader;->enqueueDownload(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;)V

    :cond_39
    :goto_39
    return-void
.end method

.method private static removePendingRequest(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    .registers 3

    .line 285
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v0

    .line 286
    :try_start_3
    sget-object v1, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 287
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method
