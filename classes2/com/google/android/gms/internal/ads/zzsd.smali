.class public final Lcom/google/android/gms/internal/ads/zzsd;
.super Lcom/google/android/gms/internal/ads/zzsp;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private final zzbuq:Lcom/google/android/gms/ads/FullScreenContentCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/FullScreenContentCallback;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsp;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzbuq:Lcom/google/android/gms/ads/FullScreenContentCallback;

    return-void
.end method


# virtual methods
.method public final onAdDismissedFullScreenContent()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzbuq:Lcom/google/android/gms/ads/FullScreenContentCallback;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdDismissedFullScreenContent()V

    return-void
.end method

.method public final onAdShowedFullScreenContent()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzbuq:Lcom/google/android/gms/ads/FullScreenContentCallback;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdShowedFullScreenContent()V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzva;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzbuq:Lcom/google/android/gms/ads/FullScreenContentCallback;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzva;->zzph()Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V

    return-void
.end method
