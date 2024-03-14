.class public Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;
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

.field private zzeri:Lcom/google/android/gms/ads/formats/NativeAd$Image;

.field private zzerj:Ljava/lang/String;

.field private zzerk:D

.field private zzerl:Ljava/lang/String;

.field private zzerm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBody()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->zzdsl:Ljava/lang/String;

    return-object v0
.end method

.method public final getCallToAction()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->zzerj:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeadline()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->zzerg:Ljava/lang/String;

    return-object v0
.end method

.method public final getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->zzeri:Lcom/google/android/gms/ads/formats/NativeAd$Image;

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

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->zzerh:Ljava/util/List;

    return-object v0
.end method

.method public final getPrice()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->zzerm:Ljava/lang/String;

    return-object v0
.end method

.method public final getStarRating()D
    .registers 3

    .line 23
    iget-wide v0, p0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->zzerk:D

    return-wide v0
.end method

.method public final getStore()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->zzerl:Ljava/lang/String;

    return-object v0
.end method

.method public final setBody(Ljava/lang/String;)V
    .registers 2

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->zzdsl:Ljava/lang/String;

    return-void
.end method

.method public final setCallToAction(Ljava/lang/String;)V
    .registers 2

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->zzerj:Ljava/lang/String;

    return-void
.end method

.method public final setHeadline(Ljava/lang/String;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->zzerg:Ljava/lang/String;

    return-void
.end method

.method public final setIcon(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V
    .registers 2

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->zzeri:Lcom/google/android/gms/ads/formats/NativeAd$Image;

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
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->zzerh:Ljava/util/List;

    return-void
.end method

.method public final setPrice(Ljava/lang/String;)V
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->zzerm:Ljava/lang/String;

    return-void
.end method

.method public final setStarRating(D)V
    .registers 3

    .line 12
    iput-wide p1, p0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->zzerk:D

    return-void
.end method

.method public final setStore(Ljava/lang/String;)V
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->zzerl:Ljava/lang/String;

    return-void
.end method
