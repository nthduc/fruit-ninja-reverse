.class public Lcom/unity3d/ads/properties/AdsProperties;
.super Ljava/lang/Object;
.source "AdsProperties.java"


# static fields
.field private static _listener:Lcom/unity3d/ads/IUnityAdsListener;

.field private static _listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/unity3d/ads/IUnityAdsListener;",
            ">;"
        }
    .end annotation
.end field

.field private static _showTimeout:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/properties/AdsProperties;->_listeners:Ljava/util/Set;

    const/16 v0, 0x1388

    .line 12
    sput v0, Lcom/unity3d/ads/properties/AdsProperties;->_showTimeout:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addListener(Lcom/unity3d/ads/IUnityAdsListener;)V
    .registers 2

    .line 35
    sget-object v0, Lcom/unity3d/ads/properties/AdsProperties;->_listener:Lcom/unity3d/ads/IUnityAdsListener;

    if-nez v0, :cond_6

    .line 37
    sput-object p0, Lcom/unity3d/ads/properties/AdsProperties;->_listener:Lcom/unity3d/ads/IUnityAdsListener;

    :cond_6
    if-eqz p0, :cond_15

    .line 40
    sget-object v0, Lcom/unity3d/ads/properties/AdsProperties;->_listeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 41
    sget-object v0, Lcom/unity3d/ads/properties/AdsProperties;->_listeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_15
    return-void
.end method

.method public static getListener()Lcom/unity3d/ads/IUnityAdsListener;
    .registers 1

    .line 31
    sget-object v0, Lcom/unity3d/ads/properties/AdsProperties;->_listener:Lcom/unity3d/ads/IUnityAdsListener;

    return-object v0
.end method

.method public static getListeners()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/unity3d/ads/IUnityAdsListener;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/util/LinkedHashSet;

    sget-object v1, Lcom/unity3d/ads/properties/AdsProperties;->_listeners:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 48
    sget-object v1, Lcom/unity3d/ads/properties/AdsProperties;->_listener:Lcom/unity3d/ads/IUnityAdsListener;

    if-eqz v1, :cond_e

    .line 49
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_e
    return-object v0
.end method

.method public static getShowTimeout()I
    .registers 1

    .line 19
    sget v0, Lcom/unity3d/ads/properties/AdsProperties;->_showTimeout:I

    return v0
.end method

.method public static removeListener(Lcom/unity3d/ads/IUnityAdsListener;)V
    .registers 2

    .line 56
    sget-object v0, Lcom/unity3d/ads/properties/AdsProperties;->_listener:Lcom/unity3d/ads/IUnityAdsListener;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    .line 57
    sput-object v0, Lcom/unity3d/ads/properties/AdsProperties;->_listener:Lcom/unity3d/ads/IUnityAdsListener;

    .line 59
    :cond_d
    sget-object v0, Lcom/unity3d/ads/properties/AdsProperties;->_listeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static setListener(Lcom/unity3d/ads/IUnityAdsListener;)V
    .registers 3

    .line 24
    sget-object v0, Lcom/unity3d/ads/properties/AdsProperties;->_listener:Lcom/unity3d/ads/IUnityAdsListener;

    if-eqz v0, :cond_9

    .line 25
    sget-object v1, Lcom/unity3d/ads/properties/AdsProperties;->_listeners:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 27
    :cond_9
    sput-object p0, Lcom/unity3d/ads/properties/AdsProperties;->_listener:Lcom/unity3d/ads/IUnityAdsListener;

    return-void
.end method

.method public static setShowTimeout(I)V
    .registers 1

    .line 15
    sput p0, Lcom/unity3d/ads/properties/AdsProperties;->_showTimeout:I

    return-void
.end method
