.class public final Lcom/google/android/gms/internal/ads/zzanx;
.super Lcom/google/android/gms/internal/ads/zzanf;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private final zzdlf:Ljava/lang/Object;

.field private zzdlg:Lcom/google/android/gms/internal/ads/zzaoc;

.field private zzdlh:Lcom/google/android/gms/internal/ads/zzaur;

.field private zzdli:Lcom/google/android/gms/dynamic/IObjectWrapper;

.field private zzdlj:Lcom/google/android/gms/ads/mediation/MediationRewardedAd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/Adapter;)V
    .registers 2
    .param p1    # Lcom/google/android/gms/ads/mediation/Adapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzanf;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/mediation/MediationAdapter;)V
    .registers 2
    .param p1    # Lcom/google/android/gms/ads/mediation/MediationAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzanf;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    return-void
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 392
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Server parameters: "

    if-eqz v1, :cond_11

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_11
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_16
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 393
    :try_start_19
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_42

    .line 395
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 396
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 397
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 398
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 399
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    :cond_42
    move-object p1, v0

    .line 401
    :cond_43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    if-eqz v0, :cond_57

    const-string v0, "adJson"

    .line 402
    invoke-virtual {p1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_57

    const-string p3, "tagForChildDirectedTreatment"

    .line 404
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzvg;->zzadm:I

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_57
    const-string p2, "max_ad_content_rating"

    .line 405
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_5c} :catch_5d

    return-object p1

    :catch_5d
    move-exception p1

    const-string p2, ""

    .line 408
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 409
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzanh;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzanh;",
            ")",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAd;",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;",
            ">;"
        }
    .end annotation

    .line 391
    new-instance v0, Lcom/google/android/gms/internal/ads/zzanz;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzanz;-><init>(Lcom/google/android/gms/internal/ads/zzanx;Lcom/google/android/gms/internal/ads/zzanh;)V

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzanx;Lcom/google/android/gms/ads/mediation/MediationRewardedAd;)Lcom/google/android/gms/ads/mediation/MediationRewardedAd;
    .registers 2

    .line 422
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlj:Lcom/google/android/gms/ads/mediation/MediationRewardedAd;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzanx;)Ljava/lang/Object;
    .registers 1

    .line 423
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    return-object p0
.end method

.method private static zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;)Ljava/lang/String;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 411
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzvg;->zzado:Ljava/lang/String;

    .line 412
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "max_ad_content_rating"

    .line 413
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_d} :catch_d

    :catch_d
    return-object p1
.end method

.method private static zzc(Lcom/google/android/gms/internal/ads/zzvg;)Z
    .registers 1

    .line 410
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzche:Z

    if-nez p0, :cond_10

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbg;->zzym()Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_10

    :cond_e
    const/4 p0, 0x0

    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x1

    return p0
.end method

.method private final zzd(Lcom/google/android/gms/internal/ads/zzvg;)Landroid/os/Bundle;
    .registers 3

    .line 417
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzvg;->zzchi:Landroid/os/Bundle;

    if-eqz v0, :cond_17

    .line 418
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzvg;->zzchi:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_17

    return-object p1

    .line 421
    :cond_17
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    return-object p1
.end method


