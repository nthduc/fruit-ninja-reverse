.class public final Lcom/google/android/gms/internal/measurement/zzcp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.1"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zza(Ljava/io/File;)Lcom/google/android/gms/internal/measurement/zzcm;
    .registers 8

    .line 41
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_9e

    .line 42
    :try_start_f
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 43
    :goto_14
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_18} :catch_94
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_18} :catch_9e

    const-string v3, "HermeticFileOverrides"

    if-eqz v2, :cond_69

    :try_start_1c
    const-string v4, " "

    const/4 v5, 0x3

    .line 44
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 45
    array-length v6, v4

    if-eq v6, v5, :cond_40

    const-string v4, "Invalid: "

    .line 46
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_37

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3c

    :cond_37
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3c
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_40
    const/4 v2, 0x0

    .line 48
    aget-object v2, v4, v2

    const/4 v3, 0x1

    .line 49
    aget-object v3, v4, v3

    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    .line 50
    aget-object v4, v4, v5

    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 51
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5f

    .line 52
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_5f
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 55
    :cond_69
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Parsed "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzcm;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzcm;-><init>(Ljava/util/Map;)V
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_90} :catch_94
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_90} :catch_9e

    .line 57
    :try_start_90
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_9e

    return-object p0

    :catch_94
    move-exception p0

    .line 59
    :try_start_95
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_98
    .catch Ljava/lang/Throwable; {:try_start_95 .. :try_end_98} :catch_99
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_9e

    goto :goto_9d

    :catch_99
    move-exception v0

    :try_start_9a
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/zzdl;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_9d
    throw p0
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9e} :catch_9e

    :catch_9e
    move-exception p0

    .line 61
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    return-void
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzdd;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/android/gms/internal/measurement/zzdd<",
            "Lcom/google/android/gms/internal/measurement/zzcm;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v3, "eng"

    .line 3
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_18

    const-string v3, "userdebug"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_43

    :cond_18
    const-string v0, "goldfish"

    .line 5
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "ranchu"

    .line 6
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "robolectric"

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto :goto_43

    :cond_31
    const-string v0, "dev-keys"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "test-keys"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    goto :goto_43

    :cond_42
    const/4 v4, 0x1

    :goto_43
    if-nez v4, :cond_4a

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdd;->zzc()Lcom/google/android/gms/internal/measurement/zzdd;

    move-result-object p0

    return-object p0

    .line 15
    :cond_4a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd;->zza()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result v0

    if-eqz v0, :cond_57

    goto :goto_5b

    .line 19
    :cond_57
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    .line 22
    :cond_5b
    :goto_5b
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzcp;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzdd;

    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzdd;->zza()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzdd;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzcp;->zza(Ljava/io/File;)Lcom/google/android/gms/internal/measurement/zzcm;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzdd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzdd;

    move-result-object p0

    return-object p0

    .line 25
    :cond_74
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdd;->zzc()Lcom/google/android/gms/internal/measurement/zzdd;

    move-result-object p0

    return-object p0
.end method

.method private static zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzdd;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/android/gms/internal/measurement/zzdd<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 27
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 28
    :try_start_4
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_38

    .line 29
    :try_start_7
    new-instance v1, Ljava/io/File;

    const-string v2, "phenotype_hermetic"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string v2, "overrides.txt"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_15} :catch_28
    .catchall {:try_start_7 .. :try_end_15} :catchall_38

    .line 36
    :try_start_15
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_20

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzdd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzdd;

    move-result-object p0

    goto :goto_24

    :cond_20
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdd;->zzc()Lcom/google/android/gms/internal/measurement/zzdd;

    move-result-object p0
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_38

    .line 37
    :goto_24
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    :catch_28
    move-exception p0

    :try_start_29
    const-string v1, "HermeticFileOverrides"

    const-string v2, "no data dir"

    .line 32
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdd;->zzc()Lcom/google/android/gms/internal/measurement/zzdd;

    move-result-object p0
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_38

    .line 34
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    :catchall_38
    move-exception p0

    .line 39
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 40
    throw p0
.end method
