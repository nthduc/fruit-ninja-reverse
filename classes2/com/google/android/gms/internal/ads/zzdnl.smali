.class final Lcom/google/android/gms/internal/ads/zzdnl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdag<",
        "Lcom/google/android/gms/internal/ads/zzcjg;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzhcw:Lcom/google/android/gms/internal/ads/zzdnj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdnj;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnl;->zzhcw:Lcom/google/android/gms/internal/ads/zzdnj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .registers 4

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcjg;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnl;->zzhcw:Lcom/google/android/gms/internal/ads/zzdnj;

    monitor-enter v0

    .line 7
    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdnl;->zzhcw:Lcom/google/android/gms/internal/ads/zzdnj;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzdnj;->zza(Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzcjg;)Lcom/google/android/gms/internal/ads/zzcjg;

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnl;->zzhcw:Lcom/google/android/gms/internal/ads/zzdnj;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdnj;->zza(Lcom/google/android/gms/internal/ads/zzdnj;)Lcom/google/android/gms/internal/ads/zzcjg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbqo;->zzaih()V

    .line 9
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public final zzaqv()V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnl;->zzhcw:Lcom/google/android/gms/internal/ads/zzdnj;

    monitor-enter v0

    .line 3
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdnl;->zzhcw:Lcom/google/android/gms/internal/ads/zzdnj;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdnj;->zza(Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzcjg;)Lcom/google/android/gms/internal/ads/zzcjg;

    .line 4
    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method
