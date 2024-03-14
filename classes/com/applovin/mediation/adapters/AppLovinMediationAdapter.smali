.class public Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;
.super Lcom/applovin/mediation/adapters/MediationAdapterBase;

# interfaces
.implements Lcom/applovin/mediation/adapter/MaxAdViewAdapter;
.implements Lcom/applovin/mediation/adapter/MaxInterstitialAdapter;
.implements Lcom/applovin/mediation/adapter/MaxRewardedAdapter;
.implements Lcom/applovin/mediation/adapter/MaxRewardedInterstitialAdapter;
.implements Lcom/applovin/mediation/adapter/MaxSignalProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardedInterstitialAdListenerWrapper;,
        Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardedAdListenerWrapper;,
        Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardListenerWrapper;
    }
.end annotation


# instance fields
.field private mLoadedAdView:Lcom/applovin/adview/AppLovinAdView;

.field private mLoadedInterstitialAd:Lcom/applovin/sdk/AppLovinAd;

.field private mLoadedRewardedAd:Lcom/applovin/sdk/AppLovinAd;

.field private mLoadedRewardedInterstitialAd:Lcom/applovin/sdk/AppLovinAd;

.field private mPendingReward:Lcom/applovin/mediation/MaxReward;


# direct methods
.method public constructor <init>(Lcom/applovin/sdk/AppLovinSdk;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/mediation/adapters/MediationAdapterBase;-><init>(Lcom/applovin/sdk/AppLovinSdk;)V

    return-void
.end method

.method static synthetic access$000(Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;)Lcom/applovin/adview/AppLovinAdView;
    .registers 1

    iget-object p0, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->mLoadedAdView:Lcom/applovin/adview/AppLovinAdView;

    return-object p0
.end method

.method static synthetic access$002(Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;Lcom/applovin/adview/AppLovinAdView;)Lcom/applovin/adview/AppLovinAdView;
    .registers 2

    iput-object p1, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->mLoadedAdView:Lcom/applovin/adview/AppLovinAdView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/applovin/adview/AppLovinAdViewDisplayErrorCode;)Lcom/applovin/mediation/adapter/MaxAdapterError;
    .registers 1

    invoke-static {p0}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->toMaxError(Lcom/applovin/adview/AppLovinAdViewDisplayErrorCode;)Lcom/applovin/mediation/adapter/MaxAdapterError;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(I)Lcom/applovin/mediation/adapter/MaxAdapterError;
    .registers 1

    invoke-static {p0}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->toMaxError(I)Lcom/applovin/mediation/adapter/MaxAdapterError;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$502(Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;Lcom/applovin/sdk/AppLovinAd;)Lcom/applovin/sdk/AppLovinAd;
    .registers 2

    iput-object p1, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->mLoadedInterstitialAd:Lcom/applovin/sdk/AppLovinAd;

    return-object p1
.end method

.method static synthetic access$602(Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;Lcom/applovin/sdk/AppLovinAd;)Lcom/applovin/sdk/AppLovinAd;
    .registers 2

    iput-object p1, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->mLoadedRewardedAd:Lcom/applovin/sdk/AppLovinAd;

    return-object p1
.end method

.method static synthetic access$702(Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;Lcom/applovin/sdk/AppLovinAd;)Lcom/applovin/sdk/AppLovinAd;
    .registers 2

    iput-object p1, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->mLoadedRewardedInterstitialAd:Lcom/applovin/sdk/AppLovinAd;

    return-object p1
.end method

.method static synthetic access$800(Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;)Lcom/applovin/mediation/MaxReward;
    .registers 1

    iget-object p0, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->mPendingReward:Lcom/applovin/mediation/MaxReward;

    return-object p0
.end method

.method static synthetic access$802(Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;Lcom/applovin/mediation/MaxReward;)Lcom/applovin/mediation/MaxReward;
    .registers 2

    iput-object p1, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->mPendingReward:Lcom/applovin/mediation/MaxReward;

    return-object p1
.end method

