.class public Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private extras:Landroid/os/Bundle;

.field private zzcjt:Lcom/google/android/gms/ads/VideoController;

.field private zzdsl:Ljava/lang/String;

.field private zzerg:Ljava/lang/String;

.field private zzerh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;"
        }
    .end annotation
.end field

.field private zzeri:Lcom/google/android/gms/ads/formats/NativeAd$Image;

.field private zzerj:Ljava/lang/String;

.field private zzerl:Ljava/lang/String;

.field private zzerm:Ljava/lang/String;

.field private zzern:Landroid/view/View;

.field private zzero:Z

.field private zzerq:Ljava/lang/String;

.field private zzerr:Ljava/lang/Double;

.field private zzers:Landroid/view/View;

.field private zzert:Ljava/lang/Object;

.field private zzeru:Z

.field private zzerv:Z

.field private zzerw:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->extras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getAdChoicesContent()Landroid/view/View;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zzers:Landroid/view/View;

    return-object v0
.end method

.method public final getAdvertiser()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zzerq:Ljava/lang/String;

    return-object v0
.end method

.method public final getBody()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zzdsl:Ljava/lang/String;

    return-object v0
.end method

.method public final getCallToAction()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zzerj:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTime()F
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()F
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getHeadline()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zzerg:Ljava/lang/String;

    return-object v0
.end method

.method public final getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zzeri:Lcom/google/android/gms/ads/formats/NativeAd$Image;

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

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zzerh:Ljava/util/List;

    return-object v0
.end method

.method public getMediaContentAspectRatio()F
    .registers 2

    .line 52
    iget v0, p0, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zzerw:F

    return v0
.end method

.method public final getOverrideClickHandling()Z
    .registers 2

    .line 58
    iget-boolean v0, p0, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zzerv:Z

    return v0
.end method

.method public final getOverrideImpressionRecording()Z
    .registers 2

    .line 57
    iget-boolean v0, p0, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zzeru:Z

    return v0
.end method

.method public final getPrice()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zzerm:Ljava/lang/String;

    return-object v0
.end method

.method public final getStarRating()Ljava/lang/Double;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zzerr:Ljava/lang/Double;

    return-object v0
.end method

.method public final getStore()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zzerl:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/ads/VideoController;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zzcjt:Lcom/google/android/gms/ads/VideoController;

    return-object v0
.end method

.method public handleClick(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public hasVideoContent()Z
    .registers 2

    .line 49
    iget-boolean v0, p0, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zzero:Z

    return v0
.end method

.method public recordImpression()V
    .registers 1

    return-void
.end method

.method public setAdChoicesContent(Landroid/view/View;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zzers:Landroid/view/View;

    return-void
.end method

.method public final setAdvertiser(Ljava/lang/String;)V
    .registers 2

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zzerq:Ljava/lang/String;

    return-void
.end method

.method public final setBody(Ljava/lang/String;)V
    .registers 2

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zzdsl:Ljava/lang/String;

    return-void
.end method

.method public final setCallToAction(Ljava/lang/String;)V
    .registers 2

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zzerj:Ljava/lang/String;

    return-void
.end method

.method public final setExtras(Landroid/os/Bundle;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->extras:Landroid/os/Bundle;

    return-void
.end method

.method public setHasVideoContent(Z)V
    .registers 2

    .line 23
    iput-boolean p1, p0, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zzero:Z

    return-void
.end method

.method public final setHeadline(Ljava/lang/String;)V
    .registers 2

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zzerg:Ljava/lang/String;

    return-void
.end method

.method public final setIcon(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V
    .registers 2

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zzeri:Lcom/google/android/gms/ads/formats/NativeAd$Image;

    return-void
.end method

.method public final setImages(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;)V"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zzerh:Ljava/util/List;

    return-void
.end method

.method public setMediaContentAspectRatio(F)V
    .registers 2

    .line 29
    iput p1, p0, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zzerw:F

    return-void
.end method

.method public setMediaView(Landroid/view/View;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zzern:Landroid/view/View;

    return-void
.end method

.method public final setOverrideClickHandling(Z)V
    .registers 2

    .line 37
    iput-boolean p1, p0, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zzerv:Z

    return-void
.end method

.method public final setOverrideImpressionRecording(Z)V
    .registers 2

    .line 35
    iput-boolean p1, p0, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zzeru:Z

    return-void
.end method

.method public final setPrice(Ljava/lang/String;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zzerm:Ljava/lang/String;

    return-void
.end method

.method public final setStarRating(Ljava/lang/Double;)V
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zzerr:Ljava/lang/Double;

    return-void
.end method

.method public final setStore(Ljava/lang/String;)V
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zzerl:Ljava/lang/String;

    return-void
.end method

.method public trackViews(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public untrackView(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/VideoController;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zzcjt:Lcom/google/android/gms/ads/VideoController;

    return-void
.end method

.method public final zzadh()Landroid/view/View;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zzern:Landroid/view/View;

    return-object v0
.end method

.method public final zzjx()Ljava/lang/Object;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zzert:Ljava/lang/Object;

    return-object v0
.end method

.method public final zzn(Ljava/lang/Object;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zzert:Ljava/lang/Object;

    return-void
.end method
