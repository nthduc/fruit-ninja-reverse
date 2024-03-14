.class public final Lcom/google/android/gms/internal/ads/zzavz;
.super Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final zzaai:Landroid/content/Context;

.field private final zzdwd:Lcom/google/android/gms/internal/ads/zzauy;

.field private final zzdww:Lcom/google/android/gms/internal/ads/zzavx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavz;->zzaai:Landroid/content/Context;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpu()Lcom/google/android/gms/internal/ads/zzvx;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzanc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzanc;-><init>()V

    .line 5
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzvx;->zzc(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzanb;)Lcom/google/android/gms/internal/ads/zzauy;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavz;->zzdwd:Lcom/google/android/gms/internal/ads/zzauy;

    .line 6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzavx;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzavx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavz;->zzdww:Lcom/google/android/gms/internal/ads/zzavx;

    return-void
.end method


# virtual methods
.method public final getAdMetadata()Landroid/os/Bundle;
    .registers 3

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavz;->zzdwd:Lcom/google/android/gms/internal/ads/zzauy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzauy;->getAdMetadata()Landroid/os/Bundle;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 29
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavz;->zzdwd:Lcom/google/android/gms/internal/ads/zzauy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzauy;->zzki()Lcom/google/android/gms/internal/ads/zzyn;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_e

    :catch_7
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 42
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 43
    :goto_e
    invoke-static {v0}, Lcom/google/android/gms/ads/ResponseInfo;->zza(Lcom/google/android/gms/internal/ads/zzyn;)Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getRewardItem()Lcom/google/android/gms/ads/rewarded/RewardItem;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavz;->zzdwd:Lcom/google/android/gms/internal/ads/zzauy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzauy;->zzqz()Lcom/google/android/gms/internal/ads/zzaux;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 33
    new-instance v1, Lcom/google/android/gms/internal/ads/zzavm;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzavm;-><init>(Lcom/google/android/gms/internal/ads/zzaux;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v1

    :catch_e
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 36
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    :cond_14
    sget-object v0, Lcom/google/android/gms/ads/rewarded/RewardItem;->DEFAULT_REWARD:Lcom/google/android/gms/ads/rewarded/RewardItem;

    return-object v0
.end method

.method public final setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/ads/FullScreenContentCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavz;->zzdww:Lcom/google/android/gms/internal/ads/zzavx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzavx;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    return-void
.end method

.method public final setOnAdMetadataChangedListener(Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;)V
    .registers 4

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavz;->zzdwd:Lcom/google/android/gms/internal/ads/zzauy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaac;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzaac;-><init>(Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzauy;->zza(Lcom/google/android/gms/internal/ads/zzyh;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 25
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/ads/OnPaidEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavz;->zzdwd:Lcom/google/android/gms/internal/ads/zzauy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaab;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzaab;-><init>(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzauy;->zza(Lcom/google/android/gms/internal/ads/zzyi;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 54
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setServerSideVerificationOptions(Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;)V
    .registers 4

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavz;->zzdwd:Lcom/google/android/gms/internal/ads/zzauy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzavt;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzavt;-><init>(Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzauy;->zza(Lcom/google/android/gms/internal/ads/zzavt;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 20
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V
    .registers 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/OnUserEarnedRewardListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavz;->zzdww:Lcom/google/android/gms/internal/ads/zzavx;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzavx;->zza(Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V

    .line 45
    :try_start_5
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzavz;->zzdwd:Lcom/google/android/gms/internal/ads/zzauy;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavz;->zzdww:Lcom/google/android/gms/internal/ads/zzavx;

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzauy;->zza(Lcom/google/android/gms/internal/ads/zzavd;)V

    .line 46
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzavz;->zzdwd:Lcom/google/android/gms/internal/ads/zzauy;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzauy;->zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 49
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyw;Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAdLoadCallback;)V
    .registers 5

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavz;->zzdwd:Lcom/google/android/gms/internal/ads/zzauy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavz;->zzaai:Landroid/content/Context;

    .line 9
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzvl;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzyw;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzavw;

    invoke-direct {v1, p2, p0}, Lcom/google/android/gms/internal/ads/zzavw;-><init>(Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAdLoadCallback;Lcom/google/android/gms/internal/ads/zzavz;)V

    .line 10
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzauy;->zzb(Lcom/google/android/gms/internal/ads/zzvg;Lcom/google/android/gms/internal/ads/zzavg;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 13
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
