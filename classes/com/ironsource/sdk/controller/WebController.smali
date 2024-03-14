.class public Lcom/ironsource/sdk/controller/WebController;
.super Landroid/webkit/WebView;
.source "WebController.java"

# interfaces
.implements Lcom/ironsource/sdk/controller/IronSourceController;
.implements Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/controller/WebController$State;,
        Lcom/ironsource/sdk/controller/WebController$Result;,
        Lcom/ironsource/sdk/controller/WebController$OnInitProductHandler;,
        Lcom/ironsource/sdk/controller/WebController$NativeAPI;,
        Lcom/ironsource/sdk/controller/WebController$FrameBustWebViewClient;,
        Lcom/ironsource/sdk/controller/WebController$ChromeClient;,
        Lcom/ironsource/sdk/controller/WebController$ViewClient;,
        Lcom/ironsource/sdk/controller/WebController$SupersonicWebViewTouchListener;
    }
.end annotation


# static fields
.field public static EXTERNAL_URL:Ljava/lang/String; = "external_url"

.field public static IS_STORE:Ljava/lang/String; = "is_store"

.field private static JSON_KEY_FAIL:Ljava/lang/String; = "fail"

.field private static JSON_KEY_SUCCESS:Ljava/lang/String; = "success"

.field public static SECONDARY_WEB_VIEW:Ljava/lang/String; = "secondary_web_view"

.field public static mDebugMode:I


# instance fields
.field private final GENERIC_MESSAGE:Ljava/lang/String;

.field private PUB_TAG:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private downloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

.field private isKitkatAndAbove:Ljava/lang/Boolean;

.field private isRemoveCloseEventHandler:Z

.field private mApplicationKey:Ljava/lang/String;

.field private mBannerJsAdapter:Lcom/ironsource/sdk/controller/BannerJSAdapter;

.field private mCacheDirectory:Ljava/lang/String;

.field private mChangeListener:Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

.field private mCloseEventTimer:Landroid/os/CountDownTimer;

.field private mConnectivityAdapter:Lcom/ironsource/sdk/service/ConnectivityAdapter;

.field private mControllerAdapter:Lcom/ironsource/sdk/controller/ControllerAdapter;

.field private mControllerKeyPressed:Ljava/lang/String;

.field private mControllerLayout:Landroid/widget/FrameLayout;

.field private mControllerListener:Lcom/ironsource/sdk/controller/ControllerEventListener;

.field mCurrentActivityContext:Landroid/content/Context;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mCustomViewContainer:Landroid/widget/FrameLayout;

.field private mDSBannerListener:Lcom/ironsource/sdk/listeners/internals/DSBannerListener;

.field private mDSInterstitialListener:Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

.field private mDSRewardedVideoListener:Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

.field private mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

.field private mDeviceDataJsAdapter:Lcom/ironsource/sdk/controller/DeviceDataJSAdapter;

.field private mHiddenForceCloseHeight:I

.field private mHiddenForceCloseLocation:Ljava/lang/String;

.field private mHiddenForceCloseWidth:I

.field private mIsImmersive:Z

.field private mIsWebControllerReady:Z

.field public mLoadControllerTimer:Landroid/os/CountDownTimer;

.field private mOWCreditsMiss:Z

.field private mOWExtraParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOWmiss:Z

.field private mOmidJsAdapter:Lcom/ironsource/sdk/controller/OMIDJSAdapter;

.field private mOnGenericFunctionListener:Lcom/ironsource/sdk/listeners/OnGenericFunctionListener;

.field private mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

.field private mOrientationState:Ljava/lang/String;

.field private mPermissionsJsAdapter:Lcom/ironsource/sdk/controller/PermissionsJSAdapter;

.field private mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

.field private mSavedStateLocker:Ljava/lang/Object;

.field private mState:Lcom/ironsource/sdk/controller/WebController$State;

.field private mTokenJSAdapter:Lcom/ironsource/sdk/controller/TokenJSAdapter;

.field mUiHandler:Landroid/os/Handler;

.field private mUserId:Ljava/lang/String;

.field private mVideoEventsListener:Lcom/ironsource/sdk/controller/VideoEventsListener;

.field private mWebChromeClient:Lcom/ironsource/sdk/controller/WebController$ChromeClient;

