.class public final Lcom/google/android/gms/internal/ads/zzaoi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/ads/mediation/MediationBannerListener;
.implements Lcom/google/ads/mediation/MediationInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NETWORK_EXTRAS::",
        "Lcom/google/ads/mediation/NetworkExtras;",
        "SERVER_PARAMETERS:",
        "Lcom/google/ads/mediation/MediationServerParameters;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/ads/mediation/MediationBannerListener;",
        "Lcom/google/ads/mediation/MediationInterstitialListener;"
    }
.end annotation


# instance fields
.field private final zzdlq:Lcom/google/android/gms/internal/ads/zzanh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzanh;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoi;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzaoi;)Lcom/google/android/gms/internal/ads/zzanh;
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaoi;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    return-object p0
.end method


# virtual methods
.method public final onClick(Lcom/google/ads/mediation/MediationBannerAdapter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter<",
            "**>;)V"
        }
    .end annotation

    const-string p1, "Adapter called onClick."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbg;->zzyn()Z

    move-result p1

    if-nez p1, :cond_1f

    const/4 p1, 0x0

    const-string v0, "#008 Must be called on the main UI thread."

    .line 7
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbg;->zzaah:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaoh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaoh;-><init>(Lcom/google/android/gms/internal/ads/zzaoi;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 10
    :cond_1f
    :try_start_1f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoi;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzanh;->onAdClicked()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 13
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onDismissScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter<",
            "**>;)V"
        }
    .end annotation

    const-string p1, "Adapter called onDismissScreen."

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbg;->zzyn()Z

    move-result p1

    if-nez p1, :cond_1e

    const-string p1, "#008 Must be called on the main UI thread."

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfe(Ljava/lang/String;)V

    .line 18
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbg;->zzaah:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaom;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaom;-><init>(Lcom/google/android/gms/internal/ads/zzaoi;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 20
    :cond_1e
    :try_start_1e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoi;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzanh;->onAdClosed()V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_23} :catch_24

    return-void

    :catch_24
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 23
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onDismissScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationInterstitialAdapter<",
            "**>;)V"
        }
    .end annotation

    const-string p1, "Adapter called onDismissScreen."

    .line 69
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbg;->zzyn()Z

    move-result p1

    if-nez p1, :cond_1f

    const/4 p1, 0x0

    const-string v0, "#008 Must be called on the main UI thread."

    .line 72
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbg;->zzaah:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaop;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaop;-><init>(Lcom/google/android/gms/internal/ads/zzaoi;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 75
    :cond_1f
    :try_start_1f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoi;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzanh;->onAdClosed()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 78
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onFailedToReceiveAd(Lcom/google/ads/mediation/MediationBannerAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter<",
            "**>;",
            "Lcom/google/ads/AdRequest$ErrorCode;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Adapter called onFailedToReceiveAd with error. "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbg;->zzyn()Z

    move-result p1

    if-nez p1, :cond_3c

    const/4 p1, 0x0

    const-string v0, "#008 Must be called on the main UI thread."

    .line 28
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbg;->zzaah:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaol;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzaol;-><init>(Lcom/google/android/gms/internal/ads/zzaoi;Lcom/google/ads/AdRequest$ErrorCode;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 31
    :cond_3c
    :try_start_3c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoi;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaou;->zza(Lcom/google/ads/AdRequest$ErrorCode;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzanh;->onAdFailedToLoad(I)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_45} :catch_46

    return-void

    :catch_46
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 34
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onFailedToReceiveAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationInterstitialAdapter<",
            "**>;",
            "Lcom/google/ads/AdRequest$ErrorCode;",
            ")V"
        }
    .end annotation

    .line 80
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Adapter called onFailedToReceiveAd with error "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbg;->zzyn()Z

    move-result p1

    if-nez p1, :cond_41

    const/4 p1, 0x0

    const-string v0, "#008 Must be called on the main UI thread."

    .line 83
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbg;->zzaah:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaos;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzaos;-><init>(Lcom/google/android/gms/internal/ads/zzaoi;Lcom/google/ads/AdRequest$ErrorCode;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 86
    :cond_41
    :try_start_41
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoi;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaou;->zza(Lcom/google/ads/AdRequest$ErrorCode;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzanh;->onAdFailedToLoad(I)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_4a} :catch_4b

    return-void

    :catch_4b
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 89
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onLeaveApplication(Lcom/google/ads/mediation/MediationBannerAdapter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter<",
            "**>;)V"
        }
    .end annotation

    const-string p1, "Adapter called onLeaveApplication."

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbg;->zzyn()Z

    move-result p1

    if-nez p1, :cond_1f

    const/4 p1, 0x0

    const-string v0, "#008 Must be called on the main UI thread."

    .line 39
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbg;->zzaah:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaoo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaoo;-><init>(Lcom/google/android/gms/internal/ads/zzaoi;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 42
    :cond_1f
    :try_start_1f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoi;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzanh;->onAdLeftApplication()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 45
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onLeaveApplication(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationInterstitialAdapter<",
            "**>;)V"
        }
    .end annotation

    const-string p1, "Adapter called onLeaveApplication."

    .line 91
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbg;->zzyn()Z

    move-result p1

    if-nez p1, :cond_1f

    const/4 p1, 0x0

    const-string v0, "#008 Must be called on the main UI thread."

    .line 94
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbg;->zzaah:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaor;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaor;-><init>(Lcom/google/android/gms/internal/ads/zzaoi;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 97
    :cond_1f
    :try_start_1f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoi;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzanh;->onAdLeftApplication()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 100
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onPresentScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter<",
            "**>;)V"
        }
    .end annotation

    const-string p1, "Adapter called onPresentScreen."

    .line 47
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbg;->zzyn()Z

    move-result p1

    if-nez p1, :cond_1f

    const/4 p1, 0x0

    const-string v0, "#008 Must be called on the main UI thread."

    .line 50
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbg;->zzaah:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaon;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaon;-><init>(Lcom/google/android/gms/internal/ads/zzaoi;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 53
    :cond_1f
    :try_start_1f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoi;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzanh;->onAdOpened()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 56
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onPresentScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationInterstitialAdapter<",
            "**>;)V"
        }
    .end annotation

    const-string p1, "Adapter called onPresentScreen."

    .line 102
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbg;->zzyn()Z

    move-result p1

    if-nez p1, :cond_1f

    const/4 p1, 0x0

    const-string v0, "#008 Must be called on the main UI thread."

    .line 105
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbg;->zzaah:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaok;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaok;-><init>(Lcom/google/android/gms/internal/ads/zzaoi;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 108
    :cond_1f
    :try_start_1f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoi;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzanh;->onAdOpened()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 111
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onReceivedAd(Lcom/google/ads/mediation/MediationBannerAdapter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter<",
            "**>;)V"
        }
    .end annotation

    const-string p1, "Adapter called onReceivedAd."

    .line 58
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbg;->zzyn()Z

    move-result p1

    if-nez p1, :cond_1f

    const/4 p1, 0x0

    const-string v0, "#008 Must be called on the main UI thread."

    .line 61
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbg;->zzaah:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaoq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaoq;-><init>(Lcom/google/android/gms/internal/ads/zzaoi;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 64
    :cond_1f
    :try_start_1f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoi;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzanh;->onAdLoaded()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 67
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onReceivedAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationInterstitialAdapter<",
            "**>;)V"
        }
    .end annotation

    const-string p1, "Adapter called onReceivedAd."

    .line 113
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbg;->zzyn()Z

    move-result p1

    if-nez p1, :cond_1f

    const/4 p1, 0x0

    const-string v0, "#008 Must be called on the main UI thread."

    .line 116
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbg;->zzaah:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaoj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaoj;-><init>(Lcom/google/android/gms/internal/ads/zzaoi;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 119
    :cond_1f
    :try_start_1f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoi;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzanh;->onAdLoaded()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 122
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
