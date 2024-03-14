.class public final Lcom/google/android/gms/internal/ads/zzavn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final zzaai:Landroid/content/Context;

.field private final zzdwd:Lcom/google/android/gms/internal/ads/zzauy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavn;->zzaai:Landroid/content/Context;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpu()Lcom/google/android/gms/internal/ads/zzvx;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzanc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzanc;-><init>()V

    .line 5
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzvx;->zzc(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzanb;)Lcom/google/android/gms/internal/ads/zzauy;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavn;->zzdwd:Lcom/google/android/gms/internal/ads/zzauy;

    return-void
.end method


# virtual methods
.method public final getAdMetadata()Landroid/os/Bundle;
    .registers 3

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavn;->zzdwd:Lcom/google/android/gms/internal/ads/zzauy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzauy;->getAdMetadata()Landroid/os/Bundle;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 30
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .registers 3

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavn;->zzdwd:Lcom/google/android/gms/internal/ads/zzauy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzauy;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 16
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    return-object v0
.end method

.method public final getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavn;->zzdwd:Lcom/google/android/gms/internal/ads/zzauy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzauy;->zzki()Lcom/google/android/gms/internal/ads/zzyn;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_e

    :catch_7
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 57
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 58
    :goto_e
    invoke-static {v0}, Lcom/google/android/gms/ads/ResponseInfo;->zza(Lcom/google/android/gms/internal/ads/zzyn;)Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getRewardItem()Lcom/google/android/gms/ads/rewarded/RewardItem;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 48
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavn;->zzdwd:Lcom/google/android/gms/internal/ads/zzauy;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzauy;->zzqz()Lcom/google/android/gms/internal/ads/zzaux;

    move-result-object v1

    if-nez v1, :cond_a

    return-object v0

    .line 49
    :cond_a
    new-instance v2, Lcom/google/android/gms/internal/ads/zzavm;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzavm;-><init>(Lcom/google/android/gms/internal/ads/zzaux;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_10

    return-object v2

    :catch_10
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    .line 51
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final isLoaded()Z
    .registers 3

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavn;->zzdwd:Lcom/google/android/gms/internal/ads/zzauy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzauy;->isLoaded()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 34
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final setOnAdMetadataChangedListener(Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;)V
    .registers 4

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavn;->zzdwd:Lcom/google/android/gms/internal/ads/zzauy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaac;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzaac;-><init>(Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzauy;->zza(Lcom/google/android/gms/internal/ads/zzyh;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 26
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/ads/OnPaidEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavn;->zzdwd:Lcom/google/android/gms/internal/ads/zzauy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaab;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzaab;-><init>(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzauy;->zza(Lcom/google/android/gms/internal/ads/zzyi;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 62
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setServerSideVerificationOptions(Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;)V
    .registers 4

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavn;->zzdwd:Lcom/google/android/gms/internal/ads/zzauy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzavt;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzavt;-><init>(Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzauy;->zza(Lcom/google/android/gms/internal/ads/zzavt;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 21
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final show(Landroid/app/Activity;Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;)V
    .registers 5

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavn;->zzdwd:Lcom/google/android/gms/internal/ads/zzauy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzavp;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzavp;-><init>(Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzauy;->zza(Lcom/google/android/gms/internal/ads/zzavd;)V

    .line 37
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzavn;->zzdwd:Lcom/google/android/gms/internal/ads/zzauy;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzauy;->zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 40
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final show(Landroid/app/Activity;Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;Z)V
    .registers 6

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavn;->zzdwd:Lcom/google/android/gms/internal/ads/zzauy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzavp;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzavp;-><init>(Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzauy;->zza(Lcom/google/android/gms/internal/ads/zzavd;)V

    .line 43
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzavn;->zzdwd:Lcom/google/android/gms/internal/ads/zzauy;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzauy;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Z)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 46
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyw;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V
    .registers 5

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavn;->zzdwd:Lcom/google/android/gms/internal/ads/zzauy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavn;->zzaai:Landroid/content/Context;

    .line 8
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzvl;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzyw;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzavq;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzavq;-><init>(Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    .line 9
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzauy;->zza(Lcom/google/android/gms/internal/ads/zzvg;Lcom/google/android/gms/internal/ads/zzavg;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 12
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
