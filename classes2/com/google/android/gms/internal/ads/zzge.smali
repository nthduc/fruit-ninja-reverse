.class public final Lcom/google/android/gms/internal/ads/zzge;
.super Lcom/google/android/gms/internal/ads/zzgm;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzabh:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzex;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcf$zza$zza;II[Ljava/lang/StackTraceElement;)V
    .registers 15

    const/16 v6, 0x2d

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzgm;-><init>(Lcom/google/android/gms/internal/ads/zzex;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcf$zza$zza;II)V

    .line 2
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzge;->zzabh:[Ljava/lang/StackTraceElement;

    return-void
.end method


# virtual methods
.method protected final zzcw()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzge;->zzabh:[Ljava/lang/StackTraceElement;

    if-eqz v0, :cond_4f

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzge;->zzabm:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzge;->zzabh:[Ljava/lang/StackTraceElement;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/zzet;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzet;-><init>(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzge;->zzabc:Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    monitor-enter v0

    .line 8
    :try_start_1d
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzge;->zzabc:Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzet;->zzyn:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcf$zza$zza;->zzab(J)Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    .line 9
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzet;->zzyo:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 10
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzge;->zzabc:Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    .line 11
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzet;->zzyp:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 12
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcn;->zzls:Lcom/google/android/gms/internal/ads/zzcn;

    goto :goto_3f

    .line 13
    :cond_3d
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcn;->zzlt:Lcom/google/android/gms/internal/ads/zzcn;

    .line 14
    :goto_3f
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzcf$zza$zza;->zzc(Lcom/google/android/gms/internal/ads/zzcn;)Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    goto :goto_4a

    .line 15
    :cond_43
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzge;->zzabc:Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcn;->zzlu:Lcom/google/android/gms/internal/ads/zzcn;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcf$zza$zza;->zzc(Lcom/google/android/gms/internal/ads/zzcn;)Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    .line 16
    :goto_4a
    monitor-exit v0

    return-void

    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_1d .. :try_end_4e} :catchall_4c

    throw v1

    :cond_4f
    return-void
.end method
