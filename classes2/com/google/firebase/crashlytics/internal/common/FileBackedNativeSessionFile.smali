.class Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-crashlytics@@17.0.0"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/common/NativeSessionFile;


# instance fields
.field private final dataTransportFilename:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final file:Ljava/io/File;
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

    .line 90
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

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;->dataTransportFilename:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;->reportsEndpointFilename:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;->file:Ljava/io/File;

    return-void
.end method

.method private asGzippedBytes()[B
    .registers 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/16 v0, 0x2000

    .line 77
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 78
    :try_start_5
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;->getStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_68

    .line 79
    :try_start_9
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_e} :catch_5c
    .catchall {:try_start_9 .. :try_end_e} :catchall_59

    .line 80
    :try_start_e
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    if-nez v2, :cond_21

    .line 90
    invoke-static {v1, v4}, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_18} :catch_4f
    .catchall {:try_start_e .. :try_end_18} :catchall_4c

    :try_start_18
    invoke-static {v1, v3}, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1b} :catch_5c
    .catchall {:try_start_18 .. :try_end_1b} :catchall_59

    if-eqz v2, :cond_20

    :try_start_1d
    invoke-static {v1, v2}, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_68

    :cond_20
    return-object v1

    .line 85
    :cond_21
    :goto_21
    :try_start_21
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_2c

    const/4 v6, 0x0

    .line 86
    invoke-virtual {v4, v0, v6, v5}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    goto :goto_21

    .line 88
    :cond_2c
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 89
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_33} :catch_42
    .catchall {:try_start_21 .. :try_end_33} :catchall_3f

    .line 90
    :try_start_33
    invoke-static {v1, v4}, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_36} :catch_4f
    .catchall {:try_start_33 .. :try_end_36} :catchall_4c

    :try_start_36
    invoke-static {v1, v3}, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_39} :catch_5c
    .catchall {:try_start_36 .. :try_end_39} :catchall_59

    if-eqz v2, :cond_3e

    :try_start_3b
    invoke-static {v1, v2}, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_68

    :cond_3e
    return-object v0

    :catchall_3f
    move-exception v0

    move-object v5, v1

    goto :goto_48

    :catch_42
    move-exception v0

    .line 78
    :try_start_43
    throw v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_44

    :catchall_44
    move-exception v5

    move-object v7, v5

    move-object v5, v0

    move-object v0, v7

    .line 90
    :goto_48
    :try_start_48
    invoke-static {v5, v4}, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v0
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_4c} :catch_4f
    .catchall {:try_start_48 .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception v0

    move-object v4, v1

    goto :goto_55

    :catch_4f
    move-exception v0

    .line 78
    :try_start_50
    throw v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v4

    move-object v7, v4

    move-object v4, v0

    move-object v0, v7

    .line 90
    :goto_55
    :try_start_55
    invoke-static {v4, v3}, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v0
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_59} :catch_5c
    .catchall {:try_start_55 .. :try_end_59} :catchall_59

    :catchall_59
    move-exception v0

    move-object v3, v1

    goto :goto_62

    :catch_5c
    move-exception v0

    .line 78
    :try_start_5d
    throw v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5e

    :catchall_5e
    move-exception v3

    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    :goto_62
    if-eqz v2, :cond_67

    .line 90
    :try_start_64
    invoke-static {v3, v2}, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_67
    throw v0
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_68} :catch_68

    :catch_68
    return-object v1
.end method


# virtual methods
.method public asFilePayload()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 66
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;->asGzippedBytes()[B

    move-result-object v0

    if-eqz v0, :cond_19

    .line 68
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File;->builder()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File$Builder;

    move-result-object v1

    .line 69
    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File$Builder;->setContents([B)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;->dataTransportFilename:Ljava/lang/String;

    .line 70
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File$Builder;->setFilename(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File$Builder;->build()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File;

    move-result-object v0

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return-object v0
.end method

.method public getReportsEndpointFilename()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;->reportsEndpointFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getStream()Ljava/io/InputStream;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_1a

    .line 57
    :cond_12
    :try_start_12
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;->file:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_19} :catch_1a

    return-object v0

    :catch_1a
    :cond_1a
    :goto_1a
    return-object v1
.end method