.field private mWebViewMessagingMediator:Lcom/ironsource/sdk/controller/WebViewMessagingMediator;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/ironsource/sdk/controller/DemandSourceManager;Lcom/ironsource/sdk/controller/ControllerEventListener;)V
    .registers 7

    .line 197
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 102
    const-class v0, Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    const-string v0, "IronSource"

    .line 103
    iput-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->PUB_TAG:Ljava/lang/String;

    const-string v0, "We\'re sorry, some error occurred. we will investigate it"

    .line 107
    iput-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->GENERIC_MESSAGE:Ljava/lang/String;

    const-string v0, "interrupt"

    .line 131
    iput-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mControllerKeyPressed:Ljava/lang/String;

    const/16 v0, 0x32

    .line 137
    iput v0, p0, Lcom/ironsource/sdk/controller/WebController;->mHiddenForceCloseWidth:I

    .line 138
    iput v0, p0, Lcom/ironsource/sdk/controller/WebController;->mHiddenForceCloseHeight:I

    const-string v0, "top-right"

    .line 139
    iput-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mHiddenForceCloseLocation:Ljava/lang/String;

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->isKitkatAndAbove:Ljava/lang/Boolean;

    .line 167
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->mSavedStateLocker:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 172
    iput-boolean v1, p0, Lcom/ironsource/sdk/controller/WebController;->mIsImmersive:Z

    .line 198
    new-instance v1, Landroid/content/MutableContextWrapper;

    invoke-direct {v1, p1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->mCurrentActivityContext:Landroid/content/Context;

    .line 199
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    const-string v2, "C\'tor"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iput-object p3, p0, Lcom/ironsource/sdk/controller/WebController;->mControllerListener:Lcom/ironsource/sdk/controller/ControllerEventListener;

    .line 202
    iget-object p3, p0, Lcom/ironsource/sdk/controller/WebController;->mCurrentActivityContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/ironsource/sdk/controller/WebController;->initializeCacheDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/ironsource/sdk/controller/WebController;->mCacheDirectory:Ljava/lang/String;

    .line 203
    iput-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    .line 204
    iget-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->mCurrentActivityContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/ironsource/sdk/controller/WebController;->initLayout(Landroid/content/Context;)V

    .line 206
    new-instance p2, Lcom/ironsource/sdk/data/AdUnitsState;

    invoke-direct {p2}, Lcom/ironsource/sdk/data/AdUnitsState;-><init>()V

    iput-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    .line 208
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/WebController;->getDownloadManager()Lcom/ironsource/sdk/precache/DownloadManager;

    move-result-object p2

    iput-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->downloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    .line 209
    iget-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->downloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    invoke-virtual {p2, p0}, Lcom/ironsource/sdk/precache/DownloadManager;->setOnPreCacheCompletion(Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;)V

    .line 211
    new-instance p2, Lcom/ironsource/sdk/controller/WebController$ChromeClient;

    invoke-direct {p2, p0, v0}, Lcom/ironsource/sdk/controller/WebController$ChromeClient;-><init>(Lcom/ironsource/sdk/controller/WebController;Lcom/ironsource/sdk/controller/WebController$1;)V

    iput-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->mWebChromeClient:Lcom/ironsource/sdk/controller/WebController$ChromeClient;

    .line 213
    new-instance p2, Lcom/ironsource/sdk/controller/WebController$ViewClient;

    invoke-direct {p2, p0, v0}, Lcom/ironsource/sdk/controller/WebController$ViewClient;-><init>(Lcom/ironsource/sdk/controller/WebController;Lcom/ironsource/sdk/controller/WebController$1;)V

    invoke-virtual {p0, p2}, Lcom/ironsource/sdk/controller/WebController;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 214
    iget-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->mWebChromeClient:Lcom/ironsource/sdk/controller/WebController$ChromeClient;

    invoke-virtual {p0, p2}, Lcom/ironsource/sdk/controller/WebController;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 216
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/WebController;->setWebViewSettings()V

    .line 218
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/WebController;->createSecuredCommunication()V

    .line 220
    invoke-virtual {p0, p0}, Lcom/ironsource/sdk/controller/WebController;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 222
    new-instance p2, Lcom/ironsource/sdk/controller/WebController$SupersonicWebViewTouchListener;

    invoke-direct {p2, p0, v0}, Lcom/ironsource/sdk/controller/WebController$SupersonicWebViewTouchListener;-><init>(Lcom/ironsource/sdk/controller/WebController;Lcom/ironsource/sdk/controller/WebController$1;)V

    invoke-virtual {p0, p2}, Lcom/ironsource/sdk/controller/WebController;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 223
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/WebController;->createMainThreadHandler()Landroid/os/Handler;

    move-result-object p2

    iput-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->mUiHandler:Landroid/os/Handler;

    .line 224
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->createConnectivityAdapter(Landroid/content/Context;)Lcom/ironsource/sdk/service/ConnectivityAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->mConnectivityAdapter:Lcom/ironsource/sdk/service/ConnectivityAdapter;

    .line 226
    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->registerConnectionReceiver(Landroid/content/Context;)V

    .line 227
    invoke-static {}, Lcom/ironsource/sdk/controller/FeaturesManager;->getInstance()Lcom/ironsource/sdk/controller/FeaturesManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/FeaturesManager;->getDebugMode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->setDebugMode(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/ironsource/sdk/controller/WebController;)Z
    .registers 1

    .line 96
    iget-boolean p0, p0, Lcom/ironsource/sdk/controller/WebController;->isRemoveCloseEventHandler:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/ironsource/sdk/controller/WebController;Z)Z
    .registers 2

    .line 96
    iput-boolean p1, p0, Lcom/ironsource/sdk/controller/WebController;->isRemoveCloseEventHandler:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/ironsource/sdk/controller/WebController;)Landroid/os/CountDownTimer;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mCloseEventTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/ironsource/sdk/controller/WebController;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mCloseEventTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/ControllerEventListener;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mControllerListener:Lcom/ironsource/sdk/controller/ControllerEventListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mCacheDirectory:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ironsource/sdk/controller/WebController;)Landroid/view/View;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mCustomView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/ironsource/sdk/controller/WebController;Landroid/view/View;)Landroid/view/View;
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mCustomView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/ironsource/sdk/controller/WebController;)Landroid/widget/FrameLayout;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mCustomViewContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/ironsource/sdk/controller/WebController;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/ironsource/sdk/controller/WebController;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 96
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->extractSuccessFunctionToCall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 96
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->extractFailFunctionToCall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2000(Lcom/ironsource/sdk/controller/WebController;Landroid/content/Context;)[Ljava/lang/Object;
    .registers 2

    .line 96
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->getDeviceParams(Landroid/content/Context;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 96
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200()Ljava/lang/String;
    .registers 1

    .line 96
    sget-object v0, Lcom/ironsource/sdk/controller/WebController;->JSON_KEY_SUCCESS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300()Ljava/lang/String;
    .registers 1

    .line 96
    sget-object v0, Lcom/ironsource/sdk/controller/WebController;->JSON_KEY_FAIL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/service/ConnectivityAdapter;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mConnectivityAdapter:Lcom/ironsource/sdk/service/ConnectivityAdapter;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 11

    .line 96
    invoke-direct/range {p0 .. p10}, Lcom/ironsource/sdk/controller/WebController;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .registers 3

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/WebController;->getApplicationParams(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 96
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/precache/DownloadManager;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->downloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Z
    .registers 2

    .line 96
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->shouldNotifyDeveloper(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/ironsource/sdk/controller/WebController;)Z
    .registers 1

    .line 96
    iget-boolean p0, p0, Lcom/ironsource/sdk/controller/WebController;->mIsWebControllerReady:Z

    return p0
.end method

.method static synthetic access$3000(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mDSRewardedVideoListener:Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    return-object p0
.end method

.method static synthetic access$302(Lcom/ironsource/sdk/controller/WebController;Z)Z
    .registers 2

    .line 96
    iput-boolean p1, p0, Lcom/ironsource/sdk/controller/WebController;->mIsWebControllerReady:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/TokenJSAdapter;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mTokenJSAdapter:Lcom/ironsource/sdk/controller/TokenJSAdapter;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/ironsource/sdk/controller/WebController;)Z
    .registers 1

    .line 96
    iget-boolean p0, p0, Lcom/ironsource/sdk/controller/WebController;->mIsImmersive:Z

    return p0
.end method

.method static synthetic access$3202(Lcom/ironsource/sdk/controller/WebController;Z)Z
    .registers 2

    .line 96
    iput-boolean p1, p0, Lcom/ironsource/sdk/controller/WebController;->mIsImmersive:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/WebController$State;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mState:Lcom/ironsource/sdk/controller/WebController$State;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/ironsource/sdk/controller/WebController;)Landroid/widget/FrameLayout;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mControllerLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/data/AdUnitsState;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/ironsource/sdk/controller/WebController;)V
    .registers 1

    .line 96
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/WebController;->closeWebView()V

    return-void
.end method

.method static synthetic access$3700(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mChangeListener:Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/DemandSourceManager;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->PUB_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4000(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mUserId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mApplicationKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/listeners/OnOfferWallListener;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mDSInterstitialListener:Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/WebController;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    .registers 2

    .line 96
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->getStringProductTypeAsEnum(Ljava/lang/String;)Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4600(Lcom/ironsource/sdk/controller/WebController;Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;
    .registers 2

    .line 96
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->getAdProductListenerByProductType(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4700(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/listeners/internals/DSBannerListener;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mDSBannerListener:Lcom/ironsource/sdk/listeners/internals/DSBannerListener;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/listeners/OnGenericFunctionListener;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mOnGenericFunctionListener:Lcom/ironsource/sdk/listeners/OnGenericFunctionListener;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)V
    .registers 2

    .line 96
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->setWebviewBackground(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)V
    .registers 2

    .line 96
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/VideoEventsListener;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mVideoEventsListener:Lcom/ironsource/sdk/controller/VideoEventsListener;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/BannerJSAdapter;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mBannerJsAdapter:Lcom/ironsource/sdk/controller/BannerJSAdapter;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/ironsource/sdk/controller/WebController;)Landroid/webkit/WebView;
    .registers 1

    .line 96
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/WebController;->getWebview()Landroid/webkit/WebView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5300(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/OMIDJSAdapter;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mOmidJsAdapter:Lcom/ironsource/sdk/controller/OMIDJSAdapter;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/PermissionsJSAdapter;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mPermissionsJsAdapter:Lcom/ironsource/sdk/controller/PermissionsJSAdapter;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/DeviceDataJSAdapter;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mDeviceDataJsAdapter:Lcom/ironsource/sdk/controller/DeviceDataJSAdapter;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V
    .registers 4

    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/sdk/controller/WebController;->triggerOnControllerInitProductFail(Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/Boolean;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->isKitkatAndAbove:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$5702(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->isKitkatAndAbove:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$5800(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)V
    .registers 2

    .line 96
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->evaluateJavascriptKitKat(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ironsource/sdk/controller/WebController;)I
    .registers 1

    .line 96
    iget p0, p0, Lcom/ironsource/sdk/controller/WebController;->mHiddenForceCloseWidth:I

    return p0
.end method

.method static synthetic access$702(Lcom/ironsource/sdk/controller/WebController;I)I
    .registers 2

    .line 96
    iput p1, p0, Lcom/ironsource/sdk/controller/WebController;->mHiddenForceCloseWidth:I

    return p1
.end method

.method static synthetic access$800(Lcom/ironsource/sdk/controller/WebController;)I
    .registers 1

    .line 96
    iget p0, p0, Lcom/ironsource/sdk/controller/WebController;->mHiddenForceCloseHeight:I

    return p0
.end method

.method static synthetic access$802(Lcom/ironsource/sdk/controller/WebController;I)I
    .registers 2

    .line 96
    iput p1, p0, Lcom/ironsource/sdk/controller/WebController;->mHiddenForceCloseHeight:I

    return p1
.end method

.method static synthetic access$900(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mHiddenForceCloseLocation:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mHiddenForceCloseLocation:Ljava/lang/String;

    return-object p1
.end method

.method private addGooglePlayInstalledData(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "gpi"

    .line 3440
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3441
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/WebController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/sdk/service/PackagesInstallationService;->isGooglePlayInstalled(Landroid/content/Context;)Z

    move-result v1

    .line 3439
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-void
.end method

.method private closeWebView()V
    .registers 2

    .line 3096
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mChangeListener:Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

    if-eqz v0, :cond_7

    .line 3097
    invoke-interface {v0}, Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;->onCloseRequested()V

    :cond_7
    return-void
.end method

.method private createConnectivityAdapter(Landroid/content/Context;)Lcom/ironsource/sdk/service/ConnectivityAdapter;
    .registers 4

    .line 232
    new-instance v0, Lcom/ironsource/sdk/controller/WebController$1;

    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getControllerConfigAsJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/ironsource/sdk/controller/WebController$1;-><init>(Lcom/ironsource/sdk/controller/WebController;Lorg/json/JSONObject;Landroid/content/Context;)V

    return-object v0
.end method

.method private createInitProductJSMethod(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/controller/WebController$Result;
    .registers 15

    .line 2761
    new-instance v0, Lcom/ironsource/sdk/controller/WebController$Result;

    invoke-direct {v0}, Lcom/ironsource/sdk/controller/WebController$Result;-><init>()V

    .line 2764
    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-eq p1, v1, :cond_3e

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-eq p1, v1, :cond_3e

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-eq p1, v1, :cond_3e

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v1, :cond_16

    goto :goto_3e

    .line 2790
    :cond_16
    sget-object p2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, p2, :cond_93

    .line 2791
    iget-object v5, p0, Lcom/ironsource/sdk/controller/WebController;->mApplicationKey:Ljava/lang/String;

    iget-object v7, p0, Lcom/ironsource/sdk/controller/WebController;->mUserId:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v2, "productType"

    const-string v3, "OfferWall"

    const-string v4, "applicationKey"

    const-string v6, "applicationUserId"

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/ironsource/sdk/controller/WebController;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getUserCredits"

    const-string v1, "null"

    const-string v2, "onGetUserCreditsFail"

    .line 2795
    invoke-direct {p0, p2, p1, v1, v2}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2796
    iput-object p2, v0, Lcom/ironsource/sdk/controller/WebController$Result;->methodName:Ljava/lang/String;

    .line 2797
    iput-object p1, v0, Lcom/ironsource/sdk/controller/WebController$Result;->script:Ljava/lang/String;

    goto :goto_93

    .line 2765
    :cond_3e
    :goto_3e
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2766
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController;->mApplicationKey:Ljava/lang/String;

    const-string v3, "applicationKey"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2767
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController;->mUserId:Ljava/lang/String;

    const-string v3, "applicationUserId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_72

    .line 2770
    invoke-virtual {p2}, Lcom/ironsource/sdk/data/DemandSource;->getExtraParams()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_60

    .line 2771
    invoke-virtual {p2}, Lcom/ironsource/sdk/data/DemandSource;->getExtraParams()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2773
    :cond_60
    invoke-virtual {p2}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "demandSourceName"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2774
    invoke-virtual {p2}, Lcom/ironsource/sdk/data/DemandSource;->getId()Ljava/lang/String;

    move-result-object p2

    const-string v2, "demandSourceId"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2777
    :cond_72
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->getExtraParamsByProduct(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_7b

    .line 2779
    invoke-interface {v1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2782
    :cond_7b
    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 2784
    invoke-static {p1}, Lcom/ironsource/sdk/constants/Constants$JSMethods;->getInitMethodByProduct(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/constants/Constants$JSMethods;

    move-result-object p1

    .line 2785
    iget-object v1, p1, Lcom/ironsource/sdk/constants/Constants$JSMethods;->methodName:Ljava/lang/String;

    iget-object v2, p1, Lcom/ironsource/sdk/constants/Constants$JSMethods;->successCallbackName:Ljava/lang/String;

    iget-object v3, p1, Lcom/ironsource/sdk/constants/Constants$JSMethods;->failureCallbackName:Ljava/lang/String;

    invoke-direct {p0, v1, p2, v2, v3}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2787
    iget-object p1, p1, Lcom/ironsource/sdk/constants/Constants$JSMethods;->methodName:Ljava/lang/String;

    iput-object p1, v0, Lcom/ironsource/sdk/controller/WebController$Result;->methodName:Ljava/lang/String;

    .line 2788
    iput-object p2, v0, Lcom/ironsource/sdk/controller/WebController$Result;->script:Ljava/lang/String;

    :cond_93
    :goto_93
    return-object v0
.end method

.method private createSecuredCommunication()V
    .registers 4

    .line 263
    invoke-static {}, Lcom/ironsource/sdk/controller/SecureMessagingService;->generateToken()Ljava/lang/String;

    move-result-object v0

    .line 264
    new-instance v1, Lcom/ironsource/sdk/controller/SecureMessagingService;

    invoke-direct {v1, v0}, Lcom/ironsource/sdk/controller/SecureMessagingService;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0, v1}, Lcom/ironsource/sdk/controller/WebController;->createControllerMessageHandler(Lcom/ironsource/sdk/controller/SecureMessagingService;)Lcom/ironsource/sdk/controller/ControllerMessageHandler;

    move-result-object v0

    const-string v2, "Android"

    .line 266
    invoke-virtual {p0, v0, v2}, Lcom/ironsource/sdk/controller/WebController;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0, v1}, Lcom/ironsource/sdk/controller/WebController;->createSecureMessagingInterface(Lcom/ironsource/sdk/controller/SecureMessagingService;)Lcom/ironsource/sdk/controller/SecureMessagingInterface;

    move-result-object v0

    const-string v1, "GenerateTokenForMessaging"

    .line 271
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/sdk/controller/WebController;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private createShowProductJSMethod(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 8

    .line 2805
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "sessionDepth"

    .line 2806
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 2807
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "demandSourceName"

    .line 2809
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2810
    invoke-static {p2}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    .line 2812
    iget-object v3, p0, Lcom/ironsource/sdk/controller/WebController;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    invoke-virtual {v3, p1, p2}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSourceById(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v3

    if-eqz v3, :cond_45

    .line 2815
    invoke-virtual {v3}, Lcom/ironsource/sdk/data/DemandSource;->getExtraParams()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_31

    .line 2816
    invoke-virtual {v3}, Lcom/ironsource/sdk/data/DemandSource;->getExtraParams()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2819
    :cond_31
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 2820
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2822
    :cond_3a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_45

    const-string v1, "demandSourceId"

    .line 2823
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2827
    :cond_45
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->getExtraParamsByProduct(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_4e

    .line 2829
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2832
    :cond_4e
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 2833
    invoke-static {p1}, Lcom/ironsource/sdk/constants/Constants$JSMethods;->getShowMethodByProduct(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/constants/Constants$JSMethods;

    move-result-object p1

    .line 2834
    iget-object v0, p1, Lcom/ironsource/sdk/constants/Constants$JSMethods;->methodName:Ljava/lang/String;

    iget-object v1, p1, Lcom/ironsource/sdk/constants/Constants$JSMethods;->successCallbackName:Ljava/lang/String;

    iget-object p1, p1, Lcom/ironsource/sdk/constants/Constants$JSMethods;->failureCallbackName:Ljava/lang/String;

    invoke-direct {p0, v0, p2, v1, p1}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private evaluateJavascriptKitKat(Ljava/lang/String;)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3014
    invoke-virtual {p0, p1, v0}, Lcom/ironsource/sdk/controller/WebController;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private extractFailFunctionToCall(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 3164
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 3165
    sget-object p1, Lcom/ironsource/sdk/controller/WebController;->JSON_KEY_FAIL:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private extractSuccessFunctionToCall(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 3156
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 3157
    sget-object p1, Lcom/ironsource/sdk/controller/WebController;->JSON_KEY_SUCCESS:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private generateJSToInject(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 3787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSA_CORE.SDKController.runFunction(\'"

    .line 3788
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3789
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 3793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSA_CORE.SDKController.runFunction(\'"

    .line 3795
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?parameters="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3796
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 3801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSA_CORE.SDKController.runFunction(\'"

    .line 3803
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\',\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3804
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3805
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 3810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSA_CORE.SDKController.runFunction(\'"

    .line 3812
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3813
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?parameters="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\',\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3814
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3815
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getAdProductListenerByProductType(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;
    .registers 3

    .line 2399
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_7

    .line 2400
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mDSInterstitialListener:Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

    return-object p1

    .line 2401
    :cond_7
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_e

    .line 2402
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mDSRewardedVideoListener:Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    return-object p1

    .line 2403
    :cond_e
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_15

    .line 2404
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mDSBannerListener:Lcom/ironsource/sdk/listeners/internals/DSBannerListener;

    return-object p1

    :cond_15
    const/4 p1, 0x0

    return-object p1
.end method

.method private getApplicationParams(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .registers 9

    .line 3449
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3455
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_59

    .line 3457
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->getStringProductTypeAsEnum(Ljava/lang/String;)Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    move-result-object v1

    .line 3458
    sget-object v5, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne v1, v5, :cond_1a

    .line 3459
    iget-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->mOWExtraParameters:Ljava/util/Map;

    move-object v4, p2

    goto :goto_39

    .line 3461
    :cond_1a
    iget-object v5, p0, Lcom/ironsource/sdk/controller/WebController;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    invoke-virtual {v5, v1, p2}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSourceById(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p2

    if-eqz p2, :cond_39

    .line 3463
    invoke-virtual {p2}, Lcom/ironsource/sdk/data/DemandSource;->getExtraParams()Ljava/util/Map;

    move-result-object v1

    .line 3464
    invoke-virtual {p2}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "demandSourceName"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3465
    invoke-virtual {p2}, Lcom/ironsource/sdk/data/DemandSource;->getId()Ljava/lang/String;

    move-result-object p2

    const-string v4, "demandSourceId"

    invoke-interface {v1, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v1

    :cond_39
    :goto_39
    :try_start_39
    const-string p2, "productType"

    .line 3470
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_39 .. :try_end_3e} :catch_3f

    goto :goto_43

    :catch_3f
    move-exception p1

    .line 3472
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 3476
    :goto_43
    :try_start_43
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getInitSDKParams()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_57

    .line 3478
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 3479
    invoke-static {v0, p2}, Lcom/ironsource/sdk/utils/SDKUtils;->mergeJSONObjects(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_52} :catch_53

    goto :goto_57

    :catch_53
    move-exception p1

    .line 3482
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_57
    :goto_57
    const/4 p1, 0x0

    goto :goto_5a

    :cond_59
    const/4 p1, 0x1

    .line 3490
    :goto_5a
    iget-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->mUserId:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_77

    :try_start_62
    const-string p2, "applicationUserId"

    .line 3493
    invoke-static {p2}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->mUserId:Ljava/lang/String;

    .line 3494
    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3492
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_71
    .catch Lorg/json/JSONException; {:try_start_62 .. :try_end_71} :catch_72

    goto :goto_78

    :catch_72
    move-exception p2

    .line 3497
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_78

    :cond_77
    const/4 p1, 0x1

    .line 3504
    :goto_78
    iget-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->mApplicationKey:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_95

    :try_start_80
    const-string p2, "applicationKey"

    .line 3507
    invoke-static {p2}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->mApplicationKey:Ljava/lang/String;

    .line 3508
    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3506
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8f
    .catch Lorg/json/JSONException; {:try_start_80 .. :try_end_8f} :catch_90

    goto :goto_96

    :catch_90
    move-exception p2

    .line 3510
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_96

    :cond_95
    const/4 p1, 0x1

    :goto_96
    if-eqz v4, :cond_e6

    .line 3517
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_e6

    .line 3519
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_a6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3521
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "sdkWebViewCache"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c9

    .line 3522
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/ironsource/sdk/controller/WebController;->setWebviewCache(Ljava/lang/String;)V

    .line 3526
    :cond_c9
    :try_start_c9
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e0
    .catch Lorg/json/JSONException; {:try_start_c9 .. :try_end_e0} :catch_e1

    goto :goto_a6

    :catch_e1
    move-exception v1

    .line 3528
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_a6

    :cond_e6
    const/4 p2, 0x2

    .line 3534
    new-array p2, p2, [Ljava/lang/Object;

    .line 3535
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    .line 3536
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p2, v3

    return-object p2
.end method

.method private getDeviceParams(Landroid/content/Context;)[Ljava/lang/Object;
    .registers 13

    .line 3228
    invoke-static {p1}, Lcom/ironsource/sdk/utils/DeviceProperties;->getInstance(Landroid/content/Context;)Lcom/ironsource/sdk/utils/DeviceProperties;

    move-result-object v0

    .line 3230
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_b
    const-string v4, "appOrientation"

    .line 3235
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/WebController;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/ironsource/environment/DeviceStatus;->getActivityRequestedOrientation(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->translateRequestedOrientation(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3238
    invoke-virtual {v0}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceOem()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2f

    const-string v5, "deviceOEM"

    .line 3240
    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3244
    :cond_2f
    invoke-virtual {v0}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceModel()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_44

    const-string v5, "deviceModel"

    .line 3246
    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_42} :catch_2fa

    const/4 v4, 0x0

    goto :goto_45

    :cond_44
    const/4 v4, 0x1

    .line 3252
    :goto_45
    :try_start_45
    invoke-static {p1}, Lcom/ironsource/sdk/utils/SDKUtils;->loadGoogleAdvertiserInfo(Landroid/content/Context;)V

    .line 3253
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getAdvertiserId()Ljava/lang/String;

    move-result-object v5

    .line 3254
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->isLimitAdTrackingEnabled()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 3256
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_58
    .catch Lorg/json/JSONException; {:try_start_45 .. :try_end_58} :catch_2f8

    const-string v8, "]"

    const-string v9, "["

    if-nez v7, :cond_8a

    .line 3258
    :try_start_5e
    iget-object v7, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    const-string v10, "add AID and LAT"

    invoke-static {v7, v10}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "isLimitAdTrackingEnabled"

    .line 3261
    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3264
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deviceIds"

    .line 3265
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3266
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "AID"

    .line 3267
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3268
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3270
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3274
    :cond_8a
    invoke-virtual {v0}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceOsType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9e

    const-string v6, "deviceOs"

    .line 3276
    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_9f

    :cond_9e
    const/4 v4, 0x1

    .line 3282
    :goto_9f
    invoke-virtual {v0}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceOsVersion()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b7

    const-string v6, "[^0-9/.]"

    const-string v7, ""

    .line 3284
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "deviceOSVersion"

    .line 3285
    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_b8

    :cond_b7
    const/4 v4, 0x1

    .line 3290
    :goto_b8
    invoke-virtual {v0}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceOsVersion()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_cb

    const-string v6, "deviceOSVersionFull"

    .line 3292
    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3296
    :cond_cb
    invoke-virtual {v0}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceApiLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_df

    const-string v6, "deviceApiLevel"

    .line 3298
    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_e0

    :cond_df
    const/4 v4, 0x1

    .line 3304
    :goto_e0
    invoke-static {}, Lcom/ironsource/sdk/utils/DeviceProperties;->getSupersonicSdkVersion()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f3

    const-string v6, "SDKVersion"

    .line 3306
    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3310
    :cond_f3
    invoke-virtual {v0}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceCarrier()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_114

    invoke-virtual {v0}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceCarrier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_114

    const-string v5, "mobileCarrier"

    .line 3311
    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceCarrier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3315
    :cond_114
    invoke-static {p1}, Lcom/ironsource/network/ConnectivityUtils;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "none"

    .line 3316
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12e

    const-string v5, "connectionType"

    .line 3317
    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_12f

    :cond_12e
    const/4 v4, 0x1

    .line 3323
    :goto_12f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v0, v5, :cond_142

    const-string v0, "hasVPN"

    .line 3325
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/ironsource/network/ConnectivityUtils;->hasVPN(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 3329
    :cond_142
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 3330
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_167

    const-string v5, "deviceLanguage"

    .line 3331
    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3335
    :cond_167
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->isExternalStorageAvailable()Z

    move-result v0

    if-eqz v0, :cond_185

    .line 3336
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mCacheDirectory:Ljava/lang/String;

    invoke-static {v0}, Lcom/ironsource/environment/DeviceStatus;->getAvailableMemorySizeInMegaBytes(Ljava/lang/String;)J

    move-result-wide v5

    const-string v0, "diskFreeSize"

    .line 3338
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3339
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3337
    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_186

    :cond_185
    const/4 v4, 0x1

    .line 3345
    :goto_186
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDeviceWidth()I

    move-result v0

    .line 3346
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 3347
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_192
    .catch Lorg/json/JSONException; {:try_start_5e .. :try_end_192} :catch_2f8

    const-string v6, "deviceScreenSize"

    if-nez v5, :cond_1bd

    .line 3349
    :try_start_196
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3350
    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3351
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "width"

    .line 3352
    invoke-static {v7}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3353
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3355
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3356
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3355
    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1be

    :cond_1bd
    const/4 v4, 0x1

    .line 3362
    :goto_1be
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDeviceHeight()I

    move-result v0

    .line 3363
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 3365
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3366
    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3367
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "height"

    .line 3368
    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3369
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3371
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3372
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3371
    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3374
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/WebController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/environment/ApplicationContext;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3375
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_207

    const-string v5, "bundleId"

    .line 3376
    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3379
    :cond_207
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDeviceDensity()F

    move-result v0

    .line 3380
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    .line 3381
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_222

    const-string v5, "deviceScreenScale"

    .line 3382
    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3385
    :cond_222
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->isRootedDevice()Z

    move-result v0

    .line 3386
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 3387
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_23d

    const-string v5, "unLocked"

    .line 3388
    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3391
    :cond_23d
    invoke-static {p1}, Lcom/ironsource/sdk/utils/DeviceProperties;->getInstance(Landroid/content/Context;)Lcom/ironsource/sdk/utils/DeviceProperties;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceVolume(Landroid/content/Context;)F

    move-result p1

    const-string v0, "deviceVolume"

    .line 3392
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    float-to-double v5, p1

    invoke-virtual {v1, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 3393
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/WebController;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object p1

    .line 3394
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v0, v5, :cond_26d

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_26d

    const-string v0, "immersiveMode"

    .line 3395
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, p1

    check-cast v5, Landroid/app/Activity;

    .line 3396
    invoke-static {v5}, Lcom/ironsource/environment/DeviceStatus;->isImmersiveSupported(Landroid/app/Activity;)Z

    move-result v5

    .line 3395
    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_26d
    const-string v0, "batteryLevel"

    .line 3399
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->getBatteryLevel(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "mcc"

    .line 3401
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3402
    invoke-static {p1}, Lcom/ironsource/network/ConnectivityService;->getNetworkMCC(Landroid/content/Context;)I

    move-result v5

    .line 3401
    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "mnc"

    .line 3403
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3404
    invoke-static {p1}, Lcom/ironsource/network/ConnectivityService;->getNetworkMNC(Landroid/content/Context;)I

    move-result v5

    .line 3403
    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "phoneType"

    .line 3406
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3407
    invoke-static {p1}, Lcom/ironsource/network/ConnectivityService;->getPhoneType(Landroid/content/Context;)I

    move-result v5

    .line 3406
    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "simOperator"

    .line 3408
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3409
    invoke-static {p1}, Lcom/ironsource/network/ConnectivityService;->getSimOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3408
    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "lastUpdateTime"

    .line 3411
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3412
    invoke-static {p1}, Lcom/ironsource/environment/ApplicationContext;->getLastUpdateTime(Landroid/content/Context;)J

    move-result-wide v5

    .line 3411
    invoke-virtual {v1, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "firstInstallTime"

    .line 3413
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3414
    invoke-static {p1}, Lcom/ironsource/environment/ApplicationContext;->getFirstInstallTime(Landroid/content/Context;)J

    move-result-wide v5

    .line 3413
    invoke-virtual {v1, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "appVersion"

    .line 3415
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3416
    invoke-static {p1}, Lcom/ironsource/environment/ApplicationContext;->getApplicationVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3415
    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3418
    invoke-static {p1}, Lcom/ironsource/environment/ApplicationContext;->getInstallerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 3419
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f4

    const-string v0, "installerPackageName"

    .line 3420
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3421
    invoke-static {p1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3420
    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3423
    :cond_2f4
    invoke-direct {p0, v1}, Lcom/ironsource/sdk/controller/WebController;->addGooglePlayInstalledData(Lorg/json/JSONObject;)V
    :try_end_2f7
    .catch Lorg/json/JSONException; {:try_start_196 .. :try_end_2f7} :catch_2f8

    goto :goto_326

    :catch_2f8
    move-exception p1

    goto :goto_2fc

    :catch_2fa
    move-exception p1

    const/4 v4, 0x0

    .line 3426
    :goto_2fc
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 3427
    new-instance v0, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v0}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    new-array v5, v3, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "https://www.supersonicads.com/mobile/sdk5/log?method="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v2

    invoke-virtual {v0, v5}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_326
    const/4 p1, 0x2

    .line 3431
    new-array p1, p1, [Ljava/lang/Object;

    .line 3432
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    .line 3433
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v3

    return-object p1
.end method

.method private getErrorCodeByProductType(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/lang/String;
    .registers 3

    .line 3747
    sget-object v0, Lcom/ironsource/sdk/controller/WebController$12;->$SwitchMap$com$ironsource$sdk$data$SSAEnums$ProductType:[I

    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_26

    const/4 v0, 0x2

    if-eq p1, v0, :cond_23

    const/4 v0, 0x3

    if-eq p1, v0, :cond_20

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1a

    const-string p1, ""

    goto :goto_28

    :cond_1a
    const-string p1, "Init BN"

    goto :goto_28

    :cond_1d
    const-string p1, "Show OW Credits"

    goto :goto_28

    :cond_20
    const-string p1, "Init OW"

    goto :goto_28

    :cond_23
    const-string p1, "Init IS"

    goto :goto_28

    :cond_26
    const-string p1, "Init RV"

    :goto_28
    return-object p1
.end method

.method private getExtraParamsByProduct(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/data/SSAEnums$ProductType;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 188
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_7

    .line 189
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mOWExtraParameters:Ljava/util/Map;

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method private getRequestParameters(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 10

    .line 3025
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/WebController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/DeviceProperties;->getInstance(Landroid/content/Context;)Lcom/ironsource/sdk/utils/DeviceProperties;

    move-result-object v0

    .line 3027
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3029
    invoke-static {}, Lcom/ironsource/sdk/utils/DeviceProperties;->getSupersonicSdkVersion()Ljava/lang/String;

    move-result-object v2

    .line 3030
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "&"

    const-string v5, "="

    if-nez v3, :cond_29

    const-string v3, "SDKVersion"

    .line 3031
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3032
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3033
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3034
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3037
    :cond_29
    invoke-virtual {v0}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceOsType()Ljava/lang/String;

    move-result-object v0

    .line 3038
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3e

    const-string v2, "deviceOs"

    .line 3039
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3040
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3041
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3044
    :cond_3e
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getControllerUrl()Ljava/lang/String;

    move-result-object v0

    .line 3045
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_dc

    .line 3048
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3049
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 3050
    invoke-virtual {v0}, Landroid/net/Uri;->getPort()I

    move-result v0

    const/4 v7, -0x1

    if-eq v0, v7, :cond_7a

    .line 3052
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3055
    :cond_7a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "protocol"

    .line 3056
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3057
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3058
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3060
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "domain"

    .line 3061
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3062
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3063
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3065
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 3068
    :try_start_a0
    new-instance v0, Lorg/json/JSONObject;

    const-string v2, "isSecured"

    const-string v3, "applicationKey"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 3073
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3074
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ca

    .line 3075
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "controllerConfig"

    .line 3076
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3077
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3078
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_c5
    .catch Lorg/json/JSONException; {:try_start_a0 .. :try_end_c5} :catch_c6

    goto :goto_ca

    :catch_c6
    move-exception p1

    .line 3082
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 3086
    :cond_ca
    :goto_ca
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "debug"

    .line 3087
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3088
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3089
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/WebController;->getDebugMode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3092
    :cond_dc
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getStringProductTypeAsEnum(Ljava/lang/String;)Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    .registers 4

    .line 2411
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 2415
    :cond_8
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2416
    sget-object p1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    return-object p1

    .line 2417
    :cond_17
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2418
    sget-object p1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    return-object p1

    .line 2419
    :cond_26
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2420
    sget-object p1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    return-object p1

    .line 2421
    :cond_35
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 2422
    sget-object p1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    return-object p1

    :cond_44
    return-object v1
.end method

.method private getWebview()Landroid/webkit/WebView;
    .registers 1

    return-object p0
.end method

.method private handleLoadAd(Lcom/ironsource/sdk/data/DemandSource;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/data/DemandSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 2621
    new-array v0, v0, [Ljava/util/Map;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 2623
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/DemandSource;->convertToMap()Ljava/util/Map;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 2621
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->mergeHashMaps([Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 2629
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    invoke-virtual {p1}, Lcom/ironsource/sdk/data/DemandSource;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->setReportLoadInterstitial(Ljava/lang/String;Z)V

    .line 2631
    invoke-static {p2}, Lcom/ironsource/sdk/utils/SDKUtils;->flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "loadInterstitial"

    const-string v0, "onLoadInterstitialSuccess"

    const-string v1, "onLoadInterstitialFail"

    .line 2632
    invoke-direct {p0, p2, p1, v0, v1}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2633
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method private initLayout(Landroid/content/Context;)V
    .registers 6

    .line 430
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 435
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ironsource/sdk/controller/WebController;->mControllerLayout:Landroid/widget/FrameLayout;

    .line 439
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ironsource/sdk/controller/WebController;->mCustomViewContainer:Landroid/widget/FrameLayout;

    .line 440
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 441
    iget-object v3, p0, Lcom/ironsource/sdk/controller/WebController;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController;->mCustomViewContainer:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 445
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 446
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 447
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 448
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 450
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mControllerLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 451
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mControllerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initProduct(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/controller/WebController$OnInitProductHandler;)V
    .registers 6

    .line 2543
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_17

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_17

    .line 2548
    :cond_d
    invoke-direct {p0, p3, p4}, Lcom/ironsource/sdk/controller/WebController;->createInitProductJSMethod(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/controller/WebController$Result;

    move-result-object p1

    .line 2550
    iget-object p1, p1, Lcom/ironsource/sdk/controller/WebController$Result;->script:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void

    :cond_17
    :goto_17
    const-string p1, "User id or Application key are missing"

    .line 2544
    invoke-interface {p5, p1, p3, p4}, Lcom/ironsource/sdk/controller/WebController$OnInitProductHandler;->handleInitProductFailed(Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V

    return-void
.end method

.method private injectJavascript(Ljava/lang/String;)V
    .registers 5

    .line 2941
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2947
    :cond_7
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/WebController;->getDebugMode()I

    move-result v0

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->MODE_0:Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->getValue()I

    move-result v1

    const-string v2, "console.log(\"JS exeption: \" + JSON.stringify(e));"

    if-ne v0, v1, :cond_16

    goto :goto_31

    .line 2951
    :cond_16
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/WebController;->getDebugMode()I

    move-result v0

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->MODE_1:Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->getValue()I

    move-result v1

    if-lt v0, v1, :cond_2f

    .line 2952
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/WebController;->getDebugMode()I

    move-result v0

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->MODE_3:Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_2f

    goto :goto_31

    :cond_2f
    const-string v2, "empty"

    .line 2962
    :goto_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "try{"

    .line 2964
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2965
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}catch(e){"

    .line 2966
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2967
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    .line 2968
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2970
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2972
    new-instance v1, Lcom/ironsource/sdk/controller/WebController$10;

    invoke-direct {v1, p0, p1, v0}, Lcom/ironsource/sdk/controller/WebController$10;-><init>(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v1}, Lcom/ironsource/sdk/controller/WebController;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private mapToJson(Ljava/util/Map;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3207
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_34

    .line 3209
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_34

    .line 3211
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3212
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3214
    :try_start_27
    invoke-static {v3}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_2e} :catch_2f

    goto :goto_15

    :catch_2f
    move-exception v2

    .line 3216
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_15

    .line 3221
    :cond_34
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 13

    .line 3173
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3177
    :try_start_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 3178
    invoke-static {p2}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3181
    :cond_18
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2b

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2b

    .line 3182
    invoke-static {p4}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3185
    :cond_2b
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3e

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3e

    .line 3186
    invoke-static {p6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3189
    :cond_3e
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_51

    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_51

    .line 3190
    invoke-static {p8}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p7, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3193
    :cond_51
    invoke-static {p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_88

    .line 3194
    invoke-virtual {v0, p9, p10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_5a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5a} :catch_5b

    goto :goto_88

    :catch_5b
    move-exception p1

    .line 3198
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 3199
    new-instance p2, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {p2}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "https://www.supersonicads.com/mobile/sdk5/log?method="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    const/4 p5, 0x0

    aget-object p1, p1, p5

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, p5

    invoke-virtual {p2, p3}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3202
    :cond_88
    :goto_88
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 3113
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 3114
    sget-object v1, Lcom/ironsource/sdk/controller/WebController;->JSON_KEY_SUCCESS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3115
    sget-object v2, Lcom/ironsource/sdk/controller/WebController;->JSON_KEY_FAIL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_1a

    .line 3121
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_22

    goto :goto_23

    .line 3125
    :cond_1a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_22

    move-object v1, v0

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    .line 3131
    :goto_23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5a

    .line 3133
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3e

    .line 3135
    :try_start_2f
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "errMsg"

    .line 3136
    invoke-virtual {p2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_3e} :catch_3e

    .line 3141
    :catch_3e
    :cond_3e
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_53

    .line 3143
    :try_start_44
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "errCode"

    .line 3144
    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_53
    .catch Lorg/json/JSONException; {:try_start_44 .. :try_end_53} :catch_53

    .line 3149
    :catch_53
    :cond_53
    invoke-direct {p0, v1, p1}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3150
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    :cond_5a
    return-void
.end method

.method private sendProductErrorMessage(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V
    .registers 5

    .line 3741
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->getErrorCodeByProductType(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Initiating Controller"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/SDKUtils;->createErrorMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3740
    invoke-direct {p0, v0, p1, p2}, Lcom/ironsource/sdk/controller/WebController;->triggerOnControllerInitProductFail(Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V

    return-void
.end method

.method private setDisplayZoomControls(Landroid/webkit/WebSettings;)V
    .registers 4

    .line 491
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_a

    const/4 v0, 0x0

    .line 493
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    :cond_a
    return-void
.end method

.method private setMediaPlaybackJellyBean(Landroid/webkit/WebSettings;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 504
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_a

    const/4 v0, 0x0

    .line 505
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_a
    return-void
.end method

.method private setWebDebuggingEnabled()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 511
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    .line 512
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->setWebContentsDebuggingEnabled(Z)V

    :cond_a
    return-void
.end method

.method private setWebDebuggingEnabled(Lorg/json/JSONObject;)V
    .registers 3

    const-string v0, "inspectWebview"

    .line 2527
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 2528
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/WebController;->setWebDebuggingEnabled()V

    :cond_b
    return-void
.end method

.method private setWebViewSettings()V
    .registers 5

    .line 455
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/WebController;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 457
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 458
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    const/4 v2, 0x0

    .line 459
    invoke-virtual {p0, v2}, Lcom/ironsource/sdk/controller/WebController;->setVerticalScrollBarEnabled(Z)V

    .line 460
    invoke-virtual {p0, v2}, Lcom/ironsource/sdk/controller/WebController;->setHorizontalScrollBarEnabled(Z)V

    .line 464
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 467
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 469
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 471
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 472
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 475
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    const-string v2, "/data/data/org.itri.html5webview/databases/"

    .line 476
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 483
    :try_start_2c
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/WebController;->setDisplayZoomControls(Landroid/webkit/WebSettings;)V

    .line 484
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/WebController;->setMediaPlaybackJellyBean(Landroid/webkit/WebSettings;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_32} :catch_33

    goto :goto_4e

    :catch_33
    move-exception v0

    .line 486
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWebSettings - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4e
    return-void
.end method

.method private setWebviewBackground(Ljava/lang/String;)V
    .registers 3

    .line 2438
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string p1, "color"

    .line 2439
    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "transparent"

    .line 2443
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 2444
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    .line 2447
    :goto_19
    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->setBackgroundColor(I)V

    return-void
.end method

.method private setWebviewCache(Ljava/lang/String;)V
    .registers 3

    const-string v0, "0"

    .line 3703
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 3705
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/WebController;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_19

    .line 3708
    :cond_11
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/WebController;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    :goto_19
    return-void
.end method

.method private shouldNotifyDeveloper(Ljava/lang/String;)Z
    .registers 6

    .line 547
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 548
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    const-string v0, "Trying to trigger a listener - no product was found"

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 552
    :cond_f
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    .line 553
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mDSInterstitialListener:Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

    if-eqz v0, :cond_61

    :goto_20
    const/4 v1, 0x1

    goto :goto_61

    .line 554
    :cond_22
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 555
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mDSRewardedVideoListener:Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    if-eqz v0, :cond_61

    goto :goto_20

    .line 556
    :cond_33
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 557
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mDSBannerListener:Lcom/ironsource/sdk/listeners/internals/DSBannerListener;

    if-eqz v0, :cond_61

    goto :goto_20

    .line 558
    :cond_44
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5c

    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    .line 559
    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 560
    :cond_5c
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    if-eqz v0, :cond_61

    goto :goto_20

    :cond_61
    :goto_61
    if-nez v1, :cond_79

    .line 563
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to trigger a listener - no listener was found for product "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_79
    return v1
.end method

.method private toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 3577
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p2}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string p2, "errMsg"

    .line 3578
    invoke-virtual {v0, p2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3580
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 3581
    new-instance v0, Lcom/ironsource/sdk/controller/WebController$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/ironsource/sdk/controller/WebController$11;-><init>(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/WebController;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_19
    return-void
.end method

.method private triggerOnControllerInitProductFail(Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V
    .registers 5

    .line 2851
    invoke-virtual {p2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/WebController;->shouldNotifyDeveloper(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2852
    new-instance v0, Lcom/ironsource/sdk/controller/WebController$9;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/ironsource/sdk/controller/WebController$9;-><init>(Lcom/ironsource/sdk/controller/WebController;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/WebController;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method


# virtual methods
.method public addBannerJSInterface(Lcom/ironsource/sdk/controller/BannerJSAdapter;)V
    .registers 3

    .line 311
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mBannerJsAdapter:Lcom/ironsource/sdk/controller/BannerJSAdapter;

    .line 312
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mBannerJsAdapter:Lcom/ironsource/sdk/controller/BannerJSAdapter;

    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/WebController;->getControllerDelegate()Lcom/ironsource/sdk/controller/WebViewMessagingMediator;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/controller/BannerJSAdapter;->setCommunicationWithController(Lcom/ironsource/sdk/controller/WebViewMessagingMediator;)V

    return-void
.end method

.method public addDeviceDataJSInterface(Lcom/ironsource/sdk/controller/DeviceDataJSAdapter;)V
    .registers 2

    .line 320
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mDeviceDataJsAdapter:Lcom/ironsource/sdk/controller/DeviceDataJSAdapter;

    return-void
.end method

.method public addOmidJSInterface(Lcom/ironsource/sdk/controller/OMIDJSAdapter;)V
    .registers 2

    .line 303
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mOmidJsAdapter:Lcom/ironsource/sdk/controller/OMIDJSAdapter;

    return-void
.end method

.method public addPermissionsJSInterface(Lcom/ironsource/sdk/controller/PermissionsJSAdapter;)V
    .registers 2

    .line 307
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mPermissionsJsAdapter:Lcom/ironsource/sdk/controller/PermissionsJSAdapter;

    return-void
.end method

.method public addTokenJSInterface(Lcom/ironsource/sdk/controller/TokenJSAdapter;)V
    .registers 2

    .line 316
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mTokenJSAdapter:Lcom/ironsource/sdk/controller/TokenJSAdapter;

    return-void
.end method

.method public assetCached(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    const-string v1, "file"

    const-string v3, "path"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    .line 2881
    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/WebController;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "assetCached"

    .line 2882
    invoke-direct {p0, p2, p1}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2883
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public assetCachedFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    const-string v1, "file"

    const-string v3, "path"

    const-string v5, "errMsg"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    .line 2887
    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/WebController;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "assetCachedFailed"

    .line 2888
    invoke-direct {p0, p2, p1}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2889
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method createControllerMessageHandler(Lcom/ironsource/sdk/controller/SecureMessagingService;)Lcom/ironsource/sdk/controller/ControllerMessageHandler;
    .registers 4

    .line 281
    new-instance v0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/WebController$NativeAPI;-><init>(Lcom/ironsource/sdk/controller/WebController;)V

    .line 282
    new-instance v1, Lcom/ironsource/sdk/controller/ControllerAdapter;

    invoke-direct {v1, v0}, Lcom/ironsource/sdk/controller/ControllerAdapter;-><init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI;)V

    .line 283
    new-instance v0, Lcom/ironsource/sdk/controller/ControllerMessageHandler;

    invoke-direct {v0, v1, p1}, Lcom/ironsource/sdk/controller/ControllerMessageHandler;-><init>(Lcom/ironsource/sdk/controller/ControllerAdapter;Lcom/ironsource/sdk/controller/SecureMessagingService;)V

    return-object v0
.end method

.method createMainThreadHandler()Landroid/os/Handler;
    .registers 3

    .line 291
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method createSecureMessagingInterface(Lcom/ironsource/sdk/controller/SecureMessagingService;)Lcom/ironsource/sdk/controller/SecureMessagingInterface;
    .registers 3

    .line 287
    new-instance v0, Lcom/ironsource/sdk/controller/SecureMessagingInterface;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/controller/SecureMessagingInterface;-><init>(Lcom/ironsource/sdk/controller/SecureMessagingService;)V

    return-object v0
.end method

.method public destroy()V
    .registers 2

    .line 3771
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 3773
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->downloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    if-eqz v0, :cond_a

    .line 3774
    invoke-virtual {v0}, Lcom/ironsource/sdk/precache/DownloadManager;->release()V

    .line 3777
    :cond_a
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mConnectivityAdapter:Lcom/ironsource/sdk/service/ConnectivityAdapter;

    if-eqz v0, :cond_11

    .line 3778
    invoke-virtual {v0}, Lcom/ironsource/sdk/service/ConnectivityAdapter;->release()V

    :cond_11
    const/4 v0, 0x0

    .line 3781
    iput-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mUiHandler:Landroid/os/Handler;

    .line 3782
    iput-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mCurrentActivityContext:Landroid/content/Context;

    return-void
.end method

.method public downloadController()V
    .registers 6

    .line 519
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mCacheDirectory:Ljava/lang/String;

    const-string v1, ""

    const-string v2, "mobileController.html"

    invoke-static {v0, v1, v2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 522
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getControllerUrl()Ljava/lang/String;

    move-result-object v0

    .line 523
    new-instance v2, Lcom/ironsource/sdk/data/SSAFile;

    invoke-direct {v2, v0, v1}, Lcom/ironsource/sdk/data/SSAFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->downloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    invoke-virtual {v1}, Lcom/ironsource/sdk/precache/DownloadManager;->isMobileControllerThreadLive()Z

    move-result v1

    if-nez v1, :cond_36

    .line 526
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Download Mobile Controller: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->downloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/precache/DownloadManager;->downloadMobileControllerFile(Lcom/ironsource/sdk/data/SSAFile;)V

    goto :goto_3d

    .line 529
    :cond_36
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    const-string v1, "Download Mobile Controller: already alive"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3d
    return-void
.end method

.method public engageEnd(Ljava/lang/String;)V
    .registers 14

    const-string v0, "forceClose"

    .line 3627
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3628
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/WebController;->closeWebView()V

    :cond_b
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v2, "action"

    move-object v1, p0

    move-object v3, p1

    .line 3631
    invoke-direct/range {v1 .. v11}, Lcom/ironsource/sdk/controller/WebController;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "engageEnd"

    .line 3632
    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3633
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public enterBackground()V
    .registers 2

    const-string v0, "enterBackground"

    .line 2893
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2894
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public enterForeground()V
    .registers 2

    const-string v0, "enterForeground"

    .line 2898
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2899
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public failedToStartStoreActivity(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 2931
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p2, "unknown url"

    :cond_8
    move-object v4, p2

    .line 2932
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_11

    const-string p1, "activity failed to open with unspecified reason"

    :cond_11
    move-object v2, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v1, "errMsg"

    const-string v3, "url"

    move-object v0, p0

    .line 2933
    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/WebController;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "failedToStartStoreActivity"

    .line 2936
    invoke-direct {p0, p2, p1}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public getControllerDelegate()Lcom/ironsource/sdk/controller/WebViewMessagingMediator;
    .registers 2

    .line 335
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mWebViewMessagingMediator:Lcom/ironsource/sdk/controller/WebViewMessagingMediator;

    if-nez v0, :cond_b

    .line 336
    new-instance v0, Lcom/ironsource/sdk/controller/WebController$2;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/WebController$2;-><init>(Lcom/ironsource/sdk/controller/WebController;)V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mWebViewMessagingMediator:Lcom/ironsource/sdk/controller/WebViewMessagingMediator;

    .line 344
    :cond_b
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mWebViewMessagingMediator:Lcom/ironsource/sdk/controller/WebViewMessagingMediator;

    return-object v0
.end method

.method public getControllerKeyPressed()Ljava/lang/String;
    .registers 3

    .line 3598
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mControllerKeyPressed:Ljava/lang/String;

    const-string v1, "interrupt"

    .line 3601
    invoke-virtual {p0, v1}, Lcom/ironsource/sdk/controller/WebController;->setControllerKeyPressed(Ljava/lang/String;)V

    return-object v0
.end method

.method public getCurrentActivityContext()Landroid/content/Context;
    .registers 2

    .line 3019
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mCurrentActivityContext:Landroid/content/Context;

    check-cast v0, Landroid/content/MutableContextWrapper;

    .line 3020
    invoke-virtual {v0}, Landroid/content/MutableContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDebugMode()I
    .registers 2

    .line 538
    sget v0, Lcom/ironsource/sdk/controller/WebController;->mDebugMode:I

    return v0
.end method

.method getDownloadManager()Lcom/ironsource/sdk/precache/DownloadManager;
    .registers 2

    .line 295
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mCacheDirectory:Ljava/lang/String;

    invoke-static {v0}, Lcom/ironsource/sdk/precache/DownloadManager;->getInstance(Ljava/lang/String;)Lcom/ironsource/sdk/precache/DownloadManager;

    move-result-object v0

    return-object v0
.end method

.method public getLayout()Landroid/widget/FrameLayout;
    .registers 2

    .line 3685
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mControllerLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getOfferWallCredits(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
    .registers 10

    .line 2700
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mApplicationKey:Ljava/lang/String;

    .line 2701
    iput-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->mUserId:Ljava/lang/String;

    .line 2703
    iput-object p3, p0, Lcom/ironsource/sdk/controller/WebController;->mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    .line 2705
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->mApplicationKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController;->mUserId:Ljava/lang/String;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    new-instance v5, Lcom/ironsource/sdk/controller/WebController$7;

    invoke-direct {v5, p0}, Lcom/ironsource/sdk/controller/WebController$7;-><init>(Lcom/ironsource/sdk/controller/WebController;)V

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/sdk/controller/WebController;->initProduct(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/controller/WebController$OnInitProductHandler;)V

    return-void
.end method

.method public getOrientationState()Ljava/lang/String;
    .registers 2

    .line 573
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mOrientationState:Ljava/lang/String;

    return-object v0
.end method

.method public getSavedState()Lcom/ironsource/sdk/data/AdUnitsState;
    .registers 2

    .line 3819
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    return-object v0
.end method

.method public getState()Lcom/ironsource/sdk/controller/WebController$State;
    .registers 2

    .line 3736
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mState:Lcom/ironsource/sdk/controller/WebController$State;

    return-object v0
.end method

.method public handleSearchKeysURLs(Ljava/lang/String;)Z
    .registers 4

    .line 3713
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSearchKeys()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 3715
    :try_start_a
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_33

    .line 3717
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3718
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 3719
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/WebController;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/environment/UrlHandler;->openUrl(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2d} :catch_2f

    const/4 p1, 0x1

    return p1

    :catch_2f
    move-exception p1

    .line 3725
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_33
    const/4 p1, 0x0

    return p1
.end method

.method public hideCustomView()V
    .registers 2

    .line 3693
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mWebChromeClient:Lcom/ironsource/sdk/controller/WebController$ChromeClient;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/WebController$ChromeClient;->onHideCustomView()V

    return-void
.end method

.method public inCustomView()Z
    .registers 2

    .line 3689
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public initBanner(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/listeners/internals/DSBannerListener;)V
    .registers 11

    .line 2723
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mApplicationKey:Ljava/lang/String;

    .line 2724
    iput-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->mUserId:Ljava/lang/String;

    .line 2726
    iput-object p4, p0, Lcom/ironsource/sdk/controller/WebController;->mDSBannerListener:Lcom/ironsource/sdk/listeners/internals/DSBannerListener;

    .line 2728
    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    new-instance v5, Lcom/ironsource/sdk/controller/WebController$8;

    invoke-direct {v5, p0}, Lcom/ironsource/sdk/controller/WebController$8;-><init>(Lcom/ironsource/sdk/controller/WebController;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/sdk/controller/WebController;->initProduct(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/controller/WebController$OnInitProductHandler;)V

    return-void
.end method

.method public initInterstitial(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;)V
    .registers 11

    .line 2584
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mApplicationKey:Ljava/lang/String;

    .line 2585
    iput-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->mUserId:Ljava/lang/String;

    .line 2586
    iput-object p4, p0, Lcom/ironsource/sdk/controller/WebController;->mDSInterstitialListener:Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

    .line 2589
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    iget-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->mApplicationKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/ironsource/sdk/data/AdUnitsState;->setInterstitialAppKey(Ljava/lang/String;)V

    .line 2590
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    iget-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/ironsource/sdk/data/AdUnitsState;->setInterstitialUserId(Ljava/lang/String;)V

    .line 2592
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->mApplicationKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController;->mUserId:Ljava/lang/String;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    new-instance v5, Lcom/ironsource/sdk/controller/WebController$5;

    invoke-direct {v5, p0}, Lcom/ironsource/sdk/controller/WebController$5;-><init>(Lcom/ironsource/sdk/controller/WebController;)V

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/sdk/controller/WebController;->initProduct(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/controller/WebController$OnInitProductHandler;)V

    return-void
.end method

.method public initOfferWall(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/sdk/listeners/OnOfferWallListener;",
            ")V"
        }
    .end annotation

    .line 2671
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mApplicationKey:Ljava/lang/String;

    .line 2672
    iput-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->mUserId:Ljava/lang/String;

    .line 2673
    iput-object p3, p0, Lcom/ironsource/sdk/controller/WebController;->mOWExtraParameters:Ljava/util/Map;

    .line 2674
    iput-object p4, p0, Lcom/ironsource/sdk/controller/WebController;->mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    .line 2676
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    iget-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->mOWExtraParameters:Ljava/util/Map;

    invoke-virtual {p1, p2}, Lcom/ironsource/sdk/data/AdUnitsState;->setOfferWallExtraParams(Ljava/util/Map;)V

    .line 2678
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/ironsource/sdk/data/AdUnitsState;->setOfferwallReportInit(Z)V

    .line 2680
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->mApplicationKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController;->mUserId:Ljava/lang/String;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    new-instance v5, Lcom/ironsource/sdk/controller/WebController$6;

    invoke-direct {v5, p0}, Lcom/ironsource/sdk/controller/WebController$6;-><init>(Lcom/ironsource/sdk/controller/WebController;)V

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/sdk/controller/WebController;->initProduct(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/controller/WebController$OnInitProductHandler;)V

    return-void
.end method

.method public initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;)V
    .registers 11

    .line 2558
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mApplicationKey:Ljava/lang/String;

    .line 2559
    iput-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->mUserId:Ljava/lang/String;

    .line 2560
    iput-object p4, p0, Lcom/ironsource/sdk/controller/WebController;->mDSRewardedVideoListener:Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    .line 2561
    iget-object p4, p0, Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    invoke-virtual {p4, p1}, Lcom/ironsource/sdk/data/AdUnitsState;->setRVAppKey(Ljava/lang/String;)V

    .line 2562
    iget-object p4, p0, Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    invoke-virtual {p4, p2}, Lcom/ironsource/sdk/data/AdUnitsState;->setRVUserId(Ljava/lang/String;)V

    .line 2564
    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    new-instance v5, Lcom/ironsource/sdk/controller/WebController$4;

    invoke-direct {v5, p0}, Lcom/ironsource/sdk/controller/WebController$4;-><init>(Lcom/ironsource/sdk/controller/WebController;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/sdk/controller/WebController;->initProduct(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/controller/WebController$OnInitProductHandler;)V

    return-void
.end method

.method initializeCacheDirectory(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 299
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->initializeCacheDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public interceptedUrlToStore()V
    .registers 2

    const-string v0, "interceptedUrlToStore"

    .line 2923
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2924
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public isInterstitialAdAvailable(Ljava/lang/String;)Z
    .registers 4

    .line 2658
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSourceById(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 2659
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/DemandSource;->getAvailabilityState()Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public load(I)V
    .registers 12

    const-string v0, "WebViewController:: load: "

    :try_start_2
    const-string v1, "about:blank"

    .line 2456
    invoke-virtual {p0, v1}, Lcom/ironsource/sdk/controller/WebController;->loadUrl(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_7} :catch_8

    goto :goto_2f

    :catch_8
    move-exception v1

    .line 2458
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2459
    new-instance v1, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v1}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const-string v2, "https://www.supersonicads.com/mobile/sdk5/log?method=webviewLoadBlank"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2463
    :goto_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController;->mCacheDirectory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mobileController.html"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2465
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ironsource/sdk/controller/WebController;->mCacheDirectory:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2466
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_102

    .line 2469
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getControllerConfigAsJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    .line 2472
    invoke-direct {p0, v2}, Lcom/ironsource/sdk/controller/WebController;->setWebDebuggingEnabled(Lorg/json/JSONObject;)V

    .line 2475
    invoke-direct {p0, v2}, Lcom/ironsource/sdk/controller/WebController;->getRequestParameters(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 2477
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getInitSDKParams()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_99

    const-string v4, "sessionid"

    .line 2479
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_99

    const/4 v5, 0x2

    .line 2480
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v5, v2

    const-string v2, "%s&sessionid=%s"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2485
    :cond_99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2488
    new-instance v9, Lcom/ironsource/sdk/controller/WebController$3;

    const-wide/32 v4, 0xc350

    const-wide/16 v6, 0x3e8

    move-object v2, v9

    move-object v3, p0

    move v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/ironsource/sdk/controller/WebController$3;-><init>(Lcom/ironsource/sdk/controller/WebController;JJI)V

    .line 2508
    invoke-virtual {v9}, Lcom/ironsource/sdk/controller/WebController$3;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mLoadControllerTimer:Landroid/os/CountDownTimer;

    .line 2512
    :try_start_c0
    invoke-virtual {p0, v1}, Lcom/ironsource/sdk/controller/WebController;->loadUrl(Ljava/lang/String;)V
    :try_end_c3
    .catch Ljava/lang/Throwable; {:try_start_c0 .. :try_end_c3} :catch_c4

    goto :goto_eb

    :catch_c4
    move-exception p1

    .line 2514
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2515
    new-instance p1, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {p1}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const-string v0, "https://www.supersonicads.com/mobile/sdk5/log?method=webviewLoadWithPath"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2518
    :goto_eb
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_117

    .line 2521
    :cond_102
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    const-string v0, "load(): Mobile Controller HTML Does not exist"

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2522
    new-instance p1, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {p1}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const-string v0, "https://www.supersonicads.com/mobile/sdk5/log?method=htmlControllerDoesNotExistOnFileSystem"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_117
    return-void
.end method

.method public loadBanner(Lorg/json/JSONObject;Lcom/ironsource/sdk/listeners/internals/DSBannerListener;)V
    .registers 5

    if-eqz p1, :cond_13

    .line 2740
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "loadBanner"

    const-string v0, "onLoadBannerSuccess"

    const-string v1, "onLoadBannerFail"

    .line 2741
    invoke-direct {p0, p2, p1, v0, v1}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2742
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public loadInterstitial(Lcom/ironsource/sdk/data/DemandSource;Ljava/util/Map;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/data/DemandSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;",
            ")V"
        }
    .end annotation

    .line 2617
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/WebController;->handleLoadAd(Lcom/ironsource/sdk/data/DemandSource;Ljava/util/Map;)V

    return-void
.end method

.method public loadInterstitial(Ljava/lang/String;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;)V
    .registers 5

    .line 2606
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "demandSourceName"

    .line 2607
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2608
    invoke-static {p2}, Lcom/ironsource/sdk/utils/SDKUtils;->flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 2610
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->setReportLoadInterstitial(Ljava/lang/String;Z)V

    const-string p1, "loadInterstitial"

    const-string v0, "onLoadInterstitialSuccess"

    const-string v1, "onLoadInterstitialFail"

    .line 2612
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2613
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public nativeNavigationPressed(Ljava/lang/String;)V
    .registers 13

    const-string v1, "action"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 2912
    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/WebController;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "nativeNavigationPressed"

    .line 2913
    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2914
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public notifyLifeCycle(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    const-string v1, "lifeCycleEvent"

    const-string v3, "productType"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v4, p1

    .line 324
    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/WebController;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onNativeLifeCycleEvent"

    .line 330
    invoke-direct {p0, p2, p1}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 331
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    .line 3571
    iget-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFileDownloadFail(Lcom/ironsource/sdk/data/SSAFile;)V
    .registers 5

    .line 3560
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobileController.html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 3561
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mControllerListener:Lcom/ironsource/sdk/controller/ControllerEventListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "controller failed to download - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAFile;->getErrMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ironsource/sdk/controller/ControllerEventListener;->handleControllerStageFailed(Ljava/lang/String;)V

    goto :goto_36

    .line 3563
    :cond_27
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAFile;->getErrMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/ironsource/sdk/controller/WebController;->assetCachedFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_36
    return-void
.end method

.method public onFileDownloadSuccess(Lcom/ironsource/sdk/data/SSAFile;)V
    .registers 4

    .line 3548
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobileController.html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 p1, 0x1

    .line 3550
    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->load(I)V

    goto :goto_1c

    .line 3552
    :cond_11
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/ironsource/sdk/controller/WebController;->assetCached(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1c
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_12

    .line 3914
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mChangeListener:Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

    invoke-interface {v0}, Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;->onBackButtonPressed()Z

    move-result v0

    if-nez v0, :cond_10

    .line 3915
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_10
    const/4 p1, 0x1

    return p1

    .line 3921
    :cond_12
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public pageFinished()V
    .registers 2

    const-string v0, "pageFinished"

    .line 2918
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2919
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public pause()V
    .registers 5

    .line 3654
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_2f

    .line 3656
    :try_start_6
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/WebController;->onPause()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_2f

    :catch_a
    move-exception v0

    .line 3658
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebViewController: pause() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3659
    new-instance v0, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v0}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const-string v1, "https://www.supersonicads.com/mobile/sdk5/log?method=webviewPause"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2f
    :goto_2f
    return-void
.end method

.method public registerConnectionReceiver(Landroid/content/Context;)V
    .registers 3

    .line 3637
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mConnectivityAdapter:Lcom/ironsource/sdk/service/ConnectivityAdapter;

    if-nez v0, :cond_5

    return-void

    .line 3641
    :cond_5
    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/service/ConnectivityAdapter;->startListenToNetworkChanges(Landroid/content/Context;)V

    return-void
.end method

.method public removeVideoEventsListener()V
    .registers 2

    const/4 v0, 0x0

    .line 2433
    iput-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mVideoEventsListener:Lcom/ironsource/sdk/controller/VideoEventsListener;

    return-void
.end method

.method public restoreSavedState()V
    .registers 2

    .line 3822
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/WebController;->restoreState(Lcom/ironsource/sdk/data/AdUnitsState;)V

    return-void
.end method

.method public restoreState(Lcom/ironsource/sdk/data/AdUnitsState;)V
    .registers 12

    .line 3825
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mSavedStateLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 3827
    :try_start_3
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->shouldRestore()Z

    move-result v1

    if-eqz v1, :cond_167

    iget-boolean v1, p0, Lcom/ironsource/sdk/controller/WebController;->mIsWebControllerReady:Z

    if-eqz v1, :cond_167

    .line 3829
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreState(state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3832
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->getDisplayedProduct()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_99

    .line 3837
    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_54

    .line 3838
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    const-string v3, "onRVAdClosed()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3839
    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    .line 3840
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->getDisplayedDemandSourceId()Ljava/lang/String;

    move-result-object v3

    .line 3841
    invoke-direct {p0, v1}, Lcom/ironsource/sdk/controller/WebController;->getAdProductListenerByProductType(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;

    move-result-object v4

    if-eqz v4, :cond_91

    .line 3842
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_91

    .line 3843
    invoke-interface {v4, v1, v3}, Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;->onAdProductClose(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    goto :goto_91

    .line 3847
    :cond_54
    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_79

    .line 3848
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    const-string v3, "onInterstitialAdClosed()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3849
    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    .line 3850
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->getDisplayedDemandSourceId()Ljava/lang/String;

    move-result-object v3

    .line 3851
    invoke-direct {p0, v1}, Lcom/ironsource/sdk/controller/WebController;->getAdProductListenerByProductType(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;

    move-result-object v4

    if-eqz v4, :cond_91

    .line 3852
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_91

    .line 3853
    invoke-interface {v4, v1, v3}, Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;->onAdProductClose(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    goto :goto_91

    .line 3857
    :cond_79
    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_91

    .line 3858
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    const-string v3, "onOWAdClosed()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3859
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    if-eqz v1, :cond_91

    .line 3860
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    invoke-interface {v1}, Lcom/ironsource/sdk/listeners/OnOfferWallListener;->onOWAdClosed()V

    .line 3864
    :cond_91
    :goto_91
    invoke-virtual {p1, v2}, Lcom/ironsource/sdk/data/AdUnitsState;->adOpened(I)V

    const/4 v1, 0x0

    .line 3865
    invoke-virtual {p1, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->setDisplayedDemandSourceId(Ljava/lang/String;)V

    goto :goto_a0

    .line 3867
    :cond_99
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    const-string v2, "No ad was opened"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3874
    :goto_a0
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->getInterstitialAppKey()Ljava/lang/String;

    move-result-object v1

    .line 3875
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->getInterstitialUserId()Ljava/lang/String;

    move-result-object v2

    .line 3877
    iget-object v3, p0, Lcom/ironsource/sdk/controller/WebController;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    sget-object v4, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3, v4}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSources(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Collection;

    move-result-object v3

    .line 3878
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b4
    :goto_b4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_fc

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ironsource/sdk/data/DemandSource;

    .line 3879
    invoke-virtual {v4}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceInitState()I

    move-result v6

    if-ne v6, v5, :cond_b4

    .line 3880
    iget-object v5, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initInterstitial(appKey:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", userId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", demandSource:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3881
    iget-object v5, p0, Lcom/ironsource/sdk/controller/WebController;->mDSInterstitialListener:Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/ironsource/sdk/controller/WebController;->initInterstitial(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;)V

    goto :goto_b4

    .line 3887
    :cond_fc
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->getRVAppKey()Ljava/lang/String;

    move-result-object v1

    .line 3888
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->getRVUserId()Ljava/lang/String;

    move-result-object v2

    .line 3890
    iget-object v3, p0, Lcom/ironsource/sdk/controller/WebController;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    sget-object v4, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3, v4}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSources(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Collection;

    move-result-object v3

    .line 3891
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_110
    :goto_110
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_163

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ironsource/sdk/data/DemandSource;

    .line 3892
    invoke-virtual {v4}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceInitState()I

    move-result v6

    if-ne v6, v5, :cond_110

    .line 3893
    invoke-virtual {v4}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceName()Ljava/lang/String;

    move-result-object v6

    .line 3894
    iget-object v7, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    const-string v8, "onRVNoMoreOffers()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3895
    iget-object v7, p0, Lcom/ironsource/sdk/controller/WebController;->mDSRewardedVideoListener:Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    invoke-interface {v7, v6}, Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;->onRVNoMoreOffers(Ljava/lang/String;)V

    .line 3896
    iget-object v7, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initRewardedVideo(appKey:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", userId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", demandSource:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3897
    iget-object v6, p0, Lcom/ironsource/sdk/controller/WebController;->mDSRewardedVideoListener:Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    invoke-virtual {p0, v1, v2, v4, v6}, Lcom/ironsource/sdk/controller/WebController;->initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;)V

    goto :goto_110

    :cond_163
    const/4 v1, 0x0

    .line 3901
    invoke-virtual {p1, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->setShouldRestore(Z)V

    .line 3904
    :cond_167
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    .line 3906
    monitor-exit v0

    return-void

    :catchall_16b
    move-exception p1

    monitor-exit v0
    :try_end_16d
    .catchall {:try_start_3 .. :try_end_16d} :catchall_16b

    throw p1

    return-void
.end method

.method public resume()V
    .registers 5

    .line 3668
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_2f

    .line 3670
    :try_start_6
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/WebController;->onResume()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_2f

    :catch_a
    move-exception v0

    .line 3672
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebViewController: onResume() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3673
    new-instance v0, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v0}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const-string v1, "https://www.supersonicads.com/mobile/sdk5/log?method=webviewResume"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2f
    :goto_2f
    return-void
.end method

.method runOnUiThread(Ljava/lang/Runnable;)V
    .registers 3

    .line 3925
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_7

    .line 3926
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .registers 2

    .line 499
    invoke-super {p0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object p1

    return-object p1
.end method

.method public sendConnectionInfoChanged(Lorg/json/JSONObject;)V
    .registers 15

    .line 3618
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device connection info changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3620
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v3, "connectionInfo"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v12}, Lcom/ironsource/sdk/controller/WebController;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "connectionInfoChanged"

    .line 3621
    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3622
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public sendConnectionTypeChanged(Ljava/lang/String;)V
    .registers 15

    .line 3608
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device status changed, connection type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3610
    invoke-static {p1}, Lcom/ironsource/sdk/Events/ISNEventsBaseData;->setConnectionType(Ljava/lang/String;)V

    const-string v3, "connectionType"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, p0

    move-object v4, p1

    .line 3611
    invoke-direct/range {v2 .. v12}, Lcom/ironsource/sdk/controller/WebController;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "deviceStatusChanged"

    .line 3612
    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3613
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public setCommunicationWithAdView(Lcom/ironsource/sdk/ISNAdView/ISNAdView;)V
    .registers 3

    .line 3931
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mBannerJsAdapter:Lcom/ironsource/sdk/controller/BannerJSAdapter;

    if-eqz v0, :cond_7

    .line 3932
    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/controller/BannerJSAdapter;->setCommunicationWithAdView(Lcom/ironsource/sdk/ISNAdView/ISNAdView;)V

    :cond_7
    return-void
.end method

.method public setControllerKeyPressed(Ljava/lang/String;)V
    .registers 2

    .line 3592
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mControllerKeyPressed:Ljava/lang/String;

    return-void
.end method

.method public setDebugMode(I)V
    .registers 2

    .line 534
    sput p1, Lcom/ironsource/sdk/controller/WebController;->mDebugMode:I

    return-void
.end method

.method setMissProduct(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V
    .registers 5

    .line 2838
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1c

    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-eq p1, v0, :cond_1c

    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_e

    goto :goto_1c

    .line 2842
    :cond_e
    sget-object p2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, p2, :cond_15

    .line 2843
    iput-boolean v1, p0, Lcom/ironsource/sdk/controller/WebController;->mOWmiss:Z

    goto :goto_21

    .line 2844
    :cond_15
    sget-object p2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, p2, :cond_21

    .line 2845
    iput-boolean v1, p0, Lcom/ironsource/sdk/controller/WebController;->mOWCreditsMiss:Z

    goto :goto_21

    :cond_1c
    :goto_1c
    if-eqz p2, :cond_21

    .line 2840
    invoke-virtual {p2, v1}, Lcom/ironsource/sdk/data/DemandSource;->setDemandSourceInitState(I)V

    .line 2847
    :cond_21
    :goto_21
    iget-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMissProduct("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOnWebViewControllerChangeListener(Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;)V
    .registers 2

    .line 3681
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mChangeListener:Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

    return-void
.end method

.method public setOrientationState(Ljava/lang/String;)V
    .registers 2

    .line 569
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mOrientationState:Ljava/lang/String;

    return-void
.end method

.method public setState(Lcom/ironsource/sdk/controller/WebController$State;)V
    .registers 2

    .line 3732
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mState:Lcom/ironsource/sdk/controller/WebController$State;

    return-void
.end method

.method public setVideoEventsListener(Lcom/ironsource/sdk/controller/VideoEventsListener;)V
    .registers 2

    .line 2429
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mVideoEventsListener:Lcom/ironsource/sdk/controller/VideoEventsListener;

    return-void
.end method

.method public showInterstitial(Lcom/ironsource/sdk/data/DemandSource;Ljava/util/Map;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/data/DemandSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;",
            ")V"
        }
    .end annotation

    const/4 p3, 0x2

    .line 2647
    new-array p3, p3, [Ljava/util/Map;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    .line 2649
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/DemandSource;->convertToMap()Ljava/util/Map;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, p3, p2

    .line 2647
    invoke-static {p3}, Lcom/ironsource/sdk/utils/SDKUtils;->mergeHashMaps([Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 2653
    sget-object p2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, p2, p3}, Lcom/ironsource/sdk/controller/WebController;->createShowProductJSMethod(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 2654
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public showInterstitial(Lorg/json/JSONObject;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;)V
    .registers 3

    .line 2642
    sget-object p2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-direct {p0, p2, p1}, Lcom/ironsource/sdk/controller/WebController;->createShowProductJSMethod(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 2643
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public showOfferWall(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2690
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mOWExtraParameters:Ljava/util/Map;

    const-string p1, "showOfferWall"

    const-string v0, "onShowOfferWallSuccess"

    const-string v1, "onShowOfferWallFail"

    .line 2691
    invoke-direct {p0, p1, v0, v1}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2692
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public showRewardedVideo(Lorg/json/JSONObject;Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;)V
    .registers 3

    .line 2876
    sget-object p2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-direct {p0, p2, p1}, Lcom/ironsource/sdk/controller/WebController;->createShowProductJSMethod(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 2877
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public unregisterConnectionReceiver(Landroid/content/Context;)V
    .registers 3

    .line 3645
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mConnectivityAdapter:Lcom/ironsource/sdk/service/ConnectivityAdapter;

    if-nez v0, :cond_5

    return-void

    .line 3649
    :cond_5
    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/service/ConnectivityAdapter;->stopListenToNetworkChanges(Landroid/content/Context;)V

    return-void
.end method

.method public updateConsentInfo(Lorg/json/JSONObject;)V
    .registers 3

    if-eqz p1, :cond_7

    .line 2750
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    const-string v0, "updateConsentInfo"

    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2751
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public viewableChange(ZLjava/lang/String;)V
    .registers 14

    const-string v1, "webview"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "isViewable"

    move-object v0, p0

    move-object v2, p2

    move v10, p1

    .line 2903
    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/WebController;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "viewableChange"

    .line 2907
    invoke-direct {p0, p2, p1}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2908
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method
