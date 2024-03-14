.class Lcom/ironsource/adapters/adcolony/AdColonyAdapter;
.super Lcom/ironsource/mediationsdk/AbstractAdapter;
.source "AdColonyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adapters/adcolony/AdColonyAdapter$ResultListener;,
        Lcom/ironsource/adapters/adcolony/AdColonyAdapter$AdColonyBannerAdUnitListener;,
        Lcom/ironsource/adapters/adcolony/AdColonyAdapter$AdColonyInterstitialAdUnitListener;,
        Lcom/ironsource/adapters/adcolony/AdColonyAdapter$AdColonyRewardAdUnitListener;,
        Lcom/ironsource/adapters/adcolony/AdColonyAdapter$AdColonyRewardedVideoAdUnitListener;
    }
.end annotation


# static fields
.field private static final GitHash:Ljava/lang/String; = "688392873"

.field private static final VERSION:Ljava/lang/String; = "4.3.4"

.field private static mAdColonyOptions:Lcom/adcolony/sdk/AdColonyAppOptions;

.field private static mAlreadyInitiated:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final ALL_ZONE_IDS:Ljava/lang/String;

.field private final APP_ID:Ljava/lang/String;

.field private final ZONE_ID:Ljava/lang/String;

.field private mAdColonyInterstitialListener:Lcom/adcolony/sdk/AdColonyInterstitialListener;

.field private mAdColonyRewardListener:Lcom/adcolony/sdk/AdColonyRewardListener;

.field private mAdColonyRewardedVideoListener:Lcom/adcolony/sdk/AdColonyInterstitialListener;

.field private mZoneIdToBannerAdView:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/AdColonyAdView;",
            ">;"
        }
    .end annotation
.end field

.field private mZoneIdToBannerLayout:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/IronSourceBannerLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mZoneIdToBannerListener:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;",
            ">;"
        }
    .end annotation
.end field

.field private mZoneIdToIsListener:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;",
            ">;"
        }
    .end annotation
.end field

.field private mZoneIdToRvListener:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;",
            ">;"
        }
    .end annotation
.end field

