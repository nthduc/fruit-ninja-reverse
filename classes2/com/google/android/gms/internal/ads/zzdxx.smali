.class final Lcom/google/android/gms/internal/ads/zzdxx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzhsm:Lcom/google/android/gms/internal/ads/zzdxu;

.field private final synthetic zzhsn:Lcom/google/android/gms/internal/ads/zzdzc;

.field private final synthetic zzhso:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdxu;Lcom/google/android/gms/internal/ads/zzdzc;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxx;->zzhsm:Lcom/google/android/gms/internal/ads/zzdxu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdxx;->zzhsn:Lcom/google/android/gms/internal/ads/zzdzc;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdxx;->zzhso:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    const/4 v0, 0x0

    .line 2
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxx;->zzhsn:Lcom/google/android/gms/internal/ads/zzdzc;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdzc;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxx;->zzhsm:Lcom/google/android/gms/internal/ads/zzdxu;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzdxu;->zza(Lcom/google/android/gms/internal/ads/zzdxu;Lcom/google/android/gms/internal/ads/zzdwk;)Lcom/google/android/gms/internal/ads/zzdwk;

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxx;->zzhsm:Lcom/google/android/gms/internal/ads/zzdxu;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdxq;->cancel(Z)Z

    goto :goto_1e

    .line 5
    :cond_15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxx;->zzhsm:Lcom/google/android/gms/internal/ads/zzdxu;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdxx;->zzhso:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdxx;->zzhsn:Lcom/google/android/gms/internal/ads/zzdzc;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdxu;->zza(Lcom/google/android/gms/internal/ads/zzdxu;ILjava/util/concurrent/Future;)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_24

    .line 6
    :goto_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxx;->zzhsm:Lcom/google/android/gms/internal/ads/zzdxu;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzdxu;->zzb(Lcom/google/android/gms/internal/ads/zzdxu;Lcom/google/android/gms/internal/ads/zzdwk;)V

    return-void

    :catchall_24
    move-exception v1

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxx;->zzhsm:Lcom/google/android/gms/internal/ads/zzdxu;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzdxu;->zzb(Lcom/google/android/gms/internal/ads/zzdxu;Lcom/google/android/gms/internal/ads/zzdwk;)V

    .line 9
    throw v1
.end method
