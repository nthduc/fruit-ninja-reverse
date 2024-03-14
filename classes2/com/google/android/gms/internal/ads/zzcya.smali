.class final Lcom/google/android/gms/internal/ads/zzcya;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbvo;


# instance fields
.field private final synthetic zzgqq:Lcom/google/android/gms/internal/ads/zzctc;

.field private zzgrf:Z

.field private final synthetic zzgrg:Lcom/google/android/gms/internal/ads/zzbcg;

.field private final synthetic zzgrh:Lcom/google/android/gms/internal/ads/zzcxv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcxv;Lcom/google/android/gms/internal/ads/zzctc;Lcom/google/android/gms/internal/ads/zzbcg;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcya;->zzgrh:Lcom/google/android/gms/internal/ads/zzcxv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcya;->zzgqq:Lcom/google/android/gms/internal/ads/zzctc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcya;->zzgrg:Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcya;->zzgrf:Z

    return-void
.end method

.method private final zzm(Lcom/google/android/gms/internal/ads/zzva;)V
    .registers 5

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdpg;->zzhfw:Lcom/google/android/gms/internal/ads/zzdpg;

    .line 19
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcux:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdpg;->zzhfy:Lcom/google/android/gms/internal/ads/zzdpg;

    .line 23
    :cond_16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcya;->zzgrg:Lcom/google/android/gms/internal/ads/zzbcg;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcte;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/ads/zzcte;-><init>(Lcom/google/android/gms/internal/ads/zzdpg;Lcom/google/android/gms/internal/ads/zzva;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbcg;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method


# virtual methods
.method public final onAdFailedToLoad(I)V
    .registers 9

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcya;->zzgrf:Z

    if-eqz v0, :cond_5

    return-void

    .line 5
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcya;->zzgqq:Lcom/google/android/gms/internal/ads/zzctc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzctc;->zzcib:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcxv;->zza(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzva;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "undefined"

    move-object v1, v0

    move v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzva;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzva;Landroid/os/IBinder;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcya;->zzm(Lcom/google/android/gms/internal/ads/zzva;)V

    return-void
.end method

.method public final declared-synchronized onAdLoaded()V
    .registers 3

    monitor-enter p0

    .line 25
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcya;->zzgrg:Lcom/google/android/gms/internal/ads/zzbcg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->set(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 26
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzf(ILjava/lang/String;)V
    .registers 9
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 8
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcya;->zzgrf:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_25

    if-eqz v0, :cond_7

    .line 9
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 10
    :try_start_8
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcya;->zzgrf:Z

    if-nez p2, :cond_14

    .line 12
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcya;->zzgqq:Lcom/google/android/gms/internal/ads/zzctc;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzctc;->zzcib:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcxv;->zza(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    :cond_14
    move-object v2, p2

    .line 13
    new-instance p2, Lcom/google/android/gms/internal/ads/zzva;

    const-string v3, "undefined"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzva;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzva;Landroid/os/IBinder;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzcya;->zzm(Lcom/google/android/gms/internal/ads/zzva;)V
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_25

    .line 14
    monitor-exit p0

    return-void

    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzk(Lcom/google/android/gms/internal/ads/zzva;)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 15
    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcya;->zzgrf:Z

    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcya;->zzm(Lcom/google/android/gms/internal/ads/zzva;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 17
    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method
