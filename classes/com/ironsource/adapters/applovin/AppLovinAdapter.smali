.class Lcom/ironsource/adapters/applovin/AppLovinAdapter;
.super Lcom/ironsource/mediationsdk/AbstractAdapter;
.source "AppLovinAdapter.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adapters/applovin/AppLovinAdapter$ALBannerListener;
    }
.end annotation


# static fields
.field private static final AGE_NOT_SET:I = -0x1

.field private static final AGE_RESTRICTION:I = 0x10

.field private static final GitHash:Ljava/lang/String; = "4bfe86891"

.field private static final META_DATA_APPLOVIN_AGE_RESTRICTION_KEY:Ljava/lang/String; = "AppLovin_AgeRestrictedUser"

.field private static final SDK_KEY:Ljava/lang/String; = "sdkKey"

.field private static final VERSION:Ljava/lang/String; = "4.3.16"

.field private static final ZONE_ID:Ljava/lang/String; = "zoneId"

.field private static ageRestrictionData:Ljava/lang/Boolean; = null

.field private static consentCollectingUserData:Ljava/lang/Boolean; = null

.field private static doNotSellCollectingUserData:Ljava/lang/Boolean; = null

.field private static initCallbackListeners:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mAge:I = -0x1

.field private static mAppLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

.field private static mDidInitSdkFinished:Ljava/lang/Boolean;

.field private static mDidInitSdkStarted:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private mZoneIdToAppLovinBannerListener:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/adapters/applovin/AppLovinAdapter$ALBannerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mZoneIdToBannerAd:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/applovin/adview/AppLovinAdView;",
            ">;"
        }
    .end annotation
.end field

.field private mZoneIdToBannerLayout:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/widget/FrameLayout$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field private mZoneIdToBannerSmashListener:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;",
            ">;"
        }
    .end annotation
.end field

.field private mZoneIdToInterstitialAd:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/applovin/sdk/AppLovinAd;",
            ">;"
        }
    .end annotation
.end field

.field private mZoneIdToInterstitialAdReadyStatus:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mZoneIdToInterstitialSmashListener:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;",
            ">;"
        }
    .end annotation
.end field

.field private mZoneIdToRewardedVideoAd:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/applovin/adview/AppLovinIncentivizedInterstitial;",
            ">;"
        }
    .end annotation
.end field

