.class public Lcom/ironsource/adapters/admob/AdMobAdapter;
.super Lcom/ironsource/mediationsdk/AbstractAdapter;
.source "AdMobAdapter.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;


# static fields
.field public static BN_FAILED_TO_RELOAD_ERROR_CODE:I = 0x67

.field private static final CORE_SDK_VERSION:Ljava/lang/String; = "19.4.0"

.field private static final GitHash:Ljava/lang/String; = "f3b7a7f75"

.field public static IS_NOT_READY_ERROR_CODE:I = 0x68

.field public static RV_NOT_READY_ERROR_CODE:I = 0x65

.field private static final VERSION:Ljava/lang/String; = "4.3.14"

.field private static initCallbackListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mCCPAValue:Ljava/lang/Boolean;

.field private static mConsent:Ljava/lang/Boolean;

.field private static mDidInitSdk:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mDidInitSdkFinished:Z


# instance fields
.field private final ADMOB_TFCD_KEY:Ljava/lang/String;

.field private final ADMOB_TFUA_KEY:Ljava/lang/String;

.field private final AD_UNIT_ID:Ljava/lang/String;

.field private final APP_ID:Ljava/lang/String;

.field private final IRONSOURCE_REQUEST_AGENT:Ljava/lang/String;

.field private mAdIdToBannerAd:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/AdView;",
            ">;"
        }
    .end annotation
.end field

.field private mAdIdToInterstitialAd:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/InterstitialAd;",
            ">;"
        }
    .end annotation
.end field

.field private mAdIdToRewardedVideoAd:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/rewarded/RewardedAd;",
            ">;"
        }
    .end annotation
.end field

.field private mAdUnitIdToBannerListener:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAdUnitIdToInterstitialListener:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAdUnitIdToRewardedVideoListener:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;",
            ">;"
        }
    .end annotation
.end field

.field private mInterstitialAdsAvailability:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mRewardedVideoAdsAvailability:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mDidInitSdk:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 97
    sput-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mConsent:Ljava/lang/Boolean;

    .line 98
    sput-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mCCPAValue:Ljava/lang/Boolean;

    .line 99
    sput-boolean v1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mDidInitSdkFinished:Z

    .line 102
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->initCallbackListeners:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 112
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;-><init>(Ljava/lang/String;)V

    const-string p1, "ironSource"

    .line 70
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->IRONSOURCE_REQUEST_AGENT:Ljava/lang/String;

    const-string p1, "adUnitId"

    .line 86
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->AD_UNIT_ID:Ljava/lang/String;

    const-string p1, "appId"

    .line 87
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->APP_ID:Ljava/lang/String;

    const-string p1, "admob_tfcd"

    .line 90
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->ADMOB_TFCD_KEY:Ljava/lang/String;

    const-string p1, "admob_tfua"

    .line 91
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->ADMOB_TFUA_KEY:Ljava/lang/String;

    .line 113
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 115
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAllBannerSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 116
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdIdToInterstitialAd:Ljava/util/concurrent/ConcurrentHashMap;

    .line 117
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialAdsAvailability:Ljava/util/concurrent/ConcurrentHashMap;

    .line 118
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdIdToBannerAd:Ljava/util/concurrent/ConcurrentHashMap;

    .line 119
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdUnitIdToRewardedVideoListener:Ljava/util/concurrent/ConcurrentHashMap;

    .line 120
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdIdToRewardedVideoAd:Ljava/util/concurrent/ConcurrentHashMap;

    .line 121
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mRewardedVideoAdsAvailability:Ljava/util/concurrent/ConcurrentHashMap;

    .line 122
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdUnitIdToInterstitialListener:Ljava/util/concurrent/ConcurrentHashMap;

    .line 123
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdUnitIdToBannerListener:Ljava/util/concurrent/ConcurrentHashMap;

    .line 124
    sget-object p1, Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;->LOAD_WHILE_SHOW_BY_INSTANCE:Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mLWSSupportState:Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 60
    sget-boolean v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mDidInitSdkFinished:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .registers 1

    .line 60
    sput-boolean p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mDidInitSdkFinished:Z

    return p0
.end method

