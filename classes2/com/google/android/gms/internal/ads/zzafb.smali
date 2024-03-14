.class public final Lcom/google/android/gms/internal/ads/zzafb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;


# instance fields
.field private final zzcjt:Lcom/google/android/gms/ads/VideoController;

.field private final zzddy:Lcom/google/android/gms/internal/ads/zzafa;

.field private final zzddz:Lcom/google/android/gms/ads/formats/MediaView;

.field private zzdea:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$DisplayOpenMeasurement;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzafa;)V
    .registers 6
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const-string v0, ""

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v1, Lcom/google/android/gms/ads/VideoController;

    invoke-direct {v1}, Lcom/google/android/gms/ads/VideoController;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzafb;->zzcjt:Lcom/google/android/gms/ads/VideoController;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafb;->zzddy:Lcom/google/android/gms/internal/ads/zzafa;

    const/4 v1, 0x0

    .line 5
    :try_start_f
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzafa;->zzsp()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;
    :try_end_19
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_1c
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1a

    goto :goto_21

    :catch_1a
    move-exception p1

    goto :goto_1d

    :catch_1c
    move-exception p1

    .line 8
    :goto_1d
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_21
    if-eqz p1, :cond_3b

    .line 12
    new-instance v2, Lcom/google/android/gms/ads/formats/MediaView;

    invoke-direct {v2, p1}, Lcom/google/android/gms/ads/formats/MediaView;-><init>(Landroid/content/Context;)V

    .line 14
    :try_start_28
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafb;->zzddy:Lcom/google/android/gms/internal/ads/zzafa;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/google/android/gms/internal/ads/zzafa;->zzp(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result p1
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_32} :catch_37

    if-nez p1, :cond_35

    goto :goto_3b

    :cond_35
    move-object v1, v2

    goto :goto_3b

    :catch_37
    move-exception p1

    .line 20
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    :cond_3b
    :goto_3b
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzafb;->zzddz:Lcom/google/android/gms/ads/formats/MediaView;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .registers 3

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafb;->zzddy:Lcom/google/android/gms/internal/ads/zzafa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzafa;->destroy()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    const-string v1, ""

    .line 72
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final getAvailableAssetNames()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafb;->zzddy:Lcom/google/android/gms/internal/ads/zzafa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzafa;->getAvailableAssetNames()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 45
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCustomTemplateId()Ljava/lang/String;
    .registers 3

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafb;->zzddy:Lcom/google/android/gms/internal/ads/zzafa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzafa;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 49
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDisplayOpenMeasurement()Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$DisplayOpenMeasurement;
    .registers 3

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafb;->zzdea:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$DisplayOpenMeasurement;

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafb;->zzddy:Lcom/google/android/gms/internal/ads/zzafa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzafa;->zzsq()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 62
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaea;

    .line 63
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafb;->zzddy:Lcom/google/android/gms/internal/ads/zzafa;

    .line 64
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaea;-><init>(Lcom/google/android/gms/internal/ads/zzafa;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzafb;->zzdea:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$DisplayOpenMeasurement;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_1c

    :catch_16
    move-exception v0

    const-string v1, ""

    .line 67
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafb;->zzdea:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$DisplayOpenMeasurement;

    return-object v0
.end method

.method public final getImage(Ljava/lang/String;)Lcom/google/android/gms/ads/formats/NativeAd$Image;
    .registers 3

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafb;->zzddy:Lcom/google/android/gms/internal/ads/zzafa;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzafa;->zzcy(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaee;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaef;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzaef;-><init>(Lcom/google/android/gms/internal/ads/zzaee;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception p1

    const-string v0, ""

    .line 33
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_14
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 3

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafb;->zzddy:Lcom/google/android/gms/internal/ads/zzafa;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzafa;->zzcx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    :catch_7
    move-exception p1

    const-string v0, ""

    .line 26
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getVideoController()Lcom/google/android/gms/ads/VideoController;
    .registers 3

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafb;->zzddy:Lcom/google/android/gms/internal/ads/zzafa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzafa;->getVideoController()Lcom/google/android/gms/internal/ads/zzyo;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 37
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafb;->zzcjt:Lcom/google/android/gms/ads/VideoController;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/internal/ads/zzyo;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    const-string v1, "Exception occurred while getting video controller"

    .line 40
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafb;->zzcjt:Lcom/google/android/gms/ads/VideoController;

    return-object v0
.end method

.method public final getVideoMediaView()Lcom/google/android/gms/ads/formats/MediaView;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafb;->zzddz:Lcom/google/android/gms/ads/formats/MediaView;

    return-object v0
.end method

.method public final performClick(Ljava/lang/String;)V
    .registers 3

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafb;->zzddy:Lcom/google/android/gms/internal/ads/zzafa;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzafa;->performClick(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    const-string v0, ""

    .line 54
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final recordImpression()V
    .registers 3

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafb;->zzddy:Lcom/google/android/gms/internal/ads/zzafa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzafa;->recordImpression()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    const-string v1, ""

    .line 59
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzst()Lcom/google/android/gms/internal/ads/zzafa;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafb;->zzddy:Lcom/google/android/gms/internal/ads/zzafa;

    return-object v0
.end method
