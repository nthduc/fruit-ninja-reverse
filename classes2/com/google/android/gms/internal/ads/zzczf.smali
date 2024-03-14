.class public final Lcom/google/android/gms/internal/ads/zzczf;
.super Lcom/google/android/gms/internal/ads/zzxf;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzfpw:Landroid/view/ViewGroup;

.field private final zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

.field private final zzfxl:Lcom/google/android/gms/internal/ads/zzwt;

.field private final zzgsg:Lcom/google/android/gms/internal/ads/zzboq;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwt;Lcom/google/android/gms/internal/ads/zzdok;Lcom/google/android/gms/internal/ads/zzboq;)V
    .registers 5
    .param p2    # Lcom/google/android/gms/internal/ads/zzwt;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxf;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczf;->zzvr:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzczf;->zzfxl:Lcom/google/android/gms/internal/ads/zzwt;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzczf;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzczf;->zzgsg:Lcom/google/android/gms/internal/ads/zzboq;

    .line 7
    new-instance p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzczf;->zzvr:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 9
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzczf;->zzgsg:Lcom/google/android/gms/internal/ads/zzboq;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzboq;->zzahx()Landroid/view/View;

    move-result-object p2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkt()Lcom/google/android/gms/internal/ads/zzazd;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzazd;->zzxx()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzczf;->zzkg()Lcom/google/android/gms/internal/ads/zzvn;

    move-result-object p2

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzvn;->heightPixels:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzczf;->zzkg()Lcom/google/android/gms/internal/ads/zzvn;

    move-result-object p2

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzvn;->widthPixels:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczf;->zzfpw:Landroid/view/ViewGroup;

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

    const-string v0, "destroy must be called on the main UI thread."

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczf;->zzgsg:Lcom/google/android/gms/internal/ads/zzboq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqo;->destroy()V

    return-void
.end method

.method public final getAdMetadata()Landroid/os/Bundle;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "getAdMetadata is not supported in Publisher AdView returned by AdLoader."

    .line 77
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzfd(Ljava/lang/String;)V

    .line 78
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczf;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdok;->zzhfb:Ljava/lang/String;

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczf;->zzgsg:Lcom/google/android/gms/internal/ads/zzboq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqo;->zzaix()Lcom/google/android/gms/internal/ads/zzbty;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczf;->zzgsg:Lcom/google/android/gms/internal/ads/zzboq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqo;->zzaix()Lcom/google/android/gms/internal/ads/zzbty;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbty;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzyo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczf;->zzgsg:Lcom/google/android/gms/internal/ads/zzboq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzboq;->getVideoController()Lcom/google/android/gms/internal/ads/zzyo;

    move-result-object v0

    return-object v0
.end method

.method public final isLoading()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final isReady()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final pause()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "destroy must be called on the main UI thread."

    .line 21
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczf;->zzgsg:Lcom/google/android/gms/internal/ads/zzboq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqo;->zzaiw()Lcom/google/android/gms/internal/ads/zzbvb;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbvb;->zzca(Landroid/content/Context;)V

    return-void
.end method

.method public final resume()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "destroy must be called on the main UI thread."

    .line 24
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczf;->zzgsg:Lcom/google/android/gms/internal/ads/zzboq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqo;->zzaiw()Lcom/google/android/gms/internal/ads/zzbvb;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbvb;->zzcb(Landroid/content/Context;)V

    return-void
.end method

.method public final setImmersiveMode(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final setManualImpressionsEnabled(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "setManualImpressionsEnabled is not supported in Publisher AdView returned by AdLoader."

    .line 69
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfd(Ljava/lang/String;)V

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final showInterstitial()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final stopLoading()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaak;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "setVideoOptions is not supported in Publisher AdView returned by AdLoader."

    .line 49
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfd(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaby;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "setOnCustomRenderedAdLoadedListener is not supported in Publisher AdView returned by AdLoader."

    .line 63
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfd(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzari;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaro;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaug;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzsh;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvn;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "setAdSize must be called on the main UI thread."

    .line 56
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczf;->zzgsg:Lcom/google/android/gms/internal/ads/zzboq;

    if-eqz v0, :cond_e

    .line 58
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczf;->zzfpw:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzboq;->zza(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzvn;)V

    :cond_e
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvs;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwo;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "setAdClickListener is not supported in Publisher AdView returned by AdLoader."

    .line 65
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfd(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwt;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "setAdListener is not supported in Publisher AdView returned by AdLoader."

    .line 71
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfd(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzxj;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "setAdMetadataListener is not supported in Publisher AdView returned by AdLoader."

    .line 75
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfd(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzxk;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "setAppEventListener is not supported in Publisher AdView returned by AdLoader."

    .line 73
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfd(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzxq;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "setCorrelationIdProvider is not supported in Publisher AdView returned by AdLoader."

    .line 67
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfd(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyi;)V
    .registers 2

    const-string p1, "setOnPaidEventListener is not supported in Publisher AdView returned by AdLoader."

    .line 83
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfd(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyu;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvg;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "loadAd is not supported for a Publisher AdView returned from AdLoader."

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfd(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final zzbp(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zzke()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczf;->zzfpw:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzkf()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczf;->zzgsg:Lcom/google/android/gms/internal/ads/zzboq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzboq;->zzkf()V

    return-void
.end method

.method public final zzkg()Lcom/google/android/gms/internal/ads/zzvn;
    .registers 3

    const-string v0, "getAdSize must be called on the main UI thread."

    .line 29
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczf;->zzvr:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczf;->zzgsg:Lcom/google/android/gms/internal/ads/zzboq;

    .line 32
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzboq;->zzahw()Lcom/google/android/gms/internal/ads/zzdnu;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdoq;->zzb(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzvn;

    move-result-object v0

    return-object v0
.end method

.method public final zzkh()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczf;->zzgsg:Lcom/google/android/gms/internal/ads/zzboq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqo;->zzaix()Lcom/google/android/gms/internal/ads/zzbty;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczf;->zzgsg:Lcom/google/android/gms/internal/ads/zzboq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqo;->zzaix()Lcom/google/android/gms/internal/ads/zzbty;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbty;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzki()Lcom/google/android/gms/internal/ads/zzyn;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczf;->zzgsg:Lcom/google/android/gms/internal/ads/zzboq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqo;->zzaix()Lcom/google/android/gms/internal/ads/zzbty;

    move-result-object v0

    return-object v0
.end method

.method public final zzkj()Lcom/google/android/gms/internal/ads/zzxk;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczf;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdok;->zzhfg:Lcom/google/android/gms/internal/ads/zzxk;

    return-object v0
.end method

.method public final zzkk()Lcom/google/android/gms/internal/ads/zzwt;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczf;->zzfxl:Lcom/google/android/gms/internal/ads/zzwt;

    return-object v0
.end method