.method static synthetic access$100()Ljava/util/HashSet;
    .registers 1

    .line 60
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->initCallbackListeners:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/ads/AdListener;
    .registers 3

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->createInterstitialAdListener(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/ads/AdListener;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialAdsAvailability:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;)Lcom/google/android/gms/ads/InterstitialAd;
    .registers 2

    .line 60
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->getInterstitialAd(Lorg/json/JSONObject;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/google/android/gms/ads/AdRequest;
    .registers 1

    .line 60
    invoke-direct {p0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->createAdRequest()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdUnitIdToBannerListener:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ironsource/adapters/admob/AdMobAdapter;Lcom/google/android/gms/ads/AdView;Ljava/lang/String;)Lcom/google/android/gms/ads/AdListener;
    .registers 3

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->createBannerAdListener(Lcom/google/android/gms/ads/AdView;Ljava/lang/String;)Lcom/google/android/gms/ads/AdListener;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdIdToBannerAd:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdUnitIdToRewardedVideoListener:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ironsource/adapters/admob/AdMobAdapter;Ljava/lang/String;)V
    .registers 2

    .line 60
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->initSDK(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/ironsource/adapters/admob/AdMobAdapter;Ljava/lang/String;)V
    .registers 2

    .line 60
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->loadRewardedVideoAdFromAdmob(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdIdToRewardedVideoAd:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mRewardedVideoAdsAvailability:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ironsource/adapters/admob/AdMobAdapter;Ljava/lang/String;)Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;
    .registers 2

    .line 60
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->createRewardedAdCallback(Ljava/lang/String;)Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdUnitIdToInterstitialListener:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdIdToInterstitialAd:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private createAdRequest()Lcom/google/android/gms/ads/AdRequest;
    .registers 6

    .line 688
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    const-string v1, "ironSource"

    .line 689
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 690
    sget-object v1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mConsent:Ljava/lang/Boolean;

    if-nez v1, :cond_12

    sget-object v1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mCCPAValue:Ljava/lang/Boolean;

    if-eqz v1, :cond_6c

    .line 691
    :cond_12
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 692
    sget-object v2, Lcom/ironsource/adapters/admob/AdMobAdapter;->mConsent:Ljava/lang/Boolean;

    if-eqz v2, :cond_40

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_40

    .line 693
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mConsent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/ironsource/adapters/admob/AdMobAdapter;->mConsent:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const-string v2, "npa"

    const-string v3, "1"

    .line 694
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    :cond_40
    sget-object v2, Lcom/ironsource/adapters/admob/AdMobAdapter;->mCCPAValue:Ljava/lang/Boolean;

    if-eqz v2, :cond_67

    .line 697
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCCPAValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/ironsource/adapters/admob/AdMobAdapter;->mCCPAValue:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 698
    sget-object v2, Lcom/ironsource/adapters/admob/AdMobAdapter;->mCCPAValue:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "rdp"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 700
    :cond_67
    const-class v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 702
    :cond_6c
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    return-object v0
.end method

.method private createBannerAdListener(Lcom/google/android/gms/ads/AdView;Ljava/lang/String;)Lcom/google/android/gms/ads/AdListener;
    .registers 4

    .line 614
    new-instance v0, Lcom/ironsource/adapters/admob/AdMobAdapter$15;

    invoke-direct {v0, p0, p2, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter$15;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Ljava/lang/String;Lcom/google/android/gms/ads/AdView;)V

    return-object v0
.end method

.method private createInterstitialAdListener(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/ads/AdListener;
    .registers 3

    .line 441
    new-instance p1, Lcom/ironsource/adapters/admob/AdMobAdapter$10;

    invoke-direct {p1, p0, p2}, Lcom/ironsource/adapters/admob/AdMobAdapter$10;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Ljava/lang/String;)V

    return-object p1
.end method

.method private createRewardedAdCallback(Ljava/lang/String;)Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;
    .registers 3

    .line 256
    new-instance v0, Lcom/ironsource/adapters/admob/AdMobAdapter$5;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter$5;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Ljava/lang/String;)V

    return-object v0
.end method

.method private createRewardedAdLoadCallback(Ljava/lang/String;)Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
    .registers 3

    .line 307
    new-instance v0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter$6;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Ljava/lang/String;)V

    return-object v0
