.class public final Lcom/google/android/gms/internal/ads/zzaoc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationBannerListener;
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
.implements Lcom/google/android/gms/ads/mediation/MediationNativeListener;


# instance fields
.field private final zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

.field private zzdlr:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

.field private zzdls:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

.field private zzdlt:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzanh;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;Lcom/google/android/gms/ads/mediation/NativeAdMapper;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/mediation/NativeAdMapper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 137
    instance-of p0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    if-eqz p0, :cond_5

    return-void

    .line 139
    :cond_5
    new-instance p0, Lcom/google/android/gms/ads/VideoController;

    invoke-direct {p0}, Lcom/google/android/gms/ads/VideoController;-><init>()V

    .line 140
    new-instance v0, Lcom/google/android/gms/internal/ads/zzanv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzanv;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/internal/ads/zzyo;)V

    if-eqz p1, :cond_1d

    .line 141
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->hasVideoContent()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 142
    invoke-virtual {p1, p0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zza(Lcom/google/android/gms/ads/VideoController;)V

    :cond_1d
    if-eqz p2, :cond_28

    .line 143
    invoke-virtual {p2}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->hasVideoContent()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 144
    invoke-virtual {p2, p0}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->zza(Lcom/google/android/gms/ads/VideoController;)V

    :cond_28
    return-void
.end method


# virtual methods
.method public final onAdClicked(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClicked."

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 13
    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzanh;->onAdClicked()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 16
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdClicked(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    .line 64
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClicked."

    .line 65
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 66
    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzanh;->onAdClicked()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 69
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdClicked(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .registers 5

    const-string p1, "#008 Must be called on the main UI thread."

    .line 203
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 205
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdlr:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    .line 208
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdls:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    .line 211
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdlt:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    const-string v2, "#007 Could not call remote method."

    if-nez v1, :cond_32

    if-nez p1, :cond_18

    if-nez v0, :cond_18

    const/4 p1, 0x0

    .line 215
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_18
    const-string v1, "Could not call onAdClicked since setOverrideClickHandling is not set to true"

    if-eqz v0, :cond_26

    .line 217
    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_26

    .line 218
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    return-void

    :cond_26
    if-eqz p1, :cond_32

    .line 220
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->getOverrideClickHandling()Z

    move-result p1

    if-nez p1, :cond_32

    .line 221
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    return-void

    :cond_32
    const-string p1, "Adapter called onAdClicked."

    .line 223
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 224
    :try_start_37
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzanh;->onAdClicked()V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d

    return-void

    :catch_3d
    move-exception p1

    .line 227
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdClosed(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClosed."

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 20
    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzanh;->onAdClosed()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 23
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdClosed(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    .line 71
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClosed."

    .line 72
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 73
    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzanh;->onAdClosed()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 76
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdClosed(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    .line 189
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClosed."

    .line 190
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 191
    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzanh;->onAdClosed()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 194
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V
    .registers 4

    const-string p1, "#008 Must be called on the main UI thread."

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x37

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Adapter called onAdFailedToLoad with error. "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 27
    :try_start_1b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzanh;->onAdFailedToLoad(I)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 30
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;Lcom/google/android/gms/ads/AdError;)V
    .registers 7

    const-string p1, "#008 Must be called on the main UI thread."

    .line 32
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdError;->getCode()I

    move-result p1

    .line 35
    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdError;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x61

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Adapter called onAdFailedToLoad with error. ErrorCode: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". ErrorMessage: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". ErrorDomain: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 38
    :try_start_48
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdError;->zzdo()Lcom/google/android/gms/internal/ads/zzva;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzanh;->zzc(Lcom/google/android/gms/internal/ads/zzva;)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_51} :catch_52

    return-void

    :catch_52
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 41
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V
    .registers 4

    const-string p1, "#008 Must be called on the main UI thread."

    .line 78
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x37

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Adapter called onAdFailedToLoad with error "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 80
    :try_start_20
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzanh;->onAdFailedToLoad(I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_26

    return-void

    :catch_26
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 83
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;Lcom/google/android/gms/ads/AdError;)V
    .registers 7

    const-string p1, "#008 Must be called on the main UI thread."

    .line 85
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdError;->getCode()I

    move-result p1

    .line 88
    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdError;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x61

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Adapter called onAdFailedToLoad with error. ErrorCode: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". ErrorMessage: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". ErrorDomain: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 91
    :try_start_48
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdError;->zzdo()Lcom/google/android/gms/internal/ads/zzva;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzanh;->zzc(Lcom/google/android/gms/internal/ads/zzva;)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_51} :catch_52

    return-void

    :catch_52
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 94
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V
    .registers 4

    const-string p1, "#008 Must be called on the main UI thread."

    .line 164
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 165
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x37

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Adapter called onAdFailedToLoad with error "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 166
    :try_start_20
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzanh;->onAdFailedToLoad(I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_26

    return-void

    :catch_26
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 169
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/AdError;)V
    .registers 7

    const-string p1, "#008 Must be called on the main UI thread."

    .line 171
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdError;->getCode()I

    move-result p1

    .line 174
    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdError;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x61

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Adapter called onAdFailedToLoad with error. ErrorCode: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". ErrorMessage: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". ErrorDomain: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 176
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 177
    :try_start_48
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdError;->zzdo()Lcom/google/android/gms/internal/ads/zzva;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzanh;->zzc(Lcom/google/android/gms/internal/ads/zzva;)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_51} :catch_52

    return-void

    :catch_52
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 180
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdImpression(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .registers 5

    const-string p1, "#008 Must be called on the main UI thread."

    .line 229
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 231
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdlr:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    .line 234
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdls:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    .line 237
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdlt:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    const-string v2, "#007 Could not call remote method."

    if-nez v1, :cond_32

    if-nez p1, :cond_18

    if-nez v0, :cond_18

    const/4 p1, 0x0

    .line 241
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_18
    const-string v1, "Could not call onAdImpression since setOverrideImpressionRecording is not set to true"

    if-eqz v0, :cond_26

    .line 243
    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getOverrideImpressionRecording()Z

    move-result v0

    if-nez v0, :cond_26

    .line 244
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    return-void

    :cond_26
    if-eqz p1, :cond_32

    .line 246
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->getOverrideImpressionRecording()Z

    move-result p1

    if-nez p1, :cond_32

    .line 247
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    return-void

    :cond_32
    const-string p1, "Adapter called onAdImpression."

    .line 249
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 250
    :try_start_37
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzanh;->onAdImpression()V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d

    return-void

    :catch_3d
    move-exception p1

    .line 253
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdLeftApplication(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    .line 43
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLeftApplication."

    .line 44
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 45
    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzanh;->onAdLeftApplication()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 48
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdLeftApplication(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    .line 96
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLeftApplication."

    .line 97
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 98
    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzanh;->onAdLeftApplication()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 101
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdLeftApplication(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    .line 196
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLeftApplication."

    .line 197
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 198
    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzanh;->onAdLeftApplication()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 201
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    .line 57
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLoaded."

    .line 58
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 59
    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzanh;->onAdLoaded()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 62
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    .line 110
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLoaded."

    .line 111
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 112
    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzanh;->onAdLoaded()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 115
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/NativeAdMapper;)V
    .registers 4

    const-string v0, "#008 Must be called on the main UI thread."

    .line 117
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdLoaded."

    .line 118
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 119
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdlr:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    const/4 p2, 0x0

    .line 120
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdls:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    .line 121
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdls:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdlr:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzaoc;->zza(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;Lcom/google/android/gms/ads/mediation/NativeAdMapper;)V

    .line 122
    :try_start_16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzanh;->onAdLoaded()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1c

    return-void

    :catch_1c
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 125
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;)V
    .registers 4

    const-string v0, "#008 Must be called on the main UI thread."

    .line 127
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdLoaded."

    .line 128
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 129
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdls:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    const/4 p2, 0x0

    .line 130
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdlr:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    .line 131
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdls:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdlr:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzaoc;->zza(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;Lcom/google/android/gms/ads/mediation/NativeAdMapper;)V

    .line 132
    :try_start_16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzanh;->onAdLoaded()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1c

    return-void

    :catch_1c
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 135
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdOpened(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    .line 50
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdOpened."

    .line 51
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 52
    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzanh;->onAdOpened()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 55
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdOpened(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    .line 103
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdOpened."

    .line 104
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 105
    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzanh;->onAdOpened()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 108
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdOpened(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    .line 182
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdOpened."

    .line 183
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 184
    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzanh;->onAdOpened()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 187
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onVideoEnd(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    .line 255
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onVideoEnd."

    .line 256
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 257
    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzanh;->onVideoEnd()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 260
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string p1, "#008 Must be called on the main UI thread."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAppEvent."

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 6
    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzanh;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 9
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;)V
    .registers 5

    const-string p1, "#008 Must be called on the main UI thread."

    .line 146
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 147
    invoke-interface {p2}, Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;->getCustomTemplateId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Adapter called onAdLoaded with template id "

    if-eqz v0, :cond_1a

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1f

    :cond_1a
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1f
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 148
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdlt:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    .line 149
    :try_start_24
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzanh;->onAdLoaded()V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 152
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;Ljava/lang/String;)V
    .registers 4

    .line 154
    instance-of p1, p2, Lcom/google/android/gms/internal/ads/zzafb;

    if-eqz p1, :cond_17

    .line 155
    :try_start_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzafb;

    .line 156
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzafb;->zzst()Lcom/google/android/gms/internal/ads/zzafa;

    move-result-object p2

    .line 157
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzanh;->zza(Lcom/google/android/gms/internal/ads/zzafa;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 160
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_17
    const-string p1, "Unexpected native custom template ad type."

    .line 162
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfe(Ljava/lang/String;)V

    return-void
.end method

.method public final zzug()Lcom/google/android/gms/ads/mediation/NativeAdMapper;
    .registers 2

    .line 262
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdlr:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    return-object v0
.end method

.method public final zzuh()Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;
    .registers 2

    .line 263
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdls:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    return-object v0
.end method

.method public final zzui()Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzdlt:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    return-object v0
.end method