.field private mZoneToAdMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/AdColonyInterstitial;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mAlreadyInitiated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    new-instance v0, Lcom/adcolony/sdk/AdColonyAppOptions;

    invoke-direct {v0}, Lcom/adcolony/sdk/AdColonyAppOptions;-><init>()V

    sput-object v0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mAdColonyOptions:Lcom/adcolony/sdk/AdColonyAppOptions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 96
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;-><init>(Ljava/lang/String;)V

    const-string p1, "appID"

    .line 71
    iput-object p1, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->APP_ID:Ljava/lang/String;

    const-string p1, "zoneId"

    .line 72
    iput-object p1, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->ZONE_ID:Ljava/lang/String;

    const-string p1, "zoneIds"

    .line 73
    iput-object p1, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->ALL_ZONE_IDS:Ljava/lang/String;

    .line 97
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, "ctor"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 100
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mZoneToAdMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 101
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mZoneIdToBannerAdView:Ljava/util/concurrent/ConcurrentHashMap;

    .line 104
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mZoneIdToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    .line 105
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mZoneIdToIsListener:Ljava/util/concurrent/ConcurrentHashMap;

    .line 106
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mZoneIdToBannerListener:Ljava/util/concurrent/ConcurrentHashMap;

    .line 109
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mZoneIdToBannerLayout:Ljava/util/concurrent/ConcurrentHashMap;

    .line 111
    sget-object p1, Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;->LOAD_WHILE_SHOW_BY_NETWORK:Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    iput-object p1, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mLWSSupportState:Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/adapters/adcolony/AdColonyAdapter;Ljava/lang/String;)V
    .registers 2

    .line 64
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->loadRewardedVideoInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ironsource/adapters/adcolony/AdColonyAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mZoneIdToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ironsource/adapters/adcolony/AdColonyAdapter;Lcom/ironsource/mediationsdk/ISBannerSize;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 2

    .line 64
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->getBannerLayoutParams(Lcom/ironsource/mediationsdk/ISBannerSize;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ironsource/adapters/adcolony/AdColonyAdapter;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->init(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/ironsource/adapters/adcolony/AdColonyAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mZoneIdToIsListener:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ironsource/adapters/adcolony/AdColonyAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mZoneIdToBannerListener:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ironsource/adapters/adcolony/AdColonyAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mZoneToAdMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ironsource/adapters/adcolony/AdColonyAdapter;)Lcom/adcolony/sdk/AdColonyInterstitialListener;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mAdColonyRewardedVideoListener:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ironsource/adapters/adcolony/AdColonyAdapter;)Lcom/adcolony/sdk/AdColonyInterstitialListener;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mAdColonyInterstitialListener:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ironsource/adapters/adcolony/AdColonyAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mZoneIdToBannerLayout:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ironsource/adapters/adcolony/AdColonyAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mZoneIdToBannerAdView:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private getBannerLayoutParams(Lcom/ironsource/mediationsdk/ISBannerSize;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 11

    .line 860
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 862
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v2

    .line 864
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v4, :sswitch_data_c0

    goto :goto_4f

    :sswitch_1e
    const-string v1, "CUSTOM"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    const/4 v1, 0x4

    goto :goto_50

    :sswitch_28
    const-string v4, "BANNER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    goto :goto_50

    :sswitch_31
    const-string v1, "SMART"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    const/4 v1, 0x3

    goto :goto_50

    :sswitch_3b
    const-string v1, "LARGE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    const/4 v1, 0x1

    goto :goto_50

    :sswitch_45
    const-string v1, "RECTANGLE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    const/4 v1, 0x2

    goto :goto_50

    :cond_4f
    :goto_4f
    const/4 v1, -0x1

    :goto_50
    const/16 v3, 0x32

    const/16 v4, 0x140

    if-eqz v1, :cond_ad

    if-eq v1, v8, :cond_ad

    if-eq v1, v7, :cond_9b

    if-eq v1, v6, :cond_75

    if-eq v1, v5, :cond_5f

    goto :goto_ba

    .line 880
    :cond_5f
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getWidth()I

    move-result v1

    invoke-static {v2, v1}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/app/Activity;I)I

    move-result v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getHeight()I

    move-result p1

    invoke-static {v2, p1}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/app/Activity;I)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_ba

    .line 873
    :cond_75
    invoke-static {v2}, Lcom/ironsource/mediationsdk/AdapterUtils;->isLargeScreen(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_8d

    .line 874
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p1, 0x2d8

    invoke-static {v2, p1}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/app/Activity;I)I

    move-result p1

    const/16 v1, 0x5a

    invoke-static {v2, v1}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/app/Activity;I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_ba

    .line 876
    :cond_8d
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v2, v4}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/app/Activity;I)I

    move-result p1

    invoke-static {v2, v3}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/app/Activity;I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_ba

    .line 870
    :cond_9b
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p1, 0x12c

    invoke-static {v2, p1}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/app/Activity;I)I

    move-result p1

    const/16 v1, 0xfa

    invoke-static {v2, v1}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/app/Activity;I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_ba

    .line 867
    :cond_ad
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v2, v4}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/app/Activity;I)I

    move-result p1

    invoke-static {v2, v3}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/app/Activity;I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :goto_ba
    const/16 p1, 0x11

    .line 885
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-object v0

    nop

    :sswitch_data_c0
    .sparse-switch
        -0x171242b1 -> :sswitch_45
        0x44dc31b -> :sswitch_3b
        0x4b59da9 -> :sswitch_31
        0x7458732c -> :sswitch_28
        0x77297f71 -> :sswitch_1e
    .end sparse-switch
.end method

.method private getBannerListener()Lcom/adcolony/sdk/AdColonyAdViewListener;
    .registers 2

    .line 783
    new-instance v0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$AdColonyBannerAdUnitListener;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$AdColonyBannerAdUnitListener;-><init>(Lcom/ironsource/adapters/adcolony/AdColonyAdapter;)V

    return-object v0
.end method

