.class public final Lcom/google/android/gms/internal/ads/zzcdv;
.super Lcom/google/android/gms/internal/ads/zzaec;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

.field private zzfyr:Lcom/google/android/gms/dynamic/IObjectWrapper;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcei;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaec;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdv;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    return-void
.end method

.method private final zzalu()F
    .registers 3

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdv;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->getVideoController()Lcom/google/android/gms/internal/ads/zzyo;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzyo;->getAspectRatio()F

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    const-string v1, "Remote exception getting video controller aspect ratio."

    .line 71
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method private static zzar(Lcom/google/android/gms/dynamic/IObjectWrapper;)F
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 75
    :cond_4
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_24

    .line 77
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_24

    .line 78
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-eq v1, v2, :cond_24

    .line 79
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    :cond_24
    return v0
.end method


# virtual methods
.method public final getAspectRatio()F
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcwn:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    return v1

    .line 8
    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdv;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->getMediaContentAspectRatio()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_25

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdv;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->getMediaContentAspectRatio()F

    move-result v0

    return v0

    .line 10
    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdv;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->getVideoController()Lcom/google/android/gms/internal/ads/zzyo;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcdv;->zzalu()F

    move-result v0

    return v0

    .line 13
    :cond_32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdv;->zzfyr:Lcom/google/android/gms/dynamic/IObjectWrapper;

    if-eqz v0, :cond_3b

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcdv;->zzar(Lcom/google/android/gms/dynamic/IObjectWrapper;)F

    move-result v0

    return v0

    .line 15
    :cond_3b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdv;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->zzamc()Lcom/google/android/gms/internal/ads/zzaee;

    move-result-object v0

    if-nez v0, :cond_44

    return v1

    :cond_44
    if-eqz v0, :cond_5f

    .line 19
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaee;->getWidth()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5f

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaee;->getHeight()I

    move-result v2

    if-eq v2, v3, :cond_5f

    .line 20
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaee;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaee;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_60

    :cond_5f
    const/4 v2, 0x0

    :goto_60
    cmpl-float v1, v2, v1

    if-eqz v1, :cond_65

    return v2

    .line 25
    :cond_65
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaee;->zzsg()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcdv;->zzar(Lcom/google/android/gms/dynamic/IObjectWrapper;)F

    move-result v0

    return v0
.end method

.method public final getCurrentTime()F
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcwo:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    return v1

    .line 38
    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdv;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->getVideoController()Lcom/google/android/gms/internal/ads/zzyo;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdv;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->getVideoController()Lcom/google/android/gms/internal/ads/zzyo;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzyo;->getCurrentTime()F

    move-result v0

    return v0

    :cond_27
    return v1
.end method

.method public final getDuration()F
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcwo:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    return v1

    .line 31
    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdv;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->getVideoController()Lcom/google/android/gms/internal/ads/zzyo;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdv;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->getVideoController()Lcom/google/android/gms/internal/ads/zzyo;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzyo;->getDuration()F

    move-result v0

    return v0

    :cond_27
    return v1
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzyo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcwo:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 42
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 43
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdv;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->getVideoController()Lcom/google/android/gms/internal/ads/zzyo;

    move-result-object v0

    return-object v0
.end method

.method public final hasVideoContent()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcwo:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 47
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 48
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    return v1

    .line 50
    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdv;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->getVideoController()Lcom/google/android/gms/internal/ads/zzyo;

    move-result-object v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    return v0

    :cond_1e
    return v1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzafq;)V
    .registers 4

    .line 51
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcwo:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 52
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 55
    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdv;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->getVideoController()Lcom/google/android/gms/internal/ads/zzyo;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/internal/ads/zzbhd;

    if-eqz v0, :cond_28

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdv;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    .line 57
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->getVideoController()Lcom/google/android/gms/internal/ads/zzyo;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbhd;

    .line 58
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbhd;->zza(Lcom/google/android/gms/internal/ads/zzafq;)V

    :cond_28
    return-void
.end method

.method public final zzo(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 4

    .line 60
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcsc:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 61
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 63
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdv;->zzfyr:Lcom/google/android/gms/dynamic/IObjectWrapper;

    :cond_14
    return-void
.end method

.method public final zzsj()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdv;->zzfyr:Lcom/google/android/gms/dynamic/IObjectWrapper;

    if-eqz v0, :cond_5

    return-object v0

    .line 67
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdv;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->zzamc()Lcom/google/android/gms/internal/ads/zzaee;

    move-result-object v0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_f
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaee;->zzsg()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method
