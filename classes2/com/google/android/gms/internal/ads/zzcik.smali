.class public final Lcom/google/android/gms/internal/ads/zzcik;
.super Lcom/google/android/gms/internal/ads/zzagd;
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
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzagd;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzcib:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    return-void
.end method


# virtual methods
.method public final cancelUnconfirmedClick()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdx;->cancelUnconfirmedClick()V

    return-void
.end method

.method public final destroy()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqo;->destroy()V

    return-void
.end method

.method public final getAdvertiser()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->getAdvertiser()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getBody()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

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

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

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

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

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

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzcib:Ljava/lang/String;

    return-object v0
.end method

.method public final getMuteThisAdReasons()Ljava/util/List;
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

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcik;->isCustomMuteThisAdEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->getMuteThisAdReasons()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 11
    :cond_d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getPrice()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

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

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

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

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

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

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->getVideoController()Lcom/google/android/gms/internal/ads/zzyo;

    move-result-object v0

    return-object v0
.end method

.method public final isCustomClickGestureEnabled()Z
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdx;->isCustomClickGestureEnabled()Z

    move-result v0

    return v0
.end method

.method public final isCustomMuteThisAdEnabled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->getMuteThisAdReasons()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->zzamd()Lcom/google/android/gms/internal/ads/zzzk;

    move-result-object v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public final performClick(Landroid/os/Bundle;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcdx;->zzg(Landroid/os/Bundle;)V

    return-void
.end method

.method public final recordCustomClickGesture()V
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdx;->recordCustomClickGesture()V

    return-void
.end method

.method public final recordImpression(Landroid/os/Bundle;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

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

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcdx;->zzh(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzafz;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcdx;->zza(Lcom/google/android/gms/internal/ads/zzafz;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzxz;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcdx;->zza(Lcom/google/android/gms/internal/ads/zzxz;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyd;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/internal/ads/zzyd;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcdx;->zza(Lcom/google/android/gms/internal/ads/zzyd;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyi;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcdx;->zza(Lcom/google/android/gms/internal/ads/zzyi;)V

    return-void
.end method

.method public final zzki()Lcom/google/android/gms/internal/ads/zzyn;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcxl:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 50
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 51
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqo;->zzaix()Lcom/google/android/gms/internal/ads/zzbty;

    move-result-object v0

    return-object v0
.end method

.method public final zzsk()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

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

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

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

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

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

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->zzsn()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzsv()V
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdx;->zzsv()V

    return-void
.end method

.method public final zzsw()Lcom/google/android/gms/internal/ads/zzadz;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdx;->zzalx()Lcom/google/android/gms/internal/ads/zzced;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzced;->zzsw()Lcom/google/android/gms/internal/ads/zzadz;

    move-result-object v0

    return-object v0
.end method
