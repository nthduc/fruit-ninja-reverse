.class final Lcom/google/android/gms/internal/ads/zzzp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzcku:Lcom/google/android/gms/internal/ads/zzzq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzzq;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzp;->zzcku:Lcom/google/android/gms/internal/ads/zzzq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzp;->zzcku:Lcom/google/android/gms/internal/ads/zzzq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzzq;->zzckv:Lcom/google/android/gms/internal/ads/zzzo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzzo;->zza(Lcom/google/android/gms/internal/ads/zzzo;)Lcom/google/android/gms/internal/ads/zzwt;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 3
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzp;->zzcku:Lcom/google/android/gms/internal/ads/zzzq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzzq;->zzckv:Lcom/google/android/gms/internal/ads/zzzo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzzo;->zza(Lcom/google/android/gms/internal/ads/zzzo;)Lcom/google/android/gms/internal/ads/zzwt;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzwt;->onAdFailedToLoad(I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception v0

    const-string v1, "Could not notify onAdFailedToLoad event."

    .line 6
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1d
    return-void
.end method