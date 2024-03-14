.class public Lcom/ironsource/unity/androidbridge/AndroidBridge;
.super Ljava/lang/Object;
.source "AndroidBridge.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/InterstitialListener;
.implements Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyInterstitialListener;
.implements Lcom/ironsource/mediationsdk/sdk/OfferwallListener;
.implements Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;
.implements Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;
.implements Lcom/ironsource/mediationsdk/sdk/SegmentListener;


# static fields
.field private static final GitHash:Ljava/lang/String; = "4488a791"

.field private static final mInstance:Lcom/ironsource/unity/androidbridge/AndroidBridge;


# instance fields
.field private final BANNER_POSITION_TOP:I

.field private final ERROR_CODE:Ljava/lang/String;

.field private final ERROR_DESCRIPTION:Ljava/lang/String;

.field private final IRONSOURCE_EVENT_GAMEOBJECT:Ljava/lang/String;

.field private final PLACEMENT_NAME:Ljava/lang/String;

.field private final REWARD_AMOUNT:Ljava/lang/String;

.field private final REWARD_NAME:Ljava/lang/String;

.field private mBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

.field private mBannerContainer:Landroid/widget/FrameLayout;

.field private mIsBannerLoaded:Z

.field private mIsInitBannerCalled:Z

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    new-instance v0, Lcom/ironsource/unity/androidbridge/AndroidBridge;

    invoke-direct {v0}, Lcom/ironsource/unity/androidbridge/AndroidBridge;-><init>()V

    sput-object v0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mInstance:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "IronSourceEvents"

    .line 46
    iput-object v0, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->IRONSOURCE_EVENT_GAMEOBJECT:Ljava/lang/String;

    const-string v0, "error_code"

    .line 47
    iput-object v0, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->ERROR_CODE:Ljava/lang/String;

    const-string v0, "error_description"

    .line 48
    iput-object v0, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->ERROR_DESCRIPTION:Ljava/lang/String;

    const-string v0, "placement_name"

    .line 50
    iput-object v0, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->PLACEMENT_NAME:Ljava/lang/String;

    const-string v0, "reward_name"

    .line 51
    iput-object v0, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->REWARD_NAME:Ljava/lang/String;

    const-string v0, "reward_amount"

    .line 52
    iput-object v0, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->REWARD_AMOUNT:Ljava/lang/String;

    const/4 v0, 0x1

    .line 54
    iput v0, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->BANNER_POSITION_TOP:I

    .line 70
    invoke-static {p0}, Lcom/ironsource/mediationsdk/IronSource;->setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V

    .line 71
    invoke-static {p0}, Lcom/ironsource/mediationsdk/IronSource;->setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V

    .line 72
    invoke-static {p0}, Lcom/ironsource/mediationsdk/IronSource;->setOfferwallListener(Lcom/ironsource/mediationsdk/sdk/OfferwallListener;)V

    .line 73
    invoke-static {p0}, Lcom/ironsource/mediationsdk/IronSource;->setISDemandOnlyInterstitialListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyInterstitialListener;)V

    .line 74
    invoke-static {p0}, Lcom/ironsource/mediationsdk/IronSource;->setISDemandOnlyRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;)V

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mUIHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mBannerContainer:Landroid/widget/FrameLayout;

    .line 78
    iput-object v0, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mIsBannerLoaded:Z

    .line 80
    iput-boolean v0, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mIsInitBannerCalled:Z

    return-void
.end method

.method static synthetic access$000()Lcom/ironsource/unity/androidbridge/AndroidBridge;
    .registers 1

    .line 44
    sget-object v0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mInstance:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ironsource/unity/androidbridge/AndroidBridge;)Landroid/widget/FrameLayout;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mBannerContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ironsource/unity/androidbridge/AndroidBridge;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mBannerContainer:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ironsource/unity/androidbridge/AndroidBridge;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    return-object p0
.end method

