.class public final Lcom/google/android/gms/internal/ads/zzcsc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private responseCode:I

.field private zzgme:J

.field private zzgmf:J

.field private zzgmg:J

.field private final zzgmh:Ljava/lang/Object;

.field private final zzgmi:Ljava/lang/Object;

.field private final zzgmj:Ljava/lang/Object;

.field private final zzgmk:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcsc;->responseCode:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzgme:J

    .line 4
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzgmf:J

    .line 5
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzgmg:J

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzgmh:Ljava/lang/Object;

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzgmi:Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzgmj:Ljava/lang/Object;

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzgmk:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getResponseCode()I
    .registers 3

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzgmh:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcsc;->responseCode:I

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final zzaqd()J
    .registers 4

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzgmi:Ljava/lang/Object;

    monitor-enter v0

    .line 21
    :try_start_3
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzgme:J

    monitor-exit v0

    return-wide v1

    :catchall_7
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final declared-synchronized zzaqe()J
    .registers 4

    monitor-enter p0

    .line 26
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzgmj:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_c

    .line 27
    :try_start_4
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzgmf:J

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-wide v1

    :catchall_9
    move-exception v1

    .line 28
    :try_start_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    :try_start_b
    throw v1
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_c

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzaqf()J
    .registers 4

    monitor-enter p0

    .line 32
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzgmk:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_c

    .line 33
    :try_start_4
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzgmg:J

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-wide v1

    :catchall_9
    move-exception v1

    .line 34
    :try_start_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    :try_start_b
    throw v1
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_c

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzdz(I)V
    .registers 3

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzgmh:Ljava/lang/Object;

    monitor-enter v0

    .line 12
    :try_start_3
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcsc;->responseCode:I

    .line 13
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public final zzeo(J)V
    .registers 4

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzgmi:Ljava/lang/Object;

    monitor-enter v0

    .line 18
    :try_start_3
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzgme:J

    .line 19
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public final declared-synchronized zzep(J)V
    .registers 4

    monitor-enter p0

    .line 29
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzgmk:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_c

    .line 30
    :try_start_4
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzgmg:J

    .line 31
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    :try_start_b
    throw p1
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_c

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzff(J)V
    .registers 4

    monitor-enter p0

    .line 23
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzgmj:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_c

    .line 24
    :try_start_4
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzgmf:J

    .line 25
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    :try_start_b
    throw p1
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_c

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method
