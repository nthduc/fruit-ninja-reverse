.class public Lcom/vungle/warren/downloader/AssetDownloader;
.super Ljava/lang/Object;
.source "AssetDownloader.java"

# interfaces
.implements Lcom/vungle/warren/downloader/Downloader;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LogNotTimber"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;,
        Lcom/vungle/warren/downloader/AssetDownloader$NetworkType;
    }
.end annotation


# static fields
.field private static final ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field private static final ACCEPT_RANGES:Ljava/lang/String; = "Accept-Ranges"

.field private static final BYTES:Ljava/lang/String; = "bytes"

.field private static final CONNECTION_RETRY_TIMEOUT:I = 0x12c

.field private static final CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field private static final CONTENT_RANGE:Ljava/lang/String; = "Content-Range"

.field private static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field private static final DOWNLOAD_CHUNK_SIZE:I = 0x800

.field static final DOWNLOAD_COMPLETE:Ljava/lang/String; = "DOWNLOAD_COMPLETE"

.field static final DOWNLOAD_URL:Ljava/lang/String; = "Download_URL"

.field static final ETAG:Ljava/lang/String; = "ETag"

.field private static final GZIP:Ljava/lang/String; = "gzip"

.field private static final IDENTITY:Ljava/lang/String; = "identity"

.field private static final IF_MODIFIED_SINCE:Ljava/lang/String; = "If-Modified-Since"

.field private static final IF_NONE_MATCH:Ljava/lang/String; = "If-None-Match"

.field private static final IF_RANGE:Ljava/lang/String; = "If-Range"

.field static final LAST_CACHE_VERIFICATION:Ljava/lang/String; = "Last-Cache-Verification"

.field static final LAST_DOWNLOAD:Ljava/lang/String; = "Last-Download"

.field static final LAST_MODIFIED:Ljava/lang/String; = "Last-Modified"

.field private static final MAX_PERCENT:J = 0x64L

.field private static final MAX_RECONNECT_ATTEMPTS:I = 0xa

.field private static final META_POSTFIX_EXT:Ljava/lang/String; = ".vng_meta"

.field private static final PROGRESS_STEP:I = 0x5

.field private static final RANGE:Ljava/lang/String; = "Range"

.field private static final RANGE_NOT_SATISFIABLE:I = 0x1a0

.field private static final RETRY_COUNT_ON_CONNECTION_LOST:I = 0x5

.field private static final TAG:Ljava/lang/String;

.field private static final TIMEOUT:I = 0x1e

.field public static final VERIFICATION_WINDOW:J


# instance fields
.field private final addLock:Ljava/lang/Object;

.field private final cache:Lcom/vungle/warren/downloader/DownloaderCache;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final downloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private isCacheEnabled:Z

.field maxReconnectAttempts:I

.field private mediators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/vungle/warren/downloader/DownloadRequestMediator;",
            ">;"
        }
    .end annotation
.end field

.field private final networkListener:Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;

.field private final networkProvider:Lcom/vungle/warren/utility/NetworkProvider;

.field private final okHttpClient:Lokhttp3/OkHttpClient;

.field private volatile progressStep:I

.field reconnectTimeout:I

.field retryCountOnConnectionLost:I

.field private final timeWindow:J