# virtual methods
.method public final destroy()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/MediationAdapter;

    if-nez v1, :cond_7

    return-void

    .line 344
    :cond_7
    :try_start_7
    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationAdapter;->onDestroy()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    const-string v1, ""

    .line 347
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 348
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final getInterstitialAdapterInfo()Landroid/os/Bundle;
    .registers 5

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbiy;

    if-nez v1, :cond_46

    .line 87
    const-class v0, Lcom/google/android/gms/internal/ads/zzbiy;

    .line 88
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    .line 89
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #009 Class mismatch: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfe(Ljava/lang/String;)V

    .line 91
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0

    .line 92
    :cond_46
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbiy;

    .line 93
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbiy;->getInterstitialAdapterInfo()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzyo;
    .registers 4

    .line 322
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/zza;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    return-object v2

    .line 324
    :cond_8
    :try_start_8
    check-cast v0, Lcom/google/android/gms/ads/mediation/zza;

    .line 325
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/zza;->getVideoController()Lcom/google/android/gms/internal/ads/zzyo;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    const-string v1, ""

    .line 327
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public final isInitialized()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    if-eqz v1, :cond_20

    const-string v0, "Check if adapter is initialized."

    .line 243
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 244
    :try_start_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    .line 245
    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;->isInitialized()Z

    move-result v0
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_13} :catch_14

    return v0

    :catch_14
    move-exception v0

    const-string v1, ""

    .line 247
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 249
    :cond_20
    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v0, :cond_2c

    .line 256
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlh:Lcom/google/android/gms/internal/ads/zzaur;

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    return v0

    :cond_2a
    const/4 v0, 0x0

    return v0

    .line 250
    :cond_2c
    const-class v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    .line 251
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 252
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    .line 253
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1a

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " or "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #009 Class mismatch: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfe(Ljava/lang/String;)V

    .line 255
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final pause()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/MediationAdapter;

    if-nez v1, :cond_7

    return-void

    .line 351
    :cond_7
    :try_start_7
    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationAdapter;->onPause()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    const-string v1, ""

    .line 354
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 355
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final resume()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/MediationAdapter;

    if-nez v1, :cond_7

    return-void

    .line 358
    :cond_7
    :try_start_7
    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationAdapter;->onResume()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    const-string v1, ""

    .line 361
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 362
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final setImmersiveMode(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/OnImmersiveModeUpdatedListener;

    if-nez v1, :cond_41

    .line 311
    const-class p1, Lcom/google/android/gms/ads/mediation/OnImmersiveModeUpdatedListener;

    .line 312
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    .line 313
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x16

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " #009 Class mismatch: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 314
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    return-void

    .line 316
    :cond_41
    :try_start_41
    check-cast v0, Lcom/google/android/gms/ads/mediation/OnImmersiveModeUpdatedListener;

    .line 317
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/OnImmersiveModeUpdatedListener;->onImmersiveModeUpdated(Z)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_46} :catch_47

    return-void

    :catch_47
    move-exception p1

    const-string v0, ""

    .line 320
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final showInterstitial()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    if-eqz v0, :cond_1f

    const-string v0, "Showing interstitial from adapter."

    .line 335
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 336
    :try_start_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    .line 337
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;->showInterstitial()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v0

    const-string v1, ""

    .line 340
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 341
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 330
    :cond_1f
    const-class v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    .line 331
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    .line 332
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #009 Class mismatch: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfe(Ljava/lang/String;)V

    .line 334
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final showVideo()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    if-eqz v1, :cond_1f

    const-string v0, "Show rewarded video ad from adapter."

    .line 224
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 225
    :try_start_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    .line 226
    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;->showVideo()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v0

    const-string v1, ""

    .line 229
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 231
    :cond_1f
    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v0, :cond_3e

    .line 238
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlj:Lcom/google/android/gms/ads/mediation/MediationRewardedAd;

    if-eqz v0, :cond_33

    .line 239
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdli:Lcom/google/android/gms/dynamic/IObjectWrapper;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationRewardedAd;->showAd(Landroid/content/Context;)V

    return-void

    :cond_33
    const-string v0, "Can not show null mediated rewarded ad."

    .line 240
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfc(Ljava/lang/String;)V

    .line 241
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 232
    :cond_3e
    const-class v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    .line 233
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 234
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    .line 235
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1a

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " or "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #009 Class mismatch: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfe(Ljava/lang/String;)V

    .line 237
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzais;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Lcom/google/android/gms/internal/ads/zzais;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzaja;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v0, :cond_87

    .line 369
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaoa;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzaoa;-><init>(Lcom/google/android/gms/internal/ads/zzanx;Lcom/google/android/gms/internal/ads/zzais;)V

    .line 370
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 371
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_14
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaja;

    .line 372
    new-instance v2, Lcom/google/android/gms/ads/mediation/MediationConfiguration;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzaja;->zzdge:Ljava/lang/String;

    const/4 v4, -0x1

    .line 373
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v5, :sswitch_data_8e

    goto :goto_57

    :sswitch_30
    const-string v5, "interstitial"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    const/4 v4, 0x1

    goto :goto_57

    :sswitch_3a
    const-string v5, "rewarded"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    const/4 v4, 0x2

    goto :goto_57

    :sswitch_44
    const-string v5, "native"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    const/4 v4, 0x3

    goto :goto_57

    :sswitch_4e
    const-string v5, "banner"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    const/4 v4, 0x0

    :cond_57
    :goto_57
    if-eqz v4, :cond_6e

    if-eq v4, v8, :cond_6b

    if-eq v4, v7, :cond_68

    if-ne v4, v6, :cond_62

    .line 377
    sget-object v3, Lcom/google/android/gms/ads/AdFormat;->NATIVE:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_70

    .line 378
    :cond_62
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    .line 376
    :cond_68
    sget-object v3, Lcom/google/android/gms/ads/AdFormat;->REWARDED:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_70

    .line 375
    :cond_6b
    sget-object v3, Lcom/google/android/gms/ads/AdFormat;->INTERSTITIAL:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_70

    .line 374
    :cond_6e
    sget-object v3, Lcom/google/android/gms/ads/AdFormat;->BANNER:Lcom/google/android/gms/ads/AdFormat;

    .line 379
    :goto_70
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaja;->extras:Landroid/os/Bundle;

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/ads/mediation/MediationConfiguration;-><init>(Lcom/google/android/gms/ads/AdFormat;Landroid/os/Bundle;)V

    .line 380
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 382
    :cond_79
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    check-cast p3, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 383
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p3, p1, v0, p2}, Lcom/google/android/gms/ads/mediation/Adapter;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;Ljava/util/List;)V

    return-void

    .line 368
    :cond_87
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    return-void

    :sswitch_data_8e
    .sparse-switch
        -0x533a80d4 -> :sswitch_4e
        -0x3ebdafe9 -> :sswitch_44
        -0xe47b3f2 -> :sswitch_3a
        0x240b672c -> :sswitch_30
    .end sparse-switch
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzaur;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Lcom/google/android/gms/internal/ads/zzaur;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/ads/reward/mediation/InitializableMediationRewardedVideoAdAdapter;

    if-eqz v0, :cond_48

    const-string v0, "Initialize rewarded video adapter."

    .line 178
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 179
    :try_start_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/ads/reward/mediation/InitializableMediationRewardedVideoAdAdapter;

    .line 180
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_18
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 182
    invoke-direct {p0, v2, v3, v3}, Lcom/google/android/gms/internal/ads/zzanx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 183
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 186
    :cond_2d
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzaus;

    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/zzaus;-><init>(Lcom/google/android/gms/internal/ads/zzaur;)V

    .line 187
    invoke-interface {v0, p1, p3, v1}, Lcom/google/android/gms/ads/reward/mediation/InitializableMediationRewardedVideoAdAdapter;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;Ljava/util/List;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_3b} :catch_3c

    return-void

    :catch_3c
    move-exception p1

    const-string p2, "Could not initialize rewarded video adapter."

    .line 190
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    .line 173
    :cond_48
    const-class p1, Lcom/google/android/gms/ads/reward/mediation/InitializableMediationRewardedVideoAdAdapter;

    .line 174
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    .line 175
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x16

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " #009 Class mismatch: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 176
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfe(Ljava/lang/String;)V

    .line 177
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    return-void
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzvg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzanh;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 58
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzanx;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzvg;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzanh;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzvg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaur;Ljava/lang/String;)V
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 138
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    instance-of v5, v4, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    if-eqz v5, :cond_94

    const-string v4, "Initialize rewarded video adapter."

    .line 139
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 140
    :try_start_13
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    const/4 v4, 0x0

    .line 143
    invoke-direct {v1, v3, v0, v4}, Lcom/google/android/gms/internal/ads/zzanx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    if-eqz v0, :cond_74

    .line 145
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchd:Ljava/util/List;

    if-eqz v6, :cond_2c

    new-instance v6, Ljava/util/HashSet;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchd:Ljava/util/List;

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v14, v6

    goto :goto_2d

    :cond_2c
    move-object v14, v4

    .line 146
    :goto_2d
    new-instance v6, Lcom/google/android/gms/internal/ads/zzany;

    .line 147
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchb:J

    const-wide/16 v11, -0x1

    cmp-long v9, v7, v11

    if-nez v9, :cond_39

    move-object v12, v4

    goto :goto_41

    .line 149
    :cond_39
    new-instance v7, Ljava/util/Date;

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchb:J

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    move-object v12, v7

    :goto_41
    iget v13, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchc:I

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzvg;->zznb:Landroid/location/Location;

    .line 150
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzanx;->zzc(Lcom/google/android/gms/internal/ads/zzvg;)Z

    move-result v16

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzadm:I

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchn:Z

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzadn:I

    .line 151
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/zzanx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;)Ljava/lang/String;

    move-result-object v20

    move-object v11, v6

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    invoke-direct/range {v11 .. v20}, Lcom/google/android/gms/internal/ads/zzany;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZILjava/lang/String;)V

    .line 152
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchi:Landroid/os/Bundle;

    if-eqz v3, :cond_71

    .line 153
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchi:Landroid/os/Bundle;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    move-object v11, v0

    goto :goto_72

    :cond_71
    move-object v11, v4

    :goto_72
    move-object v7, v6

    goto :goto_76

    :cond_74
    move-object v7, v4

    move-object v11, v7

    .line 155
    :goto_76
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/Context;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzaus;

    invoke-direct {v9, v2}, Lcom/google/android/gms/internal/ads/zzaus;-><init>(Lcom/google/android/gms/internal/ads/zzaur;)V

    move-object/from16 v8, p3

    .line 156
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Ljava/lang/String;Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_87} :catch_88

    return-void

    :catch_88
    move-exception v0

    const-string v2, ""

    .line 159
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 161
    :cond_94
    instance-of v0, v4, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v0, :cond_a6

    move-object/from16 v0, p1

    .line 168
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzanx;->zzdli:Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 169
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzanx;->zzdlh:Lcom/google/android/gms/internal/ads/zzaur;

    .line 170
    invoke-static {v4}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzaur;->zzaf(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void

    .line 162
    :cond_a6
    const-class v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    .line 163
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 164
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    .line 165
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1a

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

    const-string v0, " or "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #009 Class mismatch: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfe(Ljava/lang/String;)V

    .line 167
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzvg;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzanh;)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    .line 60
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    instance-of v3, v3, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    if-eqz v3, :cond_86

    const-string v3, "Requesting interstitial ad from adapter."

    .line 66
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 67
    :try_start_11
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    .line 68
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchd:Ljava/util/List;

    const/4 v5, 0x0

    if-eqz v3, :cond_24

    new-instance v3, Ljava/util/HashSet;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchd:Ljava/util/List;

    invoke-direct {v3, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v10, v3

    goto :goto_25

    :cond_24
    move-object v10, v5

    .line 69
    :goto_25
    new-instance v3, Lcom/google/android/gms/internal/ads/zzany;

    .line 70
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchb:J

    const-wide/16 v8, -0x1

    cmp-long v11, v6, v8

    if-nez v11, :cond_31

    move-object v8, v5

    goto :goto_39

    .line 72
    :cond_31
    new-instance v6, Ljava/util/Date;

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchb:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    move-object v8, v6

    :goto_39
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchc:I

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzvg;->zznb:Landroid/location/Location;

    .line 73
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzanx;->zzc(Lcom/google/android/gms/internal/ads/zzvg;)Z

    move-result v12

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzadm:I

    iget-boolean v14, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchn:Z

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzadn:I

    .line 74
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzanx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;)Ljava/lang/String;

    move-result-object v16

    move-object v7, v3

    invoke-direct/range {v7 .. v16}, Lcom/google/android/gms/internal/ads/zzany;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZILjava/lang/String;)V

    .line 75
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchi:Landroid/os/Bundle;

    if-eqz v6, :cond_61

    .line 76
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchi:Landroid/os/Bundle;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    :cond_61
    move-object v9, v5

    .line 79
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzaoc;

    move-object/from16 v7, p5

    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/ads/zzaoc;-><init>(Lcom/google/android/gms/internal/ads/zzanh;)V

    move-object/from16 v7, p4

    .line 80
    invoke-direct {v1, v2, v0, v7}, Lcom/google/android/gms/internal/ads/zzanx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    move-object v8, v3

    .line 81
    invoke-interface/range {v4 .. v9}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;->requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_79} :catch_7a

    return-void

    :catch_7a
    move-exception v0

    const-string v2, ""

    .line 84
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 61
    :cond_86
    const-class v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    .line 62
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    .line 63
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #009 Class mismatch: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfe(Ljava/lang/String;)V

    .line 65
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzvg;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzanh;Lcom/google/android/gms/internal/ads/zzadu;Ljava/util/List;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Lcom/google/android/gms/internal/ads/zzvg;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzanh;",
            "Lcom/google/android/gms/internal/ads/zzadu;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    .line 94
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    instance-of v4, v3, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    if-eqz v4, :cond_94

    .line 100
    :try_start_c
    check-cast v3, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    .line 101
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchd:Ljava/util/List;

    const/4 v5, 0x0

    if-eqz v4, :cond_1c

    new-instance v4, Ljava/util/HashSet;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchd:Ljava/util/List;

    invoke-direct {v4, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v10, v4

    goto :goto_1d

    :cond_1c
    move-object v10, v5

    .line 102
    :goto_1d
    new-instance v4, Lcom/google/android/gms/internal/ads/zzaog;

    .line 103
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchb:J

    const-wide/16 v8, -0x1

    cmp-long v11, v6, v8

    if-nez v11, :cond_29

    move-object v8, v5

    goto :goto_31

    .line 105
    :cond_29
    new-instance v6, Ljava/util/Date;

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchb:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    move-object v8, v6

    :goto_31
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchc:I

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzvg;->zznb:Landroid/location/Location;

    .line 106
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzanx;->zzc(Lcom/google/android/gms/internal/ads/zzvg;)Z

    move-result v12

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzadm:I

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchn:Z

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzadn:I

    .line 107
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzanx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;)Ljava/lang/String;

    move-result-object v18

    move-object v7, v4

    move-object/from16 v14, p6

    move/from16 v17, v15

    move-object/from16 v15, p7

    move/from16 v16, v6

    invoke-direct/range {v7 .. v18}, Lcom/google/android/gms/internal/ads/zzaog;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZILcom/google/android/gms/internal/ads/zzadu;Ljava/util/List;ZILjava/lang/String;)V

    .line 108
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchi:Landroid/os/Bundle;

    if-eqz v6, :cond_61

    .line 109
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchi:Landroid/os/Bundle;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 111
    :cond_61
    new-instance v6, Lcom/google/android/gms/internal/ads/zzaoc;

    move-object/from16 v7, p5

    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/ads/zzaoc;-><init>(Lcom/google/android/gms/internal/ads/zzanh;)V

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzanx;->zzdlg:Lcom/google/android/gms/internal/ads/zzaoc;

    .line 113
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzanx;->zzdlg:Lcom/google/android/gms/internal/ads/zzaoc;

    move-object/from16 v8, p4

    .line 114
    invoke-direct {v1, v2, v0, v8}, Lcom/google/android/gms/internal/ads/zzanx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    move-object/from16 p1, v3

    move-object/from16 p2, v6

    move-object/from16 p3, v7

    move-object/from16 p4, v0

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    .line 115
    invoke-interface/range {p1 .. p6}, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;->requestNativeAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationNativeListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;Landroid/os/Bundle;)V
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_87} :catch_88

    return-void

    :catch_88
    move-exception v0

    const-string v2, ""

    .line 118
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 95
    :cond_94
    const-class v0, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    .line 96
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    .line 97
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #009 Class mismatch: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfe(Ljava/lang/String;)V

    .line 99
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzvn;Lcom/google/android/gms/internal/ads/zzvg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzanh;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 18
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzanx;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzvn;Lcom/google/android/gms/internal/ads/zzvg;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzanh;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzvn;Lcom/google/android/gms/internal/ads/zzvg;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzanh;)V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 20
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    instance-of v4, v4, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    if-eqz v4, :cond_a4

    const-string v4, "Requesting banner ad from adapter."

    .line 26
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 27
    :try_start_13
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    .line 28
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzvg;->zzchd:Ljava/util/List;

    const/4 v6, 0x0

    if-eqz v4, :cond_26

    new-instance v4, Ljava/util/HashSet;

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzvg;->zzchd:Ljava/util/List;

    invoke-direct {v4, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v11, v4

    goto :goto_27

    :cond_26
    move-object v11, v6

    .line 29
    :goto_27
    new-instance v4, Lcom/google/android/gms/internal/ads/zzany;

    .line 30
    iget-wide v7, v2, Lcom/google/android/gms/internal/ads/zzvg;->zzchb:J

    const-wide/16 v9, -0x1

    cmp-long v12, v7, v9

    if-nez v12, :cond_33

    move-object v9, v6

    goto :goto_3b

    .line 32
    :cond_33
    new-instance v7, Ljava/util/Date;

    iget-wide v8, v2, Lcom/google/android/gms/internal/ads/zzvg;->zzchb:J

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    move-object v9, v7

    :goto_3b
    iget v10, v2, Lcom/google/android/gms/internal/ads/zzvg;->zzchc:I

    iget-object v12, v2, Lcom/google/android/gms/internal/ads/zzvg;->zznb:Landroid/location/Location;

    .line 33
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzanx;->zzc(Lcom/google/android/gms/internal/ads/zzvg;)Z

    move-result v13

    iget v14, v2, Lcom/google/android/gms/internal/ads/zzvg;->zzadm:I

    iget-boolean v15, v2, Lcom/google/android/gms/internal/ads/zzvg;->zzchn:Z

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzvg;->zzadn:I

    .line 34
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzanx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;)Ljava/lang/String;

    move-result-object v17

    move-object v8, v4

    move/from16 v16, v7

    invoke-direct/range {v8 .. v17}, Lcom/google/android/gms/internal/ads/zzany;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZILjava/lang/String;)V

    .line 35
    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzvg;->zzchi:Landroid/os/Bundle;

    if-eqz v7, :cond_65

    .line 36
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzvg;->zzchi:Landroid/os/Bundle;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    :cond_65
    move-object v11, v6

    .line 38
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzvn;->zzcia:Z

    if-eqz v6, :cond_74

    .line 39
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzvn;->width:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvn;->height:I

    .line 40
    invoke-static {v6, v0}, Lcom/google/android/gms/ads/zzb;->zza(II)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    :goto_72
    move-object v9, v0

    goto :goto_7f

    .line 41
    :cond_74
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzvn;->width:I

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzvn;->height:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvn;->zzacy:Ljava/lang/String;

    invoke-static {v6, v7, v0}, Lcom/google/android/gms/ads/zzb;->zza(IILjava/lang/String;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    goto :goto_72

    .line 43
    :goto_7f
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/Context;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzaoc;

    move-object/from16 v0, p6

    invoke-direct {v7, v0}, Lcom/google/android/gms/internal/ads/zzaoc;-><init>(Lcom/google/android/gms/internal/ads/zzanh;)V

    move-object/from16 v0, p5

    .line 44
    invoke-direct {v1, v3, v2, v0}, Lcom/google/android/gms/internal/ads/zzanx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    move-object v10, v4

    .line 45
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;->requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationBannerListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_97} :catch_98

    return-void

    :catch_98
    move-exception v0

    const-string v2, ""

    .line 48
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 21
    :cond_a4
    const-class v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    .line 23
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #009 Class mismatch: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfe(Ljava/lang/String;)V

    .line 25
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvg;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 192
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzanx;->zza(Lcom/google/android/gms/internal/ads/zzvg;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvg;Ljava/lang/String;Ljava/lang/String;)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 194
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    instance-of v4, v3, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    if-eqz v4, :cond_77

    const-string v3, "Requesting rewarded video ad from adapter."

    .line 195
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 196
    :try_start_11
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    .line 197
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchd:Ljava/util/List;

    const/4 v5, 0x0

    if-eqz v4, :cond_23

    new-instance v4, Ljava/util/HashSet;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchd:Ljava/util/List;

    invoke-direct {v4, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v10, v4

    goto :goto_24

    :cond_23
    move-object v10, v5

    .line 198
    :goto_24
    new-instance v4, Lcom/google/android/gms/internal/ads/zzany;

    .line 199
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchb:J

    const-wide/16 v8, -0x1

    cmp-long v11, v6, v8

    if-nez v11, :cond_30

    move-object v8, v5

    goto :goto_38

    .line 201
    :cond_30
    new-instance v6, Ljava/util/Date;

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchb:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    move-object v8, v6

    :goto_38
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchc:I

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzvg;->zznb:Landroid/location/Location;

    .line 202
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzanx;->zzc(Lcom/google/android/gms/internal/ads/zzvg;)Z

    move-result v12

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzadm:I

    iget-boolean v14, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchn:Z

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzadn:I

    .line 203
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzanx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;)Ljava/lang/String;

    move-result-object v16

    move-object v7, v4

    invoke-direct/range {v7 .. v16}, Lcom/google/android/gms/internal/ads/zzany;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZILjava/lang/String;)V

    .line 204
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchi:Landroid/os/Bundle;

    if-eqz v6, :cond_60

    .line 205
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchi:Landroid/os/Bundle;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    :cond_60
    move-object v6, v5

    move-object/from16 v5, p3

    .line 208
    invoke-direct {v1, v2, v0, v5}, Lcom/google/android/gms/internal/ads/zzanx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 209
    invoke-interface {v3, v4, v0, v6}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;->loadAd(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_6a} :catch_6b

    return-void

    :catch_6b
    move-exception v0

    const-string v2, ""

    .line 212
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 214
    :cond_77
    instance-of v4, v3, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v4, :cond_8a

    .line 221
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzanx;->zzdli:Lcom/google/android/gms/dynamic/IObjectWrapper;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzaob;

    check-cast v3, Lcom/google/android/gms/ads/mediation/Adapter;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzanx;->zzdlh:Lcom/google/android/gms/internal/ads/zzaur;

    invoke-direct {v5, v3, v6}, Lcom/google/android/gms/internal/ads/zzaob;-><init>(Lcom/google/android/gms/ads/mediation/Adapter;Lcom/google/android/gms/internal/ads/zzaur;)V

    invoke-virtual {v1, v4, v0, v2, v5}, Lcom/google/android/gms/internal/ads/zzanx;->zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzvg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzanh;)V

    return-void

    .line 215
    :cond_8a
    const-class v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    .line 216
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 217
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    .line 218
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1a

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

    const-string v0, " or "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #009 Class mismatch: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfe(Ljava/lang/String;)V

    .line 220
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzvg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzanh;)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    .line 257
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    instance-of v3, v3, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v3, :cond_55

    const-string v3, "Requesting rewarded ad from adapter."

    .line 263
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 264
    :try_start_11
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/ads/mediation/Adapter;

    move-object/from16 v4, p4

    .line 266
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/zzanx;->zza(Lcom/google/android/gms/internal/ads/zzanh;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    move-result-object v4

    .line 267
    new-instance v15, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;

    .line 268
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/content/Context;

    const-string v7, ""

    const/4 v5, 0x0

    .line 269
    invoke-direct {v1, v2, v0, v5}, Lcom/google/android/gms/internal/ads/zzanx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 270
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzanx;->zzd(Lcom/google/android/gms/internal/ads/zzvg;)Landroid/os/Bundle;

    move-result-object v9

    .line 271
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzanx;->zzc(Lcom/google/android/gms/internal/ads/zzvg;)Z

    move-result v10

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzvg;->zznb:Landroid/location/Location;

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzadm:I

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzadn:I

    .line 272
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzanx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;)Ljava/lang/String;

    move-result-object v14

    const-string v0, ""

    move-object v5, v15

    move-object v2, v15

    move-object v15, v0

    invoke-direct/range {v5 .. v15}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/ads/mediation/Adapter;->loadRewardedAd(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_48} :catch_49

    return-void

    :catch_49
    move-exception v0

    const-string v2, ""

    .line 276
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 277
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 258
    :cond_55
    const-class v0, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 259
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    .line 260
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #009 Class mismatch: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfe(Ljava/lang/String;)V

    .line 262
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzvg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzanh;)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    .line 278
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    instance-of v3, v3, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v3, :cond_55

    const-string v3, "Requesting rewarded interstitial ad from adapter."

    .line 284
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 285
    :try_start_11
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/ads/mediation/Adapter;

    move-object/from16 v4, p4

    .line 287
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/zzanx;->zza(Lcom/google/android/gms/internal/ads/zzanh;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    move-result-object v4

    .line 288
    new-instance v15, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;

    .line 289
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/content/Context;

    const-string v7, ""

    const/4 v5, 0x0

    .line 290
    invoke-direct {v1, v2, v0, v5}, Lcom/google/android/gms/internal/ads/zzanx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 291
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzanx;->zzd(Lcom/google/android/gms/internal/ads/zzvg;)Landroid/os/Bundle;

    move-result-object v9

    .line 292
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzanx;->zzc(Lcom/google/android/gms/internal/ads/zzvg;)Z

    move-result v10

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzvg;->zznb:Landroid/location/Location;

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzadm:I

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzadn:I

    .line 293
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzanx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;)Ljava/lang/String;

    move-result-object v14

    const-string v0, ""

    move-object v5, v15

    move-object v2, v15

    move-object v15, v0

    invoke-direct/range {v5 .. v15}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/ads/mediation/Adapter;->loadRewardedInterstitialAd(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_48} :catch_49

    return-void

    :catch_49
    move-exception v0

    const-string v2, ""

    .line 297
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 298
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 279
    :cond_55
    const-class v0, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 280
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    .line 281
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #009 Class mismatch: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfe(Ljava/lang/String;)V

    .line 283
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zzs(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 363
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 364
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/OnContextChangedListener;

    if-eqz v1, :cond_11

    .line 365
    check-cast v0, Lcom/google/android/gms/ads/mediation/OnContextChangedListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/OnContextChangedListener;->onContextChanged(Landroid/content/Context;)V

    :cond_11
    return-void
.end method

.method public final zzt(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v0, :cond_24

    const-string v0, "Show rewarded ad from adapter."

    .line 305
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlj:Lcom/google/android/gms/ads/mediation/MediationRewardedAd;

    if-eqz v0, :cond_19

    .line 307
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationRewardedAd;->showAd(Landroid/content/Context;)V

    return-void

    :cond_19
    const-string p1, "Can not show null mediation rewarded ad."

    .line 308
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfc(Ljava/lang/String;)V

    .line 309
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    .line 300
    :cond_24
    const-class p1, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 301
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    .line 302
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x16

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " #009 Class mismatch: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 303
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfe(Ljava/lang/String;)V

    .line 304
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final zzts()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    if-eqz v1, :cond_1d

    .line 13
    :try_start_6
    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    .line 14
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;->getBannerView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v0

    const-string v1, ""

    .line 16
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 8
    :cond_1d
    const-class v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #009 Class mismatch: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfe(Ljava/lang/String;)V

    .line 12
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zztt()Lcom/google/android/gms/internal/ads/zzano;
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlg:Lcom/google/android/gms/internal/ads/zzaoc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaoc;->zzug()Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    move-result-object v0

    .line 122
    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;

    if-eqz v1, :cond_12

    .line 123
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaoe;

    check-cast v0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzaoe;-><init>(Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;)V

    return-object v1

    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zztu()Lcom/google/android/gms/internal/ads/zzanp;
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlg:Lcom/google/android/gms/internal/ads/zzaoc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaoc;->zzug()Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    move-result-object v0

    .line 130
    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;

    if-eqz v1, :cond_12

    .line 131
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaod;

    check-cast v0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzaod;-><init>(Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;)V

    return-object v1

    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zztv()Landroid/os/Bundle;
    .registers 5

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbiw;

    if-nez v1, :cond_46

    .line 51
    const-class v0, Lcom/google/android/gms/internal/ads/zzbiw;

    .line 52
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    .line 53
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #009 Class mismatch: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfe(Ljava/lang/String;)V

    .line 55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0

    .line 56
    :cond_46
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbiw;

    .line 57
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbiw;->zztv()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final zztw()Landroid/os/Bundle;
    .registers 2

    .line 120
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final zztx()Z
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/ads/reward/mediation/InitializableMediationRewardedVideoAdAdapter;

    return v0
.end method

.method public final zzty()Lcom/google/android/gms/internal/ads/zzafa;
    .registers 3

    .line 133
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlg:Lcom/google/android/gms/internal/ads/zzaoc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaoc;->zzui()Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    move-result-object v0

    .line 134
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzafb;

    if-eqz v1, :cond_11

    .line 135
    check-cast v0, Lcom/google/android/gms/internal/ads/zzafb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzafb;->zzst()Lcom/google/android/gms/internal/ads/zzafa;

    move-result-object v0

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zztz()Lcom/google/android/gms/internal/ads/zzanu;
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlg:Lcom/google/android/gms/internal/ads/zzaoc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaoc;->zzuh()Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 127
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaow;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzaow;-><init>(Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;)V

    return-object v1

    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzua()Lcom/google/android/gms/internal/ads/zzapv;
    .registers 3

    .line 385
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-nez v1, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 387
    :cond_8
    check-cast v0, Lcom/google/android/gms/ads/mediation/Adapter;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/Adapter;->getVersionInfo()Lcom/google/android/gms/ads/mediation/VersionInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzapv;->zza(Lcom/google/android/gms/ads/mediation/VersionInfo;)Lcom/google/android/gms/internal/ads/zzapv;

    move-result-object v0

    return-object v0
.end method

.method public final zzub()Lcom/google/android/gms/internal/ads/zzapv;
    .registers 3

    .line 388
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzdlf:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-nez v1, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 390
    :cond_8
    check-cast v0, Lcom/google/android/gms/ads/mediation/Adapter;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/Adapter;->getSDKVersionInfo()Lcom/google/android/gms/ads/mediation/VersionInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzapv;->zza(Lcom/google/android/gms/ads/mediation/VersionInfo;)Lcom/google/android/gms/internal/ads/zzapv;

    move-result-object v0

    return-object v0
.end method
