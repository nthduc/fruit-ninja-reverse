.class public final Lcom/google/android/gms/internal/ads/zzfs;
.super Lcom/google/android/gms/internal/ads/zzgm;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private startTime:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzex;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcf$zza$zza;JII)V
    .registers 16

    const/16 v6, 0x19

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p7

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzgm;-><init>(Lcom/google/android/gms/internal/ads/zzex;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcf$zza$zza;II)V

    .line 2
    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzfs;->startTime:J

    return-void
.end method


# virtual methods
.method protected final zzcw()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->zzabm:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->zzabc:Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    monitor-enter v2

    .line 6
    :try_start_13
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfs;->zzabc:Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzcf$zza$zza;->zzak(J)Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    .line 7
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzfs;->startTime:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2f

    .line 8
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfs;->zzabc:Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzfs;->startTime:J

    sub-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzcf$zza$zza;->zzm(J)Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->zzabc:Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzfs;->startTime:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzcf$zza$zza;->zzp(J)Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    .line 10
    :cond_2f
    monitor-exit v2

    return-void

    :catchall_31
    move-exception v0

    monitor-exit v2
    :try_end_33
    .catchall {:try_start_13 .. :try_end_33} :catchall_31

    throw v0
.end method