.method private loadFullscreenAd(Ljava/lang/String;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;)V
    .registers 8

    new-instance v0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$4;

    invoke-direct {v0, p0, p3, p4}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$4;-><init>(Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;)V

    invoke-interface {p2}, Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;->getBidResponse()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    const-string v1, " ad..."

    if-nez p4, :cond_3c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Loading bidding "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->getWrappingSdk()Lcom/applovin/sdk/AppLovinSdk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object p1

    invoke-interface {p2}, Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;->getBidResponse()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAdForAdToken(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    goto :goto_a3

    :cond_3c
    invoke-interface {p2}, Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;->getThirdPartyAdPlacementId()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    const-string v2, "Loading mediated "

    if-nez p4, :cond_7f

    invoke-interface {p2}, Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;->getThirdPartyAdPlacementId()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ad: "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "..."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->getWrappingSdk()Lcom/applovin/sdk/AppLovinSdk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object p1

    invoke-interface {p2}, Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;->getThirdPartyAdPlacementId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAdForZoneId(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    goto :goto_a3

    :cond_7f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->getWrappingSdk()Lcom/applovin/sdk/AppLovinSdk;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object p2

    invoke-interface {p2, p1, v0}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAdForZoneId(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    :goto_a3
    return-void
.end method

.method private static toMaxError(I)Lcom/applovin/mediation/adapter/MaxAdapterError;
    .registers 3

    const/16 v0, 0xcc

    const/16 v1, -0x67

    if-ne p0, v1, :cond_9

    const/16 v0, -0x1457

    goto :goto_1b

    :cond_9
    if-ne p0, v0, :cond_c

    goto :goto_1b

    :cond_c
    const/4 v0, -0x1

    if-ne p0, v0, :cond_12

    const/16 v0, -0x1459

    goto :goto_1b

    :cond_12
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_19

    const/16 v0, -0x1458

    goto :goto_1b

    :cond_19
    const/16 v0, -0x1450

    :goto_1b
    new-instance v1, Lcom/applovin/mediation/adapter/MaxAdapterError;

    invoke-direct {v1, v0, p0}, Lcom/applovin/mediation/adapter/MaxAdapterError;-><init>(II)V

    return-object v1
.end method

.method private static toMaxError(Lcom/applovin/adview/AppLovinAdViewDisplayErrorCode;)Lcom/applovin/mediation/adapter/MaxAdapterError;
    .registers 1

    sget-object p0, Lcom/applovin/mediation/adapter/MaxAdapterError;->UNSPECIFIED:Lcom/applovin/mediation/adapter/MaxAdapterError;

    return-object p0
.end method


# virtual methods
.method public collectSignal(Lcom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;)V
    .registers 4

    const-string p1, "Collecting signal..."

    invoke-virtual {p0, p1}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->getWrappingSdk()Lcom/applovin/sdk/AppLovinSdk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object p1

    invoke-interface {p1}, Lcom/applovin/sdk/AppLovinAdService;->getBidToken()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;->onSignalCollected(Ljava/lang/String;)V

    return-void
.end method

.method public getAdapterVersion()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public initialize(Lcom/applovin/mediation/adapter/parameters/MaxAdapterInitializationParameters;Landroid/app/Activity;Lcom/applovin/mediation/adapter/MaxAdapter$OnCompletionListener;)V
    .registers 4

    sget-object p1, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->DOES_NOT_APPLY:Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

    const/4 p2, 0x0

    invoke-interface {p3, p1, p2}, Lcom/applovin/mediation/adapter/MaxAdapter$OnCompletionListener;->onCompletion(Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;Ljava/lang/String;)V

    return-void
.end method

.method public loadAdViewAd(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lcom/applovin/mediation/MaxAdFormat;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;)V
    .registers 8

    new-instance v0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$1;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$1;-><init>(Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;Lcom/applovin/mediation/MaxAdFormat;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;)V

    invoke-interface {p1}, Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;->getBidResponse()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const-string v1, " ad..."

    if-nez p3, :cond_3d

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Loading bidding "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->getWrappingSdk()Lcom/applovin/sdk/AppLovinSdk;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object p2

    invoke-interface {p1}, Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;->getBidResponse()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAdForAdToken(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    goto/16 :goto_d1

    :cond_3d
    invoke-interface {p1}, Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;->getThirdPartyAdPlacementId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const-string v2, "Loading mediated "

    if-nez p3, :cond_7c

    invoke-interface {p1}, Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;->getThirdPartyAdPlacementId()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ad: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "..."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->getWrappingSdk()Lcom/applovin/sdk/AppLovinSdk;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object p2

    invoke-interface {p2, p1, v0}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAdForZoneId(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    goto :goto_d1

    :cond_7c
    const/4 p1, 0x0

    sget-object p3, Lcom/applovin/mediation/MaxAdFormat;->BANNER:Lcom/applovin/mediation/MaxAdFormat;

    if-ne p2, p3, :cond_84

    sget-object p1, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    goto :goto_91

    :cond_84
    sget-object p3, Lcom/applovin/mediation/MaxAdFormat;->MREC:Lcom/applovin/mediation/MaxAdFormat;

    if-ne p2, p3, :cond_8b

    sget-object p1, Lcom/applovin/sdk/AppLovinAdSize;->MREC:Lcom/applovin/sdk/AppLovinAdSize;

    goto :goto_91

    :cond_8b
    sget-object p3, Lcom/applovin/mediation/MaxAdFormat;->LEADER:Lcom/applovin/mediation/MaxAdFormat;

    if-ne p2, p3, :cond_91

    sget-object p1, Lcom/applovin/sdk/AppLovinAdSize;->LEADER:Lcom/applovin/sdk/AppLovinAdSize;

    :cond_91
    :goto_91
    if-eqz p1, :cond_b8

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->getWrappingSdk()Lcom/applovin/sdk/AppLovinSdk;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object p2

    invoke-interface {p2, p1, v0}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    goto :goto_d1

    :cond_b8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to load ad for format: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    sget-object p1, Lcom/applovin/mediation/adapter/MaxAdapterError;->INTERNAL_ERROR:Lcom/applovin/mediation/adapter/MaxAdapterError;

    invoke-interface {p4, p1}, Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;->onAdViewAdLoadFailed(Lcom/applovin/mediation/adapter/MaxAdapterError;)V

    :goto_d1
    return-void
.end method

.method public loadInterstitialAd(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;)V
    .registers 5

    sget-object p2, Lcom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    const-string v0, "inter_regular"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->loadFullscreenAd(Ljava/lang/String;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;)V

    return-void
.end method

.method public loadRewardedAd(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;)V
    .registers 5

    sget-object p2, Lcom/applovin/mediation/MaxAdFormat;->REWARDED:Lcom/applovin/mediation/MaxAdFormat;

    const-string v0, "inter_videoa"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->loadFullscreenAd(Ljava/lang/String;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;)V

    return-void
.end method

.method public loadRewardedInterstitialAd(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxRewardedInterstitialAdapterListener;)V
    .registers 5

    sget-object p2, Lcom/applovin/mediation/MaxAdFormat;->REWARDED_INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    const-string v0, "inter_autorew"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->loadFullscreenAd(Ljava/lang/String;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->mLoadedInterstitialAd:Lcom/applovin/sdk/AppLovinAd;

    iput-object v0, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->mLoadedRewardedAd:Lcom/applovin/sdk/AppLovinAd;

    iput-object v0, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->mLoadedRewardedInterstitialAd:Lcom/applovin/sdk/AppLovinAd;

    iget-object v1, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->mLoadedAdView:Lcom/applovin/adview/AppLovinAdView;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/applovin/adview/AppLovinAdView;->destroy()V

    iput-object v0, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->mLoadedAdView:Lcom/applovin/adview/AppLovinAdView;

    :cond_10
    return-void
.end method

.method public showInterstitialAd(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Showing interstitial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;->getThirdPartyAdPlacementId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "..."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->getWrappingSdk()Lcom/applovin/sdk/AppLovinSdk;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/applovin/adview/AppLovinInterstitialAd;->create(Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object p1

    new-instance p2, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$2;

    invoke-direct {p2, p0, p3}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$2;-><init>(Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;)V

    invoke-interface {p1, p2}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    new-instance p2, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$3;

    invoke-direct {p2, p0, p3}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$3;-><init>(Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;)V

    invoke-interface {p1, p2}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    iget-object p2, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->mLoadedInterstitialAd:Lcom/applovin/sdk/AppLovinAd;

    invoke-interface {p1, p2}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->showAndRender(Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method public showRewardedAd(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;)V
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Showing rewarded ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;->getThirdPartyAdPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->configureReward(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;)V

    invoke-virtual {p0}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->getWrappingSdk()Lcom/applovin/sdk/AppLovinSdk;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->create(Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-result-object v0

    new-instance v6, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardedAdListenerWrapper;

    const/4 p1, 0x0

    invoke-direct {v6, p0, p3, p1}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardedAdListenerWrapper;-><init>(Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$1;)V

    iget-object v1, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->mLoadedRewardedAd:Lcom/applovin/sdk/AppLovinAd;

    move-object v2, p2

    move-object v3, v6

    move-object v4, v6

    move-object v5, v6

    invoke-virtual/range {v0 .. v6}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->show(Lcom/applovin/sdk/AppLovinAd;Landroid/content/Context;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V

    return-void
.end method

.method public showRewardedInterstitialAd(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxRewardedInterstitialAdapterListener;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Showing rewarded interstitial ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;->getThirdPartyAdPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->configureReward(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;)V

    new-instance p1, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardedInterstitialAdListenerWrapper;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p3, v0}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardedInterstitialAdListenerWrapper;-><init>(Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;Lcom/applovin/mediation/adapter/listeners/MaxRewardedInterstitialAdapterListener;Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$1;)V

    new-instance p3, Lcom/applovin/impl/adview/AppLovinRewardedInterstitialAd;

    invoke-virtual {p0}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->getWrappingSdk()Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/applovin/impl/adview/AppLovinRewardedInterstitialAd;-><init>(Lcom/applovin/sdk/AppLovinSdk;)V

    invoke-virtual {p3, p1}, Lcom/applovin/impl/adview/AppLovinRewardedInterstitialAd;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    invoke-virtual {p3, p1}, Lcom/applovin/impl/adview/AppLovinRewardedInterstitialAd;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    invoke-virtual {p3, p1}, Lcom/applovin/impl/adview/AppLovinRewardedInterstitialAd;->setAdVideoPlaybackListener(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    iget-object v0, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->mLoadedRewardedInterstitialAd:Lcom/applovin/sdk/AppLovinAd;

    invoke-virtual {p3, v0, p2, p1}, Lcom/applovin/impl/adview/AppLovinRewardedInterstitialAd;->show(Lcom/applovin/sdk/AppLovinAd;Landroid/content/Context;Lcom/applovin/sdk/AppLovinAdRewardListener;)V

    return-void
.end method
