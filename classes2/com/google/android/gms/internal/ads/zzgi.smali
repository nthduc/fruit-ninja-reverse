.class public final Lcom/google/android/gms/internal/ads/zzgi;
.super Lcom/google/android/gms/internal/ads/zzgm;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzex;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcf$zza$zza;II)V
    .registers 14

    const/16 v6, 0x30

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


# virtual methods
.method protected final zzcw()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgi;->zzabc:Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcn;->zzlu:Lcom/google/android/gms/internal/ads/zzcn;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcf$zza$zza;->zza(Lcom/google/android/gms/internal/ads/zzcn;)Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgi;->zzabm:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgi;->zzwg:Lcom/google/android/gms/internal/ads/zzex;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzex;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgi;->zzabc:Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    monitor-enter v1

    if-eqz v0, :cond_2d

    .line 7
    :try_start_25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgi;->zzabc:Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcn;->zzlt:Lcom/google/android/gms/internal/ads/zzcn;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzcf$zza$zza;->zza(Lcom/google/android/gms/internal/ads/zzcn;)Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    goto :goto_34

    .line 8
    :cond_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgi;->zzabc:Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcn;->zzls:Lcom/google/android/gms/internal/ads/zzcn;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzcf$zza$zza;->zza(Lcom/google/android/gms/internal/ads/zzcn;)Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    .line 9
    :goto_34
    monitor-exit v1

    return-void

    :catchall_36
    move-exception v0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_25 .. :try_end_38} :catchall_36

    throw v0
.end method
