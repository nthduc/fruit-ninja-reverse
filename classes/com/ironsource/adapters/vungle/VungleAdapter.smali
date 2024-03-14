.class Lcom/ironsource/adapters/vungle/VungleAdapter;
.super Lcom/ironsource/mediationsdk/AbstractAdapter;
.source "VungleAdapter.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;,
        Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;,
        Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;
    }
.end annotation


# static fields
.field private static final APP_ID:Ljava/lang/String; = "AppID"

.field private static final CONSENT_MESSAGE_VERSION:Ljava/lang/String; = "1.0.0"

.field private static final GitHash:Ljava/lang/String; = "8f275f100"

.field private static final PLACEMENT_ID:Ljava/lang/String; = "PlacementId"

.field private static final VERSION:Ljava/lang/String; = "4.3.3"

.field private static initCallbackListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mCCPA:Ljava/lang/Boolean;

.field private static mInitCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mInitState:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

.field private static mInitiatedAdUnits:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsConsent:Ljava/lang/Boolean;


# instance fields
.field private mPlacementIdToBannerAd:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/vungle/warren/VungleBanner;",
            ">;"
        }
    .end annotation
.end field

.field private mPlacementIdToBannerLayout:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/IronSourceBannerLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mPlacementIdToBannerRectangleAd:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/vungle/warren/VungleNativeAd;",
            ">;"
        }
    .end annotation
.end field

.field private mPlacementIdToBannerSmashListener:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPlacementIdToBannerState:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;",
            ">;"
        }
    .end annotation
.end field

.field private mPlacementIdToInterstitialSmashListener:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPlacementIdToRewardedVideoSmashListener:Ljava/util/concurrent/ConcurrentHashMap;
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
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->NOT_INIT:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    sput-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitState:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    const/4 v0, 0x0

    .line 68
    sput-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mIsConsent:Ljava/lang/Boolean;

    .line 69
    sput-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mCCPA:Ljava/lang/Boolean;

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter;->initCallbackListeners:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 95
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;-><init>(Ljava/lang/String;)V

    .line 97
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mPlacementIdToRewardedVideoSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    .line 98
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mPlacementIdToInterstitialSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    .line 99
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mPlacementIdToBannerSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    .line 100
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mPlacementIdToBannerLayout:Ljava/util/concurrent/ConcurrentHashMap;

    .line 101
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mPlacementIdToBannerAd:Ljava/util/concurrent/ConcurrentHashMap;

    .line 102
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mPlacementIdToBannerRectangleAd:Ljava/util/concurrent/ConcurrentHashMap;

    .line 103
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mPlacementIdToBannerState:Ljava/util/concurrent/ConcurrentHashMap;

    .line 105
    sget-object p1, Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;->LOAD_WHILE_SHOW_BY_NETWORK:Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    iput-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mLWSSupportState:Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/vungle/warren/AdConfig$AdSize;
    .registers 2

    .line 46
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/vungle/VungleAdapter;->getBannerSize(Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/ironsource/adapters/vungle/VungleAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mPlacementIdToBannerRectangleAd:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ironsource/adapters/vungle/VungleAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mPlacementIdToBannerAd:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ironsource/adapters/vungle/VungleAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mPlacementIdToBannerLayout:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)Lcom/vungle/warren/PlayAdCallback;
    .registers 2

    .line 46
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/vungle/VungleAdapter;->getBannerPlayAdCallback(Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)Lcom/vungle/warren/PlayAdCallback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/ISBannerSize;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 2

    .line 46
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/vungle/VungleAdapter;->getBannerLayoutParams(Lcom/ironsource/mediationsdk/ISBannerSize;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;)V
    .registers 2

    .line 46
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/vungle/VungleAdapter;->setInitState(Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;)V

    return-void
.end method