.method static synthetic access$202(Lcom/ironsource/unity/androidbridge/AndroidBridge;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    return-object p1
.end method

.method static synthetic access$300(Lcom/ironsource/unity/androidbridge/AndroidBridge;Ljava/lang/String;II)Lcom/ironsource/mediationsdk/ISBannerSize;
    .registers 4

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->getBannerSize(Ljava/lang/String;II)Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/ironsource/unity/androidbridge/AndroidBridge;)Landroid/os/Handler;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ironsource/unity/androidbridge/AndroidBridge;Ljava/lang/String;)V
    .registers 2

    .line 44
    invoke-direct {p0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$602(Lcom/ironsource/unity/androidbridge/AndroidBridge;Z)Z
    .registers 2

    .line 44
    iput-boolean p1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mIsBannerLoaded:Z

    return p1
.end method

.method static synthetic access$700(Lcom/ironsource/unity/androidbridge/AndroidBridge;Lcom/ironsource/mediationsdk/logger/IronSourceError;)Ljava/lang/String;
    .registers 2

    .line 44
    invoke-direct {p0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->parseErrorToEvent(Lcom/ironsource/mediationsdk/logger/IronSourceError;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/ironsource/unity/androidbridge/AndroidBridge;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getBannerSize(Ljava/lang/String;II)Lcom/ironsource/mediationsdk/ISBannerSize;
    .registers 5

    const-string v0, "CUSTOM"

    .line 456
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 457
    new-instance p1, Lcom/ironsource/mediationsdk/ISBannerSize;

    invoke-direct {p1, p2, p3}, Lcom/ironsource/mediationsdk/ISBannerSize;-><init>(II)V

    return-object p1

    .line 459
    :cond_e
    new-instance p2, Lcom/ironsource/mediationsdk/ISBannerSize;

    invoke-direct {p2, p1}, Lcom/ironsource/mediationsdk/ISBannerSize;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method public static declared-synchronized getInstance()Lcom/ironsource/unity/androidbridge/AndroidBridge;
    .registers 2

    const-class v0, Lcom/ironsource/unity/androidbridge/AndroidBridge;

    monitor-enter v0

    .line 66
    :try_start_3
    sget-object v1, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mInstance:Lcom/ironsource/unity/androidbridge/AndroidBridge;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private loadAndShowBanner(Ljava/lang/String;IIILjava/lang/String;)V
    .registers 15

    .line 342
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mUIHandler:Landroid/os/Handler;

    new-instance v8, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;-><init>(Lcom/ironsource/unity/androidbridge/AndroidBridge;Ljava/lang/String;IIILjava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private parseErrorToEvent(Lcom/ironsource/mediationsdk/logger/IronSourceError;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_5

    const-string p1, ""

    goto :goto_11

    .line 895
    :cond_5
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->parseErrorToEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_11
    return-object p1
.end method

.method private sendUnityEvent(Ljava/lang/String;)V
    .registers 3

    const-string v0, ""

    .line 88
    invoke-direct {p0, p1, v0}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 93
    :try_start_0
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    if-nez v0, :cond_5

    return-void

    .line 97
    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p2, ""

    :cond_d
    const-string v0, "IronSourceEvents"

    .line 98
    invoke-static {v0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_17
    return-void
.end method


# virtual methods
.method public clearRewardedVideoServerParams()V
    .registers 1

    .line 257
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->clearRewardedVideoServerParameters()V

    return-void
.end method

.method public destroyBanner()V
    .registers 4

    .line 464
    sget-object v0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mInstance:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    monitor-enter v0

    .line 465
    :try_start_3
    iget-object v1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/ironsource/unity/androidbridge/AndroidBridge$3;

    invoke-direct {v2, p0}, Lcom/ironsource/unity/androidbridge/AndroidBridge$3;-><init>(Lcom/ironsource/unity/androidbridge/AndroidBridge;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 482
    monitor-exit v0

    return-void

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public displayBanner()V
    .registers 4

    .line 486
    sget-object v0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mInstance:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    monitor-enter v0

    .line 487
    :try_start_3
    iget-object v1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/ironsource/unity/androidbridge/AndroidBridge$4;

    invoke-direct {v2, p0}, Lcom/ironsource/unity/androidbridge/AndroidBridge$4;-><init>(Lcom/ironsource/unity/androidbridge/AndroidBridge;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 501
    monitor-exit v0

    return-void

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getAdvertiserId()Ljava/lang/String;
    .registers 5

    .line 111
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/ironsource/unity/androidbridge/AndroidBridge$1;

    invoke-direct {v1, p0}, Lcom/ironsource/unity/androidbridge/AndroidBridge$1;-><init>(Lcom/ironsource/unity/androidbridge/AndroidBridge;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 118
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    const-wide/16 v1, 0x1

    .line 121
    :try_start_f
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_17} :catch_18

    goto :goto_1e

    :catch_18
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    :goto_1e
    return-object v0
.end method

.method public getHashMapFromJsonString(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 875
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 878
    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 880
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 882
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 883
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 884
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_21} :catch_22

    goto :goto_e

    :catch_22
    move-exception p1

    .line 888
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_26
    return-object v0
.end method

.method public getOfferwallCredits()V
    .registers 1

    .line 325
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->getOfferwallCredits()V

    return-void
.end method

.method public getPlacementInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 237
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->getRewardedVideoPlacementInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object p1

    .line 238
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_9
    const-string v1, "placement_name"

    .line 240
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "reward_name"

    .line 241
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getRewardName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "reward_amount"

    .line 242
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getRewardAmount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_31} :catch_32

    goto :goto_37

    :catch_32
    move-exception p1

    .line 245
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_37
    return-object p1
.end method

.method public getUnityActivity()Landroid/app/Activity;
    .registers 2

    .line 84
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public hideBanner()V
    .registers 4

    .line 505
    sget-object v0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mInstance:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    monitor-enter v0

    .line 506
    :try_start_3
    iget-object v1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/ironsource/unity/androidbridge/AndroidBridge$5;

    invoke-direct {v2, p0}, Lcom/ironsource/unity/androidbridge/AndroidBridge$5;-><init>(Lcom/ironsource/unity/androidbridge/AndroidBridge;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 520
    monitor-exit v0

    return-void

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public init(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 175
    iput-boolean v0, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mIsInitBannerCalled:Z

    .line 176
    invoke-virtual {p0}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->getUnityActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/IronSource;->init(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public init(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    array-length v1, p2

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_58

    aget-object v3, p2, v2

    .line 183
    sget-object v4, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 184
    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 185
    :cond_1d
    sget-object v4, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 186
    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 187
    :cond_2f
    sget-object v4, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->OFFERWALL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 188
    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->OFFERWALL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 189
    :cond_41
    sget-object v4, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_55

    const/4 v3, 0x1

    .line 190
    iput-boolean v3, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mIsInitBannerCalled:Z

    .line 191
    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_55
    :goto_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 195
    :cond_58
    invoke-virtual {p0}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->getUnityActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {p2, p1, v0}, Lcom/ironsource/mediationsdk/IronSource;->init(Landroid/app/Activity;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    return-void
.end method

.method public initISDemandOnly(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    array-length v1, p2

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_55

    aget-object v3, p2, v2

    .line 202
    sget-object v4, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 203
    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 204
    :cond_1d
    sget-object v4, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 205
    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 206
    :cond_2f
    sget-object v4, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->OFFERWALL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 207
    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->OFFERWALL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 208
    :cond_41
    sget-object v4, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 209
    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_52
    :goto_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 213
    :cond_55
    invoke-virtual {p0}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->getUnityActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {p2, p1, v0}, Lcom/ironsource/mediationsdk/IronSource;->initISDemandOnly(Landroid/app/Activity;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    return-void
.end method

.method public isBannerPlacementCapped(Ljava/lang/String;)Z
    .registers 2

    .line 524
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->isBannerPlacementCapped(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isISDemandOnlyInterstitialReady(Ljava/lang/String;)Z
    .registers 2

    .line 307
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->isISDemandOnlyInterstitialReady(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isISDemandOnlyRewardedVideoAvailable(Ljava/lang/String;)Z
    .registers 2

    .line 271
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->isISDemandOnlyRewardedVideoAvailable(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isInterstitialPlacementCapped(Ljava/lang/String;)Z
    .registers 2

    .line 293
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->isInterstitialPlacementCapped(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isInterstitialReady()Z
    .registers 2

    .line 289
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->isInterstitialReady()Z

    move-result v0

    return v0
.end method

.method public isOfferwallAvailable()Z
    .registers 2

    .line 321
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->isOfferwallAvailable()Z

    move-result v0

    return v0
.end method

.method public isRewardedVideoAvailable()Z
    .registers 2

    .line 227
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->isRewardedVideoAvailable()Z

    move-result v0

    return v0
.end method

.method public isRewardedVideoPlacementCapped(Ljava/lang/String;)Z
    .registers 2

    .line 231
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->isRewardedVideoPlacementCapped(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public loadBanner(Ljava/lang/String;IIILjava/lang/String;)V
    .registers 8

    .line 331
    sget-object v0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mInstance:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    monitor-enter v0

    .line 332
    :try_start_3
    iget-boolean v1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mIsInitBannerCalled:Z

    if-eqz v1, :cond_14

    iget-boolean v1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mIsBannerLoaded:Z

    if-eqz v1, :cond_c

    goto :goto_14

    :cond_c
    const/4 v1, 0x1

    .line 336
    iput-boolean v1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mIsBannerLoaded:Z

    .line 337
    invoke-direct/range {p0 .. p5}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->loadAndShowBanner(Ljava/lang/String;IIILjava/lang/String;)V

    .line 338
    monitor-exit v0

    return-void

    .line 333
    :cond_14
    :goto_14
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p1

    .line 338
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public loadISDemandOnlyInterstitial(Ljava/lang/String;)V
    .registers 2

    .line 299
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->loadISDemandOnlyInterstitial(Ljava/lang/String;)V

    return-void
.end method

.method public loadISDemandOnlyRewardedVideo(Ljava/lang/String;)V
    .registers 2

    .line 267
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->loadISDemandOnlyRewardedVideo(Ljava/lang/String;)V

    return-void
.end method

.method public loadInterstitial()V
    .registers 1

    .line 277
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->loadInterstitial()V

    return-void
.end method

.method public onGetOfferwallCreditsFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 4

    const-string v0, "onGetOfferwallCreditsFailed"

    if-eqz p1, :cond_14

    .line 841
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v1

    .line 842
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    .line 843
    invoke-virtual {p0, v1, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->parseErrorToEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :cond_14
    const-string p1, ""

    .line 846
    invoke-direct {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_19
    return-void
.end method

.method public onInterstitialAdClicked()V
    .registers 3

    const-string v0, "onInterstitialAdClicked"

    const-string v1, ""

    .line 745
    invoke-direct {p0, v0, v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialAdClicked(Ljava/lang/String;)V
    .registers 3

    const-string v0, "onInterstitialAdClickedDemandOnly"

    .line 797
    invoke-direct {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialAdClosed()V
    .registers 3

    const-string v0, "onInterstitialAdClosed"

    const-string v1, ""

    .line 725
    invoke-direct {p0, v0, v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialAdClosed(Ljava/lang/String;)V
    .registers 3

    const-string v0, "onInterstitialAdClosedDemandOnly"

    .line 777
    invoke-direct {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 4

    const-string v0, "onInterstitialAdLoadFailed"

    if-eqz p1, :cond_14

    .line 711
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v1

    .line 712
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    .line 713
    invoke-virtual {p0, v1, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->parseErrorToEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :cond_14
    const-string p1, ""

    .line 715
    invoke-direct {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_19
    return-void
.end method

.method public onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p2, :cond_18

    .line 759
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v3

    .line 760
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    .line 761
    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    invoke-virtual {p0, v3, p2}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->parseErrorToEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    goto :goto_20

    .line 764
    :cond_18
    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    const-string p1, ""

    aput-object p1, v2, v0

    .line 767
    :goto_20
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onInterstitialAdLoadFailedDemandOnly"

    invoke-direct {p0, p2, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialAdOpened()V
    .registers 3

    const-string v0, "onInterstitialAdOpened"

    const-string v1, ""

    .line 720
    invoke-direct {p0, v0, v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialAdOpened(Ljava/lang/String;)V
    .registers 3

    const-string v0, "onInterstitialAdOpenedDemandOnly"

    .line 772
    invoke-direct {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialAdReady()V
    .registers 3

    const-string v0, "onInterstitialAdReady"

    const-string v1, ""

    .line 705
    invoke-direct {p0, v0, v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialAdReady(Ljava/lang/String;)V
    .registers 3

    const-string v0, "onInterstitialAdReadyDemandOnly"

    .line 752
    invoke-direct {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 4

    const-string v0, "onInterstitialAdShowFailed"

    if-eqz p1, :cond_14

    .line 736
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v1

    .line 737
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    .line 738
    invoke-virtual {p0, v1, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->parseErrorToEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :cond_14
    const-string p1, ""

    .line 740
    invoke-direct {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_19
    return-void
.end method

.method public onInterstitialAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p2, :cond_18

    .line 784
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v3

    .line 785
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    .line 786
    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    invoke-virtual {p0, v3, p2}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->parseErrorToEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    goto :goto_20

    .line 789
    :cond_18
    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    const-string p1, ""

    aput-object p1, v2, v0

    .line 792
    :goto_20
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onInterstitialAdShowFailedDemandOnly"

    invoke-direct {p0, p2, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialAdShowSucceeded()V
    .registers 3

    const-string v0, "onInterstitialAdShowSucceeded"

    const-string v1, ""

    .line 730
    invoke-direct {p0, v0, v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onOfferwallAdCredited(IIZ)Z
    .registers 6

    .line 824
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_5
    const-string v1, "credits"

    .line 827
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "totalCredits"

    .line 828
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "totalCreditsFlag"

    .line 829
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onOfferwallAdCredited"

    .line 831
    invoke-direct {p0, p2, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2e} :catch_2f

    goto :goto_33

    :catch_2f
    move-exception p1

    .line 833
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_33
    const/4 p1, 0x1

    return p1
.end method

.method public onOfferwallAvailable(Z)V
    .registers 3

    .line 804
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onOfferwallAvailable"

    invoke-direct {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onOfferwallClosed()V
    .registers 3

    const-string v0, "onOfferwallClosed"

    const-string v1, ""

    .line 851
    invoke-direct {p0, v0, v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onOfferwallOpened()V
    .registers 3

    const-string v0, "onOfferwallOpened"

    const-string v1, ""

    .line 809
    invoke-direct {p0, v0, v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onOfferwallShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 4

    const-string v0, "onOfferwallShowFailed"

    if-eqz p1, :cond_14

    .line 815
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v1

    .line 816
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    .line 817
    invoke-virtual {p0, v1, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->parseErrorToEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :cond_14
    const-string p1, ""

    .line 819
    invoke-direct {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_19
    return-void
.end method

.method public onPause()V
    .registers 2

    .line 153
    invoke-virtual {p0}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->getUnityActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 149
    invoke-virtual {p0}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->getUnityActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->onResume(Landroid/app/Activity;)V

    return-void
.end method

.method public onRewardedVideoAdClicked(Lcom/ironsource/mediationsdk/model/Placement;)V
    .registers 5

    .line 628
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_5
    const-string v1, "placement_id"

    .line 630
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "placement_name"

    .line 631
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "placement_reward_amount"

    .line 632
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getRewardAmount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "placement_reward_name"

    .line 633
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getRewardName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onRewardedVideoAdClicked"

    .line 635
    invoke-direct {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3f} :catch_40

    goto :goto_44

    :catch_40
    move-exception p1

    .line 638
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_44
    return-void
.end method

.method public onRewardedVideoAdClicked(Ljava/lang/String;)V
    .registers 3

    const-string v0, "onRewardedVideoAdClickedDemandOnly"

    .line 698
    invoke-direct {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAdClosed()V
    .registers 3

    const-string v0, "onRewardedVideoAdClosed"

    const-string v1, ""

    .line 582
    invoke-direct {p0, v0, v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAdClosed(Ljava/lang/String;)V
    .registers 3

    const-string v0, "onRewardedVideoAdClosedDemandOnly"

    .line 673
    invoke-direct {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAdEnded()V
    .registers 3

    const-string v0, "onRewardedVideoAdEnded"

    const-string v1, ""

    .line 597
    invoke-direct {p0, v0, v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p2, :cond_18

    .line 655
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v3

    .line 656
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    .line 657
    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    invoke-virtual {p0, v3, p2}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->parseErrorToEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    goto :goto_20

    .line 660
    :cond_18
    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    const-string p1, ""

    aput-object p1, v2, v0

    .line 663
    :goto_20
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onRewardedVideoAdLoadFailedDemandOnly"

    invoke-direct {p0, p2, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAdLoadSuccess(Ljava/lang/String;)V
    .registers 3

    const-string v0, "onRewardedVideoAdLoadedDemandOnly"

    .line 647
    invoke-direct {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAdOpened()V
    .registers 3

    const-string v0, "onRewardedVideoAdOpened"

    const-string v1, ""

    .line 577
    invoke-direct {p0, v0, v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAdOpened(Ljava/lang/String;)V
    .registers 3

    const-string v0, "onRewardedVideoAdOpenedDemandOnly"

    .line 668
    invoke-direct {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAdRewarded(Lcom/ironsource/mediationsdk/model/Placement;)V
    .registers 5

    .line 602
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_5
    const-string v1, "placement_id"

    .line 604
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "placement_name"

    .line 605
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "placement_reward_amount"

    .line 606
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getRewardAmount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "placement_reward_name"

    .line 607
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getRewardName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onRewardedVideoAdRewarded"

    .line 609
    invoke-direct {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3f} :catch_40

    goto :goto_44

    :catch_40
    move-exception p1

    .line 612
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_44
    return-void
.end method

.method public onRewardedVideoAdRewarded(Ljava/lang/String;)V
    .registers 3

    const-string v0, "onRewardedVideoAdRewardedDemandOnly"

    .line 678
    invoke-direct {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 4

    const-string v0, "onRewardedVideoAdShowFailed"

    if-eqz p1, :cond_14

    .line 619
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v1

    .line 620
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    .line 621
    invoke-virtual {p0, v1, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->parseErrorToEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :cond_14
    const-string p1, ""

    .line 623
    invoke-direct {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_19
    return-void
.end method

.method public onRewardedVideoAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p2, :cond_18

    .line 685
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v3

    .line 686
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    .line 687
    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    invoke-virtual {p0, v3, p2}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->parseErrorToEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    goto :goto_20

    .line 690
    :cond_18
    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    const-string p1, ""

    aput-object p1, v2, v0

    .line 693
    :goto_20
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onRewardedVideoAdShowFailedDemandOnly"

    invoke-direct {p0, p2, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAdStarted()V
    .registers 3

    const-string v0, "onRewardedVideoAdStarted"

    const-string v1, ""

    .line 592
    invoke-direct {p0, v0, v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAvailabilityChanged(Z)V
    .registers 3

    .line 587
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onRewardedVideoAvailabilityChanged"

    invoke-direct {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSegmentReceived(Ljava/lang/String;)V
    .registers 3

    const-string v0, "onSegmentReceived"

    .line 915
    invoke-direct {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public parseErrorToEvent(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 899
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_5
    const-string v1, "error_code"

    .line 902
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "error_description"

    .line 903
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1c} :catch_1d

    goto :goto_23

    :catch_1d
    move-exception p1

    .line 907
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    :goto_23
    return-object p1
.end method

.method public setAdaptersDebug(Z)V
    .registers 2

    .line 142
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->setAdaptersDebug(Z)V

    return-void
.end method

.method public setAge(I)V
    .registers 2

    .line 157
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->setAge(I)V

    return-void
.end method

.method public setClientSideCallbacks(Z)V
    .registers 3

    .line 861
    invoke-static {}, Lcom/ironsource/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/ironsource/adapters/supersonicads/SupersonicConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/adapters/supersonicads/SupersonicConfig;->setClientSideCallbacks(Z)V

    return-void
.end method

.method public setConsent(Z)V
    .registers 2

    .line 565
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->setConsent(Z)V

    return-void
.end method

.method public setDynamicUserId(Ljava/lang/String;)Z
    .registers 2

    .line 138
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->setDynamicUserId(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setGender(Ljava/lang/String;)V
    .registers 2

    .line 161
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->setGender(Ljava/lang/String;)V

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .registers 3

    .line 857
    invoke-static {}, Lcom/ironsource/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/ironsource/adapters/supersonicads/SupersonicConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/adapters/supersonicads/SupersonicConfig;->setLanguage(Ljava/lang/String;)V

    return-void
.end method

.method public setMediationSegment(Ljava/lang/String;)V
    .registers 2

    .line 165
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->setMediationSegment(Ljava/lang/String;)V

    return-void
.end method

.method public setMetaData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 570
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/IronSource;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOfferwallCustomParams(Ljava/lang/String;)V
    .registers 3

    .line 870
    invoke-virtual {p0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->getHashMapFromJsonString(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 871
    invoke-static {}, Lcom/ironsource/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/ironsource/adapters/supersonicads/SupersonicConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/adapters/supersonicads/SupersonicConfig;->setOfferwallCustomParams(Ljava/util/Map;)V

    return-void
.end method

.method public setPluginData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 105
    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/mediationsdk/config/ConfigFile;->setPluginData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRewardedVideoCustomParams(Ljava/lang/String;)V
    .registers 3

    .line 865
    invoke-virtual {p0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->getHashMapFromJsonString(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 866
    invoke-static {}, Lcom/ironsource/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/ironsource/adapters/supersonicads/SupersonicConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/adapters/supersonicads/SupersonicConfig;->setRewardedVideoCustomParams(Ljava/util/Map;)V

    return-void
.end method

.method public setRewardedVideoServerParams(Ljava/lang/String;)V
    .registers 2

    .line 252
    invoke-virtual {p0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->getHashMapFromJsonString(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 253
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->setRewardedVideoServerParameters(Ljava/util/Map;)V

    return-void
.end method

.method public setSegment(Ljava/lang/String;)V
    .registers 6

    .line 529
    :try_start_0
    invoke-static {p0}, Lcom/ironsource/mediationsdk/IronSource;->setSegmentListener(Lcom/ironsource/mediationsdk/sdk/SegmentListener;)V

    .line 530
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 531
    new-instance p1, Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-direct {p1}, Lcom/ironsource/mediationsdk/IronSourceSegment;-><init>()V

    .line 533
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 534
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 535
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "age"

    .line 537
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 538
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/IronSourceSegment;->setAge(I)V

    goto :goto_11

    :cond_2d
    const-string v3, "gender"

    .line 539
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 540
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/IronSourceSegment;->setGender(Ljava/lang/String;)V

    goto :goto_11

    :cond_3d
    const-string v3, "level"

    .line 541
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 542
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/IronSourceSegment;->setLevel(I)V

    goto :goto_11

    :cond_4d
    const-string v3, "isPaying"

    .line 543
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 544
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5d

    const/4 v2, 0x1

    goto :goto_5e

    :cond_5d
    const/4 v2, 0x0

    :goto_5e
    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/IronSourceSegment;->setIsPaying(Z)V

    goto :goto_11

    :cond_62
    const-string v3, "userCreationDate"

    .line 545
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 546
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/ironsource/mediationsdk/IronSourceSegment;->setUserCreationDate(J)V

    goto :goto_11

    :cond_72
    const-string v3, "segmentName"

    .line 547
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    .line 548
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/IronSourceSegment;->setSegmentName(Ljava/lang/String;)V

    goto :goto_11

    :cond_82
    const-string v3, "iapt"

    .line 549
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 550
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/ironsource/mediationsdk/IronSourceSegment;->setIAPTotal(D)V

    goto/16 :goto_11

    .line 553
    :cond_93
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/ironsource/mediationsdk/IronSourceSegment;->setCustom(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 556
    :cond_9c
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->setSegment(Lcom/ironsource/mediationsdk/IronSourceSegment;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9f} :catch_a0

    goto :goto_a4

    :catch_a0
    move-exception p1

    .line 559
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a4
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2

    .line 171
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->setUserId(Ljava/lang/String;)V

    return-void
.end method

.method public shouldTrackNetworkState(Z)V
    .registers 3

    .line 134
    invoke-virtual {p0}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->getUnityActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/IronSource;->shouldTrackNetworkState(Landroid/content/Context;Z)V

    return-void
.end method

.method public showISDemandOnlyInterstitial(Ljava/lang/String;)V
    .registers 2

    .line 303
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->showISDemandOnlyInterstitial(Ljava/lang/String;)V

    return-void
.end method

.method public showISDemandOnlyRewardedVideo(Ljava/lang/String;)V
    .registers 2

    .line 263
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->showISDemandOnlyRewardedVideo(Ljava/lang/String;)V

    return-void
.end method

.method public showInterstitial()V
    .registers 1

    .line 281
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->showInterstitial()V

    return-void
.end method

.method public showInterstitial(Ljava/lang/String;)V
    .registers 2

    .line 285
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->showInterstitial(Ljava/lang/String;)V

    return-void
.end method

.method public showOfferwall()V
    .registers 1

    .line 313
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->showOfferwall()V

    return-void
.end method

.method public showOfferwall(Ljava/lang/String;)V
    .registers 2

    .line 317
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->showOfferwall(Ljava/lang/String;)V

    return-void
.end method

.method public showRewardedVideo()V
    .registers 1

    .line 219
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->showRewardedVideo()V

    return-void
.end method

.method public showRewardedVideo(Ljava/lang/String;)V
    .registers 2

    .line 223
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->showRewardedVideo(Ljava/lang/String;)V

    return-void
.end method

.method public validateIntegration()V
    .registers 2

    .line 130
    invoke-virtual {p0}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->getUnityActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validateIntegration(Landroid/app/Activity;)V

    return-void
.end method