.field private mZoneIdToRewardedVideoSmashListener:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mDidInitSdkStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mDidInitSdkFinished:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 84
    sput-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->consentCollectingUserData:Ljava/lang/Boolean;

    .line 85
    sput-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->doNotSellCollectingUserData:Ljava/lang/Boolean;

    .line 86
    sput-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->ageRestrictionData:Ljava/lang/Boolean;

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->initCallbackListeners:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 100
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;-><init>(Ljava/lang/String;)V

    .line 101
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 104
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToAppLovinBannerListener:Ljava/util/concurrent/ConcurrentHashMap;

    .line 105
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToBannerSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    .line 106
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToBannerLayout:Ljava/util/concurrent/ConcurrentHashMap;

    .line 107
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToBannerAd:Ljava/util/concurrent/ConcurrentHashMap;

    .line 110
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToInterstitialAd:Ljava/util/concurrent/ConcurrentHashMap;

    .line 111
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToInterstitialSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    .line 112
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToInterstitialAdReadyStatus:Ljava/util/concurrent/ConcurrentHashMap;

    .line 116
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToRewardedVideoAd:Ljava/util/concurrent/ConcurrentHashMap;

    .line 117
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToRewardedVideoSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    .line 120
    sget-object p1, Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;->LOAD_WHILE_SHOW_BY_INSTANCE:Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mLWSSupportState:Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Boolean;
    .registers 1

    .line 55
    sget-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mDidInitSdkFinished:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 1

    .line 55
    sput-object p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mDidInitSdkFinished:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$100()Ljava/util/HashSet;
    .registers 1

    .line 55
    sget-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->initCallbackListeners:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Lcom/ironsource/mediationsdk/ISBannerSize;Lcom/applovin/sdk/AppLovinAdSize;Landroid/app/Activity;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 4

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->calcLayoutParams(Lcom/ironsource/mediationsdk/ISBannerSize;Lcom/applovin/sdk/AppLovinAdSize;Landroid/app/Activity;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100()Lcom/applovin/sdk/AppLovinSdk;
    .registers 1

    .line 55
    sget-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mAppLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToBannerAd:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToBannerLayout:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToAppLovinBannerListener:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToBannerSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Ljava/lang/Runnable;)V
    .registers 2

    .line 55
    invoke-virtual {p0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->postOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->initSdk(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Ljava/lang/String;)V
    .registers 2

    .line 55
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->loadRewardedVideo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;
    .registers 2

    .line 55
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getZoneId(Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/ironsource/adapters/applovin/AppLovinAdapter;I)Ljava/lang/String;
    .registers 2

    .line 55
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getErrorString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToRewardedVideoSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToInterstitialAd:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToInterstitialAdReadyStatus:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToInterstitialSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private calcLayoutParams(Lcom/ironsource/mediationsdk/ISBannerSize;Lcom/applovin/sdk/AppLovinAdSize;Landroid/app/Activity;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 6

    .line 851
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getDescription()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RECTANGLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 p1, 0x12c

    goto :goto_26

    .line 853
    :cond_f
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getDescription()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SMART"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    invoke-static {p3}, Lcom/ironsource/mediationsdk/AdapterUtils;->isLargeScreen(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_24

    const/16 p1, 0x2d8

    goto :goto_26

    :cond_24
    const/16 p1, 0x140

    .line 857
    :goto_26
    invoke-static {p3, p1}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/app/Activity;I)I

    move-result p1

    .line 858
    invoke-virtual {p2}, Lcom/applovin/sdk/AppLovinAdSize;->getHeight()I

    move-result p2

    invoke-static {p3, p2}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/app/Activity;I)I

    move-result p2

    .line 859
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x11

    invoke-direct {p3, p1, p2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object p3
.end method

.method private calculateBannerSize(Lcom/ironsource/mediationsdk/ISBannerSize;Z)Lcom/applovin/sdk/AppLovinAdSize;
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-nez p1, :cond_23

    .line 825
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " calculateLayoutParams - bannerSize is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-object v0

    .line 829
    :cond_23
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getDescription()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v4, :sswitch_data_94

    goto :goto_65

    :sswitch_33
    const-string v4, "CUSTOM"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    const/4 v2, 0x4

    goto :goto_66

    :sswitch_3d
    const-string v4, "BANNER"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    const/4 v2, 0x0

    goto :goto_66

    :sswitch_47
    const-string v4, "SMART"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    const/4 v2, 0x3

    goto :goto_66

    :sswitch_51
    const-string v4, "LARGE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    const/4 v2, 0x1

    goto :goto_66

    :sswitch_5b
    const-string v4, "RECTANGLE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    const/4 v2, 0x2

    goto :goto_66

    :cond_65
    :goto_65
    const/4 v2, -0x1

    :goto_66
    if-eqz v2, :cond_90

    if-eq v2, v7, :cond_90

    if-eq v2, v6, :cond_8d

    if-eq v2, v1, :cond_85

    if-eq v2, v5, :cond_71

    goto :goto_84

    .line 841
    :cond_71
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getHeight()I

    move-result p2

    const/16 v1, 0x28

    if-lt p2, v1, :cond_84

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getHeight()I

    move-result p1

    const/16 p2, 0x3c

    if-gt p1, p2, :cond_84

    .line 842
    sget-object p1, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    return-object p1

    :cond_84
    :goto_84
    return-object v0

    :cond_85
    if-eqz p2, :cond_8a

    .line 838
    sget-object p1, Lcom/applovin/sdk/AppLovinAdSize;->LEADER:Lcom/applovin/sdk/AppLovinAdSize;

    goto :goto_8c

    :cond_8a
    sget-object p1, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    :goto_8c
    return-object p1

    .line 835
    :cond_8d
    sget-object p1, Lcom/applovin/sdk/AppLovinAdSize;->MREC:Lcom/applovin/sdk/AppLovinAdSize;

    return-object p1

    .line 832
    :cond_90
    sget-object p1, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    return-object p1

    nop

    :sswitch_data_94
    .sparse-switch
        -0x171242b1 -> :sswitch_5b
        0x44dc31b -> :sswitch_51
        0x4b59da9 -> :sswitch_47
        0x7458732c -> :sswitch_3d
        0x77297f71 -> :sswitch_33
    .end sparse-switch
.end method

.method private createAdLoadListener(Ljava/lang/String;)Lcom/applovin/sdk/AppLovinAdLoadListener;
    .registers 3

    .line 491
    new-instance v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$7;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$7;-><init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Ljava/lang/String;)V

    return-object v0
.end method

.method private createAppLovinAdClickListener()Lcom/applovin/sdk/AppLovinAdClickListener;
    .registers 2

    .line 478
    new-instance v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$6;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$6;-><init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)V

    return-object v0
