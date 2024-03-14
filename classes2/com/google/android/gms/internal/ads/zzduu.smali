.class public final Lcom/google/android/gms/internal/ads/zzduu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.4.0"


# direct methods
.method public static zza(Ljava/io/File;Z)Ljava/io/File;
    .registers 2
    .param p0    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_11

    .line 18
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_11

    .line 19
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 20
    :cond_11
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1a

    .line 21
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_1a
    return-object p0
.end method

.method public static zza(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .registers 3
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 15
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 17
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzduu;->zza(Ljava/io/File;Z)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .registers 4
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_17

    .line 3
    :cond_d
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/zzduu;->zza(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_17
    :goto_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zza(Ljava/io/File;[B)Z
    .registers 4
    .param p0    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 5
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_1b
    .catchall {:try_start_1 .. :try_end_6} :catchall_16

    .line 6
    :try_start_6
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_c} :catch_14
    .catchall {:try_start_6 .. :try_end_c} :catchall_11

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 p0, 0x1

    return p0

    :catchall_11
    move-exception p0

    move-object v0, v1

    goto :goto_17

    :catch_14
    move-object v0, v1

    goto :goto_1b

    :catchall_16
    move-exception p0

    .line 13
    :goto_17
    invoke-static {v0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 14
    throw p0

    .line 11
    :catch_1b
    :goto_1b
    invoke-static {v0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static zze(Ljava/io/File;)Z
    .registers 8
    .param p0    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 23
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 26
    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_26

    .line 28
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_12
    if-ge v4, v3, :cond_27

    aget-object v6, v0, v4

    if-eqz v6, :cond_22

    .line 30
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzduu;->zze(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_22

    if-eqz v5, :cond_22

    const/4 v5, 0x1

    goto :goto_23

    :cond_22
    const/4 v5, 0x0

    :goto_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_26
    const/4 v5, 0x1

    .line 33
    :cond_27
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_30

    if-eqz v5, :cond_30

    return v1

    :cond_30
    return v2
.end method

.method public static zzf(Ljava/io/File;)[B
    .registers 3
    .param p0    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 35
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_1a
    .catchall {:try_start_1 .. :try_end_6} :catchall_15

    .line 36
    :try_start_6
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzeip;->zzg(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeip;->toByteArray()[B

    move-result-object p0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_e} :catch_1b
    .catchall {:try_start_6 .. :try_end_e} :catchall_12

    .line 37
    invoke-static {v1}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :catchall_12
    move-exception p0

    move-object v0, v1

    goto :goto_16

    :catchall_15
    move-exception p0

    .line 42
    :goto_16
    invoke-static {v0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 43
    throw p0

    :catch_1a
    move-object v1, v0

    .line 40
    :catch_1b
    invoke-static {v1}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0
.end method
