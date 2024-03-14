.class public Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;
.super Lcom/google/android/gms/ads/mediation/NativeAdMapper;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
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

.field private zzerj:Ljava/lang/String;

.field private zzerp:Lcom/google/android/gms/ads/formats/NativeAd$Image;

.field private zzerq:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAdvertiser()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;->zzerq:Ljava/lang/String;

    return-object v0
.end method

.method public final getBody()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;->zzdsl:Ljava/lang/String;

    return-object v0
.end method

.method public final getCallToAction()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;->zzerj:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeadline()Ljava/lang/String;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;->zzerg:Ljava/lang/String;

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

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;->zzerh:Ljava/util/List;

    return-object v0
.end method

.method public final getLogo()Lcom/google/android/gms/ads/formats/NativeAd$Image;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;->zzerp:Lcom/google/android/gms/ads/formats/NativeAd$Image;

    return-object v0
.end method

.method public final setAdvertiser(Ljava/lang/String;)V
    .registers 2

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;->zzerq:Ljava/lang/String;

    return-void
.end method

.method public final setBody(Ljava/lang/String;)V
    .registers 2

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;->zzdsl:Ljava/lang/String;

    return-void
.end method

.method public final setCallToAction(Ljava/lang/String;)V
    .registers 2

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;->zzerj:Ljava/lang/String;

    return-void
.end method

.method public final setHeadline(Ljava/lang/String;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;->zzerg:Ljava/lang/String;

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

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;->zzerh:Ljava/util/List;

    return-void
.end method

.method public final setLogo(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V
    .registers 2

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;->zzerp:Lcom/google/android/gms/ads/formats/NativeAd$Image;

    return-void
.end method