.method static synthetic access$700()Ljava/util/HashSet;
    .registers 1

    .line 46
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter;->initCallbackListeners:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$800(Lcom/ironsource/adapters/vungle/VungleAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mPlacementIdToRewardedVideoSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private addInitiatedAdUnit(Ljava/lang/String;)V
    .registers 3

    .line 742
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitiatedAdUnits:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 743
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitiatedAdUnits:Ljava/util/Set;

    .line 745
    :cond_b
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitiatedAdUnits:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getAdapterSDKVersion()Ljava/lang/String;
    .registers 1

    const-string v0, "6.7.1"

    return-object v0
.end method

.method private getBannerLayoutParams(Lcom/ironsource/mediationsdk/ISBannerSize;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 9

    .line 946
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 948
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v2

    .line 950
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v3, :sswitch_data_9c

    goto :goto_44

    :sswitch_1d
    const-string v3, "BANNER"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_44

    goto :goto_45

    :sswitch_26
    const-string v1, "SMART"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_44

    const/4 v1, 0x3

    goto :goto_45

    :sswitch_30
    const-string v1, "LARGE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_44

    const/4 v1, 0x1

    goto :goto_45

    :sswitch_3a
    const-string v1, "RECTANGLE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_44

    const/4 v1, 0x2

    goto :goto_45

    :cond_44
    :goto_44
    const/4 v1, -0x1

    :goto_45
    const/16 p1, 0x32

    const/16 v3, 0x140

    if-eqz v1, :cond_8a

    if-eq v1, v6, :cond_8a

    if-eq v1, v5, :cond_78

    if-eq v1, v4, :cond_52

    goto :goto_97

    .line 959
    :cond_52
    invoke-static {v2}, Lcom/ironsource/mediationsdk/AdapterUtils;->isLargeScreen(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 960
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p1, 0x2d8

    invoke-static {v2, p1}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/app/Activity;I)I

    move-result p1

    const/16 v1, 0x5a

    invoke-static {v2, v1}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/app/Activity;I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_97

    .line 962
    :cond_6a
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v2, v3}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/app/Activity;I)I

    move-result v1

    invoke-static {v2, p1}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/app/Activity;I)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_97

    .line 956
    :cond_78
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p1, 0x12c

    invoke-static {v2, p1}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/app/Activity;I)I

    move-result p1

    const/16 v1, 0xfa

    invoke-static {v2, v1}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/app/Activity;I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_97

    .line 953
    :cond_8a
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v2, v3}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/app/Activity;I)I

    move-result v1

    invoke-static {v2, p1}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/app/Activity;I)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :goto_97
    const/16 p1, 0x11

    .line 968
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-object v0

    :sswitch_data_9c
    .sparse-switch
        -0x171242b1 -> :sswitch_3a
        0x44dc31b -> :sswitch_30
        0x4b59da9 -> :sswitch_26
        0x7458732c -> :sswitch_1d
    .end sparse-switch
.end method

