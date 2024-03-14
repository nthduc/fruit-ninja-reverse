.class final Lcom/google/android/gms/internal/ads/zzanz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
        "Lcom/google/android/gms/ads/mediation/MediationRewardedAd;",
        "Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzdlm:Lcom/google/android/gms/internal/ads/zzanh;

.field private final synthetic zzdln:Lcom/google/android/gms/internal/ads/zzanx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzanx;Lcom/google/android/gms/internal/ads/zzanh;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanz;->zzdln:Lcom/google/android/gms/internal/ads/zzanx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzanz;->zzdlm:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/ads/mediation/MediationRewardedAd;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;
    .registers 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanz;->zzdln:Lcom/google/android/gms/internal/ads/zzanx;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzanx;->zza(Lcom/google/android/gms/internal/ads/zzanx;Lcom/google/android/gms/ads/mediation/MediationRewardedAd;)Lcom/google/android/gms/ads/mediation/MediationRewardedAd;

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzanz;->zzdlm:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzanh;->onAdLoaded()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_11

    :catch_b
    move-exception p1

    const-string v0, ""

    .line 6
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :goto_11
    new-instance p1, Lcom/google/android/gms/internal/ads/zzavv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanz;->zzdlm:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzavv;-><init>(Lcom/google/android/gms/internal/ads/zzanh;)V

    return-object p1
.end method


# virtual methods
.method public final onFailure(Lcom/google/android/gms/ads/AdError;)V
    .registers 8

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanz;->zzdln:Lcom/google/android/gms/internal/ads/zzanx;

    .line 18
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzanx;->zza(Lcom/google/android/gms/internal/ads/zzanx;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getCode()I

    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x57

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "failed to loaded mediation ad: ErrorCode = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". ErrorMessage = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". ErrorDomain = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanz;->zzdlm:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->zzdo()Lcom/google/android/gms/internal/ads/zzva;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzanh;->zzc(Lcom/google/android/gms/internal/ads/zzva;)V

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanz;->zzdlm:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzanh;->zzc(ILjava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanz;->zzdlm:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getCode()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzanh;->onAdFailedToLoad(I)V
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7c} :catch_7d

    return-void

    :catch_7d
    move-exception p1

    const-string v0, ""

    .line 28
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onFailure(Ljava/lang/String;)V
    .registers 5

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanz;->zzdln:Lcom/google/android/gms/internal/ads/zzanx;

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzanx;->zza(Lcom/google/android/gms/internal/ads/zzanx;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1f

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "failed to loaded mediation ad: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanz;->zzdlm:Lcom/google/android/gms/internal/ads/zzanh;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzanh;->zzc(ILjava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzanz;->zzdlm:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzanh;->onAdFailedToLoad(I)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_43} :catch_44

    return-void

    :catch_44
    move-exception p1

    const-string v0, ""

    .line 15
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 30
    check-cast p1, Lcom/google/android/gms/ads/mediation/MediationRewardedAd;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzanz;->zza(Lcom/google/android/gms/ads/mediation/MediationRewardedAd;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object p1

    return-object p1
.end method
