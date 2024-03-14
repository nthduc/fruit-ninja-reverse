.class public final Lcom/google/android/gms/internal/ads/zzub;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private final zzbya:[B

.field private zzbyb:I

.field private zzbyc:I

.field private final synthetic zzbyd:Lcom/google/android/gms/internal/ads/zztx;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zztx;[B)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzub;->zzbyd:Lcom/google/android/gms/internal/ads/zztx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzub;->zzbya:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zztx;[BLcom/google/android/gms/internal/ads/zzty;)V
    .registers 4

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzub;-><init>(Lcom/google/android/gms/internal/ads/zztx;[B)V

    return-void
.end method


# virtual methods
.method public final zzbx(I)Lcom/google/android/gms/internal/ads/zzub;
    .registers 2

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzub;->zzbyb:I

    return-object p0
.end method

.method public final zzby(I)Lcom/google/android/gms/internal/ads/zzub;
    .registers 2

    .line 16
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzub;->zzbyc:I

    return-object p0
.end method

.method public final declared-synchronized zzdx()V
    .registers 3

    monitor-enter p0

    .line 4
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzub;->zzbyd:Lcom/google/android/gms/internal/ads/zztx;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zztx;->zzbxz:Z

    if-eqz v0, :cond_31

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzub;->zzbyd:Lcom/google/android/gms/internal/ads/zztx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zztx;->zzbxy:Lcom/google/android/gms/internal/ads/zzgx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzub;->zzbya:[B

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgx;->zzc([B)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzub;->zzbyd:Lcom/google/android/gms/internal/ads/zztx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zztx;->zzbxy:Lcom/google/android/gms/internal/ads/zzgx;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzub;->zzbyb:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgx;->zzs(I)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzub;->zzbyd:Lcom/google/android/gms/internal/ads/zztx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zztx;->zzbxy:Lcom/google/android/gms/internal/ads/zzgx;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzub;->zzbyc:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgx;->zzt(I)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzub;->zzbyd:Lcom/google/android/gms/internal/ads/zztx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zztx;->zzbxy:Lcom/google/android/gms/internal/ads/zzgx;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgx;->zza([I)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzub;->zzbyd:Lcom/google/android/gms/internal/ads/zztx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zztx;->zzbxy:Lcom/google/android/gms/internal/ads/zzgx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgx;->zzdx()V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_31} :catch_35
    .catchall {:try_start_1 .. :try_end_31} :catchall_33

    .line 10
    :cond_31
    monitor-exit p0

    return-void

    :catchall_33
    move-exception v0

    goto :goto_3d

    :catch_35
    move-exception v0

    :try_start_36
    const-string v1, "Clearcut log failed"

    .line 12
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_33

    .line 13
    monitor-exit p0

    return-void

    :goto_3d
    monitor-exit p0

    throw v0
.end method
