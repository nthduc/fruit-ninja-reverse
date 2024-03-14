.class public abstract Lcom/ironsource/mediationsdk/IronSource;
.super Ljava/lang/Object;
.source "IronSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearRewardedVideoServerParameters()V
    .registers 1

    .line 308
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->clearRewardedVideoServerParameters()V

    return-void
.end method

.method public static createBanner(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .registers 3

    .line 535
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->createBanner(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object p0

    return-object p0
.end method

.method public static destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    .registers 2

    .line 562
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    return-void
.end method

.method public static getAdvertiserId(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 201
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getAdvertiserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getISDemandOnlyBiddingData()Ljava/lang/String;
    .registers 2

    const-class v0, Lcom/ironsource/mediationsdk/IronSource;

    monitor-enter v0

    .line 238
    :try_start_3
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getISDemandOnlyBiddingData()Ljava/lang/String;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getInterstitialPlacementInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    .registers 2

    .line 181
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInterstitialPlacementInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object p0

    return-object p0
.end method

.method public static getOfferwallCredits()V
    .registers 1

    .line 508
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getOfferwallCredits()V

    return-void
.end method

.method public static getRewardedVideoPlacementInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;
    .registers 2

    .line 191
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getRewardedVideoPlacementInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 64
    check-cast v0, [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {p0, p1, v0}, Lcom/ironsource/mediationsdk/IronSource;->init(Landroid/app/Activity;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    return-void
.end method

.method public static varargs init(Landroid/app/Activity;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .registers 5

    .line 75
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/ironsource/mediationsdk/IronSourceObject;->init(Landroid/app/Activity;Ljava/lang/String;Z[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    return-void
.end method

.method public static varargs initISDemandOnly(Landroid/app/Activity;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .registers 4

    .line 87
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ironsource/mediationsdk/IronSourceObject;->initISDemandOnly(Landroid/app/Activity;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    return-void
.end method

.method public static isBannerPlacementCapped(Ljava/lang/String;)Z
    .registers 2

    .line 574
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isBannerPlacementCapped(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isISDemandOnlyInterstitialReady(Ljava/lang/String;)Z
    .registers 2

    .line 458
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isDemandOnlyInterstitialReady(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isISDemandOnlyRewardedVideoAvailable(Ljava/lang/String;)Z
    .registers 2

    .line 346
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isDemandOnlyRewardedVideoAvailable(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isInterstitialPlacementCapped(Ljava/lang/String;)Z
    .registers 2

    .line 419
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isInterstitialPlacementCapped(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isInterstitialReady()Z
    .registers 1

    .line 395
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isInterstitialReady()Z

    move-result v0

    return v0
.end method

.method public static isOfferwallAvailable()Z
    .registers 1

    .line 501
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isOfferwallAvailable()Z

    move-result v0

    return v0
.end method

.method public static isRewardedVideoAvailable()Z
    .registers 1

    .line 267
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isRewardedVideoAvailable()Z

    move-result v0

    return v0
.end method

.method public static isRewardedVideoPlacementCapped(Ljava/lang/String;)Z
    .registers 2

    .line 291
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isRewardedVideoPlacementCapped(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    .registers 2

    .line 544
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    return-void
.end method

.method public static loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V
    .registers 3

    .line 553
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V

    return-void
.end method

.method public static loadISDemandOnlyInterstitial(Ljava/lang/String;)V
    .registers 3

    .line 431
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->loadDemandOnlyInterstitial(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static loadISDemandOnlyInterstitialWithAdm(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 439
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->loadISDemandOnlyInterstitialWithAdm(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static loadISDemandOnlyRewardedVideo(Ljava/lang/String;)V
    .registers 3

    .line 320
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->loadISDemandOnlyRewardedVideo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static loadISDemandOnlyRewardedVideoWithAdm(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 328
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->loadISDemandOnlyRewardedVideoWithAdm(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static loadInterstitial()V
    .registers 1

    .line 370
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->loadInterstitial()V

    return-void
.end method

.method public static onPause(Landroid/app/Activity;)V
    .registers 2

    .line 105
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .registers 2

    .line 96
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->onResume(Landroid/app/Activity;)V

    return-void
.end method

.method public static removeInterstitialListener()V
    .registers 1

    .line 164
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->removeInterstitialListener()V

    return-void
.end method

.method public static removeOfferwallListener()V
    .registers 1

    .line 171
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->removeOfferwallListener()V

    return-void
.end method

.method public static removeRewardedVideoListener()V
    .registers 1

    .line 157
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->removeRewardedVideoListener()V

    return-void
.end method

.method public static setAdaptersDebug(Z)V
    .registers 2

    .line 230
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setAdaptersDebug(Z)V

    return-void
.end method

.method public static declared-synchronized setAge(I)V
    .registers 3

    const-class v0, Lcom/ironsource/mediationsdk/IronSource;

    monitor-enter v0

    .line 114
    :try_start_3
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setAge(I)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 115
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setConsent(Z)V
    .registers 2

    .line 582
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setConsent(Z)V

    return-void
.end method

.method public static setDynamicUserId(Ljava/lang/String;)Z
    .registers 2

    .line 146
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setDynamicUserId(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static declared-synchronized setGender(Ljava/lang/String;)V
    .registers 3

    const-class v0, Lcom/ironsource/mediationsdk/IronSource;

    monitor-enter v0

    .line 123
    :try_start_3
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setGender(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 124
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setISDemandOnlyInterstitialListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyInterstitialListener;)V
    .registers 2

    .line 471
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setISDemandOnlyInterstitialListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyInterstitialListener;)V

    return-void
.end method

.method public static setISDemandOnlyRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;)V
    .registers 2

    .line 359
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setISDemandOnlyRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;)V

    return-void
.end method

.method public static setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V
    .registers 2

    .line 407
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V

    return-void
.end method

.method public static setLogListener(Lcom/ironsource/mediationsdk/logger/LogListener;)V
    .registers 2

    .line 221
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setLogListener(Lcom/ironsource/mediationsdk/logger/LogListener;)V

    return-void
.end method

.method public static setMediationSegment(Ljava/lang/String;)V
    .registers 2

    .line 132
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setMediationSegment(Ljava/lang/String;)V

    return-void
.end method

.method public static setMediationType(Ljava/lang/String;)V
    .registers 2

    .line 150
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setMediationType(Ljava/lang/String;)V

    return-void
.end method

.method public static setMetaData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 586
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setOfferwallListener(Lcom/ironsource/mediationsdk/sdk/OfferwallListener;)V
    .registers 2

    .line 520
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setOfferwallListener(Lcom/ironsource/mediationsdk/sdk/OfferwallListener;)V

    return-void
.end method

.method public static setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V
    .registers 2

    .line 279
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V

    return-void
.end method

.method public static setRewardedVideoServerParameters(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 300
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setRewardedVideoServerParameters(Ljava/util/Map;)V

    return-void
.end method

.method public static setSegment(Lcom/ironsource/mediationsdk/IronSourceSegment;)V
    .registers 2

    .line 136
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setSegment(Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    return-void
.end method

.method public static setSegmentListener(Lcom/ironsource/mediationsdk/sdk/SegmentListener;)V
    .registers 2

    .line 578
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setSegmentListener(Lcom/ironsource/mediationsdk/sdk/SegmentListener;)V

    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .registers 3

    .line 54
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->setIronSourceUserId(Ljava/lang/String;Z)V

    return-void
.end method

.method public static shouldTrackNetworkState(Landroid/content/Context;Z)V
    .registers 3

    .line 212
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->shouldTrackNetworkState(Landroid/content/Context;Z)V

    return-void
.end method

.method public static showISDemandOnlyInterstitial(Ljava/lang/String;)V
    .registers 2

    .line 447
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->showDemandOnlyInterstitial(Ljava/lang/String;)V

    return-void
.end method

.method public static showISDemandOnlyRewardedVideo(Ljava/lang/String;)V
    .registers 2

    .line 336
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->showDemandOnlyRewardedVideo(Ljava/lang/String;)V

    return-void
.end method

.method public static showInterstitial()V
    .registers 1

    .line 377
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->showInterstitial()V

    return-void
.end method

.method public static showInterstitial(Ljava/lang/String;)V
    .registers 2

    .line 386
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->showInterstitial(Ljava/lang/String;)V

    return-void
.end method

.method public static showOfferwall()V
    .registers 1

    .line 482
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->showOfferwall()V

    return-void
.end method

.method public static showOfferwall(Ljava/lang/String;)V
    .registers 2

    .line 491
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->showOfferwall(Ljava/lang/String;)V

    return-void
.end method

.method public static showRewardedVideo()V
    .registers 1

    .line 249
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->showRewardedVideo()V

    return-void
.end method

.method public static showRewardedVideo(Ljava/lang/String;)V
    .registers 2

    .line 258
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->showRewardedVideo(Ljava/lang/String;)V

    return-void
.end method