.method private getBannerSize(Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/adcolony/sdk/AdColonyAdSize;
    .registers 8

    .line 844
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_78

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
    if-eqz v0, :cond_74

    if-eq v0, v5, :cond_74

    if-eq v0, v4, :cond_71

    if-eq v0, v3, :cond_5d

    if-eq v0, v2, :cond_4f

    const/4 p1, 0x0

    return-object p1

    .line 853
    :cond_4f
    new-instance v0, Lcom/adcolony/sdk/AdColonyAdSize;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/adcolony/sdk/AdColonyAdSize;-><init>(II)V

    return-object v0

    .line 851
    :cond_5d
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/mediationsdk/AdapterUtils;->isLargeScreen(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_6e

    sget-object p1, Lcom/adcolony/sdk/AdColonyAdSize;->LEADERBOARD:Lcom/adcolony/sdk/AdColonyAdSize;

    goto :goto_70

    :cond_6e
    sget-object p1, Lcom/adcolony/sdk/AdColonyAdSize;->BANNER:Lcom/adcolony/sdk/AdColonyAdSize;

    :goto_70
    return-object p1

    .line 849
    :cond_71
    sget-object p1, Lcom/adcolony/sdk/AdColonyAdSize;->MEDIUM_RECTANGLE:Lcom/adcolony/sdk/AdColonyAdSize;

    return-object p1

    .line 847
    :cond_74
    sget-object p1, Lcom/adcolony/sdk/AdColonyAdSize;->BANNER:Lcom/adcolony/sdk/AdColonyAdSize;

    return-object p1

    nop

    :sswitch_data_78
    .sparse-switch
        -0x171242b1 -> :sswitch_38
        0x44dc31b -> :sswitch_2e
        0x4b59da9 -> :sswitch_24
        0x7458732c -> :sswitch_1a
        0x77297f71 -> :sswitch_10
    .end sparse-switch
.end method

.method private getBiddingData()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 816
    invoke-static {}, Lcom/adcolony/sdk/AdColony;->collectSignals()Ljava/lang/String;

    move-result-object v0

    .line 817
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_d

    :cond_b
    const-string v0, ""

    .line 818
    :goto_d
    invoke-virtual {p0}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->getCoreSDKVersion()Ljava/lang/String;

    move-result-object v1

    .line 820
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "token = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 821
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sdkVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 823
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "sdkVersion"

    .line 824
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "token"

    .line 825
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public static getIntegrationData(Landroid/app/Activity;)Lcom/ironsource/mediationsdk/IntegrationData;
    .registers 3

    .line 115
    new-instance p0, Lcom/ironsource/mediationsdk/IntegrationData;

    const-string v0, "AdColony"

    const-string v1, "4.3.4"

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/IntegrationData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.adcolony.sdk.AdColonyInterstitialActivity"

    const-string v1, "com.adcolony.sdk.AdColonyAdViewActivity"

    .line 116
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IntegrationData;->activities:[Ljava/lang/String;

    return-object p0
.end method

.method private getInterstitialListener()Lcom/adcolony/sdk/AdColonyInterstitialListener;
    .registers 2

    .line 775
    iget-object v0, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mAdColonyInterstitialListener:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    if-nez v0, :cond_b

    .line 776
    new-instance v0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$AdColonyInterstitialAdUnitListener;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$AdColonyInterstitialAdUnitListener;-><init>(Lcom/ironsource/adapters/adcolony/AdColonyAdapter;)V

    iput-object v0, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mAdColonyInterstitialListener:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    .line 779
    :cond_b
    iget-object v0, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mAdColonyInterstitialListener:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    return-object v0
.end method

.method private getRewardListener()Lcom/adcolony/sdk/AdColonyRewardListener;
    .registers 2

    .line 767
    iget-object v0, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mAdColonyRewardListener:Lcom/adcolony/sdk/AdColonyRewardListener;

    if-nez v0, :cond_b

    .line 768
    new-instance v0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$AdColonyRewardAdUnitListener;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$AdColonyRewardAdUnitListener;-><init>(Lcom/ironsource/adapters/adcolony/AdColonyAdapter;)V

    iput-object v0, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mAdColonyRewardListener:Lcom/adcolony/sdk/AdColonyRewardListener;

    .line 771
    :cond_b
    iget-object v0, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mAdColonyRewardListener:Lcom/adcolony/sdk/AdColonyRewardListener;

    return-object v0
.end method

.method private getRewardedVideoListener()Lcom/adcolony/sdk/AdColonyInterstitialListener;
    .registers 2

    .line 760
    iget-object v0, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mAdColonyRewardedVideoListener:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    if-nez v0, :cond_b

    .line 761
    new-instance v0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$AdColonyRewardedVideoAdUnitListener;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$AdColonyRewardedVideoAdUnitListener;-><init>(Lcom/ironsource/adapters/adcolony/AdColonyAdapter;)V

    iput-object v0, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mAdColonyRewardedVideoListener:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    .line 763
    :cond_b
    iget-object v0, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mAdColonyRewardedVideoListener:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    return-object v0
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7

    .line 146
    sget-object v0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mAlreadyInitiated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 147
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 149
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUserID to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 150
    sget-object v0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mAdColonyOptions:Lcom/adcolony/sdk/AdColonyAppOptions;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/AdColonyAppOptions;->setUserID(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;

    .line 152
    :cond_41
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object p1

    sget-object v0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mAdColonyOptions:Lcom/adcolony/sdk/AdColonyAppOptions;

    invoke-static {p1, v0, p2, p3}, Lcom/adcolony/sdk/AdColony;->configure(Landroid/app/Activity;Lcom/adcolony/sdk/AdColonyAppOptions;Ljava/lang/String;[Ljava/lang/String;)Z

    :cond_4e
    return-void
.end method

.method private initInterstitialInternal(Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 6

    .line 323
    new-instance p1, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$4;

    invoke-direct {p1, p0, p4, p5, p2}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$4;-><init>(Lcom/ironsource/adapters/adcolony/AdColonyAdapter;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;Ljava/lang/String;)V

    const-string p2, "Rewarded Video"

    invoke-direct {p0, p4, p2, p1}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->validateInitParams(Lorg/json/JSONObject;Ljava/lang/String;Lcom/ironsource/adapters/adcolony/AdColonyAdapter$ResultListener;)V

    return-void
.end method

.method private initRewardedVideoInternal(Lorg/json/JSONObject;Ljava/lang/String;ZLcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;Lcom/ironsource/adapters/adcolony/AdColonyAdapter$ResultListener;)V
    .registers 12

    .line 198
    new-instance p3, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$3;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$3;-><init>(Lcom/ironsource/adapters/adcolony/AdColonyAdapter;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;Ljava/lang/String;Lcom/ironsource/adapters/adcolony/AdColonyAdapter$ResultListener;)V

    const-string p2, "Rewarded Video"

    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->validateInitParams(Lorg/json/JSONObject;Ljava/lang/String;Lcom/ironsource/adapters/adcolony/AdColonyAdapter$ResultListener;)V

    return-void
.end method

.method private isBannerSizeSupported(Lcom/ironsource/mediationsdk/ISBannerSize;)Z
    .registers 8

    .line 831
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_50

    goto :goto_43

    :sswitch_11
    const-string v0, "CUSTOM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    const/4 p1, 0x4

    goto :goto_44

    :sswitch_1b
    const-string v0, "BANNER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    const/4 p1, 0x0

    goto :goto_44

    :sswitch_25
    const-string v0, "SMART"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    const/4 p1, 0x3

    goto :goto_44

    :sswitch_2f
    const-string v0, "LARGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    const/4 p1, 0x1

    goto :goto_44

    :sswitch_39
    const-string v0, "RECTANGLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    const/4 p1, 0x2

    goto :goto_44

    :cond_43
    :goto_43
    const/4 p1, -0x1

    :goto_44
    if-eqz p1, :cond_4f

    if-eq p1, v5, :cond_4f

    if-eq p1, v4, :cond_4f

    if-eq p1, v3, :cond_4f

    if-eq p1, v2, :cond_4f

    return v1

    :cond_4f
    return v5

    :sswitch_data_50
    .sparse-switch
        -0x171242b1 -> :sswitch_39
        0x44dc31b -> :sswitch_2f
        0x4b59da9 -> :sswitch_25
        0x7458732c -> :sswitch_1b
        0x77297f71 -> :sswitch_11
    .end sparse-switch
.end method

.method private loadInterstitialInternal(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 6

    :try_start_0
    const-string v0, "zoneId"

    .line 368
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 369
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mZoneToAdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyInterstitial;

    if-eqz v0, :cond_2e

    .line 371
    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->isExpired()Z

    move-result v1

    if-nez v1, :cond_2e

    const/4 v1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    :goto_2f
    if-eqz v1, :cond_35

    .line 374
    invoke-interface {p2}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdReady()V

    return-void

    :cond_35
    if-eqz v0, :cond_3d

    .line 378
    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 379
    :cond_3d
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "requestInterstitial"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 380
    invoke-direct {p0}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->getInterstitialListener()Lcom/adcolony/sdk/AdColonyInterstitialListener;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/adcolony/sdk/AdColony;->requestInterstitial(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;)Z
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4b} :catch_4c

    goto :goto_55

    :catch_4c
    const-string p1, "Interstitial"

    .line 383
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_55
    :goto_55
    return-void
.end method

.method private loadInterstitialInternalForBidding(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;Ljava/lang/String;)V
    .registers 7

    :try_start_0
    const-string v0, "zoneId"

    .line 389
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 390
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 392
    new-instance v0, Lcom/adcolony/sdk/AdColonyAdOptions;

    invoke-direct {v0}, Lcom/adcolony/sdk/AdColonyAdOptions;-><init>()V

    const-string v1, "adm"

    invoke-virtual {v0, v1, p3}, Lcom/adcolony/sdk/AdColonyAdOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAdOptions;

    move-result-object p3

    .line 393
    invoke-direct {p0}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->getInterstitialListener()Lcom/adcolony/sdk/AdColonyInterstitialListener;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lcom/adcolony/sdk/AdColony;->requestInterstitial(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;Lcom/adcolony/sdk/AdColonyAdOptions;)Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    goto :goto_38

    :catch_2f
    const-string p1, "Interstitial"

    .line 395
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_38
    return-void
.end method

.method private loadRewardedVideoInternal(Ljava/lang/String;)V
    .registers 5

    .line 242
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rvZoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mZoneToAdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyInterstitial;

    if-eqz v0, :cond_4c

    .line 246
    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_27

    goto :goto_4c

    :cond_27
    if-eqz v0, :cond_67

    .line 249
    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->isExpired()Z

    move-result p1

    if-nez p1, :cond_67

    iget-object p1, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mZoneIdToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->getZoneID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_67

    .line 250
    iget-object p1, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mZoneIdToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->getZoneID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_67

    .line 247
    :cond_4c
    :goto_4c
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 248
    invoke-direct {p0}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->getRewardedVideoListener()Lcom/adcolony/sdk/AdColonyInterstitialListener;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/adcolony/sdk/AdColony;->requestInterstitial(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;)Z

    :cond_67
    :goto_67
    return-void
.end method

.method private loadRewardedVideoInternalForBidding(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 255
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rvZoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 257
    new-instance v0, Lcom/adcolony/sdk/AdColonyAdOptions;

    invoke-direct {v0}, Lcom/adcolony/sdk/AdColonyAdOptions;-><init>()V

    const-string v1, "adm"

    invoke-virtual {v0, v1, p2}, Lcom/adcolony/sdk/AdColonyAdOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAdOptions;

    move-result-object p2

    .line 258
    invoke-direct {p0}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->getRewardedVideoListener()Lcom/adcolony/sdk/AdColonyInterstitialListener;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/adcolony/sdk/AdColony;->requestInterstitial(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;Lcom/adcolony/sdk/AdColonyAdOptions;)Z

    return-void
.end method

.method public static startAdapter(Ljava/lang/String;)Lcom/ironsource/adapters/adcolony/AdColonyAdapter;
    .registers 2

    .line 92
    new-instance v0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private validateInitParams(Lorg/json/JSONObject;Ljava/lang/String;Lcom/ironsource/adapters/adcolony/AdColonyAdapter$ResultListener;)V
    .registers 7

    .line 787
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const-string v0, "appID"

    .line 789
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "zoneId"

    .line 790
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "zoneIds"

    .line 791
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 793
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 794
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, "error - missing param = appID"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const-string p1, "missing param = appID"

    .line 795
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$ResultListener;->onFail(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 799
    :cond_30
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 800
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, "error - missing param = zoneId"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const-string p1, "missing param = zoneId"

    .line 801
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$ResultListener;->onFail(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 805
    :cond_47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 806
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, "error - missing param = zoneIds"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const-string p1, "missing param = zoneIds"

    .line 807
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$ResultListener;->onFail(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 812
    :cond_5e
    invoke-interface {p3}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$ResultListener;->onSuccess()V

    return-void
.end method


# virtual methods
.method public destroyBanner(Lorg/json/JSONObject;)V
    .registers 5

    const-string v0, "zoneId"

    .line 524
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 525
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mZoneIdToBannerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    iget-object v0, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mZoneIdToBannerLayout:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    iget-object v0, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mZoneIdToBannerAdView:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyAdView;

    if-eqz v0, :cond_38

    .line 534
    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyAdView;->destroy()Z

    .line 537
    iget-object v0, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mZoneIdToBannerAdView:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    return-void
.end method

.method public fetchRewardedVideoForAutomaticLoad(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 3

    const-string p2, "zoneId"

    .line 238
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->loadRewardedVideoInternal(Ljava/lang/String;)V

    return-void
.end method

.method public getCoreSDKVersion()Ljava/lang/String;
    .registers 2

    .line 130
    invoke-static {}, Lcom/adcolony/sdk/AdColony;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterstitialBiddingData(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 305
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 306
    invoke-direct {p0}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->getBiddingData()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getRewardedVideoBiddingData(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 159
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 160
    invoke-direct {p0}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->getBiddingData()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "4.3.4"

    return-object v0
.end method

.method public initBanners(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .registers 5

    .line 433
    new-instance p1, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$5;

    invoke-direct {p1, p0, p3, p4, p2}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$5;-><init>(Lcom/ironsource/adapters/adcolony/AdColonyAdapter;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;Ljava/lang/String;)V

    const-string p2, "Rewarded Video"

    invoke-direct {p0, p3, p2, p1}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->validateInitParams(Lorg/json/JSONObject;Ljava/lang/String;Lcom/ironsource/adapters/adcolony/AdColonyAdapter$ResultListener;)V

    return-void
.end method

.method public initInterstitial(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 13

    .line 317
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    .line 318
    invoke-direct/range {v2 .. v7}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->initInterstitialInternal(Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    return-void
.end method

.method public initInterstitialForBidding(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 13

    .line 311
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/4 v5, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    .line 312
    invoke-direct/range {v2 .. v7}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->initInterstitialInternal(Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    return-void
.end method

.method public initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 12

    .line 181
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 182
    new-instance v6, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$2;

    invoke-direct {v6, p0, p3, p4}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$2;-><init>(Lcom/ironsource/adapters/adcolony/AdColonyAdapter;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->initRewardedVideoInternal(Lorg/json/JSONObject;Ljava/lang/String;ZLcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;Lcom/ironsource/adapters/adcolony/AdColonyAdapter$ResultListener;)V

    return-void
.end method

.method public initRewardedVideoForBidding(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 12

    .line 165
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 166
    new-instance v6, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$1;

    invoke-direct {v6, p0, p4}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$1;-><init>(Lcom/ironsource/adapters/adcolony/AdColonyAdapter;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->initRewardedVideoInternal(Lorg/json/JSONObject;Ljava/lang/String;ZLcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;Lcom/ironsource/adapters/adcolony/AdColonyAdapter$ResultListener;)V

    return-void
.end method

.method public isInterstitialReady(Lorg/json/JSONObject;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "zoneId"

    .line 421
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 422
    iget-object v1, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mZoneToAdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/adcolony/sdk/AdColonyInterstitial;

    if-eqz p1, :cond_18

    .line 423
    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyInterstitial;->isExpired()Z

    move-result p1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_18

    if-nez p1, :cond_18

    const/4 v0, 0x1

    :catch_18
    :cond_18
    return v0
.end method

.method public isRewardedVideoAvailable(Lorg/json/JSONObject;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "zoneId"

    .line 286
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 287
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    return v0

    .line 291
    :cond_e
    iget-object v1, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mZoneToAdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_17

    return v0

    .line 295
    :cond_17
    iget-object v1, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mZoneToAdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyInterstitial;->isExpired()Z

    move-result p1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_26

    xor-int/lit8 p1, p1, 0x1

    return p1

    :catch_26
    return v0
.end method

.method public loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .registers 7

    :try_start_0
    const-string v0, "zoneId"

    .line 464
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 466
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 467
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, "error - missing param zoneId"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const-string p1, "Banner"

    .line 468
    invoke-virtual {p0}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "missing param = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 473
    :cond_32
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->isBannerSizeSupported(Lcom/ironsource/mediationsdk/ISBannerSize;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 474
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadBanner - size not supported, size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p0}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->getProviderName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->unsupportedBannerSize(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 478
    :cond_66
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mZoneIdToBannerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    iget-object p3, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mZoneIdToBannerLayout:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->getBannerSize(Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/adcolony/sdk/AdColonyAdSize;

    move-result-object p1

    .line 490
    invoke-direct {p0}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->getBannerListener()Lcom/adcolony/sdk/AdColonyAdViewListener;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/adcolony/sdk/AdColony;->requestAdView(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyAdViewListener;Lcom/adcolony/sdk/AdColonyAdSize;)Z
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_95} :catch_96

    goto :goto_9a

    :catch_96
    move-exception p1

    .line 493
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_9a
    return-void
.end method

.method public loadInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 5

    .line 362
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 363
    invoke-direct {p0, p1, p2}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->loadInterstitialInternal(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    return-void
.end method

.method public loadInterstitialForBidding(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;Ljava/lang/String;)V
    .registers 6

    .line 356
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 357
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->loadInterstitialInternalForBidding(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;Ljava/lang/String;)V

    return-void
.end method

.method public loadRewardedVideoForBidding(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;Ljava/lang/String;)V
    .registers 4

    const-string p2, "zoneId"

    .line 233
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->loadRewardedVideoInternalForBidding(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reloadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .registers 6

    const-string p1, "zoneId"

    .line 500
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 501
    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 503
    iget-object p3, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mZoneIdToBannerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    if-eqz p3, :cond_70

    .line 506
    iget-object v0, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mZoneIdToBannerLayout:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-eqz v0, :cond_3b

    .line 507
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v1

    if-nez v1, :cond_37

    goto :goto_3b

    .line 514
    :cond_37
    invoke-virtual {p0, v0, p2, p3}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V

    goto :goto_86

    .line 508
    :cond_3b
    :goto_3b
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error - missing data banner layout for zoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p0}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->getProviderName()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "missing param = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Banner"

    invoke-static {v0, p2, p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 517
    :cond_70
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error - missing listener for zoneId = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    :goto_86
    return-void
.end method

.method protected setConsent(Z)V
    .registers 5

    .line 134
    sget-object v0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mAdColonyOptions:Lcom/adcolony/sdk/AdColonyAppOptions;

    if-eqz p1, :cond_7

    const-string v1, "1"

    goto :goto_9

    :cond_7
    const-string v1, "0"

    :goto_9
    const-string v2, "GDPR"

    invoke-virtual {v0, v2, v1}, Lcom/adcolony/sdk/AdColonyAppOptions;->setPrivacyConsentString(Ljava/lang/String;Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;

    .line 135
    sget-object v0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mAdColonyOptions:Lcom/adcolony/sdk/AdColonyAppOptions;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/adcolony/sdk/AdColonyAppOptions;->setPrivacyFrameworkRequired(Ljava/lang/String;Z)Lcom/adcolony/sdk/AdColonyAppOptions;

    .line 137
    sget-object v0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mAlreadyInitiated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 138
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "consent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 139
    sget-object p1, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mAdColonyOptions:Lcom/adcolony/sdk/AdColonyAppOptions;

    invoke-static {p1}, Lcom/adcolony/sdk/AdColony;->setAppOptions(Lcom/adcolony/sdk/AdColonyAppOptions;)Z

    :cond_37
    return-void
.end method

.method public shouldBindBannerViewOnReload()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public showInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 7

    const-string v0, "Interstitial"

    :try_start_2
    const-string v1, "zoneId"

    .line 402
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 403
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 404
    iget-object v1, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mZoneToAdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/adcolony/sdk/AdColonyInterstitial;

    if-eqz p1, :cond_39

    .line 406
    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyInterstitial;->isExpired()Z

    move-result v1

    if-nez v1, :cond_39

    .line 407
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v2, "show"

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyInterstitial;->show()Z

    goto :goto_4c

    .line 410
    :cond_39
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_40} :catch_41

    goto :goto_4c

    :catch_41
    move-exception p1

    .line 413
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 414
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_4c
    return-void
.end method

.method public showRewardedVideo(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 7

    const-string v0, "Rewarded Video"

    :try_start_2
    const-string v1, "zoneId"

    .line 264
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 265
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mZoneToAdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/adcolony/sdk/AdColonyInterstitial;

    if-eqz p1, :cond_40

    .line 268
    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyInterstitial;->isExpired()Z

    move-result v1

    if-nez v1, :cond_40

    .line 269
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v2, "show"

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 271
    invoke-direct {p0}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->getRewardListener()Lcom/adcolony/sdk/AdColonyRewardListener;

    move-result-object v1

    invoke-static {v1}, Lcom/adcolony/sdk/AdColony;->setRewardListener(Lcom/adcolony/sdk/AdColonyRewardListener;)Z

    .line 272
    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyInterstitial;->show()Z

    goto :goto_4f

    .line 274
    :cond_40
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_47} :catch_48

    goto :goto_4f

    .line 277
    :catch_48
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_4f
    const/4 p1, 0x0

    .line 280
    invoke-interface {p2, p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    return-void
.end method