.end method

.method private getAdMobCoppaValue(Ljava/lang/String;)I
    .registers 2

    .line 778
    invoke-static {p1}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->getMetaDataBooleanValue(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private getAdMobEuValue(Ljava/lang/String;)I
    .registers 2

    .line 783
    invoke-static {p1}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->getMetaDataBooleanValue(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private getAdSize(Lcom/ironsource/mediationsdk/ISBannerSize;Z)Lcom/google/android/gms/ads/AdSize;
    .registers 9

    .line 706
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_6e

    goto :goto_42

    :sswitch_10
    const-string v1, "CUSTOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    const/4 v0, 0x4

    goto :goto_43

    :sswitch_1a
    const-string v1, "BANNER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    const/4 v0, 0x0

    goto :goto_43

    :sswitch_24
    const-string v1, "SMART"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    const/4 v0, 0x3

    goto :goto_43

    :sswitch_2e
    const-string v1, "LARGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    const/4 v0, 0x1

    goto :goto_43

    :sswitch_38
    const-string v1, "RECTANGLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    const/4 v0, 0x2

    goto :goto_43

    :cond_42
    :goto_42
    const/4 v0, -0x1

    :goto_43
    if-eqz v0, :cond_6b

    if-eq v0, v5, :cond_68

    if-eq v0, v4, :cond_65

    if-eq v0, v3, :cond_5d

    if-eq v0, v2, :cond_4f

    const/4 p1, 0x0

    return-object p1

    .line 720
    :cond_4f
    new-instance p2, Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getHeight()I

    move-result p1

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    return-object p2

    :cond_5d
    if-eqz p2, :cond_62

    .line 717
    sget-object p1, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    goto :goto_64

    :cond_62
    sget-object p1, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    :goto_64
    return-object p1

    .line 714
    :cond_65
    sget-object p1, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    return-object p1

    .line 711
    :cond_68
    sget-object p1, Lcom/google/android/gms/ads/AdSize;->LARGE_BANNER:Lcom/google/android/gms/ads/AdSize;

    return-object p1

    .line 708
    :cond_6b
    sget-object p1, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    return-object p1

    :sswitch_data_6e
    .sparse-switch
        -0x171242b1 -> :sswitch_38
        0x44dc31b -> :sswitch_2e
        0x4b59da9 -> :sswitch_24
        0x7458732c -> :sswitch_1a
        0x77297f71 -> :sswitch_10
    .end sparse-switch
.end method

.method public static getIntegrationData(Landroid/app/Activity;)Lcom/ironsource/mediationsdk/IntegrationData;
    .registers 3

    .line 128
    new-instance p0, Lcom/ironsource/mediationsdk/IntegrationData;

    const-string v0, "AdMob"

    const-string v1, "4.3.14"

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/IntegrationData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.google.android.gms.ads.AdActivity"

    .line 129
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IntegrationData;->activities:[Ljava/lang/String;

    return-object p0
.end method

.method private getInterstitialAd(Lorg/json/JSONObject;)Lcom/google/android/gms/ads/InterstitialAd;
    .registers 3

    const-string v0, "adUnitId"

    .line 727
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 728
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdIdToInterstitialAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_1e

    .line 732
    :cond_15
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdIdToInterstitialAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/InterstitialAd;

    return-object p1

    :cond_1e
    :goto_1e
    const/4 p1, 0x0

    return-object p1
.end method

.method private initSDK(Ljava/lang/String;)V
    .registers 4

    .line 157
    sget-object p1, Lcom/ironsource/adapters/admob/AdMobAdapter;->initCallbackListeners:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object p1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mDidInitSdk:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 159
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/ironsource/adapters/admob/AdMobAdapter$1;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/admob/AdMobAdapter$1;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    :cond_26
    return-void
.end method

.method private loadRewardedVideoAdFromAdmob(Ljava/lang/String;)V
    .registers 7

    .line 245
    new-instance v0, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdIdToRewardedVideoAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mRewardedVideoAdsAvailability:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-direct {p0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->createAdRequest()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    .line 249
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RVAdUnitId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 250
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->createRewardedAdLoadCallback(Ljava/lang/String;)Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    return-void
.end method

.method private setAdMobMetaDataValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 757
    invoke-static {}, Lcom/google/android/gms/ads/MobileAds;->getRequestConfiguration()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v0

    .line 759
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x51eef155

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1e

    const v2, 0x51eef380

    if-eq v1, v2, :cond_14

    goto :goto_28

    :cond_14
    const-string v1, "admob_tfua"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 p1, 0x1

    goto :goto_29

    :cond_1e
    const-string v1, "admob_tfcd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 p1, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    const/4 p1, -0x1

    :goto_29
    if-eqz p1, :cond_54

    if-eq p1, v3, :cond_2e

    goto :goto_79

    .line 767
    :cond_2e
    invoke-direct {p0, p2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->getAdMobEuValue(Ljava/lang/String;)I

    move-result p1

    .line 768
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "euValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 770
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration;->toBuilder()Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForUnderAgeOfConsent(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    goto :goto_79

    .line 761
    :cond_54
    invoke-direct {p0, p2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->getAdMobCoppaValue(Ljava/lang/String;)I

    move-result p1

    .line 762
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "coppaValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 764
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration;->toBuilder()Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForChildDirectedTreatment(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    .line 774
    :goto_79
    invoke-static {v0}, Lcom/google/android/gms/ads/MobileAds;->setRequestConfiguration(Lcom/google/android/gms/ads/RequestConfiguration;)V

    return-void
.end method

.method private setCCPAValue(Z)V
    .registers 5

    .line 752
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 753
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mCCPAValue:Ljava/lang/Boolean;

    return-void
.end method

.method public static startAdapter(Ljava/lang/String;)Lcom/ironsource/adapters/admob/AdMobAdapter;
    .registers 2

    .line 108
    new-instance v0, Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/admob/AdMobAdapter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public destroyBanner(Lorg/json/JSONObject;)V
    .registers 3

    .line 592
    new-instance v0, Lcom/ironsource/adapters/admob/AdMobAdapter$14;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter$14;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->postOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public fetchRewardedVideoForAutomaticLoad(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 4

    .line 205
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, ""

    invoke-virtual {p2, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 206
    new-instance p2, Lcom/ironsource/adapters/admob/AdMobAdapter$3;

    invoke-direct {p2, p0, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter$3;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;)V

    invoke-virtual {p0, p2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->postOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCoreSDKVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "19.4.0"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "4.3.14"

    return-object v0
.end method

.method public initBanners(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .registers 7

    const-string p1, "adUnitId"

    .line 510
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 511
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_18

    const-string p1, "AdMobAdapter loadBanner adUnitId is empty"

    const-string p2, "Banner"

    .line 512
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    .line 513
    invoke-interface {p4, p1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 516
    :cond_18
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adUnitId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 518
    new-instance p2, Lcom/ironsource/adapters/admob/AdMobAdapter$11;

    invoke-direct {p2, p0, p1, p4, p3}, Lcom/ironsource/adapters/admob/AdMobAdapter$11;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;Lorg/json/JSONObject;)V

    invoke-virtual {p0, p2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->postOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initInterstitial(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 7

    const-string p1, "adUnitId"

    .line 352
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 353
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_18

    const-string p1, "Missing params: \'adUnitId\' "

    const-string p2, "Interstitial"

    .line 354
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 358
    :cond_18
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adUnitId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 360
    new-instance p2, Lcom/ironsource/adapters/admob/AdMobAdapter$7;

    invoke-direct {p2, p0, p1, p4, p3}, Lcom/ironsource/adapters/admob/AdMobAdapter$7;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;Lorg/json/JSONObject;)V

    invoke-virtual {p0, p2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->postOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 7

    const-string p1, "adUnitId"

    .line 184
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 185
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adUnitId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2e

    const-string p1, "Missing params: \'adUnitId\' "

    const-string p2, "Rewarded Video"

    .line 187
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 191
    :cond_2e
    new-instance p2, Lcom/ironsource/adapters/admob/AdMobAdapter$2;

    invoke-direct {p2, p0, p1, p4, p3}, Lcom/ironsource/adapters/admob/AdMobAdapter$2;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;Lorg/json/JSONObject;)V

    invoke-virtual {p0, p2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->postOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final isInterstitialReady(Lorg/json/JSONObject;)Z
    .registers 3

    const-string v0, "adUnitId"

    .line 431
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 432
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialAdsAvailability:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 433
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialAdsAvailability:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_1b
    const/4 p1, 0x0

    return p1
.end method

.method public isRewardedVideoAvailable(Lorg/json/JSONObject;)Z
    .registers 3

    const-string v0, "adUnitId"

    .line 216
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 217
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mRewardedVideoAdsAvailability:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mRewardedVideoAdsAvailability:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method public loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .registers 11

    if-nez p1, :cond_a

    .line 534
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "banner == null"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void

    :cond_a
    const-string v0, "adUnitId"

    .line 538
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 540
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object p2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/AdapterUtils;->isLargeScreen(Landroid/app/Activity;)Z

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->getAdSize(Lcom/ironsource/mediationsdk/ISBannerSize;Z)Lcom/google/android/gms/ads/AdSize;

    move-result-object v4

    if-nez v4, :cond_2c

    const-string p1, "AdMob"

    .line 542
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->unsupportedBannerSize(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 546
    :cond_2c
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adUnitId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 547
    new-instance p2, Lcom/ironsource/adapters/admob/AdMobAdapter$12;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/adapters/admob/AdMobAdapter$12;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/google/android/gms/ads/AdSize;Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V

    invoke-virtual {p0, p2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->postOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 4

    .line 381
    new-instance v0, Lcom/ironsource/adapters/admob/AdMobAdapter$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/ironsource/adapters/admob/AdMobAdapter$8;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->postOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onNetworkInitCallbackFailed(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onNetworkInitCallbackLoadSuccess(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onNetworkInitCallbackSuccess()V
    .registers 4

    .line 790
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdUnitIdToInterstitialListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    .line 791
    invoke-interface {v1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitSuccess()V

    goto :goto_a

    .line 794
    :cond_1a
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdUnitIdToBannerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    .line 795
    invoke-interface {v1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerInitSuccess()V

    goto :goto_24

    .line 798
    :cond_34
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdUnitIdToRewardedVideoListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 799
    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdUnitIdToRewardedVideoListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    .line 800
    invoke-direct {p0, v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->loadRewardedVideoAdFromAdmob(Ljava/lang/String;)V

    goto :goto_3e

    :cond_56
    return-void
.end method

.method public reloadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .registers 6

    const-string p1, "adUnitId"

    .line 571
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 572
    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adUnitId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 573
    new-instance p3, Lcom/ironsource/adapters/admob/AdMobAdapter$13;

    invoke-direct {p3, p0, p2, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter$13;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/ironsource/adapters/admob/AdMobAdapter;->postOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAge(I)V
    .registers 6

    const/16 v0, 0xd

    if-ge p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    .line 141
    :goto_7
    invoke-static {}, Lcom/google/android/gms/ads/MobileAds;->getRequestConfiguration()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration;->toBuilder()Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForChildDirectedTreatment(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v0

    .line 144
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "coppaValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 146
    invoke-static {v0}, Lcom/google/android/gms/ads/MobileAds;->setRequestConfiguration(Lcom/google/android/gms/ads/RequestConfiguration;)V

    return-void
.end method

.method protected setConsent(Z)V
    .registers 5

    .line 736
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "consent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 737
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mConsent:Ljava/lang/Boolean;

    return-void
.end method

.method protected setMetaData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 742
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 744
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->isValidCCPAMetaData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 745
    invoke-static {p2}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->getMetaDataBooleanValue(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->setCCPAValue(Z)V

    goto :goto_3b

    .line 747
    :cond_2c
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->setAdMobMetaDataValue(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3b
    return-void
.end method

.method public showInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 4

    .line 410
    new-instance v0, Lcom/ironsource/adapters/admob/AdMobAdapter$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/ironsource/adapters/admob/AdMobAdapter$9;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->postOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showRewardedVideo(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 4

    .line 222
    new-instance v0, Lcom/ironsource/adapters/admob/AdMobAdapter$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/ironsource/adapters/admob/AdMobAdapter$4;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->postOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
