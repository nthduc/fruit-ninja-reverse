.class Lcom/ironsource/adapters/chartboost/ChartboostAdapter;
.super Lcom/ironsource/mediationsdk/AbstractAdapter;
.source "ChartboostAdapter.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CHBBannerListener;
    }
.end annotation


# static fields
.field private static final GitHash:Ljava/lang/String; = "7b994b13f"

.field private static final VERSION:Ljava/lang/String; = "4.3.4"

.field private static initCallbackListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mAlreadyCalledInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mConsentCollectingUserData:Ljava/lang/Boolean;

.field private static mDidInitSuccessfully:Z

.field private static mDoNotSellCollectingUserData:Ljava/lang/Boolean;


# instance fields
.field private final AD_LOCATION:Ljava/lang/String;

.field private final APP_ID:Ljava/lang/String;

.field private final APP_SIGNATURE:Ljava/lang/String;

.field private final LOAD_ERROR:Ljava/lang/String;

.field private final SHOWֹֹֹ_ERROR:Ljava/lang/String;

.field private mLocationToBannerLayout:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/IronSourceBannerLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationToBannerListener:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationToBannerView:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/ChartboostBanner;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationToIsListener:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationToRvListener:Ljava/util/concurrent/ConcurrentHashMap;
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

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mAlreadyCalledInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    sput-boolean v1, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mDidInitSuccessfully:Z

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->initCallbackListeners:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 82
    sput-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mDoNotSellCollectingUserData:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 90
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;-><init>(Ljava/lang/String;)V

    const-string p1, "chartboost_show_error"

    .line 62
    iput-object p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->SHOWֹֹֹ_ERROR:Ljava/lang/String;

    const-string p1, "chartboost_load_error"

    .line 63
    iput-object p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->LOAD_ERROR:Ljava/lang/String;

    const-string p1, "appID"

    .line 65
    iput-object p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->APP_ID:Ljava/lang/String;

    const-string p1, "appSignature"

    .line 66
    iput-object p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->APP_SIGNATURE:Ljava/lang/String;

    const-string p1, "adLocation"

    .line 67
    iput-object p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->AD_LOCATION:Ljava/lang/String;

    .line 70
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToIsListener:Ljava/util/concurrent/ConcurrentHashMap;

    .line 73
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    .line 76
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToBannerListener:Ljava/util/concurrent/ConcurrentHashMap;

    .line 77
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToBannerLayout:Ljava/util/concurrent/ConcurrentHashMap;

    .line 78
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToBannerView:Ljava/util/concurrent/ConcurrentHashMap;

    .line 91
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 53
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mAlreadyCalledInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Boolean;
    .registers 1

    .line 53
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mConsentCollectingUserData:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToBannerListener:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Lcom/ironsource/mediationsdk/ISBannerSize;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getBannerLayoutParams(Lcom/ironsource/mediationsdk/ISBannerSize;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/HashSet;
    .registers 1

    .line 53
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->initCallbackListeners:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)V
    .registers 1

    .line 53
    invoke-direct {p0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->setDebug()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/Boolean;
    .registers 1

    .line 53
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mDoNotSellCollectingUserData:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Z)V
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->setCCPAValue(Z)V

    return-void
.end method

.method static synthetic access$600()Z
    .registers 1

    .line 53
    sget-boolean v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mDidInitSuccessfully:Z

    return v0
.end method

.method static synthetic access$700(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)Lcom/chartboost/sdk/ChartboostBanner;
    .registers 3

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getChartboostBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)Lcom/chartboost/sdk/ChartboostBanner;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToBannerView:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToBannerLayout:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static getAdapterSDKVersion()Ljava/lang/String;
    .registers 1

    .line 103
    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->getSDKVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_6

    :catch_5
    const/4 v0, 0x0

    :goto_6
    return-object v0
.end method

