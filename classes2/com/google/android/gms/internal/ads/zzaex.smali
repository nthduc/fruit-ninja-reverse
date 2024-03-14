.class public final Lcom/google/android/gms/internal/ads/zzaex;
.super Lcom/google/android/gms/ads/formats/NativeContentAd;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private final zzcjt:Lcom/google/android/gms/ads/VideoController;

.field private final zzddt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;"
        }
    .end annotation
.end field

.field private final zzddv:Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;

.field private final zzddw:Lcom/google/android/gms/internal/ads/zzaew;

.field private final zzddx:Lcom/google/android/gms/internal/ads/zzaef;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaew;)V
    .registers 7

    const-string v0, ""

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeContentAd;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaex;->zzddt:Ljava/util/List;

    .line 3
    new-instance v1, Lcom/google/android/gms/ads/VideoController;

    invoke-direct {v1}, Lcom/google/android/gms/ads/VideoController;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaex;->zzcjt:Lcom/google/android/gms/ads/VideoController;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaex;->zzddw:Lcom/google/android/gms/internal/ads/zzaew;

    const/4 p1, 0x0

    .line 5
    :try_start_16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaex;->zzddw:Lcom/google/android/gms/internal/ads/zzaew;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaew;->getImages()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5b

    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_22
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 9
    instance-of v3, v2, Landroid/os/IBinder;

    if-eqz v3, :cond_49

    .line 10
    check-cast v2, Landroid/os/IBinder;

    if-eqz v2, :cond_49

    const-string v3, "com.google.android.gms.ads.internal.formats.client.INativeAdImage"

    .line 12
    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    .line 13
    instance-of v4, v3, Lcom/google/android/gms/internal/ads/zzaee;

    if-eqz v4, :cond_42

    .line 14
    move-object v2, v3

    check-cast v2, Lcom/google/android/gms/internal/ads/zzaee;

    goto :goto_4a

    .line 15
    :cond_42
    new-instance v3, Lcom/google/android/gms/internal/ads/zzaeg;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzaeg;-><init>(Landroid/os/IBinder;)V

    move-object v2, v3

    goto :goto_4a

    :cond_49
    move-object v2, p1

    :goto_4a
    if-eqz v2, :cond_22

    .line 20
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaex;->zzddt:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaef;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/zzaef;-><init>(Lcom/google/android/gms/internal/ads/zzaee;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_56} :catch_57

    goto :goto_22

    :catch_57
    move-exception v1

    .line 24
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    :cond_5b
    :try_start_5b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaex;->zzddw:Lcom/google/android/gms/internal/ads/zzaew;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaew;->zzso()Lcom/google/android/gms/internal/ads/zzaee;

    move-result-object v1

    if-eqz v1, :cond_6d

    .line 28
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaef;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzaef;-><init>(Lcom/google/android/gms/internal/ads/zzaee;)V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_68} :catch_69

    goto :goto_6e

    :catch_69
    move-exception v1

    .line 33
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6d
    move-object v2, p1

    .line 34
    :goto_6e
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzaex;->zzddx:Lcom/google/android/gms/internal/ads/zzaef;

    .line 36
    :try_start_70
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaex;->zzddw:Lcom/google/android/gms/internal/ads/zzaew;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaew;->zzsm()Lcom/google/android/gms/internal/ads/zzadw;

    move-result-object v1

    if-eqz v1, :cond_89

    .line 37
    new-instance v1, Lcom/google/android/gms/internal/ads/zzadx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaex;->zzddw:Lcom/google/android/gms/internal/ads/zzaew;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzaew;->zzsm()Lcom/google/android/gms/internal/ads/zzadw;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzadx;-><init>(Lcom/google/android/gms/internal/ads/zzadw;)V
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_83} :catch_85

    move-object p1, v1

    goto :goto_89

    :catch_85
    move-exception v1

    .line 40
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    :cond_89
    :goto_89
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaex;->zzddv:Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;

    return-void
.end method

.method private final zzsk()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 3

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaex;->zzddw:Lcom/google/android/gms/internal/ads/zzaew;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaew;->zzsk()Lcom/google/android/gms/dynamic/IObjectWrapper;

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


# virtual methods
.method public final destroy()V
    .registers 3

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaex;->zzddw:Lcom/google/android/gms/internal/ads/zzaew;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaew;->destroy()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    const-string v1, ""

    .line 97
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final getAdChoicesInfo()Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaex;->zzddv:Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;

    return-object v0
.end method

.method public final getAdvertiser()Ljava/lang/CharSequence;
    .registers 3

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaex;->zzddw:Lcom/google/android/gms/internal/ads/zzaew;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaew;->getAdvertiser()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 77
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getBody()Ljava/lang/CharSequence;
    .registers 3

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaex;->zzddw:Lcom/google/android/gms/internal/ads/zzaew;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaew;->getBody()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 68
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCallToAction()Ljava/lang/CharSequence;
    .registers 3

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaex;->zzddw:Lcom/google/android/gms/internal/ads/zzaew;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaew;->getCallToAction()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 73
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .registers 3

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaex;->zzddw:Lcom/google/android/gms/internal/ads/zzaew;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaew;->getExtras()Landroid/os/Bundle;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 87
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getHeadline()Ljava/lang/CharSequence;
    .registers 3

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaex;->zzddw:Lcom/google/android/gms/internal/ads/zzaew;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaew;->getHeadline()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 63
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getImages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaex;->zzddt:Ljava/util/List;

    return-object v0
.end method

.method public final getLogo()Lcom/google/android/gms/ads/formats/NativeAd$Image;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaex;->zzddx:Lcom/google/android/gms/internal/ads/zzaef;

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/CharSequence;
    .registers 3

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaex;->zzddw:Lcom/google/android/gms/internal/ads/zzaew;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaew;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 92
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/ads/VideoController;
    .registers 3

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaex;->zzddw:Lcom/google/android/gms/internal/ads/zzaew;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaew;->getVideoController()Lcom/google/android/gms/internal/ads/zzyo;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaex;->zzcjt:Lcom/google/android/gms/ads/VideoController;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaex;->zzddw:Lcom/google/android/gms/internal/ads/zzaew;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaew;->getVideoController()Lcom/google/android/gms/internal/ads/zzyo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/internal/ads/zzyo;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_1a

    :catch_14
    move-exception v0

    const-string v1, "Exception occurred while getting video controller"

    .line 83
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaex;->zzcjt:Lcom/google/android/gms/ads/VideoController;

    return-object v0
.end method

.method public final performClick(Landroid/os/Bundle;)V
    .registers 3

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaex;->zzddw:Lcom/google/android/gms/internal/ads/zzaew;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaew;->performClick(Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    const-string v0, ""

    .line 50
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final recordImpression(Landroid/os/Bundle;)Z
    .registers 3

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaex;->zzddw:Lcom/google/android/gms/internal/ads/zzaew;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaew;->recordImpression(Landroid/os/Bundle;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    :catch_7
    move-exception p1

    const-string v0, ""

    .line 54
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final reportTouchEvent(Landroid/os/Bundle;)V
    .registers 3

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaex;->zzddw:Lcom/google/android/gms/internal/ads/zzaew;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaew;->reportTouchEvent(Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    const-string v0, ""

    .line 59
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected final synthetic zzjs()Ljava/lang/Object;
    .registers 2

    .line 99
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaex;->zzsk()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method