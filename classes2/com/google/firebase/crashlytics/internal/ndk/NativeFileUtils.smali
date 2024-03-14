.class public final Lcom/google/firebase/crashlytics/internal/ndk/NativeFileUtils;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-crashlytics@@17.0.0"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binaryImagesJsonFromMapsFile(Ljava/io/File;Landroid/content/Context;)[B
    .registers 5
    .param p0    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_2e

    .line 32
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2e

    :cond_9
    const/4 v0, 0x0

    .line 37
    :try_start_a
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_28

    .line 38
    :try_start_14
    new-instance p0, Lcom/google/firebase/crashlytics/internal/ndk/BinaryImagesConverter;

    new-instance v0, Lcom/google/firebase/crashlytics/internal/ndk/Sha1FileIdStrategy;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/ndk/Sha1FileIdStrategy;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/crashlytics/internal/ndk/BinaryImagesConverter;-><init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/ndk/BinaryImagesConverter$FileIdStrategy;)V

    invoke-virtual {p0, v1}, Lcom/google/firebase/crashlytics/internal/ndk/BinaryImagesConverter;->convert(Ljava/io/BufferedReader;)[B

    move-result-object p0
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_26

    .line 40
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :catchall_26
    move-exception p0

    goto :goto_2a

    :catchall_28
    move-exception p0

    move-object v1, v0

    :goto_2a
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :cond_2e
    :goto_2e
    const/4 p0, 0x0

    .line 33
    new-array p0, p0, [B

    return-object p0
.end method
