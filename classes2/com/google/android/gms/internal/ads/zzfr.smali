.class public final Lcom/google/android/gms/internal/ads/zzfr;
.super Lcom/google/android/gms/internal/ads/zzgm;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzex;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcf$zza$zza;II)V
    .registers 14

    const/16 v6, 0x18

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzgm;-><init>(Lcom/google/android/gms/internal/ads/zzex;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcf$zza$zza;II)V

    return-void
.end method

.method private final zzcz()V
    .registers 5

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfr;->zzwg:Lcom/google/android/gms/internal/ads/zzex;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzex;->zzcs()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 19
    :cond_9
    :try_start_9
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getInfo()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfg;->zzar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 22
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfr;->zzabc:Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    monitor-enter v2
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1a} :catch_34

    .line 23
    :try_start_1a
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfr;->zzabc:Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzcf$zza$zza;->zzac(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfr;->zzabc:Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcf$zza$zza;->zza(Z)Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfr;->zzabc:Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcf$zza$zzc;->zziy:Lcom/google/android/gms/internal/ads/zzcf$zza$zzc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcf$zza$zza;->zza(Lcom/google/android/gms/internal/ads/zzcf$zza$zzc;)Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    .line 26
    monitor-exit v2

    return-void

    :catchall_31
    move-exception v0

    monitor-exit v2
    :try_end_33
    .catchall {:try_start_1a .. :try_end_33} :catchall_31

    :try_start_33
    throw v0
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_34} :catch_34

    :catch_34
    :cond_34
    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgm;->zzcy()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final zzcw()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfr;->zzwg:Lcom/google/android/gms/internal/ads/zzex;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzex;->zzck()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfr;->zzcz()V

    return-void

    .line 11
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfr;->zzabc:Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    monitor-enter v0

    .line 12
    :try_start_f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfr;->zzabc:Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfr;->zzabm:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzfr;->zzwg:Lcom/google/android/gms/internal/ads/zzex;

    .line 13
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzex;->getContext()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 14
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcf$zza$zza;->zzac(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    .line 15
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_f .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public final zzcy()Ljava/lang/Void;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfr;->zzwg:Lcom/google/android/gms/internal/ads/zzex;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzex;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzgm;->zzcy()Ljava/lang/Void;

    move-result-object v0

    return-object v0

    .line 5
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfr;->zzwg:Lcom/google/android/gms/internal/ads/zzex;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzex;->zzck()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfr;->zzcz()V

    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method
