.class public final Lcom/google/android/gms/internal/ads/zzajl;
.super Lcom/google/android/gms/ads/instream/InstreamAd;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private zzbng:Lcom/google/android/gms/ads/MediaContent;

.field private zzcjt:Lcom/google/android/gms/ads/VideoController;

.field private final zzdgh:Lcom/google/android/gms/internal/ads/zzaje;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaje;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/instream/InstreamAd;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzdgh:Lcom/google/android/gms/internal/ads/zzaje;

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzajl;->zztd()Lcom/google/android/gms/ads/VideoController;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzcjt:Lcom/google/android/gms/ads/VideoController;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzajl;->zzte()Lcom/google/android/gms/ads/MediaContent;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzbng:Lcom/google/android/gms/ads/MediaContent;

    return-void
.end method

.method private final zztd()Lcom/google/android/gms/ads/VideoController;
    .registers 4

    .line 32
    new-instance v0, Lcom/google/android/gms/ads/VideoController;

    invoke-direct {v0}, Lcom/google/android/gms/ads/VideoController;-><init>()V

    .line 33
    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzdgh:Lcom/google/android/gms/internal/ads/zzaje;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaje;->getVideoController()Lcom/google/android/gms/internal/ads/zzyo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/internal/ads/zzyo;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    goto :goto_15

    :catch_f
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    .line 36
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_15
    return-object v0
.end method

.method private final zzte()Lcom/google/android/gms/ads/MediaContent;
    .registers 3

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzdgh:Lcom/google/android/gms/internal/ads/zzaje;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaje;->zzsw()Lcom/google/android/gms/internal/ads/zzadz;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 39
    new-instance v0, Lcom/google/android/gms/internal/ads/zzzm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzdgh:Lcom/google/android/gms/internal/ads/zzaje;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaje;->zzsw()Lcom/google/android/gms/internal/ads/zzadz;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzzm;-><init>(Lcom/google/android/gms/internal/ads/zzadz;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 42
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final destroy()V
    .registers 3

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzdgh:Lcom/google/android/gms/internal/ads/zzaje;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaje;->destroy()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzcjt:Lcom/google/android/gms/ads/VideoController;

    .line 27
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzbng:Lcom/google/android/gms/ads/MediaContent;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 30
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final getAspectRatio()F
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzcjt:Lcom/google/android/gms/ads/VideoController;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 24
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/ads/VideoController;->getAspectRatio()F

    move-result v0

    return v0
.end method

.method public final getMediaContent()Lcom/google/android/gms/ads/MediaContent;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzbng:Lcom/google/android/gms/ads/MediaContent;

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/ads/VideoController;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzcjt:Lcom/google/android/gms/ads/VideoController;

    return-object v0
.end method

.method public final getVideoCurrentTime()F
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzcjt:Lcom/google/android/gms/ads/VideoController;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 21
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/ads/VideoController;->getVideoCurrentTime()F

    move-result v0

    return v0
.end method

.method public final getVideoDuration()F
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzcjt:Lcom/google/android/gms/ads/VideoController;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 18
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/ads/VideoController;->getVideoDuration()F

    move-result v0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/ads/instream/InstreamAdView;)V
    .registers 3

    if-nez p1, :cond_8

    const-string p1, "showInView: parameter view must not be null."

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfc(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzdgh:Lcom/google/android/gms/internal/ads/zzaje;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaje;->zzr(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 12
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
