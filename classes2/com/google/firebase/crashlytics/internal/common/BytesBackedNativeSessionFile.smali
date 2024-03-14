.class Lcom/google/firebase/crashlytics/internal/common/BytesBackedNativeSessionFile;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-crashlytics@@17.0.0"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/common/NativeSessionFile;


# instance fields
.field private final bytes:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final dataTransportFilename:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final reportsEndpointFilename:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 2

    if-eqz p0, :cond_6

    .line 80
    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_9

    goto :goto_9

    :cond_6
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :catch_9
    :goto_9
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/BytesBackedNativeSessionFile;->dataTransportFilename:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/BytesBackedNativeSessionFile;->reportsEndpointFilename:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/BytesBackedNativeSessionFile;->bytes:[B

    return-void
.end method

.method private asGzippedBytes()[B
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 71
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/BytesBackedNativeSessionFile;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 75
    :cond_8
    :try_start_8
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_3f

    .line 76
    :try_start_d
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_12} :catch_35
    .catchall {:try_start_d .. :try_end_12} :catchall_32

    .line 77
    :try_start_12
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/BytesBackedNativeSessionFile;->bytes:[B

    invoke-virtual {v2, v3}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 78
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 79
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_1e} :catch_28
    .catchall {:try_start_12 .. :try_end_1e} :catchall_25

    .line 80
    :try_start_1e
    invoke-static {v1, v2}, Lcom/google/firebase/crashlytics/internal/common/BytesBackedNativeSessionFile;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_21} :catch_35
    .catchall {:try_start_1e .. :try_end_21} :catchall_32

    :try_start_21
    invoke-static {v1, v0}, Lcom/google/firebase/crashlytics/internal/common/BytesBackedNativeSessionFile;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_3f

    return-object v3

    :catchall_25
    move-exception v3

    move-object v4, v1

    goto :goto_2e

    :catch_28
    move-exception v3

    .line 75
    :try_start_29
    throw v3
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v4

    move-object v5, v4

    move-object v4, v3

    move-object v3, v5

    .line 80
    :goto_2e
    :try_start_2e
    invoke-static {v4, v2}, Lcom/google/firebase/crashlytics/internal/common/BytesBackedNativeSessionFile;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_32} :catch_35
    .catchall {:try_start_2e .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v2

    move-object v3, v1

    goto :goto_3b

    :catch_35
    move-exception v2

    .line 75
    :try_start_36
    throw v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_37

    :catchall_37
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    .line 80
    :goto_3b
    :try_start_3b
    invoke-static {v3, v0}, Lcom/google/firebase/crashlytics/internal/common/BytesBackedNativeSessionFile;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3f} :catch_3f

    :catch_3f
    return-object v1
.end method

.method private isEmpty()Z
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/BytesBackedNativeSessionFile;->bytes:[B

    if-eqz v0, :cond_a

    array-length v0, v0

    if-nez v0, :cond_8

    goto :goto_a

    :cond_8
    const/4 v0, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 v0, 0x1

    :goto_b
    return v0
.end method


# virtual methods
.method public asFilePayload()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 56
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/BytesBackedNativeSessionFile;->asGzippedBytes()[B

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_1a

    .line 59
    :cond_8
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File;->builder()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File$Builder;

    move-result-object v1

    .line 60
    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File$Builder;->setContents([B)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/BytesBackedNativeSessionFile;->dataTransportFilename:Ljava/lang/String;

    .line 61
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File$Builder;->setFilename(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File$Builder;->build()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File;

    move-result-object v0

    :goto_1a
    return-object v0
.end method

.method public getReportsEndpointFilename()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/BytesBackedNativeSessionFile;->reportsEndpointFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getStream()Ljava/io/InputStream;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 50
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/BytesBackedNativeSessionFile;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_f

    :cond_8
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/BytesBackedNativeSessionFile;->bytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_f
    return-object v0
.end method
