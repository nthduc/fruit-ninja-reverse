.class public final Lcom/google/android/gms/internal/ads/zzfu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzabc:Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

.field private final zzwg:Lcom/google/android/gms/internal/ads/zzex;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzex;Lcom/google/android/gms/internal/ads/zzcf$zza$zza;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfu;->zzwg:Lcom/google/android/gms/internal/ads/zzex;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfu;->zzabc:Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    return-void
.end method

.method private final zzcy()Ljava/lang/Void;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfu;->zzwg:Lcom/google/android/gms/internal/ads/zzex;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzex;->zzcp()Ljava/util/concurrent/Future;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfu;->zzwg:Lcom/google/android/gms/internal/ads/zzex;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzex;->zzcp()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 7
    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfu;->zzwg:Lcom/google/android/gms/internal/ads/zzex;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzex;->zzco()Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 9
    :try_start_19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfu;->zzabc:Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    monitor-enter v1
    :try_end_1c
    .catch Lcom/google/android/gms/internal/ads/zzekj; {:try_start_19 .. :try_end_1c} :catch_30

    .line 10
    :try_start_1c
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfu;->zzabc:Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeif;->toByteArray()[B

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejm;->zzbfu()Lcom/google/android/gms/internal/ads/zzejm;

    move-result-object v3

    const/4 v4, 0x0

    .line 13
    array-length v5, v0

    invoke-virtual {v2, v0, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzeie;->zza([BIILcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzeie;

    .line 14
    monitor-exit v1

    goto :goto_30

    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_1c .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw v0
    :try_end_30
    .catch Lcom/google/android/gms/internal/ads/zzekj; {:try_start_2f .. :try_end_30} :catch_30

    :catch_30
    :cond_30
    :goto_30
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfu;->zzcy()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