.method private getBannerPlayAdCallback(Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)Lcom/vungle/warren/PlayAdCallback;
    .registers 3

    .line 681
    new-instance v0, Lcom/ironsource/adapters/vungle/VungleAdapter$6;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/adapters/vungle/VungleAdapter$6;-><init>(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V

    return-object v0
.end method

.method private getBannerSize(Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/vungle/warren/AdConfig$AdSize;
    .registers 6

    .line 932
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_5c

    goto :goto_37

    :sswitch_f
    const-string v0, "BANNER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    const/4 p1, 0x0

    goto :goto_38

    :sswitch_19
    const-string v0, "SMART"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    const/4 p1, 0x3

    goto :goto_38

    :sswitch_23
    const-string v0, "LARGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    const/4 p1, 0x1

    goto :goto_38

    :sswitch_2d
    const-string v0, "RECTANGLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    const/4 p1, 0x2

    goto :goto_38

    :cond_37
    :goto_37
    const/4 p1, -0x1

    :goto_38
    if-eqz p1, :cond_59

    if-eq p1, v3, :cond_59

    if-eq p1, v2, :cond_56

    if-eq p1, v1, :cond_42

    const/4 p1, 0x0

    return-object p1

    .line 939
    :cond_42
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/mediationsdk/AdapterUtils;->isLargeScreen(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_53

    sget-object p1, Lcom/vungle/warren/AdConfig$AdSize;->BANNER_LEADERBOARD:Lcom/vungle/warren/AdConfig$AdSize;

    goto :goto_55

    :cond_53
    sget-object p1, Lcom/vungle/warren/AdConfig$AdSize;->BANNER:Lcom/vungle/warren/AdConfig$AdSize;

    :goto_55
    return-object p1

    .line 937
    :cond_56
    sget-object p1, Lcom/vungle/warren/AdConfig$AdSize;->VUNGLE_MREC:Lcom/vungle/warren/AdConfig$AdSize;

    return-object p1

    .line 935
    :cond_59
    sget-object p1, Lcom/vungle/warren/AdConfig$AdSize;->BANNER:Lcom/vungle/warren/AdConfig$AdSize;

    return-object p1

    :sswitch_data_5c
    .sparse-switch
        -0x171242b1 -> :sswitch_2d
        0x44dc31b -> :sswitch_23
        0x4b59da9 -> :sswitch_19
        0x7458732c -> :sswitch_f
    .end sparse-switch
.end method

.method private getCurrentInitState()Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;
    .registers 2

    .line 738
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitState:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    return-object v0
.end method

.method public static getIntegrationData(Landroid/app/Activity;)Lcom/ironsource/mediationsdk/IntegrationData;
    .registers 3

    .line 109
    new-instance p0, Lcom/ironsource/mediationsdk/IntegrationData;

    const-string v0, "Vungle"

    const-string v1, "4.3.3"

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/IntegrationData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/IntegrationData;->validateWriteExternalStorage:Z

    return-object p0
.end method

.method private initVungleSdk(Ljava/lang/String;)V
    .registers 5

    .line 749
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 751
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->INIT_IN_PROGRESS:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    invoke-direct {p0, v0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->setInitState(Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;)V

    .line 752
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter;->initCallbackListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 753
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/ironsource/adapters/vungle/VungleAdapter$7;

    invoke-direct {v1, p0}, Lcom/ironsource/adapters/vungle/VungleAdapter$7;-><init>(Lcom/ironsource/adapters/vungle/VungleAdapter;)V

    invoke-static {p1, v0, v1}, Lcom/vungle/warren/Vungle;->init(Ljava/lang/String;Landroid/content/Context;Lcom/vungle/warren/InitCallback;)V

    :cond_24
    return-void
.end method

.method private isBannerSizeSupported(Lcom/ironsource/mediationsdk/ISBannerSize;)Z
    .registers 7

    .line 920
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_44

    goto :goto_38

    :sswitch_10
    const-string v0, "BANNER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    const/4 p1, 0x0

    goto :goto_39

    :sswitch_1a
    const-string v0, "SMART"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    const/4 p1, 0x3

    goto :goto_39

    :sswitch_24
    const-string v0, "LARGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    const/4 p1, 0x1

    goto :goto_39

    :sswitch_2e
    const-string v0, "RECTANGLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    const/4 p1, 0x2

    goto :goto_39

    :cond_38
    :goto_38
    const/4 p1, -0x1

    :goto_39
    if-eqz p1, :cond_42

    if-eq p1, v4, :cond_42

    if-eq p1, v3, :cond_42

    if-eq p1, v2, :cond_42

    return v1

    :cond_42
    return v4

    nop

    :sswitch_data_44
    .sparse-switch
        -0x171242b1 -> :sswitch_2e
        0x44dc31b -> :sswitch_24
        0x4b59da9 -> :sswitch_1a
        0x7458732c -> :sswitch_10
    .end sparse-switch
.end method

.method private loadRewardedVideoAd(Ljava/lang/String;)V
    .registers 5

    .line 892
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placementId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 894
    new-instance v0, Lcom/ironsource/adapters/vungle/VungleAdapter$8;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/vungle/VungleAdapter$8;-><init>(Lcom/ironsource/adapters/vungle/VungleAdapter;)V

    invoke-static {p1, v0}, Lcom/vungle/warren/Vungle;->loadAd(Ljava/lang/String;Lcom/vungle/warren/LoadAdCallback;)V

    return-void
.end method

.method private setCCPAValue(Z)V
    .registers 5

    .line 147
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 149
    invoke-direct {p0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->getCurrentInitState()Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    move-result-object v0

    sget-object v1, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->INIT_SUCCESS:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    if-ne v0, v1, :cond_29

    if-eqz p1, :cond_23

    .line 150
    sget-object p1, Lcom/vungle/warren/Vungle$Consent;->OPTED_IN:Lcom/vungle/warren/Vungle$Consent;

    goto :goto_25

    :cond_23
    sget-object p1, Lcom/vungle/warren/Vungle$Consent;->OPTED_OUT:Lcom/vungle/warren/Vungle$Consent;

    :goto_25
    invoke-static {p1}, Lcom/vungle/warren/Vungle;->updateCCPAStatus(Lcom/vungle/warren/Vungle$Consent;)V

    goto :goto_2f

    .line 152
    :cond_29
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/ironsource/adapters/vungle/VungleAdapter;->mCCPA:Ljava/lang/Boolean;

    :goto_2f
    return-void
.end method

.method private setInitState(Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;)V
    .registers 5

    .line 733
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":init state changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitState:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 734
    sput-object p1, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitState:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    return-void
.end method

.method public static startAdapter(Ljava/lang/String;)Lcom/ironsource/adapters/vungle/VungleAdapter;
    .registers 2

    .line 90
    new-instance v0, Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/vungle/VungleAdapter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public destroyBanner(Lorg/json/JSONObject;)V
    .registers 5

    const-string v0, "PlacementId"

    .line 541
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 542
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placementId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 546
    new-instance v0, Lcom/ironsource/adapters/vungle/VungleAdapter$5;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/adapters/vungle/VungleAdapter$5;-><init>(Lcom/ironsource/adapters/vungle/VungleAdapter;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->postOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public fetchRewardedVideoForAutomaticLoad(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 7

    const-string p2, "PlacementId"

    .line 200
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": in fetchRewardedVideoForAutomaticLoad for placementId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 202
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 203
    invoke-static {v0}, Lcom/vungle/warren/Vungle;->canPlayAd(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 204
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": able to play placementId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 205
    iget-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mPlacementIdToRewardedVideoSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_5a

    .line 207
    :cond_4f
    iget-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mPlacementIdToRewardedVideoSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 208
    invoke-direct {p0, v0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->loadRewardedVideoAd(Ljava/lang/String;)V

    :cond_5a
    :goto_5a
    return-void
.end method

.method public getCoreSDKVersion()Ljava/lang/String;
    .registers 2

    .line 127
    invoke-static {}, Lcom/ironsource/adapters/vungle/VungleAdapter;->getAdapterSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "4.3.3"

    return-object v0
.end method

.method public initBanners(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .registers 7

    const-string p1, "AppID"

    .line 412
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 413
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v0, "Interstitial"

    if-eqz p2, :cond_1a

    if-eqz p4, :cond_19

    const-string p1, "Missing params appId"

    .line 415
    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_19
    return-void

    :cond_1a
    const-string p2, "PlacementId"

    .line 420
    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 421
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_32

    if-eqz p4, :cond_31

    const-string p1, "Missing params placementId"

    .line 423
    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_31
    return-void

    .line 426
    :cond_32
    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "placementId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 429
    iget-object p3, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mPlacementIdToBannerSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p2, p4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "Banner"

    .line 432
    invoke-direct {p0, p2}, Lcom/ironsource/adapters/vungle/VungleAdapter;->addInitiatedAdUnit(Ljava/lang/String;)V

    .line 435
    sget-object p3, Lcom/ironsource/adapters/vungle/VungleAdapter$9;->$SwitchMap$com$ironsource$adapters$vungle$VungleAdapter$EInitState:[I

    invoke-direct {p0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->getCurrentInitState()Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->ordinal()I

    move-result v0

    aget p3, p3, v0

    const/4 v0, 0x1

    if-eq p3, v0, :cond_7f

    const/4 p1, 0x2

    if-eq p3, p1, :cond_79

    const/4 p1, 0x3

    if-eq p3, p1, :cond_75

    const/4 p1, 0x4

    if-eq p3, p1, :cond_6b

    goto :goto_82

    :cond_6b
    const-string p1, "Init Failed"

    .line 450
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_82

    .line 446
    :cond_75
    invoke-interface {p4}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerInitSuccess()V

    goto :goto_82

    .line 442
    :cond_79
    sget-object p1, Lcom/ironsource/adapters/vungle/VungleAdapter;->initCallbackListeners:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_82

    .line 438
    :cond_7f
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/vungle/VungleAdapter;->initVungleSdk(Ljava/lang/String;)V

    :goto_82
    return-void
.end method

.method public initInterstitial(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 7

    const-string p1, "AppID"

    .line 285
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v0, "Interstitial"

    if-nez p2, :cond_71

    const-string p2, "PlacementId"

    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_71

    .line 291
    :cond_1b
    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    if-eqz p4, :cond_30

    .line 292
    iget-object v1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mPlacementIdToInterstitialSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2, p4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :cond_30
    invoke-direct {p0, v0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->addInitiatedAdUnit(Ljava/lang/String;)V

    .line 295
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 297
    sget-object p2, Lcom/ironsource/adapters/vungle/VungleAdapter$9;->$SwitchMap$com$ironsource$adapters$vungle$VungleAdapter$EInitState:[I

    invoke-direct {p0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->getCurrentInitState()Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->ordinal()I

    move-result v1

    aget p2, p2, v1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_69

    const/4 p1, 0x2

    if-eq p2, p1, :cond_63

    const/4 p1, 0x3

    if-eq p2, p1, :cond_5d

    const/4 p1, 0x4

    if-eq p2, p1, :cond_51

    goto :goto_70

    :cond_51
    if-eqz p4, :cond_70

    const-string p1, "Init Failed"

    .line 311
    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_70

    :cond_5d
    if-eqz p4, :cond_70

    .line 306
    invoke-interface {p4}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitSuccess()V

    goto :goto_70

    .line 302
    :cond_63
    sget-object p1, Lcom/ironsource/adapters/vungle/VungleAdapter;->initCallbackListeners:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_70

    .line 299
    :cond_69
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/adapters/vungle/VungleAdapter;->initVungleSdk(Ljava/lang/String;)V

    :cond_70
    :goto_70
    return-void

    :cond_71
    :goto_71
    if-eqz p4, :cond_7c

    const-string p1, "Missing params"

    .line 287
    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_7c
    return-void
.end method

.method public initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 8

    const-string p1, "AppID"

    .line 163
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_94

    const-string p2, "PlacementId"

    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto/16 :goto_94

    .line 169
    :cond_1b
    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    if-eqz p4, :cond_30

    .line 170
    iget-object v1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mPlacementIdToRewardedVideoSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    const-string v1, "Rewarded Video"

    .line 172
    invoke-direct {p0, v1}, Lcom/ironsource/adapters/vungle/VungleAdapter;->addInitiatedAdUnit(Ljava/lang/String;)V

    .line 173
    sget-object v1, Lcom/ironsource/adapters/vungle/VungleAdapter$9;->$SwitchMap$com$ironsource$adapters$vungle$VungleAdapter$EInitState:[I

    invoke-direct {p0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->getCurrentInitState()Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8c

    const/4 p1, 0x2

    if-eq v1, p1, :cond_86

    const/4 p1, 0x3

    if-eq v1, p1, :cond_54

    const/4 p1, 0x4

    if-eq v1, p1, :cond_4e

    goto :goto_93

    :cond_4e
    if-eqz p4, :cond_93

    .line 192
    invoke-interface {p4, v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_93

    .line 181
    :cond_54
    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/vungle/warren/Vungle;->canPlayAd(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 182
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": able to play placementId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    if-eqz p4, :cond_93

    .line 184
    invoke-interface {p4, v2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_93

    .line 186
    :cond_7e
    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/adapters/vungle/VungleAdapter;->loadRewardedVideoAd(Ljava/lang/String;)V

    goto :goto_93

    .line 178
    :cond_86
    sget-object p1, Lcom/ironsource/adapters/vungle/VungleAdapter;->initCallbackListeners:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_93

    .line 175
    :cond_8c
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/adapters/vungle/VungleAdapter;->initVungleSdk(Ljava/lang/String;)V

    :cond_93
    :goto_93
    return-void

    :cond_94
    :goto_94
    if-eqz p4, :cond_99

    .line 165
    invoke-interface {p4, v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    :cond_99
    return-void
.end method

.method public isInterstitialReady(Lorg/json/JSONObject;)Z
    .registers 3

    .line 404
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "PlacementId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/vungle/warren/Vungle;->canPlayAd(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method public isRewardedVideoAvailable(Lorg/json/JSONObject;)Z
    .registers 3

    .line 277
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "PlacementId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/vungle/warren/Vungle;->canPlayAd(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method public loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .registers 8

    .line 458
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const-string v0, "PlacementId"

    .line 461
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 462
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string p1, "Missing params placementId"

    const-string p2, "Interstitial"

    .line 463
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 468
    :cond_1f
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->isBannerSizeSupported(Lcom/ironsource/mediationsdk/ISBannerSize;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 469
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size not supported, size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->getProviderName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->unsupportedBannerSize(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 473
    :cond_53
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadBanner - placementId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mPlacementIdToBannerLayout:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;-><init>(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;)V

    invoke-virtual {v0, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mPlacementIdToBannerState:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;->REQUESTING:Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;

    invoke-virtual {v0, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    new-instance v0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ironsource/adapters/vungle/VungleAdapter$4;-><init>(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->postOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 4

    .line 320
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "PlacementId"

    .line 321
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 322
    invoke-static {p1}, Lcom/vungle/warren/Vungle;->canPlayAd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    if-eqz p2, :cond_20

    .line 324
    invoke-interface {p2}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdReady()V

    goto :goto_20

    .line 326
    :cond_18
    new-instance v0, Lcom/ironsource/adapters/vungle/VungleAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/ironsource/adapters/vungle/VungleAdapter$2;-><init>(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    invoke-static {p1, v0}, Lcom/vungle/warren/Vungle;->loadAd(Ljava/lang/String;Lcom/vungle/warren/LoadAdCallback;)V

    :cond_20
    :goto_20
    return-void
.end method

.method public onNetworkInitCallbackFailed(Ljava/lang/String;)V
    .registers 7

    .line 839
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitiatedAdUnits:Ljava/util/Set;

    if-eqz v0, :cond_bb

    const-string v1, "Rewarded Video"

    .line 842
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 843
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mPlacementIdToRewardedVideoSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 844
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 845
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_16

    .line 850
    :cond_33
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitiatedAdUnits:Ljava/util/Set;

    const-string v1, "Interstitial"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "Vungle failed to init: "

    if-eqz v0, :cond_78

    .line 851
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mPlacementIdToInterstitialSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_49
    :goto_49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_78

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 852
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_49

    .line 853
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_49

    .line 858
    :cond_78
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitiatedAdUnits:Ljava/util/Set;

    const-string v1, "Banner"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 859
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mPlacementIdToBannerSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8c
    :goto_8c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 860
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8c

    .line 861
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_8c

    :cond_bb
    return-void
.end method

.method public onNetworkInitCallbackLoadSuccess(Ljava/lang/String;)V
    .registers 5

    .line 871
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitiatedAdUnits:Ljava/util/Set;

    const-string v1, "Rewarded Video"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 872
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mPlacementIdToRewardedVideoSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 873
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 874
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 875
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_14

    .line 880
    :cond_3d
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitiatedAdUnits:Ljava/util/Set;

    const-string v1, "Interstitial"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 881
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mPlacementIdToInterstitialSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_51
    :goto_51
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 882
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 883
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_51

    .line 884
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdReady()V

    goto :goto_51

    :cond_79
    return-void
.end method

.method public onNetworkInitCallbackSuccess()V
    .registers 4

    .line 799
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mIsConsent:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 800
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->setConsent(Z)V

    .line 803
    :cond_b
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mCCPA:Ljava/lang/Boolean;

    if-eqz v0, :cond_16

    .line 804
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->setCCPAValue(Z)V

    .line 807
    :cond_16
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitiatedAdUnits:Ljava/util/Set;

    if-eqz v0, :cond_a2

    const-string v1, "Rewarded Video"

    .line 810
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 811
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mPlacementIdToRewardedVideoSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 812
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/ironsource/adapters/vungle/VungleAdapter;->loadRewardedVideoAd(Ljava/lang/String;)V

    goto :goto_2c

    .line 817
    :cond_42
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitiatedAdUnits:Ljava/util/Set;

    const-string v1, "Interstitial"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 818
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mPlacementIdToInterstitialSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_56
    :goto_56
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 819
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_56

    .line 820
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitSuccess()V

    goto :goto_56

    .line 826
    :cond_72
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitiatedAdUnits:Ljava/util/Set;

    const-string v1, "Banner"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 827
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mPlacementIdToBannerSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_86
    :goto_86
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 828
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_86

    .line 829
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    invoke-interface {v1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerInitSuccess()V

    goto :goto_86

    :cond_a2
    return-void
.end method

.method public reloadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .registers 6

    const-string p1, "PlacementId"

    .line 518
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 519
    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "placementId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 521
    iget-object p3, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mPlacementIdToBannerLayout:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .line 522
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mPlacementIdToBannerSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    if-eqz p1, :cond_57

    if-eqz p3, :cond_34

    .line 528
    invoke-virtual {p0, p3, p2, p1}, Lcom/ironsource/adapters/vungle/VungleAdapter;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V

    goto :goto_57

    .line 531
    :cond_34
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p3, "reload failed no banner layout"

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 532
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->getProviderName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " reload failed no banner layout"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_57
    :goto_57
    return-void
.end method

.method protected setConsent(Z)V
    .registers 4

    .line 131
    invoke-direct {p0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->getCurrentInitState()Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    move-result-object v0

    sget-object v1, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->INIT_SUCCESS:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    if-ne v0, v1, :cond_15

    if-eqz p1, :cond_d

    .line 132
    sget-object p1, Lcom/vungle/warren/Vungle$Consent;->OPTED_IN:Lcom/vungle/warren/Vungle$Consent;

    goto :goto_f

    :cond_d
    sget-object p1, Lcom/vungle/warren/Vungle$Consent;->OPTED_OUT:Lcom/vungle/warren/Vungle$Consent;

    :goto_f
    const-string v0, "1.0.0"

    invoke-static {p1, v0}, Lcom/vungle/warren/Vungle;->updateConsentStatus(Lcom/vungle/warren/Vungle$Consent;Ljava/lang/String;)V

    goto :goto_1b

    .line 134
    :cond_15
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/ironsource/adapters/vungle/VungleAdapter;->mIsConsent:Ljava/lang/Boolean;

    :goto_1b
    return-void
.end method

.method protected setMetaData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 139
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

    .line 141
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->isValidCCPAMetaData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 142
    invoke-static {p2}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->getMetaDataBooleanValue(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/ironsource/adapters/vungle/VungleAdapter;->setCCPAValue(Z)V

    :cond_2b
    return-void
.end method

.method public shouldBindBannerViewOnReload()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public showInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 5

    const-string v0, "PlacementId"

    .line 348
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vungle/warren/Vungle;->canPlayAd(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 349
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/vungle/warren/AdConfig;

    invoke-direct {v0}, Lcom/vungle/warren/AdConfig;-><init>()V

    new-instance v1, Lcom/ironsource/adapters/vungle/VungleAdapter$3;

    invoke-direct {v1, p0, p2}, Lcom/ironsource/adapters/vungle/VungleAdapter$3;-><init>(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    invoke-static {p1, v0, v1}, Lcom/vungle/warren/Vungle;->playAd(Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/PlayAdCallback;)V

    goto :goto_29

    :cond_1e
    if-eqz p2, :cond_29

    const-string p1, "Interstitial"

    .line 398
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_29
    :goto_29
    return-void
.end method

.method public showRewardedVideo(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 7

    .line 216
    new-instance v0, Lcom/vungle/warren/AdConfig;

    invoke-direct {v0}, Lcom/vungle/warren/AdConfig;-><init>()V

    const-string v1, "PlacementId"

    .line 217
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vungle/warren/Vungle;->canPlayAd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 218
    invoke-virtual {p0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->getDynamicUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 219
    invoke-virtual {p0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->getDynamicUserId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v3, v3, v3}, Lcom/vungle/warren/Vungle;->setIncentivizedFields(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_23
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/ironsource/adapters/vungle/VungleAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/ironsource/adapters/vungle/VungleAdapter$1;-><init>(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V

    invoke-static {p1, v0, v1}, Lcom/vungle/warren/Vungle;->playAd(Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/PlayAdCallback;)V

    :cond_2f
    return-void
.end method
