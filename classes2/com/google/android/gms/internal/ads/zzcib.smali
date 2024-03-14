.class public final Lcom/google/android/gms/internal/ads/zzcib;
.super Lcom/google/android/gms/internal/ads/zzaer;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzcib:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

.field private final zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcdx;Lcom/google/android/gms/internal/ads/zzcei;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaer;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcib;->zzcib:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcib;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcib;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcib;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqo;->destroy()V

    return-void
.end method

.method public final getBody()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcib;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->getBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCallToAction()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcib;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->getCallToAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcib;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getHeadline()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcib;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->getHeadline()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getImages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcib;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->getImages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcib;->zzcib:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrice()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcib;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->getPrice()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStarRating()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcib;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->getStarRating()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getStore()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcib;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->getStore()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzyo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcib;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->getVideoController()Lcom/google/android/gms/internal/ads/zzyo;

    move-result-object v0

    return-object v0
.end method

.method public final performClick(Landroid/os/Bundle;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcib;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcdx;->zzg(Landroid/os/Bundle;)V

    return-void
.end method

.method public final recordImpression(Landroid/os/Bundle;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcib;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcdx;->zzi(Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final reportTouchEvent(Landroid/os/Bundle;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcib;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcdx;->zzh(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zzsk()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcib;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzsl()Lcom/google/android/gms/internal/ads/zzaee;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcib;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->zzsl()Lcom/google/android/gms/internal/ads/zzaee;

    move-result-object v0

    return-object v0
.end method

.method public final zzsm()Lcom/google/android/gms/internal/ads/zzadw;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcib;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->zzsm()Lcom/google/android/gms/internal/ads/zzadw;

    move-result-object v0

    return-object v0
.end method

.method public final zzsn()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcib;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->zzsn()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method
