.class public final Lcom/google/android/gms/internal/ads/zzbqf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbvs;
.implements Lcom/google/android/gms/internal/ads/zzqu;


# instance fields
.field private final zzfmx:Lcom/google/android/gms/internal/ads/zzdnv;

.field private final zzfrf:Lcom/google/android/gms/internal/ads/zzbuu;

.field private final zzfrg:Lcom/google/android/gms/internal/ads/zzbvw;

.field private final zzfrh:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzfri:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzbuu;Lcom/google/android/gms/internal/ads/zzbvw;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqf;->zzfrh:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqf;->zzfri:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqf;->zzfmx:Lcom/google/android/gms/internal/ads/zzdnv;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbqf;->zzfrf:Lcom/google/android/gms/internal/ads/zzbuu;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbqf;->zzfrg:Lcom/google/android/gms/internal/ads/zzbvw;

    return-void
.end method

.method private final zzaiu()V
    .registers 4

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqf;->zzfrh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqf;->zzfrf:Lcom/google/android/gms/internal/ads/zzbuu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbuu;->onAdImpression()V

    :cond_f
    return-void
.end method


# virtual methods
.method public final declared-synchronized onAdLoaded()V
    .registers 3

    monitor-enter p0

    .line 8
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqf;->zzfmx:Lcom/google/android/gms/internal/ads/zzdnv;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdk:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbqf;->zzaiu()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 10
    :cond_b
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzqr;)V
    .registers 4

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqf;->zzfmx:Lcom/google/android/gms/internal/ads/zzdnv;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdk:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzqr;->zzbro:Z

    if-eqz v0, :cond_e

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbqf;->zzaiu()V

    .line 13
    :cond_e
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzqr;->zzbro:Z

    if-eqz p1, :cond_20

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqf;->zzfri:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqf;->zzfrg:Lcom/google/android/gms/internal/ads/zzbvw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbvw;->zzajx()V

    :cond_20
    return-void
.end method
