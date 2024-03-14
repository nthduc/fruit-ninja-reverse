.class final Lcom/google/android/gms/internal/ads/zzcod;
.super Lcom/google/android/gms/internal/ads/zzair;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final synthetic zzgis:Lcom/google/android/gms/internal/ads/zzcnu;

.field private final synthetic zzgit:Ljava/lang/Object;

.field private final synthetic zzgiu:Ljava/lang/String;

.field private final synthetic zzgiv:J

.field private final synthetic zzgiw:Lcom/google/android/gms/internal/ads/zzbcg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcnu;Ljava/lang/Object;Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzbcg;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcod;->zzgis:Lcom/google/android/gms/internal/ads/zzcnu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcod;->zzgit:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcod;->zzgiu:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzcod;->zzgiv:J

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcod;->zzgiw:Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzair;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializationFailed(Ljava/lang/String;)V
    .registers 9

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcod;->zzgit:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcod;->zzgis:Lcom/google/android/gms/internal/ads/zzcnu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcod;->zzgiu:Ljava/lang/String;

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzcod;->zzgiv:J

    sub-long/2addr v3, v5

    long-to-int v4, v3

    const/4 v3, 0x0

    .line 12
    invoke-static {v1, v2, v3, p1, v4}, Lcom/google/android/gms/internal/ads/zzcnu;->zza(Lcom/google/android/gms/internal/ads/zzcnu;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcod;->zzgis:Lcom/google/android/gms/internal/ads/zzcnu;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcnu;->zzd(Lcom/google/android/gms/internal/ads/zzcnu;)Lcom/google/android/gms/internal/ads/zzcne;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcod;->zzgiu:Ljava/lang/String;

    const-string v2, "error"

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzcne;->zzs(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcod;->zzgiw:Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->set(Ljava/lang/Object;)Z

    .line 15
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public final onInitializationSucceeded()V
    .registers 9

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcod;->zzgit:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcod;->zzgis:Lcom/google/android/gms/internal/ads/zzcnu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcod;->zzgiu:Ljava/lang/String;

    const-string v3, ""

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzcod;->zzgiv:J

    sub-long/2addr v4, v6

    long-to-int v5, v4

    const/4 v4, 0x1

    .line 5
    invoke-static {v1, v2, v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzcnu;->zza(Lcom/google/android/gms/internal/ads/zzcnu;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcod;->zzgis:Lcom/google/android/gms/internal/ads/zzcnu;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcnu;->zzd(Lcom/google/android/gms/internal/ads/zzcnu;)Lcom/google/android/gms/internal/ads/zzcne;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcod;->zzgiu:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcne;->zzgk(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcod;->zzgiw:Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbcg;->set(Ljava/lang/Object;)Z

    .line 8
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method