.method private getBannerLayoutParams(Lcom/ironsource/mediationsdk/ISBannerSize;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 11

    .line 881
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 883
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v2

    .line 885
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v4, :sswitch_data_c8

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

    if-eqz v1, :cond_b5

    if-eq v1, v8, :cond_b5

    if-eq v1, v7, :cond_a3

    if-eq v1, v6, :cond_7d

    if-eq v1, v5, :cond_5f

    goto :goto_c2

    .line 901
    :cond_5f
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getHeight()I

    move-result v1

    const/16 v5, 0x28

    if-lt v1, v5, :cond_c2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getHeight()I

    move-result p1

    const/16 v1, 0x3c

    if-gt p1, v1, :cond_c2

    .line 902
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v2, v4}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/app/Activity;I)I

    move-result p1

    invoke-static {v2, v3}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/app/Activity;I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_c2

    .line 894
    :cond_7d
    invoke-static {v2}, Lcom/ironsource/mediationsdk/AdapterUtils;->isLargeScreen(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_95

    .line 895
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p1, 0x2d8

    invoke-static {v2, p1}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/app/Activity;I)I

    move-result p1

    const/16 v1, 0x5a

    invoke-static {v2, v1}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/app/Activity;I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_c2

    .line 897
    :cond_95
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v2, v4}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/app/Activity;I)I

    move-result p1

    invoke-static {v2, v3}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/app/Activity;I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_c2

    .line 891
    :cond_a3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p1, 0x12c

    invoke-static {v2, p1}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/app/Activity;I)I

    move-result p1

    const/16 v1, 0xfa

    invoke-static {v2, v1}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/app/Activity;I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_c2

    .line 888
    :cond_b5
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v2, v4}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/app/Activity;I)I

    move-result p1

    invoke-static {v2, v3}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/app/Activity;I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :cond_c2
    :goto_c2
    const/16 p1, 0x11

    .line 908
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-object v0

    nop

    :sswitch_data_c8
    .sparse-switch
        -0x171242b1 -> :sswitch_45
        0x44dc31b -> :sswitch_3b
        0x4b59da9 -> :sswitch_31
        0x7458732c -> :sswitch_28
        0x77297f71 -> :sswitch_1e
    .end sparse-switch
.end method

