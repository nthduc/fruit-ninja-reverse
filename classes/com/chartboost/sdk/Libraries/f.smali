.class public Lcom/chartboost/sdk/Libraries/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/chartboost/sdk/Model/h;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/chartboost/sdk/Libraries/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/chartboost/sdk/Model/h;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/chartboost/sdk/Libraries/g;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/Libraries/g;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/f;->b:Lcom/chartboost/sdk/Libraries/g;

    .line 3
    iput-object p2, p0, Lcom/chartboost/sdk/Libraries/f;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    :try_start_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chartboost/sdk/Model/h;

    iget p2, p2, Lcom/chartboost/sdk/Model/h;->u:I

    int-to-long v2, p2

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    sub-long/2addr v0, p1

    .line 12
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/chartboost/sdk/Libraries/f;->b:Lcom/chartboost/sdk/Libraries/g;

    iget-object p2, p2, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    const-string v2, "templates"

    invoke-direct {p1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_64

    .line 14
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 15
    invoke-direct {p0, p1, v0, v1}, Lcom/chartboost/sdk/Libraries/f;->a([Ljava/io/File;J)V

    .line 16
    iget-object p1, p0, Lcom/chartboost/sdk/Libraries/f;->b:Lcom/chartboost/sdk/Libraries/g;

    invoke-direct {p0, p1}, Lcom/chartboost/sdk/Libraries/f;->a(Lcom/chartboost/sdk/Libraries/g;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_41} :catch_42

    goto :goto_64

    :catch_42
    move-exception p1

    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception while cleaning up templates directory at "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/f;->b:Lcom/chartboost/sdk/Libraries/g;

    iget-object v0, v0, Lcom/chartboost/sdk/Libraries/g;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FileCache"

    invoke-static {v0, p2, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_64
    :goto_64
    return-void
.end method

.method private a(Lcom/chartboost/sdk/Libraries/g;)V
    .registers 4

    .line 9
    new-instance v0, Ljava/io/File;

    iget-object p1, p1, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    const-string v1, ".adId"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2f

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_2f

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to delete "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FileCache"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    return-void
.end method

.method private a([Ljava/io/File;J)V
    .registers 8

    if-eqz p1, :cond_1f

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_1f

    aget-object v2, p1, v1

    .line 2
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 3
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 4
    invoke-direct {p0, v3, p2, p3}, Lcom/chartboost/sdk/Libraries/f;->b([Ljava/io/File;J)V

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 6
    invoke-direct {p0, v3, v2}, Lcom/chartboost/sdk/Libraries/f;->a([Ljava/io/File;Ljava/io/File;)V

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_1f
    return-void
.end method

.method private a([Ljava/io/File;Ljava/io/File;)V
    .registers 4

    if-eqz p1, :cond_25

    .line 7
    array-length p1, p1

    if-nez p1, :cond_25

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_25

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to delete "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FileCache"

    invoke-static {p2, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    return-void
.end method

.method private b([Ljava/io/File;J)V
    .registers 10

    if-eqz p1, :cond_33

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_33

    aget-object v2, p1, v1

    .line 2
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long v5, v3, p2

    if-gez v5, :cond_30

    .line 3
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_30

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FileCache"

    invoke-static {v3, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_33
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)J
    .registers 8

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_20

    .line 16
    :try_start_4
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 17
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 19
    array-length v2, p1

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_2e

    aget-object v4, p1, v3

    .line 20
    invoke-virtual {p0, v4}, Lcom/chartboost/sdk/Libraries/f;->a(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :catch_1e
    move-exception p1

    goto :goto_27

    :cond_20
    if-eqz p1, :cond_2e

    .line 24
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_26} :catch_1e

    goto :goto_2e

    .line 27
    :goto_27
    const-class v2, Lcom/chartboost/sdk/Libraries/f;

    const-string v3, "getFolderSize"

    invoke-static {v2, v3, p1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2e
    :goto_2e
    return-wide v0
.end method

.method public a()Lcom/chartboost/sdk/Libraries/g;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/f;->b:Lcom/chartboost/sdk/Libraries/g;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 12
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/f;->a()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v1

    iget-object v1, v1, Lcom/chartboost/sdk/Libraries/g;->d:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Lorg/json/JSONObject;
    .registers 11

    .line 13
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 14
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/f;->b:Lcom/chartboost/sdk/Libraries/g;

    iget-object v1, v1, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/Libraries/f;->a(Ljava/io/File;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, ".chartboost-internal-folder-size"

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/f;->a()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v1

    iget-object v1, v1, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    .line 16
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6f

    .line 18
    array-length v3, v2

    if-lez v3, :cond_6f

    .line 19
    array-length v3, v2

    const/4 v4, 0x0

    :goto_27
    if-ge v4, v3, :cond_6f

    aget-object v5, v2, v4

    .line 20
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 22
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "-size"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6}, Lcom/chartboost/sdk/Libraries/f;->a(Ljava/io/File;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_65

    .line 25
    array-length v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "count"

    invoke-static {v5, v8, v7}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    :cond_65
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v5}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    :cond_6f
    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .registers 4

    .line 9
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/f;->a()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Libraries/g;->b:Ljava/io/File;

    if-eqz v0, :cond_1b

    if-nez p1, :cond_b

    goto :goto_1b

    .line 11
    :cond_b
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/f;->a()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v1

    iget-object v1, v1, Lcom/chartboost/sdk/Libraries/g;->b:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1

    :cond_1b
    :goto_1b
    const/4 p1, 0x0

    return p1
.end method

.method declared-synchronized b(Ljava/io/File;)[B
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_6

    monitor-exit p0

    return-object v0

    .line 5
    :cond_6
    :try_start_6
    invoke-static {p1}, Lcom/chartboost/sdk/impl/x1;->b(Ljava/io/File;)[B

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a} :catch_d
    .catchall {:try_start_6 .. :try_end_a} :catchall_b

    goto :goto_1c

    :catchall_b
    move-exception p1

    goto :goto_1e

    :catch_d
    move-exception p1

    :try_start_e
    const-string v1, "FileCache"

    const-string v2, "Error loading cache from disk"

    .line 7
    invoke-static {v1, v2, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    const-class v1, Lcom/chartboost/sdk/Libraries/f;

    const-string v2, "readByteArrayFromDisk"

    invoke-static {v1, v2, p1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_b

    :goto_1c
    monitor-exit p0

    return-object v0

    :goto_1e
    monitor-exit p0

    throw p1
.end method

.method public c()Lorg/json/JSONArray;
    .registers 7

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/f;->a()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v1

    iget-object v1, v1, Lcom/chartboost/sdk/Libraries/g;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 4
    array-length v2, v1

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_2d

    aget-object v4, v1, v3

    const-string v5, ".nomedia"

    .line 5
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2a

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 6
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_2d
    return-object v0
.end method

.method public c(Ljava/io/File;)V
    .registers 7

    const-string v0, "FileCache"

    const/4 v1, 0x0

    .line 7
    :try_start_3
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_a} :catch_31
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_a} :catch_28
    .catchall {:try_start_3 .. :try_end_a} :catchall_26

    const-wide/16 v3, 0x0

    .line 8
    :try_start_c
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 9
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->read()I

    move-result p1

    .line 10
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 11
    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->write(I)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_19} :catch_23
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_19} :catch_20
    .catchall {:try_start_c .. :try_end_19} :catchall_1d

    .line 19
    :try_start_19
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_3c

    goto :goto_3c

    :catchall_1d
    move-exception p1

    move-object v1, v2

    goto :goto_3d

    :catch_20
    move-exception p1

    move-object v1, v2

    goto :goto_29

    :catch_23
    move-exception p1

    move-object v1, v2

    goto :goto_32

    :catchall_26
    move-exception p1

    goto :goto_3d

    :catch_28
    move-exception p1

    :goto_29
    :try_start_29
    const-string v2, "IOException when attempting to touch file"

    .line 20
    invoke-static {v0, v2, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v1, :cond_3c

    goto :goto_39

    :catch_31
    move-exception p1

    :goto_32
    const-string v2, "File not found when attempting to touch"

    .line 25
    invoke-static {v0, v2, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_37
    .catchall {:try_start_29 .. :try_end_37} :catchall_26

    if-eqz v1, :cond_3c

    .line 24
    :goto_39
    :try_start_39
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3c

    :catch_3c
    :cond_3c
    :goto_3c
    return-void

    :goto_3d
    if-eqz v1, :cond_42

    .line 31
    :try_start_3f
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_42

    .line 34
    :catch_42
    :cond_42
    throw p1
.end method

.method public d()Lorg/json/JSONObject;
    .registers 11

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_5
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/f;->a()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v1

    iget-object v1, v1, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    .line 4
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/f;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/Model/h;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/h;->v:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "templates"

    .line 5
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 6
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 8
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 9
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5f

    .line 11
    array-length v6, v4

    const/4 v7, 0x0

    :goto_45
    if-ge v7, v6, :cond_5f

    aget-object v8, v4, v7

    const-string v9, ".nomedia"

    .line 12
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5c

    const-string v9, ".tmp"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5c

    .line 13
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_5c
    add-int/lit8 v7, v7, 0x1

    goto :goto_45

    .line 17
    :cond_5f
    invoke-static {v0, v3, v5}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_62} :catch_63

    goto :goto_19

    :catch_63
    move-exception v1

    .line 21
    const-class v2, Lcom/chartboost/sdk/Libraries/f;

    const-string v3, "getWebViewCacheAssets"

    invoke-static {v2, v3, v1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_6b
    return-object v0
.end method
