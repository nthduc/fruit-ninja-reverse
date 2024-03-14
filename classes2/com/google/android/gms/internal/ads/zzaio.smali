.class final Lcom/google/android/gms/internal/ads/zzaio;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;


# instance fields
.field private final synthetic zzbvs:Lcom/google/android/gms/internal/ads/zzbcg;

.field private final synthetic zzdfy:Lcom/google/android/gms/internal/ads/zzaik;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaik;Lcom/google/android/gms/internal/ads/zzbcg;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaio;->zzdfy:Lcom/google/android/gms/internal/ads/zzaik;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaio;->zzbvs:Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .registers 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaio;->zzbvs:Lcom/google/android/gms/internal/ads/zzbcg;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaio;->zzdfy:Lcom/google/android/gms/internal/ads/zzaik;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaik;->zzb(Lcom/google/android/gms/internal/ads/zzaik;)Lcom/google/android/gms/internal/ads/zzahz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzahz;->zzsz()Lcom/google/android/gms/internal/ads/zzaii;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->set(Ljava/lang/Object;)Z
    :try_end_f
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaio;->zzbvs:Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .registers 6

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaio;->zzbvs:Lcom/google/android/gms/internal/ads/zzbcg;

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onConnectionSuspended: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method