.field private transitioning:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vungle/warren/downloader/DownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final uiExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 72
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x18

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/vungle/warren/downloader/AssetDownloader;->VERIFICATION_WINDOW:J

    .line 100
    const-class v0, Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/vungle/warren/utility/NetworkProvider;Ljava/util/concurrent/ExecutorService;)V
    .registers 11
    .param p2    # Lcom/vungle/warren/utility/NetworkProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 132
    invoke-direct/range {v0 .. v6}, Lcom/vungle/warren/downloader/AssetDownloader;-><init>(Lcom/vungle/warren/downloader/DownloaderCache;JILcom/vungle/warren/utility/NetworkProvider;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>(Lcom/vungle/warren/downloader/DownloaderCache;JILcom/vungle/warren/utility/NetworkProvider;Ljava/util/concurrent/ExecutorService;)V
    .registers 16
    .param p1    # Lcom/vungle/warren/downloader/DownloaderCache;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/vungle/warren/utility/NetworkProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 112
    iput v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->retryCountOnConnectionLost:I

    const/16 v1, 0xa

    .line 113
    iput v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->maxReconnectAttempts:I

    const/16 v1, 0x12c

    .line 114
    iput v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->reconnectTimeout:I

    .line 122
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->mediators:Ljava/util/Map;

    .line 123
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->transitioning:Ljava/util/List;

    .line 124
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->addLock:Ljava/lang/Object;

    .line 126
    iput v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->progressStep:I

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled:Z

    .line 1168
    new-instance v1, Lcom/vungle/warren/downloader/AssetDownloader$3;

    invoke-direct {v1, p0}, Lcom/vungle/warren/downloader/AssetDownloader$3;-><init>(Lcom/vungle/warren/downloader/AssetDownloader;)V

    iput-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->networkListener:Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;

    .line 140
    iput-object p1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;

    .line 142
    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 143
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    const-wide/16 v5, 0x1

    move-object v2, p1

    move v3, v4

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 148
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 150
    iput-wide p2, p0, Lcom/vungle/warren/downloader/AssetDownloader;->timeWindow:J

    .line 151
    iput-object p1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->downloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 152
    iput-object p5, p0, Lcom/vungle/warren/downloader/AssetDownloader;->networkProvider:Lcom/vungle/warren/utility/NetworkProvider;

    .line 153
    iput-object p6, p0, Lcom/vungle/warren/downloader/AssetDownloader;->uiExecutor:Ljava/util/concurrent/ExecutorService;

    .line 155
    new-instance p1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p3, 0x1e

    .line 156
    invoke-virtual {p1, p3, p4, p2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 157
    invoke-virtual {p1, p3, p4, p2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 158
    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 159
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 160
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 161
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->okHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method static synthetic access$000(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->launchRequest(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 70
    sget-object v0, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vungle/warren/downloader/AssetDownloader;Lokhttp3/Response;)J
    .registers 2

    .line 70
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->getContentLength(Lokhttp3/Response;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1100(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lokhttp3/Response;Lcom/vungle/warren/downloader/DownloadRequestMediator;Ljava/util/HashMap;)Z
    .registers 5

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vungle/warren/downloader/AssetDownloader;->notModified(Ljava/io/File;Lokhttp3/Response;Lcom/vungle/warren/downloader/DownloadRequestMediator;Ljava/util/HashMap;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;Ljava/io/File;Ljava/util/Map;I)Z
    .registers 5

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vungle/warren/downloader/AssetDownloader;->useCacheOnFail(Lcom/vungle/warren/downloader/DownloadRequestMediator;Ljava/io/File;Ljava/util/Map;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Ljava/util/HashMap;)V
    .registers 3

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->saveMeta(Ljava/io/File;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/vungle/warren/downloader/AssetDownloader;JILokhttp3/Response;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Z
    .registers 6

    .line 70
    invoke-direct/range {p0 .. p5}, Lcom/vungle/warren/downloader/AssetDownloader;->partialMalformed(JILokhttp3/Response;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Ljava/io/File;Z)V
    .registers 4

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/warren/downloader/AssetDownloader;->deleteFileAndMeta(Ljava/io/File;Ljava/io/File;Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Ljava/io/File;Lokhttp3/Headers;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/warren/downloader/AssetDownloader;->checkEncoding(Ljava/io/File;Ljava/io/File;Lokhttp3/Headers;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lokhttp3/Headers;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 4

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/warren/downloader/AssetDownloader;->makeMeta(Ljava/io/File;Lokhttp3/Headers;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/vungle/warren/downloader/AssetDownloader;Lokhttp3/Response;)Lokhttp3/ResponseBody;
    .registers 2

    .line 70
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->decodeGzipIfNeeded(Lokhttp3/Response;)Lokhttp3/ResponseBody;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V
    .registers 3

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->onProgressMediator(Lcom/vungle/warren/downloader/DownloadRequestMediator;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V

    return-void
.end method

.method static synthetic access$200(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)V
    .registers 4

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/warren/downloader/AssetDownloader;->deliverError(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/vungle/warren/downloader/AssetDownloader;)I
    .registers 1

    .line 70
    iget p0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->progressStep:I

    return p0
.end method

.method static synthetic access$2100(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/lang/Throwable;Z)I
    .registers 3

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->mapExceptionToReason(Ljava/lang/Throwable;Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/vungle/warren/downloader/AssetDownloader;J)V
    .registers 3

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->sleep(J)V

    return-void
.end method

.method static synthetic access$2300(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)Z
    .registers 4

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/warren/downloader/AssetDownloader;->pause(Lcom/vungle/warren/downloader/DownloadRequestMediator;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    .registers 3

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->onSuccessMediator(Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    .registers 3

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->onErrorMediator(Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    .registers 2

    .line 70
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->onCancelledMediator(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    .registers 2

    .line 70
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->removeMediator(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/vungle/warren/downloader/AssetDownloader;)V
    .registers 1

    .line 70
    invoke-direct {p0}, Lcom/vungle/warren/downloader/AssetDownloader;->removeNetworkListener()V

    return-void
.end method

.method static synthetic access$2900(Lcom/vungle/warren/downloader/AssetDownloader;I)V
    .registers 2

    .line 70
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->onNetworkChanged(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;

    return-object p0
.end method

.method static synthetic access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;
    .registers 2

    .line 70
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->debugString(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Z
    .registers 2

    .line 70
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->isAnyConnected(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;)Ljava/util/HashMap;
    .registers 2

    .line 70
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->extractMeta(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;Ljava/io/File;Ljava/util/Map;)Z
    .registers 4

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/warren/downloader/AssetDownloader;->useCacheWithoutVerification(Lcom/vungle/warren/downloader/DownloadRequestMediator;Ljava/io/File;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/vungle/warren/downloader/AssetDownloader;JLjava/io/File;Ljava/util/HashMap;Lokhttp3/Request$Builder;)V
    .registers 6

    .line 70
    invoke-direct/range {p0 .. p5}, Lcom/vungle/warren/downloader/AssetDownloader;->appendHeaders(JLjava/io/File;Ljava/util/HashMap;Lokhttp3/Request$Builder;)V

    return-void
.end method

.method static synthetic access$900(Lcom/vungle/warren/downloader/AssetDownloader;)Lokhttp3/OkHttpClient;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->okHttpClient:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method private addNetworkListener()V
    .registers 3

    .line 683
    sget-object v0, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    const-string v1, "Adding network listner"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->networkProvider:Lcom/vungle/warren/utility/NetworkProvider;

    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->networkListener:Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/utility/NetworkProvider;->addListener(Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;)V

    return-void
.end method

.method private appendHeaders(JLjava/io/File;Ljava/util/HashMap;Lokhttp3/Request$Builder;)V
    .registers 10
    .param p3    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lokhttp3/Request$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/io/File;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/Request$Builder;",
            ")V"
        }
    .end annotation

    const-string v0, "identity"

    const-string v1, "Accept-Encoding"

    .line 792
    invoke-virtual {p5, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 794
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_a0

    invoke-virtual {p4}, Ljava/util/HashMap;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_15

    goto/16 :goto_a0

    :cond_15
    const-string p3, "ETag"

    .line 797
    invoke-virtual {p4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-string v1, "Last-Modified"

    .line 798
    invoke-virtual {p4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "DOWNLOAD_COMPLETE"

    .line 800
    invoke-virtual {p4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 801
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3e

    const-string p1, "If-None-Match"

    .line 802
    invoke-virtual {p5, p1, p3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 805
    :cond_3e
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_49

    const-string p1, "If-Modified-Since"

    .line 806
    invoke-virtual {p5, p1, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_49
    return-void

    :cond_4a
    const-string v2, "Accept-Ranges"

    .line 812
    invoke-virtual {p4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "bytes"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5b

    return-void

    :cond_5b
    const-string v2, "Content-Encoding"

    .line 817
    invoke-virtual {p4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_70

    .line 818
    invoke-virtual {p4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_70

    return-void

    .line 821
    :cond_70
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bytes="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Range"

    invoke-virtual {p5, p2, p1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 823
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string p2, "If-Range"

    if-nez p1, :cond_97

    .line 824
    invoke-virtual {p5, p2, p3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_a0

    .line 825
    :cond_97
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a0

    .line 826
    invoke-virtual {p5, p2, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_a0
    :goto_a0
    return-void
.end method

.method private checkEncoding(Ljava/io/File;Ljava/io/File;Lokhttp3/Headers;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Content-Encoding"

    .line 749
    invoke-virtual {p3, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_25

    const-string v0, "gzip"

    .line 751
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "identity"

    .line 752
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_19

    goto :goto_25

    :cond_19
    const/4 p3, 0x0

    .line 753
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/warren/downloader/AssetDownloader;->deleteFileAndMeta(Ljava/io/File;Ljava/io/File;Z)V

    .line 754
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unknown Content-Encoding"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_25
    :goto_25
    return-void
.end method

.method private copyToDestination(Ljava/io/File;Ljava/io/File;Landroidx/core/util/Pair;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Landroidx/core/util/Pair<",
            "Lcom/vungle/warren/downloader/DownloadRequest;",
            "Lcom/vungle/warren/downloader/AssetDownloadListener;",
            ">;)V"
        }
    .end annotation

    const-string v0, " copying to "

    .line 1248
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1249
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 1254
    :cond_b
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_22

    .line 1255
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_22
    const/4 v1, 0x0

    .line 1259
    :try_start_23
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_28} :catch_79
    .catchall {:try_start_23 .. :try_end_28} :catchall_75

    .line 1260
    :try_start_28
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2d} :catch_70
    .catchall {:try_start_28 .. :try_end_2d} :catchall_6d

    .line 1261
    :try_start_2d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 1262
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    const-wide/16 v4, 0x0

    .line 1263
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 1264
    sget-object v1, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Copying: finished "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p3, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v4, v4, Lcom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_64} :catch_6b
    .catchall {:try_start_2d .. :try_end_64} :catchall_b7

    .line 1271
    :goto_64
    invoke-static {v2}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 1272
    invoke-static {p1}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_b6

    :catch_6b
    move-exception v1

    goto :goto_7d

    :catchall_6d
    move-exception p2

    move-object p1, v1

    goto :goto_b8

    :catch_70
    move-exception p1

    move-object v9, v1

    move-object v1, p1

    move-object p1, v9

    goto :goto_7d

    :catchall_75
    move-exception p2

    move-object p1, v1

    move-object v2, p1

    goto :goto_b8

    :catch_79
    move-exception p1

    move-object v2, v1

    move-object v1, p1

    move-object p1, v2

    .line 1266
    :goto_7d
    :try_start_7d
    iget-object v3, p3, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v4, p3, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/vungle/warren/downloader/AssetDownloadListener;

    new-instance v5, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    const/4 v6, -0x1

    const/4 v7, 0x2

    invoke-direct {v5, v6, v1, v7}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    invoke-direct {p0, v3, v4, v5}, Lcom/vungle/warren/downloader/AssetDownloader;->deliverError(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)V

    .line 1269
    sget-object v1, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Copying: error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object p3, p3, Lcom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catchall {:try_start_7d .. :try_end_b5} :catchall_b7

    goto :goto_64

    :goto_b6
    return-void

    :catchall_b7
    move-exception p2

    .line 1271
    :goto_b8
    invoke-static {v2}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 1272
    invoke-static {p1}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    throw p2

    return-void
.end method

.method private debugString(Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;
    .registers 4

    .line 978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", single request url - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", path - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/vungle/warren/downloader/DownloadRequest;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", th - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private debugString(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;
    .registers 4

    .line 971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", mediator url - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/vungle/warren/downloader/DownloadRequestMediator;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", path - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/vungle/warren/downloader/DownloadRequestMediator;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", th - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private decodeGzipIfNeeded(Lokhttp3/Response;)Lokhttp3/ResponseBody;
    .registers 6

    const-string v0, "Content-Encoding"

    .line 831
    invoke-virtual {p1, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gzip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 832
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->hasBody(Lokhttp3/Response;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 833
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 834
    new-instance v0, Lokio/GzipSource;

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    const-string v1, "Content-Type"

    .line 835
    invoke-virtual {p1, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 836
    new-instance v1, Lokhttp3/internal/http/RealResponseBody;

    const-wide/16 v2, -0x1

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {v1, p1, v2, v3, v0}, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    return-object v1

    .line 839
    :cond_39
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    return-object p1
.end method

.method private deleteFileAndMeta(Ljava/io/File;Ljava/io/File;Z)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 1425
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    if-eqz p2, :cond_b

    .line 1428
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 1431
    :cond_b
    iget-object p2, p0, Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;

    if-eqz p2, :cond_22

    invoke-virtual {p0}, Lcom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled()Z

    move-result p2

    if-eqz p2, :cond_22

    if-eqz p3, :cond_1d

    .line 1433
    iget-object p2, p0, Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;

    invoke-interface {p2, p1}, Lcom/vungle/warren/downloader/DownloaderCache;->deleteAndRemove(Ljava/io/File;)Z

    goto :goto_22

    .line 1435
    :cond_1d
    iget-object p2, p0, Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;

    invoke-interface {p2, p1}, Lcom/vungle/warren/downloader/DownloaderCache;->deleteContents(Ljava/io/File;)Z

    :cond_22
    :goto_22
    return-void
.end method

.method private deliverError(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)V
    .registers 6
    .param p1    # Lcom/vungle/warren/downloader/DownloadRequest;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/warren/downloader/AssetDownloadListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p2, :cond_c

    .line 1379
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->uiExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/downloader/AssetDownloader$4;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/vungle/warren/downloader/AssetDownloader$4;-><init>(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_c
    return-void
.end method

.method private deliverProgress(Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)V
    .registers 6

    if-eqz p3, :cond_c

    .line 1411
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->uiExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/downloader/AssetDownloader$5;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/vungle/warren/downloader/AssetDownloader$5;-><init>(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_c
    return-void
.end method

.method private deliverSuccess(Landroidx/core/util/Pair;Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Pair<",
            "Lcom/vungle/warren/downloader/DownloadRequest;",
            "Lcom/vungle/warren/downloader/AssetDownloadListener;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 1278
    iget-object v0, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_f

    .line 1279
    iget-object v0, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/vungle/warren/downloader/AssetDownloadListener;

    iget-object p1, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-interface {v0, p2, p1}, Lcom/vungle/warren/downloader/AssetDownloadListener;->onSuccess(Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequest;)V

    :cond_f
    return-void
.end method

.method private extractMeta(Ljava/io/File;)Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1213
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/vungle/warren/utility/FileUtility;->readMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized findMediatorForCancellation(Lcom/vungle/warren/downloader/DownloadRequest;)Lcom/vungle/warren/downloader/DownloadRequestMediator;
    .registers 6

    monitor-enter p0

    .line 882
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 883
    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->mediators:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->getCacheableKey(Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 884
    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->mediators:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->getNonCacheableKey(Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 886
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_25
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/downloader/DownloadRequestMediator;

    if-nez v1, :cond_34

    goto :goto_25

    .line 890
    :cond_34
    invoke-virtual {v1}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->requests()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/warren/downloader/DownloadRequest;

    .line 891
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_53

    if-eqz v3, :cond_3c

    .line 892
    monitor-exit p0

    return-object v1

    :cond_50
    const/4 p1, 0x0

    .line 896
    monitor-exit p0

    return-object p1

    :catchall_53
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method private getCacheableKey(Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;
    .registers 2

    .line 1348
    iget-object p1, p1, Lcom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    return-object p1
.end method

.method private getContentLength(Lokhttp3/Response;)J
    .registers 5

    const-wide/16 v0, -0x1

    if-nez p1, :cond_5

    return-wide v0

    .line 927
    :cond_5
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p1

    const-string v2, "Content-Length"

    invoke-virtual {p1, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 928
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    return-wide v0

    .line 932
    :cond_16
    :try_start_16
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_1a} :catch_1a

    :catch_1a
    return-wide v0
.end method

.method private getNonCacheableKey(Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;
    .registers 4

    .line 1344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/vungle/warren/downloader/DownloadRequest;->path:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isAnyConnected(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Z
    .registers 4

    .line 985
    invoke-virtual {p1}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->requests()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/downloader/DownloadRequest;

    if-nez v0, :cond_1e

    .line 988
    sget-object v0, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    const-string v1, "Request is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 992
    :cond_1e
    invoke-direct {p0, v0}, Lcom/vungle/warren/downloader/AssetDownloader;->isConnected(Lcom/vungle/warren/downloader/DownloadRequest;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_26
    const/4 p1, 0x0

    return p1
.end method

.method private isConnected(Lcom/vungle/warren/downloader/DownloadRequest;)Z
    .registers 7
    .param p1    # Lcom/vungle/warren/downloader/DownloadRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1001
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->networkProvider:Lcom/vungle/warren/utility/NetworkProvider;

    invoke-virtual {v0}, Lcom/vungle/warren/utility/NetworkProvider;->getCurrentNetworkType()I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_f

    .line 1003
    iget v2, p1, Lcom/vungle/warren/downloader/DownloadRequest;->networkType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_f

    return v1

    :cond_f
    if-eqz v0, :cond_28

    if-eq v0, v1, :cond_26

    const/4 v2, 0x4

    if-eq v0, v2, :cond_28

    const/16 v2, 0x9

    if-eq v0, v2, :cond_26

    const/16 v2, 0x11

    if-eq v0, v2, :cond_28

    const/4 v2, 0x6

    if-eq v0, v2, :cond_26

    const/4 v2, 0x7

    if-eq v0, v2, :cond_28

    const/4 v2, -0x1

    goto :goto_29

    :cond_26
    const/4 v2, 0x2

    goto :goto_29

    :cond_28
    const/4 v2, 0x1

    :goto_29
    if-lez v2, :cond_31

    .line 1023
    iget v3, p1, Lcom/vungle/warren/downloader/DownloadRequest;->networkType:I

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_31

    goto :goto_32

    :cond_31
    const/4 v1, 0x0

    .line 1025
    :goto_32
    sget-object v2, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checking pause for type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " connected "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1027
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->debugString(Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1025
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private launchRequest(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->addLock:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_cb

    .line 204
    :try_start_4
    invoke-virtual {p1}, Lcom/vungle/warren/downloader/DownloadRequest;->isCancelled()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x3

    if-eqz v1, :cond_48

    .line 205
    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->transitioning:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 206
    sget-object v1, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Request "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is cancelled before starting"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v1, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;

    invoke-direct {v1}, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;-><init>()V

    .line 208
    iput v4, v1, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    .line 210
    new-instance v1, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    new-instance v4, Ljava/io/IOException;

    const-string v5, "Cancelled"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3, v4, v2}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    invoke-direct {p0, p1, p2, v1}, Lcom/vungle/warren/downloader/AssetDownloader;->deliverError(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)V

    .line 215
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_4 .. :try_end_46} :catchall_c8

    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_cb

    return-void

    .line 218
    :cond_48
    :try_start_48
    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->mediators:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->mediatorKeyFromRequest(Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/downloader/DownloadRequestMediator;

    if-nez v1, :cond_6c

    .line 221
    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->transitioning:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 222
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->makeNewMediator(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)Lcom/vungle/warren/downloader/DownloadRequestMediator;

    move-result-object p1

    .line 223
    iget-object p2, p0, Lcom/vungle/warren/downloader/AssetDownloader;->mediators:Ljava/util/Map;

    iget-object v1, p1, Lcom/vungle/warren/downloader/DownloadRequestMediator;->key:Ljava/lang/String;

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->load(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 225
    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_48 .. :try_end_6a} :catchall_c8

    :try_start_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_cb

    return-void

    .line 227
    :cond_6c
    :try_start_6c
    monitor-exit p0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_c8

    .line 230
    :try_start_6d
    invoke-virtual {v1}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->lock()V

    .line 231
    monitor-enter p0
    :try_end_71
    .catchall {:try_start_6d .. :try_end_71} :catchall_c3

    .line 232
    :try_start_71
    iget-object v5, p0, Lcom/vungle/warren/downloader/AssetDownloader;->transitioning:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v5, 0x6

    .line 234
    invoke-virtual {v1, v5}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v5

    if-nez v5, :cond_ac

    .line 235
    invoke-virtual {v1, v4}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v4

    if-eqz v4, :cond_8a

    invoke-virtual {p1}, Lcom/vungle/warren/downloader/DownloadRequest;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_8a

    goto :goto_ac

    .line 240
    :cond_8a
    iget-boolean v4, v1, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v4, :cond_9c

    .line 241
    invoke-virtual {v1, p1, p2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->add(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)V

    const/4 p1, 0x2

    .line 243
    invoke-virtual {v1, p1}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result p1

    if-eqz p1, :cond_ba

    .line 244
    invoke-direct {p0, v1}, Lcom/vungle/warren/downloader/AssetDownloader;->load(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_ba

    .line 247
    :cond_9c
    new-instance v4, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "DownloadRequest is already running"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v3, v5, v2}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    invoke-direct {p0, p1, p2, v4}, Lcom/vungle/warren/downloader/AssetDownloader;->deliverError(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)V

    goto :goto_ba

    .line 237
    :cond_ac
    :goto_ac
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->makeNewMediator(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)Lcom/vungle/warren/downloader/DownloadRequestMediator;

    move-result-object p1

    .line 238
    iget-object p2, p0, Lcom/vungle/warren/downloader/AssetDownloader;->mediators:Ljava/util/Map;

    iget-object v2, v1, Lcom/vungle/warren/downloader/DownloadRequestMediator;->key:Ljava/lang/String;

    invoke-interface {p2, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->load(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 257
    :cond_ba
    :goto_ba
    monitor-exit p0
    :try_end_bb
    .catchall {:try_start_71 .. :try_end_bb} :catchall_c0

    .line 259
    :try_start_bb
    invoke-virtual {v1}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->unlock()V

    .line 261
    monitor-exit v0
    :try_end_bf
    .catchall {:try_start_bb .. :try_end_bf} :catchall_cb

    return-void

    :catchall_c0
    move-exception p1

    .line 257
    :try_start_c1
    monitor-exit p0
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c0

    :try_start_c2
    throw p1
    :try_end_c3
    .catchall {:try_start_c2 .. :try_end_c3} :catchall_c3

    :catchall_c3
    move-exception p1

    .line 259
    :try_start_c4
    invoke-virtual {v1}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->unlock()V

    throw p1
    :try_end_c8
    .catchall {:try_start_c4 .. :try_end_c8} :catchall_cb

    :catchall_c8
    move-exception p1

    .line 227
    :try_start_c9
    monitor-exit p0
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_c8

    :try_start_ca
    throw p1

    :catchall_cb
    move-exception p1

    .line 261
    monitor-exit v0
    :try_end_cd
    .catchall {:try_start_ca .. :try_end_cd} :catchall_cb

    throw p1
.end method

.method private declared-synchronized load(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    .registers 4

    monitor-enter p0

    .line 311
    :try_start_1
    invoke-direct {p0}, Lcom/vungle/warren/downloader/AssetDownloader;->addNetworkListener()V

    const/4 v0, 0x1

    .line 312
    invoke-virtual {p1, v0}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V

    .line 314
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->downloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/vungle/warren/downloader/AssetDownloader$2;

    invoke-direct {v1, p0, p1, p1}, Lcom/vungle/warren/downloader/AssetDownloader$2;-><init>(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 664
    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private makeMeta(Ljava/io/File;Lokhttp3/Headers;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lokhttp3/Headers;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 738
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Download_URL"

    .line 739
    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "ETag"

    .line 740
    invoke-virtual {p2, p3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "Last-Modified"

    .line 741
    invoke-virtual {p2, p3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "Accept-Ranges"

    .line 742
    invoke-virtual {p2, p3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "Content-Encoding"

    .line 743
    invoke-virtual {p2, p3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/downloader/AssetDownloader;->saveMeta(Ljava/io/File;Ljava/util/HashMap;)V

    return-object v0
.end method

.method private makeNewMediator(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)Lcom/vungle/warren/downloader/DownloadRequestMediator;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    invoke-virtual {p0}, Lcom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_43

    .line 273
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/vungle/warren/downloader/DownloadRequest;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".vng_meta"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/vungle/warren/downloader/DownloadRequest;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v8, v2

    const/4 v7, 0x0

    goto :goto_56

    .line 277
    :cond_43
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;

    iget-object v1, p1, Lcom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/vungle/warren/downloader/DownloaderCache;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;

    invoke-interface {v1, v0}, Lcom/vungle/warren/downloader/DownloaderCache;->getMetaFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    const/4 v3, 0x1

    .line 280
    iget-object v2, p1, Lcom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    move-object v8, v2

    const/4 v7, 0x1

    .line 283
    :goto_56
    sget-object v2, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Destination file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v9, Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 288
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 289
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    move-object v2, v9

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v8}, Lcom/vungle/warren/downloader/DownloadRequestMediator;-><init>(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v9
.end method

.method private mapExceptionToReason(Ljava/lang/Throwable;Z)I
    .registers 4

    .line 908
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_6

    const/4 p1, 0x4

    goto :goto_1f

    :cond_6
    if-eqz p2, :cond_1e

    .line 910
    instance-of p2, p1, Ljava/net/SocketException;

    if-nez p2, :cond_1e

    instance-of p2, p1, Ljava/net/SocketTimeoutException;

    if-eqz p2, :cond_11

    goto :goto_1e

    .line 914
    :cond_11
    instance-of p2, p1, Ljava/net/UnknownHostException;

    if-nez p2, :cond_1c

    instance-of p1, p1, Ljavax/net/ssl/SSLException;

    if-eqz p1, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p1, 0x2

    goto :goto_1f

    :cond_1c
    :goto_1c
    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method private mediatorKeyFromRequest(Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;
    .registers 3
    .param p1    # Lcom/vungle/warren/downloader/DownloadRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1338
    invoke-virtual {p0}, Lcom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1339
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->getCacheableKey(Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    .line 1340
    :cond_b
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->getNonCacheableKey(Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object p1

    :goto_f
    return-object p1
.end method

.method private notModified(Ljava/io/File;Lokhttp3/Response;Lcom/vungle/warren/downloader/DownloadRequestMediator;Ljava/util/HashMap;)Z
    .registers 10
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Response;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/vungle/warren/downloader/DownloadRequestMediator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lokhttp3/Response;",
            "Lcom/vungle/warren/downloader/DownloadRequestMediator;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_4a

    .line 943
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_4a

    iget-boolean p1, p3, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-nez p1, :cond_18

    goto :goto_4a

    .line 947
    :cond_18
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p1

    const-string p2, "DOWNLOAD_COMPLETE"

    .line 948
    invoke-virtual {p4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4a

    const/16 p2, 0x130

    if-ne p1, p2, :cond_4a

    .line 951
    sget-object p1, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "304 code, data size matches file size "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Lcom/vungle/warren/downloader/AssetDownloader;->debugString(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_4a
    :goto_4a
    return v0
.end method

.method private onCancelled(Lcom/vungle/warren/downloader/DownloadRequest;)V
    .registers 6
    .param p1    # Lcom/vungle/warren/downloader/DownloadRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 851
    invoke-virtual {p1}, Lcom/vungle/warren/downloader/DownloadRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 854
    :cond_7
    invoke-virtual {p1}, Lcom/vungle/warren/downloader/DownloadRequest;->cancel()V

    .line 856
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->findMediatorForCancellation(Lcom/vungle/warren/downloader/DownloadRequest;)Lcom/vungle/warren/downloader/DownloadRequestMediator;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 858
    invoke-virtual {v0}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_46

    .line 860
    invoke-virtual {v0, p1}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->remove(Lcom/vungle/warren/downloader/DownloadRequest;)Landroidx/core/util/Pair;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_20

    move-object v3, v1

    goto :goto_24

    .line 862
    :cond_20
    iget-object v3, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/vungle/warren/downloader/DownloadRequest;

    :goto_24
    if-nez p1, :cond_27

    goto :goto_2c

    .line 863
    :cond_27
    iget-object p1, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/vungle/warren/downloader/AssetDownloadListener;

    .line 865
    :goto_2c
    invoke-virtual {v0}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->values()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_39

    .line 866
    invoke-virtual {v0, v2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V

    :cond_39
    if-nez v3, :cond_3c

    return-void

    .line 872
    :cond_3c
    new-instance p1, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;

    invoke-direct {p1}, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;-><init>()V

    .line 873
    iput v2, p1, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    .line 874
    invoke-direct {p0, p1, v3, v1}, Lcom/vungle/warren/downloader/AssetDownloader;->deliverProgress(Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)V

    .line 877
    :cond_46
    invoke-direct {p0}, Lcom/vungle/warren/downloader/AssetDownloader;->removeNetworkListener()V

    return-void
.end method

.method private declared-synchronized onCancelledMediator(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    .registers 3
    .param p1    # Lcom/vungle/warren/downloader/DownloadRequestMediator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 844
    :try_start_1
    invoke-virtual {p1}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->requests()Ljava/util/List;

    move-result-object p1

    .line 845
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/downloader/DownloadRequest;

    .line 846
    invoke-direct {p0, v0}, Lcom/vungle/warren/downloader/AssetDownloader;->onCancelled(Lcom/vungle/warren/downloader/DownloadRequest;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1b

    goto :goto_9

    .line 848
    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method private onErrorMediator(Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    .registers 6
    .param p1    # Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/warren/downloader/DownloadRequestMediator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_e

    .line 1355
    new-instance p1, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    const/4 v0, -0x1

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v2, 0x4

    invoke-direct {p1, v0, v1, v2}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    .line 1362
    :cond_e
    :try_start_e
    invoke-virtual {p2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->lock()V

    .line 1364
    invoke-virtual {p2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->values()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/util/Pair;

    .line 1365
    iget-object v2, v1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v1, v1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/vungle/warren/downloader/AssetDownloadListener;

    invoke-direct {p0, v2, v1, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->deliverError(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)V

    goto :goto_19

    .line 1368
    :cond_31
    invoke-direct {p0, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->removeMediator(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    const/4 p1, 0x6

    .line 1369
    invoke-virtual {p2, p1}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V
    :try_end_38
    .catchall {:try_start_e .. :try_end_38} :catchall_3c

    .line 1371
    invoke-virtual {p2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->unlock()V

    return-void

    :catchall_3c
    move-exception p1

    invoke-virtual {p2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->unlock()V

    throw p1

    return-void
.end method

.method private declared-synchronized onNetworkChanged(I)V
    .registers 8

    monitor-enter p0

    .line 1101
    :try_start_1
    sget-object v0, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Num of connections: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/downloader/AssetDownloader;->mediators:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->mediators:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2b
    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v2, 0x3

    .line 1104
    invoke-virtual {v1, v2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 1105
    sget-object v1, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    const-string v2, "Result cancelled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 1109
    :cond_46
    invoke-direct {p0, v1}, Lcom/vungle/warren/downloader/AssetDownloader;->isAnyConnected(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Z

    move-result v2

    .line 1111
    sget-object v3, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    invoke-virtual {v1, v2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->setConnected(Z)V

    .line 1115
    invoke-virtual {v1}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isPausable()Z

    move-result v3

    if-eqz v3, :cond_2b

    if-eqz v2, :cond_2b

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1116
    invoke-direct {p0, v1}, Lcom/vungle/warren/downloader/AssetDownloader;->load(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 1117
    sget-object v2, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resumed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/vungle/warren/downloader/DownloadRequestMediator;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catchall {:try_start_1 .. :try_end_9d} :catchall_a0

    goto :goto_2b

    .line 1121
    :cond_9e
    monitor-exit p0

    return-void

    :catchall_a0
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method private onProgressMediator(Lcom/vungle/warren/downloader/DownloadRequestMediator;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 1396
    :cond_3
    invoke-static {p2}, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->copy(Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;

    move-result-object v0

    .line 1397
    sget-object v1, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Progress "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->progressPercent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/vungle/warren/downloader/DownloadRequestMediator;->filePath:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    invoke-virtual {p1}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->values()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_41
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_59

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/core/util/Pair;

    .line 1402
    iget-object v1, p2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object p2, p2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lcom/vungle/warren/downloader/AssetDownloadListener;

    invoke-direct {p0, v0, v1, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->deliverProgress(Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)V

    goto :goto_41

    :cond_59
    return-void
.end method

.method private onSuccessMediator(Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    .registers 9
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/warren/downloader/DownloadRequestMediator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1287
    sget-object v0, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnComplete - Removing connections and listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    :try_start_16
    invoke-virtual {p2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->lock()V

    .line 1294
    invoke-virtual {p2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->values()Ljava/util/List;

    move-result-object v0

    .line 1296
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_38

    .line 1297
    new-instance p1, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    const/4 v0, -0x1

    new-instance v1, Ljava/io/IOException;

    const-string v2, "File is deleted"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-direct {p1, v0, v1, v2}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->onErrorMediator(Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    :try_end_34
    .catchall {:try_start_16 .. :try_end_34} :catchall_ca

    .line 1333
    invoke-virtual {p2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->unlock()V

    return-void

    .line 1308
    :cond_38
    :try_start_38
    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;

    if-eqz v1, :cond_53

    iget-boolean v1, p2, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v1, :cond_53

    .line 1309
    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, p1, v2, v3}, Lcom/vungle/warren/downloader/DownloaderCache;->onCacheHit(Ljava/io/File;J)V

    .line 1310
    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, p1, v2, v3}, Lcom/vungle/warren/downloader/DownloaderCache;->setCacheLastUpdateTimestamp(Ljava/io/File;J)V

    .line 1313
    :cond_53
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_57
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/util/Pair;

    .line 1314
    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v3, v3, Lcom/vungle/warren/downloader/DownloadRequest;->path:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1317
    invoke-virtual {v2, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_78

    .line 1318
    invoke-direct {p0, p1, v2, v1}, Lcom/vungle/warren/downloader/AssetDownloader;->copyToDestination(Ljava/io/File;Ljava/io/File;Landroidx/core/util/Pair;)V

    goto :goto_79

    :cond_78
    move-object v2, p1

    .line 1323
    :goto_79
    sget-object v3, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deliver success:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v5, v5, Lcom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " dest file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1324
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1323
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    invoke-direct {p0, v1, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->deliverSuccess(Landroidx/core/util/Pair;Ljava/io/File;)V

    goto :goto_57

    .line 1329
    :cond_a5
    invoke-direct {p0, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->removeMediator(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    const/4 p1, 0x6

    .line 1330
    invoke-virtual {p2, p1}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V

    .line 1331
    sget-object p1, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->debugString(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catchall {:try_start_38 .. :try_end_c6} :catchall_ca

    .line 1333
    invoke-virtual {p2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->unlock()V

    return-void

    :catchall_ca
    move-exception p1

    invoke-virtual {p2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->unlock()V

    throw p1

    return-void
.end method

.method private partialMalformed(JILokhttp3/Response;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Z
    .registers 7

    const/16 v0, 0xce

    if-ne p3, v0, :cond_a

    .line 783
    invoke-direct {p0, p4, p1, p2, p5}, Lcom/vungle/warren/downloader/AssetDownloader;->satisfiesPartialDownload(Lokhttp3/Response;JLcom/vungle/warren/downloader/DownloadRequestMediator;)Z

    move-result p1

    if-eqz p1, :cond_e

    :cond_a
    const/16 p1, 0x1a0

    if-ne p3, p1, :cond_10

    :cond_e
    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method private pause(Lcom/vungle/warren/downloader/DownloadRequestMediator;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)Z
    .registers 13

    const/4 v0, 0x3

    .line 690
    invoke-virtual {p1, v0}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_91

    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->isAnyConnected(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_91

    :cond_10
    const/4 v0, 0x2

    .line 694
    iput v0, p2, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    .line 695
    invoke-static {p2}, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->copy(Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;

    move-result-object p2

    .line 697
    invoke-virtual {p1}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->values()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/core/util/Pair;

    .line 699
    iget-object v6, v5, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/vungle/warren/downloader/DownloadRequest;

    if-nez v6, :cond_34

    goto :goto_21

    .line 704
    :cond_34
    iget-boolean v7, v6, Lcom/vungle/warren/downloader/DownloadRequest;->pauseOnConnectionLost:Z

    if-nez v7, :cond_43

    .line 705
    invoke-virtual {p1, v6}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->remove(Lcom/vungle/warren/downloader/DownloadRequest;)Landroidx/core/util/Pair;

    .line 706
    iget-object v5, v5, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/vungle/warren/downloader/AssetDownloadListener;

    invoke-direct {p0, v6, v5, p3}, Lcom/vungle/warren/downloader/AssetDownloader;->deliverError(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)V

    goto :goto_21

    .line 710
    :cond_43
    invoke-virtual {p1, v0}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V

    .line 713
    sget-object v4, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pausing download "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Lcom/vungle/warren/downloader/AssetDownloader;->debugString(Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget-object v4, v5, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v5, v5, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/vungle/warren/downloader/AssetDownloadListener;

    invoke-direct {p0, p2, v4, v5}, Lcom/vungle/warren/downloader/AssetDownloader;->deliverProgress(Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)V

    const/4 v4, 0x1

    goto :goto_21

    :cond_6d
    if-nez v4, :cond_73

    const/4 p2, 0x5

    .line 719
    invoke-virtual {p1, p2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V

    .line 721
    :cond_73
    sget-object p2, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to pause - "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result p1

    if-ne p1, v0, :cond_86

    const/4 v1, 0x1

    :cond_86
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_91
    :goto_91
    return v1
.end method

.method private declared-synchronized removeMediator(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    .registers 3

    monitor-enter p0

    .line 679
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->mediators:Ljava/util/Map;

    iget-object p1, p1, Lcom/vungle/warren/downloader/DownloadRequestMediator;->key:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 680
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private removeNetworkListener()V
    .registers 3

    .line 900
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->mediators:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 901
    sget-object v0, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    const-string v1, "Removing listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->networkProvider:Lcom/vungle/warren/utility/NetworkProvider;

    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->networkListener:Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/utility/NetworkProvider;->removeListener(Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;)V

    :cond_16
    return-void
.end method

.method private responseVersionMatches(Lokhttp3/Response;Ljava/util/HashMap;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1126
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p1

    const-string v0, "ETag"

    .line 1128
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Last-Modified"

    .line 1129
    invoke-virtual {p1, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1130
    sget-object v3, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "server etag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    sget-object v3, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "server lastModified: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    if-eqz v1, :cond_66

    .line 1133
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    .line 1134
    sget-object p1, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "etags miss match current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_66
    if-eqz p1, :cond_8f

    .line 1138
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8f

    .line 1139
    sget-object p1, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lastModified miss match current: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_8f
    const/4 p1, 0x1

    return p1
.end method

.method private satisfiesPartialDownload(Lokhttp3/Response;JLcom/vungle/warren/downloader/DownloadRequestMediator;)Z
    .registers 10

    .line 961
    new-instance v0, Lcom/vungle/warren/downloader/RangeResponse;

    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    const-string v2, "Content-Range"

    invoke-virtual {v1, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/warren/downloader/RangeResponse;-><init>(Ljava/lang/String;)V

    .line 962
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p1

    const/16 v1, 0xce

    if-ne p1, v1, :cond_31

    iget-object p1, v0, Lcom/vungle/warren/downloader/RangeResponse;->dimension:Ljava/lang/String;

    const-string v1, "bytes"

    .line 963
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_31

    iget-wide v1, v0, Lcom/vungle/warren/downloader/RangeResponse;->rangeStart:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-ltz p1, :cond_31

    iget-wide v0, v0, Lcom/vungle/warren/downloader/RangeResponse;->rangeStart:J

    cmp-long p1, p2, v0

    if-nez p1, :cond_31

    const/4 p1, 0x1

    goto :goto_32

    :cond_31
    const/4 p1, 0x0

    .line 966
    :goto_32
    sget-object p2, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "satisfies partial download: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Lcom/vungle/warren/downloader/AssetDownloader;->debugString(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private saveMeta(Ljava/io/File;Ljava/util/HashMap;)V
    .registers 3
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1217
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/vungle/warren/utility/FileUtility;->writeMap(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method private sleep(J)V
    .registers 5

    const-wide/16 v0, 0x0

    .line 728
    :try_start_2
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_9} :catch_a

    goto :goto_19

    :catch_a
    move-exception p1

    .line 730
    sget-object p2, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    const-string v0, "InterruptedException "

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 731
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :goto_19
    return-void
.end method

.method private useCacheOnFail(Lcom/vungle/warren/downloader/DownloadRequestMediator;Ljava/io/File;Ljava/util/Map;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/warren/downloader/DownloadRequestMediator;",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .line 668
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;

    if-eqz v0, :cond_34

    iget-boolean p1, p1, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz p1, :cond_34

    const/16 p1, 0xc8

    if-eq p4, p1, :cond_34

    const/16 p1, 0x1a0

    if-eq p4, p1, :cond_34

    const/16 p1, 0xce

    if-eq p4, p1, :cond_34

    const-string p1, "DOWNLOAD_COMPLETE"

    .line 673
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 674
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_34

    .line 675
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-lez v0, :cond_34

    const/4 p1, 0x1

    goto :goto_35

    :cond_34
    const/4 p1, 0x0

    :goto_35
    return p1
.end method

.method private useCacheWithoutVerification(Lcom/vungle/warren/downloader/DownloadRequestMediator;Ljava/io/File;Ljava/util/Map;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/warren/downloader/DownloadRequestMediator;",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_45

    .line 759
    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;

    if-eqz v1, :cond_45

    iget-boolean p1, p1, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-nez p1, :cond_c

    goto :goto_45

    :cond_c
    const-string p1, "Last-Cache-Verification"

    .line 762
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_45

    .line 763
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_45

    const-string p2, "DOWNLOAD_COMPLETE"

    .line 764
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2b

    goto :goto_45

    .line 770
    :cond_2b
    :try_start_2b
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_2f} :catch_45

    .line 775
    iget-wide v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->timeWindow:J

    const-wide v3, 0x7fffffffffffffffL

    sub-long/2addr v3, p1

    cmp-long p3, v1, v3

    if-gez p3, :cond_44

    add-long/2addr p1, v1

    .line 776
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    cmp-long p3, p1, v1

    if-ltz p3, :cond_45

    :cond_44
    const/4 v0, 0x1

    :catch_45
    :cond_45
    :goto_45
    return v0
.end method


# virtual methods
.method public declared-synchronized cancel(Lcom/vungle/warren/downloader/DownloadRequest;)V
    .registers 2
    .param p1    # Lcom/vungle/warren/downloader/DownloadRequest;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    if-nez p1, :cond_5

    .line 1059
    monitor-exit p0

    return-void

    .line 1061
    :cond_5
    :try_start_5
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->onCancelled(Lcom/vungle/warren/downloader/DownloadRequest;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_a

    .line 1062
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized cancelAll()V
    .registers 6

    monitor-enter p0

    .line 1066
    :try_start_1
    sget-object v0, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    const-string v1, "Cancelling all"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->transitioning:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/downloader/DownloadRequest;

    .line 1068
    sget-object v2, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cancel in transtiotion "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    invoke-virtual {p0, v1}, Lcom/vungle/warren/downloader/AssetDownloader;->cancel(Lcom/vungle/warren/downloader/DownloadRequest;)V

    goto :goto_e

    .line 1072
    :cond_36
    sget-object v0, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancel in mediator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/downloader/AssetDownloader;->mediators:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->mediators:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_60
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_88

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 1074
    sget-object v2, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cancel in mediator "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/vungle/warren/downloader/DownloadRequestMediator;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    invoke-direct {p0, v1}, Lcom/vungle/warren/downloader/AssetDownloader;->onCancelledMediator(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    :try_end_87
    .catchall {:try_start_1 .. :try_end_87} :catchall_8a

    goto :goto_60

    .line 1077
    :cond_88
    monitor-exit p0

    return-void

    :catchall_8a
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method public cancelAndAwait(Lcom/vungle/warren/downloader/DownloadRequest;J)Z
    .registers 9
    .param p1    # Lcom/vungle/warren/downloader/DownloadRequest;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1037
    :cond_4
    invoke-virtual {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->cancel(Lcom/vungle/warren/downloader/DownloadRequest;)V

    .line 1039
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    add-long/2addr v1, p2

    .line 1041
    :goto_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    cmp-long v3, p2, v1

    if-gez v3, :cond_40

    .line 1042
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->findMediatorForCancellation(Lcom/vungle/warren/downloader/DownloadRequest;)Lcom/vungle/warren/downloader/DownloadRequestMediator;

    move-result-object p2

    .line 1043
    monitor-enter p0

    .line 1044
    :try_start_1f
    iget-object p3, p0, Lcom/vungle/warren/downloader/AssetDownloader;->transitioning:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_36

    if-eqz p2, :cond_33

    .line 1045
    invoke-virtual {p2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->requests()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_36

    :cond_33
    const/4 p1, 0x1

    .line 1046
    monitor-exit p0

    return p1

    .line 1048
    :cond_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_1f .. :try_end_37} :catchall_3d

    const-wide/16 p2, 0xa

    .line 1050
    invoke-direct {p0, p2, p3}, Lcom/vungle/warren/downloader/AssetDownloader;->sleep(J)V

    goto :goto_12

    :catchall_3d
    move-exception p1

    .line 1048
    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p1

    :cond_40
    return v0
.end method

.method public declared-synchronized clearCache()V
    .registers 2

    monitor-enter p0

    .line 1095
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;

    if-eqz v0, :cond_a

    .line 1096
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;

    invoke-interface {v0}, Lcom/vungle/warren/downloader/DownloaderCache;->clear()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1098
    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized download(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)V
    .registers 7

    monitor-enter p0

    if-nez p1, :cond_19

    if-eqz p2, :cond_17

    const/4 p1, 0x0

    .line 170
    :try_start_6
    new-instance v0, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    const/4 v1, -0x1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "DownloadRequest is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    invoke-direct {p0, p1, p2, v0}, Lcom/vungle/warren/downloader/AssetDownloader;->deliverError(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)V
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_2d

    .line 177
    :cond_17
    monitor-exit p0

    return-void

    .line 180
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->transitioning:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->downloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/vungle/warren/downloader/AssetDownloader$1;

    const v2, -0x7fffffff

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/vungle/warren/downloader/AssetDownloader$1;-><init>(Lcom/vungle/warren/downloader/AssetDownloader;ILcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_2b
    .catchall {:try_start_19 .. :try_end_2b} :catchall_2d

    .line 195
    monitor-exit p0

    return-void

    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public dropCache(Ljava/lang/String;)Z
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1442
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;

    if-eqz v0, :cond_33

    if-eqz p1, :cond_33

    .line 1444
    :try_start_6
    invoke-interface {v0, p1}, Lcom/vungle/warren/downloader/DownloaderCache;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 1445
    sget-object v0, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broken asset, deleting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;

    invoke-interface {v0, p1}, Lcom/vungle/warren/downloader/DownloaderCache;->deleteAndRemove(Ljava/io/File;)Z

    move-result p1
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_2a} :catch_2b

    return p1

    :catch_2b
    move-exception p1

    .line 1448
    sget-object v0, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    const-string v1, "There was an error to get file"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_33
    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized getAllRequests()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vungle/warren/downloader/DownloadRequest;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 298
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 299
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vungle/warren/downloader/AssetDownloader;->mediators:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 301
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 302
    invoke-virtual {v2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->requests()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_15

    .line 305
    :cond_29
    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->transitioning:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    .line 307
    monitor-exit p0

    return-object v0

    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method public declared-synchronized init()V
    .registers 2

    monitor-enter p0

    .line 1088
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;

    if-eqz v0, :cond_a

    .line 1089
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;

    invoke-interface {v0}, Lcom/vungle/warren/downloader/DownloaderCache;->init()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1091
    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCacheEnabled()Z
    .registers 2

    monitor-enter p0

    .line 1457
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_e

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    monitor-exit p0

    return v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCacheEnabled(Z)V
    .registers 2

    monitor-enter p0

    .line 1462
    :try_start_1
    iput-boolean p1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1463
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setDownloadedForTests(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 1225
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1226
    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_67

    if-eqz v1, :cond_27

    .line 1228
    :try_start_b
    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;

    iget-object v2, p0, Lcom/vungle/warren/downloader/AssetDownloader;->cache:Lcom/vungle/warren/downloader/DownloaderCache;

    invoke-interface {v2, p2}, Lcom/vungle/warren/downloader/DownloaderCache;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-interface {v1, p2}, Lcom/vungle/warren/downloader/DownloaderCache;->getMetaFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1a} :catch_1b
    .catchall {:try_start_b .. :try_end_1a} :catchall_67

    goto :goto_27

    :catch_1b
    move-exception p1

    .line 1230
    :try_start_1c
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1231
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to get file for request"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1235
    :cond_27
    :goto_27
    new-instance p2, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".vng_meta"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1237
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_44
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_65

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/io/File;

    .line 1238
    invoke-direct {p0, p3}, Lcom/vungle/warren/downloader/AssetDownloader;->extractMeta(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "DOWNLOAD_COMPLETE"

    .line 1239
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    invoke-static {p3, v0}, Lcom/vungle/warren/utility/FileUtility;->writeSerializable(Ljava/io/File;Ljava/io/Serializable;)V
    :try_end_64
    .catchall {:try_start_1c .. :try_end_64} :catchall_67

    goto :goto_44

    .line 1242
    :cond_65
    monitor-exit p0

    return-void

    :catchall_67
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public setProgressStep(I)V
    .registers 2

    if-eqz p1, :cond_4

    .line 1082
    iput p1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->progressStep:I

    :cond_4
    return-void
.end method

.method declared-synchronized shutdown()V
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 1154
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/vungle/warren/downloader/AssetDownloader;->cancel(Lcom/vungle/warren/downloader/DownloadRequest;)V

    .line 1155
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->transitioning:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1156
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->mediators:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1157
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->uiExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 1158
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->downloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_3b

    .line 1160
    :try_start_19
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->downloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 1161
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->uiExecutor:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_29} :catch_2a
    .catchall {:try_start_19 .. :try_end_29} :catchall_3b

    goto :goto_39

    :catch_2a
    move-exception v0

    .line 1163
    :try_start_2b
    sget-object v1, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    const-string v2, "InterruptedException "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1164
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_39
    .catchall {:try_start_2b .. :try_end_39} :catchall_3b

    .line 1166
    :goto_39
    monitor-exit p0

    return-void

    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updatePriority(Lcom/vungle/warren/downloader/DownloadRequest;)V
    .registers 6

    .line 1467
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->findMediatorForCancellation(Lcom/vungle/warren/downloader/DownloadRequest;)Lcom/vungle/warren/downloader/DownloadRequestMediator;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 1469
    invoke-virtual {p1}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getRunnable()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 1470
    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->downloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1471
    sget-object v1, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prio: updated to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getPriority()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    iget-object p1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->downloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_33
    return-void
.end method
