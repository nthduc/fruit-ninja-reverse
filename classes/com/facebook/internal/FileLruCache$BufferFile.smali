.class Lcom/facebook/internal/FileLruCache$BufferFile;
.super Ljava/lang/Object;
.source "FileLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/FileLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferFile"
.end annotation


# static fields
.field private static final FILE_NAME_PREFIX:Ljava/lang/String; = "buffer"

.field private static final filterExcludeBufferFiles:Ljava/io/FilenameFilter;

.field private static final filterExcludeNonBufferFiles:Ljava/io/FilenameFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 351
    new-instance v0, Lcom/facebook/internal/FileLruCache$BufferFile$1;

    invoke-direct {v0}, Lcom/facebook/internal/FileLruCache$BufferFile$1;-><init>()V

    sput-object v0, Lcom/facebook/internal/FileLruCache$BufferFile;->filterExcludeBufferFiles:Ljava/io/FilenameFilter;

    .line 358
    new-instance v0, Lcom/facebook/internal/FileLruCache$BufferFile$2;

    invoke-direct {v0}, Lcom/facebook/internal/FileLruCache$BufferFile$2;-><init>()V

    sput-object v0, Lcom/facebook/internal/FileLruCache$BufferFile;->filterExcludeNonBufferFiles:Ljava/io/FilenameFilter;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static deleteAll(Ljava/io/File;)V
    .registers 4

    .line 367
    invoke-static {}, Lcom/facebook/internal/FileLruCache$BufferFile;->excludeNonBufferFiles()Ljava/io/FilenameFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 369
    array-length v0, p0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_16

    aget-object v2, p0, v1

    .line 370
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_16
    return-void
.end method

.method static excludeBufferFiles()Ljava/io/FilenameFilter;
    .registers 1

    .line 376
    sget-object v0, Lcom/facebook/internal/FileLruCache$BufferFile;->filterExcludeBufferFiles:Ljava/io/FilenameFilter;

    return-object v0
.end method

.method static excludeNonBufferFiles()Ljava/io/FilenameFilter;
    .registers 1

    .line 380
    sget-object v0, Lcom/facebook/internal/FileLruCache$BufferFile;->filterExcludeNonBufferFiles:Ljava/io/FilenameFilter;

    return-object v0
.end method

.method static newFile(Ljava/io/File;)Ljava/io/File;
    .registers 4

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/facebook/internal/FileLruCache;->bufferIndex:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {}, Lcom/facebook/internal/FileLruCache;->access$300()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method