.method private getBannerSize(Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/chartboost/sdk/Banner/BannerSize;
    .registers 8

    .line 863
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_7e

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
    if-eqz v0, :cond_7a

    if-eq v0, v5, :cond_7a

    if-eq v0, v4, :cond_77

    if-eq v0, v3, :cond_63

    if-eq v0, v2, :cond_4e

    goto :goto_61

    .line 872
    :cond_4e
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getHeight()I

    move-result v0

    const/16 v1, 0x28

    if-lt v0, v1, :cond_61

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getHeight()I

    move-result p1

    const/16 v0, 0x3c

    if-gt p1, v0, :cond_61

    .line 873
    sget-object p1, Lcom/chartboost/sdk/Banner/BannerSize;->STANDARD:Lcom/chartboost/sdk/Banner/BannerSize;

    return-object p1

    :cond_61
    :goto_61
    const/4 p1, 0x0

    return-object p1

    .line 870
    :cond_63
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/mediationsdk/AdapterUtils;->isLargeScreen(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_74

    sget-object p1, Lcom/chartboost/sdk/Banner/BannerSize;->LEADERBOARD:Lcom/chartboost/sdk/Banner/BannerSize;

    goto :goto_76

    :cond_74
    sget-object p1, Lcom/chartboost/sdk/Banner/BannerSize;->STANDARD:Lcom/chartboost/sdk/Banner/BannerSize;

    :goto_76
    return-object p1

    .line 868
    :cond_77
    sget-object p1, Lcom/chartboost/sdk/Banner/BannerSize;->MEDIUM:Lcom/chartboost/sdk/Banner/BannerSize;

    return-object p1

    .line 866
    :cond_7a
    sget-object p1, Lcom/chartboost/sdk/Banner/BannerSize;->STANDARD:Lcom/chartboost/sdk/Banner/BannerSize;

    return-object p1

    nop

    :sswitch_data_7e
    .sparse-switch
        -0x171242b1 -> :sswitch_38
        0x44dc31b -> :sswitch_2e
        0x4b59da9 -> :sswitch_24
        0x7458732c -> :sswitch_1a
        0x77297f71 -> :sswitch_10
    .end sparse-switch
.end method

.method private getChartboostBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)Lcom/chartboost/sdk/ChartboostBanner;
    .registers 7

    .line 916
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToBannerView:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/ChartboostBanner;

    if-nez v0, :cond_40

    .line 921
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "creating banner"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 924
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getBannerSize(Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/chartboost/sdk/Banner/BannerSize;

    move-result-object v0

    .line 927
    new-instance v1, Lcom/chartboost/sdk/ChartboostBanner;

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CHBBannerListener;

    invoke-direct {v3, p0, p2}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CHBBannerListener;-><init>(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Ljava/lang/String;)V

    invoke-direct {v1, v2, p2, v0, v3}, Lcom/chartboost/sdk/ChartboostBanner;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/chartboost/sdk/Banner/BannerSize;Lcom/chartboost/sdk/ChartboostBannerListener;)V

    .line 930
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getBannerLayoutParams(Lcom/ironsource/mediationsdk/ISBannerSize;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/chartboost/sdk/ChartboostBanner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 933
    invoke-virtual {v1, p1}, Lcom/chartboost/sdk/ChartboostBanner;->setAutomaticallyRefreshesContent(Z)V

    .line 936
    iget-object p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToBannerView:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_40
    return-object v0
.end method

.method public static getIntegrationData(Landroid/app/Activity;)Lcom/ironsource/mediationsdk/IntegrationData;
    .registers 3

    .line 95
    new-instance p0, Lcom/ironsource/mediationsdk/IntegrationData;

    const-string v0, "Chartboost"

    const-string v1, "4.3.4"

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/IntegrationData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.chartboost.sdk.CBImpressionActivity"

    .line 96
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IntegrationData;->activities:[Ljava/lang/String;

    return-object p0
.end method

.method private getIronSourceErrorType(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)Ljava/lang/String;
    .registers 3

    .line 799
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$5;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_14

    const/4 p1, 0x0

    return-object p1

    :pswitch_d
    const-string p1, "chartboost_show_error"

    return-object p1

    :pswitch_10
    const-string p1, "chartboost_load_error"

    return-object p1

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method private getLocationId(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 3

    const-string v0, "adLocation"

    .line 841
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 842
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p1, "Default"

    :cond_e
    return-object p1
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 136
    new-instance v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;-><init>(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->postOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private isBannerSizeSupported(Lcom/ironsource/mediationsdk/ISBannerSize;)Z
    .registers 8

    .line 850
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

.method private setCCPAValue(Z)V
    .registers 5

    .line 958
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 959
    new-instance v0, Lcom/chartboost/sdk/Privacy/model/CCPA;

    sget-object v1, Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;->OPT_OUT_SALE:Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/Privacy/model/CCPA;-><init>(Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;)V

    if-nez p1, :cond_26

    .line 961
    new-instance v0, Lcom/chartboost/sdk/Privacy/model/CCPA;

    sget-object p1, Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;->OPT_IN_SALE:Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/Privacy/model/CCPA;-><init>(Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;)V

    .line 964
    :cond_26
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/chartboost/sdk/Chartboost;->addDataUseConsent(Landroid/content/Context;Lcom/chartboost/sdk/Privacy/model/DataUseConsent;)V

    return-void
.end method

.method private setDebug()V
    .registers 3

    .line 184
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->isAdaptersDebugEnabled()Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_6

    :catch_5
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_15

    .line 191
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "Chartboost.setLoggingLevel for debugging"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 192
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->ALL:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->setLoggingLevel(Lcom/chartboost/sdk/Libraries/CBLogging$Level;)V

    goto :goto_1a

    .line 194
    :cond_15
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->NONE:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->setLoggingLevel(Lcom/chartboost/sdk/Libraries/CBLogging$Level;)V

    :goto_1a
    return-void
.end method

.method public static startAdapter(Ljava/lang/String;)Lcom/ironsource/adapters/chartboost/ChartboostAdapter;
    .registers 2

    .line 86
    new-instance v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public destroyBanner(Lorg/json/JSONObject;)V
    .registers 5

    const-string v0, "adLocation"

    .line 489
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 490
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "locationId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 493
    new-instance v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$4;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$4;-><init>(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->postOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public didCacheInterstitial(Ljava/lang/String;)V
    .registers 5

    .line 610
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToIsListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 613
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToIsListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdReady()V

    :cond_29
    return-void
.end method

.method public didCacheRewardedVideo(Ljava/lang/String;)V
    .registers 5

    .line 531
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 534
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    :cond_2a
    return-void
.end method

.method public didClickInterstitial(Ljava/lang/String;)V
    .registers 5

    .line 664
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToIsListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 667
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToIsListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdClicked()V

    :cond_29
    return-void
.end method

.method public didClickRewardedVideo(Ljava/lang/String;)V
    .registers 5

    .line 588
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 591
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdClicked()V

    :cond_29
    return-void
.end method

.method public didCloseInterstitial(Ljava/lang/String;)V
    .registers 5

    .line 659
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method public didCloseRewardedVideo(Ljava/lang/String;)V
    .registers 5

    .line 583
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method public didCompleteRewardedVideo(Ljava/lang/String;I)V
    .registers 5

    .line 597
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "location = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 598
    iget-object p2, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_29

    .line 599
    iget-object p2, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdRewarded()V

    :cond_29
    return-void
.end method

.method public didDismissInterstitial(Ljava/lang/String;)V
    .registers 5

    .line 650
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToIsListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 653
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToIsListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdClosed()V

    :cond_29
    return-void
.end method

.method public didDismissRewardedVideo(Ljava/lang/String;)V
    .registers 5

    .line 574
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 577
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdClosed()V

    :cond_29
    return-void
.end method

.method public didDisplayInterstitial(Ljava/lang/String;)V
    .registers 5

    .line 673
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToIsListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 676
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToIsListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdOpened()V

    .line 677
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToIsListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowSucceeded()V

    :cond_34
    return-void
.end method

.method public didDisplayRewardedVideo(Ljava/lang/String;)V
    .registers 5

    .line 522
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 525
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdOpened()V

    :cond_29
    return-void
.end method

.method public didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .registers 10

    .line 619
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 620
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToIsListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-nez v0, :cond_3b

    return-void

    .line 628
    :cond_3b
    invoke-direct {p0, p2}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getIronSourceErrorType(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1fe

    const/4 v3, -0x1

    .line 631
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x248c2f69

    const/4 v6, 0x1

    if-eq v4, v5, :cond_5c

    const v5, 0x60161840

    if-eq v4, v5, :cond_52

    goto :goto_65

    :cond_52
    const-string v4, "chartboost_show_error"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    const/4 v3, 0x1

    goto :goto_65

    :cond_5c
    const-string v4, "chartboost_load_error"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    const/4 v3, 0x0

    :cond_65
    :goto_65
    if-eqz v3, :cond_78

    if-eq v3, v6, :cond_6a

    goto :goto_aa

    .line 643
    :cond_6a
    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Interstitial"

    invoke-static {p2, p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildShowFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_aa

    .line 633
    :cond_78
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_AD_FOUND:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    if-ne p2, v1, :cond_7e

    const/16 v2, 0x1fd

    .line 638
    :cond_7e
    :try_start_7e
    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "didFailToLoadInterstitial rv CB error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " with location: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_aa
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_aa} :catch_aa

    :catch_aa
    :goto_aa
    return-void
.end method

.method public didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .registers 11

    .line 540
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 541
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    if-nez v0, :cond_3b

    return-void

    .line 549
    :cond_3b
    invoke-direct {p0, p2}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getIronSourceErrorType(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1fe

    const/4 v3, -0x1

    .line 552
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x248c2f69

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v4, v5, :cond_5d

    const v5, 0x60161840

    if-eq v4, v5, :cond_53

    goto :goto_66

    :cond_53
    const-string v4, "chartboost_show_error"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    const/4 v3, 0x1

    goto :goto_66

    :cond_5d
    const-string v4, "chartboost_load_error"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    const/4 v3, 0x0

    :cond_66
    :goto_66
    if-eqz v3, :cond_79

    if-eq v3, v7, :cond_6b

    goto :goto_ab

    .line 564
    :cond_6b
    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Rewarded Video"

    invoke-static {p2, p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildShowFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_ab

    .line 554
    :cond_79
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_AD_FOUND:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    if-ne p2, v1, :cond_7f

    const/16 v2, 0x1fd

    .line 559
    :cond_7f
    :try_start_7f
    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "didFailToLoadRewardedVideo rv CB error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " with location: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_ab
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_ab} :catch_ab

    .line 568
    :catch_ab
    :goto_ab
    invoke-interface {v0, v6}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    return-void
.end method

.method public didInitialize()V
    .registers 3

    .line 683
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 684
    sput-boolean v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mDidInitSuccessfully:Z

    .line 686
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->initCallbackListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;

    .line 687
    invoke-interface {v1}, Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;->onNetworkInitCallbackSuccess()V

    goto :goto_10

    .line 689
    :cond_20
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->initCallbackListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public fetchRewardedVideoForAutomaticLoad(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 5

    .line 251
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getLocationId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 252
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "locationId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 254
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->hasRewardedVideo(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_35

    .line 255
    iget-object p2, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_55

    .line 256
    iget-object p2, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_55

    .line 259
    :cond_35
    invoke-static {}, Lcom/ironsource/adapters/chartboost/ChartboostSingletonAdapter;->getInstance()Lcom/ironsource/adapters/chartboost/ChartboostSingletonAdapter;

    move-result-object p2

    invoke-static {p2}, Lcom/chartboost/sdk/Chartboost;->setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V

    .line 260
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Chartboost.cacheRewardedVideo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 261
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->cacheRewardedVideo(Ljava/lang/String;)V

    :cond_55
    :goto_55
    return-void
.end method

.method public getCoreSDKVersion()Ljava/lang/String;
    .registers 2

    .line 116
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "4.3.4"

    return-object v0
.end method

.method public initBanners(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .registers 9

    .line 375
    invoke-direct {p0, p3}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getLocationId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 376
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "locationId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const-string v0, "appID"

    .line 379
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "Banner"

    if-eqz v1, :cond_39

    .line 380
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "missing param = appID"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const-string p1, "Missing param = appID"

    .line 381
    invoke-static {p1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    :cond_39
    const-string v1, "appSignature"

    .line 386
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 387
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "missing param = appSignature"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const-string p1, "Missing param = appSignature"

    .line 388
    invoke-static {p1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 393
    :cond_56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 394
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "missing param = adLocation"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const-string p1, "Missing param = adLocation"

    .line 395
    invoke-static {p1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 399
    :cond_6d
    invoke-static {}, Lcom/ironsource/adapters/chartboost/ChartboostSingletonAdapter;->getInstance()Lcom/ironsource/adapters/chartboost/ChartboostSingletonAdapter;

    move-result-object v2

    invoke-static {v2}, Lcom/chartboost/sdk/Chartboost;->setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V

    .line 402
    iget-object v2, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToBannerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, p4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, p1, p3}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    sget-boolean p1, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mDidInitSuccessfully:Z

    if-eqz p1, :cond_8b

    .line 409
    invoke-interface {p4}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerInitSuccess()V

    :cond_8b
    return-void
.end method

.method public initInterstitial(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 9

    .line 295
    invoke-direct {p0, p3}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getLocationId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 296
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "locationId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const-string v0, "appID"

    .line 299
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "Interstitial"

    if-eqz v1, :cond_39

    .line 300
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "missing param = appID"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const-string p1, "Missing param = appID"

    .line 301
    invoke-static {p1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    :cond_39
    const-string v1, "appSignature"

    .line 306
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 307
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "missing param = appSignature"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const-string p1, "Missing param = appSignature"

    .line 308
    invoke-static {p1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 313
    :cond_56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 314
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "missing param = adLocation"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const-string p1, "Missing param = adLocation"

    .line 315
    invoke-static {p1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 319
    :cond_6d
    invoke-static {}, Lcom/ironsource/adapters/chartboost/ChartboostSingletonAdapter;->getInstance()Lcom/ironsource/adapters/chartboost/ChartboostSingletonAdapter;

    move-result-object v2

    invoke-static {v2}, Lcom/chartboost/sdk/Chartboost;->setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V

    .line 322
    invoke-static {}, Lcom/ironsource/adapters/chartboost/ChartboostSingletonAdapter;->getInstance()Lcom/ironsource/adapters/chartboost/ChartboostSingletonAdapter;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v3}, Lcom/ironsource/adapters/chartboost/ChartboostSingletonAdapter;->addInterstitialListener(Ljava/lang/String;Ljava/lang/ref/WeakReference;)V

    .line 325
    iget-object v2, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToIsListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, p4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, p1, p3}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    sget-boolean p1, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mDidInitSuccessfully:Z

    if-eqz p1, :cond_97

    .line 332
    invoke-interface {p4}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitSuccess()V

    :cond_97
    return-void
.end method

.method public initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 10

    .line 202
    invoke-direct {p0, p3}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getLocationId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "appID"

    .line 205
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    if-eqz p4, :cond_16

    .line 207
    invoke-interface {p4, v2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    :cond_16
    return-void

    :cond_17
    const-string v1, "appSignature"

    .line 213
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_29

    if-eqz p4, :cond_28

    .line 215
    invoke-interface {p4, v2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    :cond_28
    return-void

    .line 221
    :cond_29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_35

    if-eqz p4, :cond_34

    .line 223
    invoke-interface {p4, v2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    :cond_34
    return-void

    .line 228
    :cond_35
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "locationId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/ironsource/adapters/chartboost/ChartboostSingletonAdapter;->getInstance()Lcom/ironsource/adapters/chartboost/ChartboostSingletonAdapter;

    move-result-object v2

    invoke-static {v2}, Lcom/chartboost/sdk/Chartboost;->setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V

    .line 233
    invoke-static {}, Lcom/ironsource/adapters/chartboost/ChartboostSingletonAdapter;->getInstance()Lcom/ironsource/adapters/chartboost/ChartboostSingletonAdapter;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v3}, Lcom/ironsource/adapters/chartboost/ChartboostSingletonAdapter;->addRewardedVideoListener(Ljava/lang/String;Ljava/lang/ref/WeakReference;)V

    .line 236
    iget-object v2, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, p4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, p4, p3}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    sget-boolean p2, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mDidInitSuccessfully:Z

    if-eqz p2, :cond_92

    .line 243
    invoke-static {}, Lcom/ironsource/adapters/chartboost/ChartboostSingletonAdapter;->getInstance()Lcom/ironsource/adapters/chartboost/ChartboostSingletonAdapter;

    move-result-object p2

    invoke-static {p2}, Lcom/chartboost/sdk/Chartboost;->setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V

    .line 244
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Chartboost.cacheRewardedVideo "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 245
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->cacheRewardedVideo(Ljava/lang/String;)V

    :cond_92
    return-void
.end method

.method public isInterstitialReady(Lorg/json/JSONObject;)Z
    .registers 2

    .line 368
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getLocationId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->hasInterstitial(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isRewardedVideoAvailable(Lorg/json/JSONObject;)Z
    .registers 2

    .line 288
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getLocationId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->hasRewardedVideo(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .registers 7

    .line 417
    invoke-direct {p0, p2}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getLocationId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    .line 418
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "locationId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 419
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 420
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "missing param = adLocation"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getProviderName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Banner"

    invoke-static {v0, p1, p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 426
    :cond_35
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->isBannerSizeSupported(Lcom/ironsource/mediationsdk/ISBannerSize;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 427
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

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getProviderName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->unsupportedBannerSize(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 433
    :cond_69
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getBannerSize(Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/chartboost/sdk/Banner/BannerSize;

    move-result-object v0

    if-nez v0, :cond_86

    .line 436
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "size not supported, size is null "

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getProviderName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->unsupportedBannerSize(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 442
    :cond_86
    iget-object p3, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToBannerLayout:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    new-instance p3, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$3;

    invoke-direct {p3, p0, p1, p2}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$3;-><init>(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->postOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 5

    .line 338
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getLocationId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 340
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "locationId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 341
    invoke-static {}, Lcom/ironsource/adapters/chartboost/ChartboostSingletonAdapter;->getInstance()Lcom/ironsource/adapters/chartboost/ChartboostSingletonAdapter;

    move-result-object p2

    invoke-static {p2}, Lcom/chartboost/sdk/Chartboost;->setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V

    .line 342
    new-instance p2, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$2;

    invoke-direct {p2, p0, p1}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$2;-><init>(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->postOnUIThread(Ljava/lang/Runnable;)V

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

    .line 694
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 696
    invoke-static {}, Lcom/ironsource/adapters/chartboost/ChartboostSingletonAdapter;->getInstance()Lcom/ironsource/adapters/chartboost/ChartboostSingletonAdapter;

    move-result-object v2

    invoke-static {v2}, Lcom/chartboost/sdk/Chartboost;->setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V

    .line 697
    invoke-static {v1}, Lcom/chartboost/sdk/Chartboost;->cacheRewardedVideo(Ljava/lang/String;)V

    goto :goto_11

    .line 700
    :cond_28
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToIsListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 701
    iget-object v2, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToIsListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitSuccess()V

    goto :goto_32

    .line 704
    :cond_4a
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToBannerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_54
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 705
    iget-object v2, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToBannerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    invoke-interface {v1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerInitSuccess()V

    goto :goto_54

    :cond_6c
    return-void
.end method

.method public reloadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .registers 6

    const-string p1, "adLocation"

    .line 461
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 462
    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "locationId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 463
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const-string v0, "missing param = adLocation"

    if-eqz p3, :cond_2a

    .line 464
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void

    .line 469
    :cond_2a
    iget-object p3, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToBannerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    if-nez p3, :cond_3c

    .line 471
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "listener is null"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void

    .line 476
    :cond_3c
    iget-object v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToBannerLayout:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-nez p1, :cond_5b

    .line 478
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "banner layout is null"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getProviderName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Banner"

    invoke-static {p2, p1, v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 484
    :cond_5b
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V

    return-void
.end method

.method protected setConsent(Z)V
    .registers 5

    .line 121
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mAlreadyCalledInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 122
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "consent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    if-eqz p1, :cond_33

    .line 124
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/chartboost/sdk/Privacy/model/GDPR;

    sget-object v1, Lcom/chartboost/sdk/Privacy/model/GDPR$GDPR_CONSENT;->BEHAVIORAL:Lcom/chartboost/sdk/Privacy/model/GDPR$GDPR_CONSENT;

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/Privacy/model/GDPR;-><init>(Lcom/chartboost/sdk/Privacy/model/GDPR$GDPR_CONSENT;)V

    invoke-static {p1, v0}, Lcom/chartboost/sdk/Chartboost;->addDataUseConsent(Landroid/content/Context;Lcom/chartboost/sdk/Privacy/model/DataUseConsent;)V

    goto :goto_4c

    .line 126
    :cond_33
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/chartboost/sdk/Privacy/model/GDPR;

    sget-object v1, Lcom/chartboost/sdk/Privacy/model/GDPR$GDPR_CONSENT;->NON_BEHAVIORAL:Lcom/chartboost/sdk/Privacy/model/GDPR$GDPR_CONSENT;

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/Privacy/model/GDPR;-><init>(Lcom/chartboost/sdk/Privacy/model/GDPR$GDPR_CONSENT;)V

    invoke-static {p1, v0}, Lcom/chartboost/sdk/Chartboost;->addDataUseConsent(Landroid/content/Context;Lcom/chartboost/sdk/Privacy/model/DataUseConsent;)V

    goto :goto_4c

    .line 129
    :cond_46
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mConsentCollectingUserData:Ljava/lang/Boolean;

    :goto_4c
    return-void
.end method

.method protected setMetaData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 951
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->isValidCCPAMetaData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 952
    invoke-static {p2}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->getMetaDataBooleanValue(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mDoNotSellCollectingUserData:Ljava/lang/Boolean;

    :cond_10
    return-void
.end method

.method public shouldBindBannerViewOnReload()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public showInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 5

    .line 353
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getLocationId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 354
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "locationId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 356
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->hasInterstitial(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2b

    .line 357
    invoke-static {}, Lcom/ironsource/adapters/chartboost/ChartboostSingletonAdapter;->getInstance()Lcom/ironsource/adapters/chartboost/ChartboostSingletonAdapter;

    move-result-object p2

    invoke-static {p2}, Lcom/chartboost/sdk/Chartboost;->setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V

    .line 358
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->showInterstitial(Ljava/lang/String;)V

    goto :goto_44

    .line 360
    :cond_2b
    iget-object p2, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToIsListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_44

    .line 361
    iget-object p2, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToIsListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    const-string p2, "Interstitial"

    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_44
    :goto_44
    return-void
.end method

.method public showRewardedVideo(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 6

    .line 268
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getLocationId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 269
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "locationId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 271
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->hasRewardedVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 272
    invoke-static {}, Lcom/ironsource/adapters/chartboost/ChartboostSingletonAdapter;->getInstance()Lcom/ironsource/adapters/chartboost/ChartboostSingletonAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V

    .line 273
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->showRewardedVideo(Ljava/lang/String;)V

    goto :goto_6b

    .line 275
    :cond_2b
    invoke-static {}, Lcom/ironsource/adapters/chartboost/ChartboostSingletonAdapter;->getInstance()Lcom/ironsource/adapters/chartboost/ChartboostSingletonAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V

    .line 276
    invoke-static {}, Lcom/ironsource/adapters/chartboost/ChartboostSingletonAdapter;->getInstance()Lcom/ironsource/adapters/chartboost/ChartboostSingletonAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V

    .line 277
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Chartboost.cacheRewardedVideo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 278
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->cacheRewardedVideo(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 280
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    const-string v0, "Rewarded Video"

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_6b
    :goto_6b
    const/4 p1, 0x0

    .line 283
    invoke-interface {p2, p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    return-void
.end method

.method public willDisplayVideo(Ljava/lang/String;)V
    .registers 5

    .line 605
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void
.end method