.end method

.method private createAppLovinAdDisplayListener()Lcom/applovin/sdk/AppLovinAdDisplayListener;
    .registers 2

    .line 455
    new-instance v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$5;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$5;-><init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)V

    return-object v0
.end method

.method private createAppLovinAdRewardListener()Lcom/applovin/sdk/AppLovinAdRewardListener;
    .registers 2

    .line 393
    new-instance v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$3;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$3;-><init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)V

    return-object v0
.end method

.method private createAppLovinAdVideoPlaybackListener()Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;
    .registers 2

    .line 429
    new-instance v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$4;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$4;-><init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)V

    return-object v0
.end method

.method private createInterstitialAdDialog()Lcom/applovin/adview/AppLovinInterstitialAdDialog;
    .registers 3

    .line 665
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 668
    sget-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mAppLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAd;->create(Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object v0

    .line 671
    new-instance v1, Lcom/ironsource/adapters/applovin/AppLovinAdapter$11;

    invoke-direct {v1, p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$11;-><init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)V

    invoke-interface {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    .line 683
    new-instance v1, Lcom/ironsource/adapters/applovin/AppLovinAdapter$12;

    invoke-direct {v1, p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$12;-><init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)V

    invoke-interface {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    .line 704
    new-instance v1, Lcom/ironsource/adapters/applovin/AppLovinAdapter$13;

    invoke-direct {v1, p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$13;-><init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)V

    invoke-interface {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdVideoPlaybackListener(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    return-object v0
.end method

.method public static getAdapterSDKVersion()Ljava/lang/String;
    .registers 1

    .line 132
    :try_start_0
    sget-object v0, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_3

    goto :goto_4

    :catch_3
    const/4 v0, 0x0

    :goto_4
    return-object v0
.end method

.method private getErrorString(I)Ljava/lang/String;
    .registers 3

    const/16 v0, -0x258

    if-eq p1, v0, :cond_3d

    const/16 v0, -0x1f4

    if-eq p1, v0, :cond_3a

    const/16 v0, -0x190

    if-eq p1, v0, :cond_37

    const/16 v0, -0x12c

    if-eq p1, v0, :cond_34

    const/4 v0, -0x6

    if-eq p1, v0, :cond_31

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2e

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_2b

    const/16 v0, -0x67

    if-eq p1, v0, :cond_28

    const/16 v0, -0x66

    if-eq p1, v0, :cond_25

    const-string p1, "Unknown error"

    return-object p1

    :cond_25
    const-string p1, "Ad fetch timeout"

    return-object p1

    :cond_28
    const-string p1, "No network available"

    return-object p1

    :cond_2b
    const-string p1, "No fill"

    return-object p1

    :cond_2e
    const-string p1, "Unspecified error"

    return-object p1

    :cond_31
    const-string p1, "Unable to render ad"

    return-object p1

    :cond_34
    const-string p1, "No ad pre-loaded"

    return-object p1

    :cond_37
    const-string p1, "Unknown server error"

    return-object p1

    :cond_3a
    const-string p1, "Server timeout"

    return-object p1

    :cond_3d
    const-string p1, "User closed video before reward"

    return-object p1
.end method

.method public static getIntegrationData(Landroid/app/Activity;)Lcom/ironsource/mediationsdk/IntegrationData;
    .registers 3

    .line 124
    new-instance p0, Lcom/ironsource/mediationsdk/IntegrationData;

    const-string v0, "AppLovin"

    const-string v1, "4.3.16"

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/IntegrationData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.applovin.adview.AppLovinInterstitialActivity"

    const-string v1, "com.applovin.sdk.AppLovinWebViewActivity"

    .line 125
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IntegrationData;->activities:[Ljava/lang/String;

    return-object p0
.end method

.method private getZoneId(Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;
    .registers 3

    .line 1025
    invoke-interface {p1}, Lcom/applovin/sdk/AppLovinAd;->getZoneId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Lcom/applovin/sdk/AppLovinAd;->getZoneId()Ljava/lang/String;

    move-result-object p1

    goto :goto_d

    :cond_b
    const-string p1, ""

    :goto_d
    return-object p1
.end method

.method private getZoneId(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 4

    const-string v0, "zoneId"

    .line 1021
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_13

    :cond_11
    const-string p1, ""

    :goto_13
    return-object p1
.end method

.method private initSdk(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 205
    sget-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mDidInitSdkStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 207
    sget v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mAge:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_12

    .line 208
    invoke-direct {p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->setAgeRestriction()V

    .line 211
    :cond_12
    new-instance v0, Lcom/applovin/sdk/AppLovinSdkSettings;

    invoke-direct {v0}, Lcom/applovin/sdk/AppLovinSdkSettings;-><init>()V

    .line 215
    :try_start_17
    invoke-virtual {p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->isAdaptersDebugEnabled()Z

    move-result v1
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodError; {:try_start_17 .. :try_end_1b} :catch_1b

    .line 220
    :catch_1b
    invoke-virtual {v0, v1}, Lcom/applovin/sdk/AppLovinSdkSettings;->setVerboseLogging(Z)V

    .line 222
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object p1

    sput-object p1, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mAppLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

    .line 224
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4d

    .line 225
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUserIdentifier to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 226
    sget-object p1, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mAppLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

    invoke-virtual {p1, p2}, Lcom/applovin/sdk/AppLovinSdk;->setUserIdentifier(Ljava/lang/String;)V

    .line 229
    :cond_4d
    sget-object p1, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->initCallbackListeners:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 232
    sget-object p1, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mAppLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

    new-instance p2, Lcom/ironsource/adapters/applovin/AppLovinAdapter$1;

    invoke-direct {p2, p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$1;-><init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)V

    invoke-virtual {p1, p2}, Lcom/applovin/sdk/AppLovinSdk;->initializeSdk(Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;)V

    .line 246
    sget-object p1, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->consentCollectingUserData:Ljava/lang/Boolean;

    if-eqz p1, :cond_6e

    .line 247
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->setConsent(Z)V

    .line 250
    :cond_6e
    sget-object p1, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->doNotSellCollectingUserData:Ljava/lang/Boolean;

    if-eqz p1, :cond_79

    .line 251
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->setCCPAValue(Z)V

    .line 254
    :cond_79
    sget-object p1, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->ageRestrictionData:Ljava/lang/Boolean;

    if-eqz p1, :cond_92

    .line 255
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->setAgeRestrictionValueFromMetaData(Z)V

    goto :goto_92

    .line 259
    :cond_85
    sget-object p1, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mDidInitSdkFinished:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_92

    .line 260
    sget-object p1, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->initCallbackListeners:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_92
    :goto_92
    return-void
.end method

.method public static isAgeRestrictionMetaData(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const-string v0, "AppLovin_AgeRestrictedUser"

    .line 184
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private loadRewardedVideo(Ljava/lang/String;)V
    .registers 5

    .line 329
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToRewardedVideoAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 334
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToRewardedVideoAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    goto :goto_3f

    .line 338
    :cond_27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 339
    sget-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mAppLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

    invoke-static {p1, v0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->create(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-result-object v0

    goto :goto_3a

    .line 341
    :cond_34
    sget-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mAppLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->create(Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-result-object v0

    .line 345
    :goto_3a
    iget-object v1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToRewardedVideoAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    :goto_3f
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->createAdLoadListener(Ljava/lang/String;)Lcom/applovin/sdk/AppLovinAdLoadListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->preload(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method private setAgeRestriction()V
    .registers 4

    .line 1029
    sget v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mAge:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/sdk/AppLovinPrivacySettings;->setIsAgeRestrictedUser(ZLandroid/content/Context;)V

    .line 1030
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "age restriction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/sdk/AppLovinPrivacySettings;->isAgeRestrictedUser(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method private setAgeRestrictionValueFromMetaData(Z)V
    .registers 5

    .line 195
    sget-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mDidInitSdkStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 196
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applovin/sdk/AppLovinPrivacySettings;->setIsAgeRestrictedUser(ZLandroid/content/Context;)V

    :cond_29
    return-void
.end method

.method private setCCPAValue(Z)V
    .registers 5

    .line 188
    sget-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mDidInitSdkStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 189
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applovin/sdk/AppLovinPrivacySettings;->setDoNotSell(ZLandroid/content/Context;)V

    :cond_29
    return-void
.end method

.method public static startAdapter(Ljava/lang/String;)Lcom/ironsource/adapters/applovin/AppLovinAdapter;
    .registers 2

    .line 96
    new-instance v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public destroyBanner(Lorg/json/JSONObject;)V
    .registers 3

    .line 889
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getZoneId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 890
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToBannerAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/adview/AppLovinAdView;

    if-eqz v0, :cond_11

    .line 892
    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->destroy()V

    .line 894
    :cond_11
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToBannerAd:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_18

    .line 895
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    return-void
.end method

.method public fetchRewardedVideoForAutomaticLoad(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 5

    .line 354
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getZoneId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 355
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 356
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->loadRewardedVideo(Ljava/lang/String;)V

    return-void
.end method

.method public getCoreSDKVersion()Ljava/lang/String;
    .registers 2

    .line 145
    sget-object v0, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "4.3.16"

    return-object v0
.end method

.method public initBanners(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .registers 8

    const-string p1, "sdkKey"

    .line 732
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 733
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string p1, "Missing params"

    const-string p2, "Banner"

    .line 734
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 739
    :cond_18
    invoke-direct {p0, p3}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getZoneId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p3

    .line 742
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToBannerSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p3, p4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 745
    new-instance p3, Lcom/ironsource/adapters/applovin/AppLovinAdapter$14;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$14;-><init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V

    invoke-virtual {p0, p3}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->postOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initInterstitial(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 8

    const-string p1, "sdkKey"

    .line 537
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 538
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 539
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "sdkKey is empty"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const-string p1, "initInterstitial empty sdkKey"

    const-string p2, "Interstitial"

    .line 540
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 545
    :cond_1f
    invoke-direct {p0, p3}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getZoneId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p3

    .line 548
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToInterstitialSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p3, p4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 551
    new-instance p3, Lcom/ironsource/adapters/applovin/AppLovinAdapter$8;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$8;-><init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    invoke-virtual {p0, p3}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->postOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 6

    if-nez p4, :cond_22

    .line 299
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getProviderName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " RV init failed: RewardedVideoSmashListener is empty"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x2

    invoke-virtual {p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void

    :cond_22
    const-string p1, "sdkKey"

    .line 303
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 304
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 p1, 0x0

    .line 305
    invoke-interface {p4, p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    return-void

    .line 309
    :cond_33
    invoke-direct {p0, p3}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getZoneId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p3

    .line 310
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToRewardedVideoSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p3, p4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object p4, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, ""

    invoke-virtual {p4, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 313
    new-instance p4, Lcom/ironsource/adapters/applovin/AppLovinAdapter$2;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$2;-><init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->postOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isInterstitialReady(Lorg/json/JSONObject;)Z
    .registers 3

    .line 721
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getZoneId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 722
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToInterstitialAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToInterstitialAdReadyStatus:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToInterstitialAdReadyStatus:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_24

    const/4 p1, 0x1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    return p1
.end method

.method public isRewardedVideoAvailable(Lorg/json/JSONObject;)Z
    .registers 3

    .line 523
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getZoneId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 524
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToRewardedVideoAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    if-eqz p1, :cond_16

    .line 525
    invoke-virtual {p1}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->isAdReadyToDisplay()Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method public loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .registers 12

    .line 764
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/mediationsdk/AdapterUtils;->isLargeScreen(Landroid/app/Activity;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->calculateBannerSize(Lcom/ironsource/mediationsdk/ISBannerSize;Z)Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v6

    if-nez v6, :cond_1e

    .line 766
    invoke-virtual {p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getProviderName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->unsupportedBannerSize(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 771
    :cond_1e
    invoke-direct {p0, p2}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getZoneId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    .line 772
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 774
    new-instance p2, Lcom/ironsource/adapters/applovin/AppLovinAdapter$15;

    move-object v2, p2

    move-object v3, p0

    move-object v5, p1

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$15;-><init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/applovin/sdk/AppLovinAdSize;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V

    invoke-virtual {p0, p2}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->postOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 6

    .line 570
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getZoneId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 571
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 574
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 576
    sget-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mAppLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object v0

    new-instance v1, Lcom/ironsource/adapters/applovin/AppLovinAdapter$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$9;-><init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    invoke-interface {v0, p1, v1}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAdForZoneId(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    goto :goto_3f

    .line 607
    :cond_2f
    sget-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mAppLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    new-instance v2, Lcom/ironsource/adapters/applovin/AppLovinAdapter$10;

    invoke-direct {v2, p0, p1, p2}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$10;-><init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    :goto_3f
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
    .registers 3

    .line 268
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToInterstitialSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

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

    .line 270
    invoke-interface {v1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitSuccess()V

    goto :goto_a

    .line 274
    :cond_1a
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToRewardedVideoSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 275
    invoke-direct {p0, v1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->loadRewardedVideo(Ljava/lang/String;)V

    goto :goto_24

    .line 279
    :cond_34
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToBannerSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    .line 280
    invoke-interface {v1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerInitSuccess()V

    goto :goto_3e

    :cond_4e
    return-void
.end method

.method public reloadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .registers 7

    .line 864
    invoke-direct {p0, p2}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getZoneId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 865
    iget-object p2, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToBannerAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/applovin/adview/AppLovinAdView;

    .line 866
    iget-object p3, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToAppLovinBannerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ironsource/adapters/applovin/AppLovinAdapter$ALBannerListener;

    .line 867
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    if-eqz p2, :cond_38

    if-nez p3, :cond_2f

    goto :goto_38

    .line 874
    :cond_2f
    new-instance v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$16;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$16;-><init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Ljava/lang/String;Lcom/applovin/adview/AppLovinAdView;Lcom/ironsource/adapters/applovin/AppLovinAdapter$ALBannerListener;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->postOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 870
    :cond_38
    :goto_38
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    if-nez p2, :cond_3f

    const-string p2, "adView is null"

    goto :goto_41

    :cond_3f
    const-string p2, "applovinListener"

    :goto_41
    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method public setAge(I)V
    .registers 2

    .line 159
    sput p1, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mAge:I

    return-void
.end method

.method protected setConsent(Z)V
    .registers 5

    .line 149
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->consentCollectingUserData:Ljava/lang/Boolean;

    .line 151
    sget-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mDidInitSdkStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 152
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "consent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applovin/sdk/AppLovinPrivacySettings;->setHasUserConsent(ZLandroid/content/Context;)V

    :cond_2f
    return-void
.end method

.method protected setMetaData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 164
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

    .line 166
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->isValidCCPAMetaData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 167
    invoke-static {p2}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->getMetaDataBooleanValue(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->doNotSellCollectingUserData:Ljava/lang/Boolean;

    .line 170
    :cond_2e
    sget-object v0, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;->META_DATA_VALUE_BOOLEAN:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    invoke-static {p2, v0}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->formatValueForType(Ljava/lang/String;Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;)Ljava/lang/String;

    move-result-object p2

    .line 172
    invoke-static {p1, p2}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->isAgeRestrictionMetaData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 173
    invoke-static {p2}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->getMetaDataBooleanValue(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->ageRestrictionData:Ljava/lang/Boolean;

    :cond_44
    return-void
.end method

.method public showInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 6

    .line 642
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getZoneId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 643
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 646
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToInterstitialAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/sdk/AppLovinAd;

    if-nez v0, :cond_2e

    const-string p1, "Interstitial"

    .line 650
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 655
    :cond_2e
    invoke-direct {p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->createInterstitialAdDialog()Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object p2

    .line 658
    invoke-interface {p2, v0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->showAndRender(Lcom/applovin/sdk/AppLovinAd;)V

    .line 661
    iget-object p2, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToInterstitialAdReadyStatus:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public showRewardedVideo(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 9

    .line 363
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getZoneId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 364
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToRewardedVideoAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    if-eqz v0, :cond_5b

    .line 370
    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->isAdReadyToDisplay()Z

    move-result p1

    if-nez p1, :cond_2c

    goto :goto_5b

    .line 378
    :cond_2c
    invoke-virtual {p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getDynamicUserId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3f

    .line 379
    sget-object p1, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mAppLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

    invoke-virtual {p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getDynamicUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/applovin/sdk/AppLovinSdk;->setUserIdentifier(Ljava/lang/String;)V

    .line 384
    :cond_3f
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v1

    .line 385
    invoke-direct {p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->createAppLovinAdRewardListener()Lcom/applovin/sdk/AppLovinAdRewardListener;

    move-result-object v2

    .line 386
    invoke-direct {p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->createAppLovinAdVideoPlaybackListener()Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    move-result-object v3

    .line 387
    invoke-direct {p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->createAppLovinAdDisplayListener()Lcom/applovin/sdk/AppLovinAdDisplayListener;

    move-result-object v4

    .line 388
    invoke-direct {p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->createAppLovinAdClickListener()Lcom/applovin/sdk/AppLovinAdClickListener;

    move-result-object v5

    .line 383
    invoke-virtual/range {v0 .. v5}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->show(Landroid/content/Context;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V

    return-void

    .line 371
    :cond_5b
    :goto_5b
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no ad to show - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_6c

    const-string v0, "ad is null"

    goto :goto_6e

    :cond_6c
    const-string v0, "ad not ready to display"

    :goto_6e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const-string p1, "Rewarded Video"

    .line 372
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    const/4 p1, 0x0

    .line 373
    invoke-interface {p2, p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    return-void
.end method
