.class public Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;
.super Ljava/lang/Object;
.source "MRAIDAdPresenter.java"

# interfaces
.implements Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;
.implements Lcom/vungle/warren/ui/view/WebViewAPI$MRAIDDelegate;
.implements Lcom/vungle/warren/ui/view/WebViewAPI$WebClientErrorHandler;


# static fields
.field private static final ACTION:Ljava/lang/String; = "action"

.field private static final ACTION_WITH_VALUE:Ljava/lang/String; = "actionWithValue"

.field private static final CLOSE:Ljava/lang/String; = "close"

.field private static final CONSENT_ACTION:Ljava/lang/String; = "consentAction"

.field private static final EXTRA_INCENTIVIZED_SENT:Ljava/lang/String; = "incentivized_sent"

.field private static final EXTRA_REPORT:Ljava/lang/String; = "saved_report"

.field private static final FLEXVIEW:Ljava/lang/String; = "flexview"

.field private static final OPEN:Ljava/lang/String; = "open"

.field private static final OPEN_NON_MRAID:Ljava/lang/String; = "openNonMraid"

.field private static final OPEN_PRIVACY:Ljava/lang/String; = "openPrivacy"

.field private static final SUCCESSFUL_VIEW:Ljava/lang/String; = "successfulView"

.field private static final TAG:Ljava/lang/String; = "com.vungle.warren.ui.presenter.MRAIDAdPresenter"

.field private static final TPAT:Ljava/lang/String; = "tpat"

.field private static final USE_CUSTOM_CLOSE:Ljava/lang/String; = "useCustomClose"

.field private static final USE_CUSTOM_PRIVACY:Ljava/lang/String; = "useCustomPrivacy"

.field private static final VIDEO_VIEWED:Ljava/lang/String; = "videoViewed"


# instance fields
.field private activityManager:Lcom/vungle/warren/utility/ActivityManager;

.field private adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

.field private advertisement:Lcom/vungle/warren/model/Advertisement;

.field private final analytics:Lcom/vungle/warren/analytics/AdAnalytics;

.field private assetDir:Ljava/io/File;

.field private backEnabled:Z

.field private bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

.field private cookieMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/vungle/warren/model/Cookie;",
            ">;"
        }
    .end annotation
.end field

.field private duration:J

.field private durationRecorder:Lcom/vungle/warren/ui/DurationRecorder;

.field private fileExistenceOperation:Lcom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;

.field private isDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final placement:Lcom/vungle/warren/model/Placement;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

.field private report:Lcom/vungle/warren/model/Report;

.field private repository:Lcom/vungle/warren/persistence/Repository;

.field private final scheduler:Lcom/vungle/warren/utility/Scheduler;

.field private sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private sessionData:Lcom/vungle/warren/SessionData;

.field private webClient:Lcom/vungle/warren/ui/view/WebViewAPI;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/utility/Scheduler;Lcom/vungle/warren/analytics/AdAnalytics;Lcom/vungle/warren/ui/view/WebViewAPI;Lcom/vungle/warren/ui/state/OptionsState;Ljava/io/File;Lcom/vungle/warren/SessionData;Lcom/vungle/warren/utility/ActivityManager;)V
    .registers 13
    .param p1    # Lcom/vungle/warren/model/Advertisement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/warren/model/Placement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/vungle/warren/persistence/Repository;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/vungle/warren/utility/Scheduler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/vungle/warren/analytics/AdAnalytics;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/vungle/warren/ui/view/WebViewAPI;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/vungle/warren/ui/state/OptionsState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/vungle/warren/SessionData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/vungle/warren/utility/ActivityManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->cookieMap:Ljava/util/Map;

    .line 134
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 135
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->isDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 136
    new-instance v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$1;

    invoke-direct {v0, p0}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$1;-><init>(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;)V

    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    .line 175
    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    .line 176
    iput-object p3, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    .line 177
    iput-object p2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    .line 178
    iput-object p4, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->scheduler:Lcom/vungle/warren/utility/Scheduler;

    .line 179
    iput-object p5, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->analytics:Lcom/vungle/warren/analytics/AdAnalytics;

    .line 180
    iput-object p6, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->webClient:Lcom/vungle/warren/ui/view/WebViewAPI;

    .line 181
    iput-object p8, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->assetDir:Ljava/io/File;

    .line 182
    iput-object p10, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->activityManager:Lcom/vungle/warren/utility/ActivityManager;

    .line 183
    iput-object p9, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->sessionData:Lcom/vungle/warren/SessionData;

    .line 184
    invoke-direct {p0, p7}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->loadData(Lcom/vungle/warren/ui/state/OptionsState;)V

    return-void
.end method

.method static synthetic access$000(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;I)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->makeBusError(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;)V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->closeView()V

    return-void
.end method

.method static synthetic access$200(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;)Lcom/vungle/warren/model/Report;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    return-object p0
.end method

.method static synthetic access$300(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;)Lcom/vungle/warren/persistence/Repository$SaveCallback;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;)Lcom/vungle/warren/persistence/Repository;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    return-object p0
.end method

.method static synthetic access$502(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;Z)Z
    .registers 2

    .line 47
    iput-boolean p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->backEnabled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;)Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    return-object p0
.end method

.method private closeView()V
    .registers 2

    .line 691
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->close()V

    .line 692
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->scheduler:Lcom/vungle/warren/utility/Scheduler;

    invoke-interface {v0}, Lcom/vungle/warren/utility/Scheduler;->cancelAll()V

    return-void
.end method

.method private download()V
    .registers 6

    const-string v0, "cta"

    const-string v1, ""

    .line 676
    invoke-virtual {p0, v0, v1}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    :try_start_7
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->analytics:Lcom/vungle/warren/analytics/AdAnalytics;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v3, v1}, Lcom/vungle/warren/model/Advertisement;->getCTAURL(Z)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-interface {v0, v2}, Lcom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    .line 682
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->activityManager:Lcom/vungle/warren/utility/ActivityManager;

    new-instance v1, Lcom/vungle/warren/ui/PresenterAppLeftCallback;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    iget-object v4, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-direct {v1, v2, v4}, Lcom/vungle/warren/ui/PresenterAppLeftCallback;-><init>(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;Lcom/vungle/warren/model/Placement;)V

    invoke-virtual {v0, v1}, Lcom/vungle/warren/utility/ActivityManager;->addOnNextAppLeftCallback(Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V

    .line 683
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1, v3}, Lcom/vungle/warren/model/Advertisement;->getCTAURL(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->open(Ljava/lang/String;)V
    :try_end_31
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_31} :catch_31

    :catch_31
    return-void
.end method

.method private handleWebViewException(I)V
    .registers 3
    .param p1    # I
        .annotation build Lcom/vungle/warren/error/VungleException$ExceptionCode;
        .end annotation
    .end param

    .line 730
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    if-eqz v0, :cond_7

    .line 731
    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->removeWebView()V

    .line 733
    :cond_7
    invoke-direct {p0, p1}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->reportErrorAndCloseAd(I)V

    return-void
.end method

.method private loadData(Lcom/vungle/warren/ui/state/OptionsState;)V
    .registers 6

    .line 696
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->cookieMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    const-class v2, Lcom/vungle/warren/model/Cookie;

    const-string v3, "incentivizedTextSetByPub"

    invoke-virtual {v1, v3, v2}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->cookieMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    const-class v2, Lcom/vungle/warren/model/Cookie;

    const-string v3, "consentIsImportantToVungle"

    invoke-virtual {v1, v3, v2}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->cookieMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    const-class v2, Lcom/vungle/warren/model/Cookie;

    const-string v3, "configSettings"

    invoke-virtual {v1, v3, v2}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_5b

    const-string v0, "saved_report"

    .line 701
    invoke-interface {p1, v0}, Lcom/vungle/warren/ui/state/OptionsState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 702
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 p1, 0x0

    goto :goto_57

    :cond_49
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    const-class v1, Lcom/vungle/warren/model/Report;

    invoke-virtual {v0, p1, v1}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/model/Report;

    :goto_57
    if-eqz p1, :cond_5b

    .line 705
    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    :cond_5b
    return-void
.end method

.method private loadMraid(Ljava/io/File;)V
    .registers 4
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 351
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 354
    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "index.html"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 356
    new-instance v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$4;

    invoke-direct {v0, p0, p1}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$4;-><init>(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;Ljava/io/File;)V

    invoke-static {p1, v0}, Lcom/vungle/warren/utility/AsyncFileUtils;->isFileExistAsync(Ljava/io/File;Lcom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;)Lcom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->fileExistenceOperation:Lcom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;

    return-void
.end method

.method private makeBusError(I)V
    .registers 4
    .param p1    # I
        .annotation build Lcom/vungle/warren/error/VungleException$ExceptionCode;
        .end annotation
    .end param

    .line 743
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v0, :cond_12

    .line 744
    new-instance v1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v1, p1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {p1}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onError(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method private prepare(Lcom/vungle/warren/ui/state/OptionsState;)V
    .registers 15
    .param p1    # Lcom/vungle/warren/ui/state/OptionsState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 264
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->webClient:Lcom/vungle/warren/ui/view/WebViewAPI;

    invoke-interface {p1, p0}, Lcom/vungle/warren/ui/view/WebViewAPI;->setMRAIDDelegate(Lcom/vungle/warren/ui/view/WebViewAPI$MRAIDDelegate;)V

    .line 265
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->webClient:Lcom/vungle/warren/ui/view/WebViewAPI;

    invoke-interface {p1, p0}, Lcom/vungle/warren/ui/view/WebViewAPI;->setErrorHandler(Lcom/vungle/warren/ui/view/WebViewAPI$WebClientErrorHandler;)V

    .line 267
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->assetDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "template"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-direct {p0, p1}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->loadMraid(Ljava/io/File;)V

    .line 270
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getTemplateType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "flexview"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-wide/16 v1, 0x3e8

    if-eqz p1, :cond_61

    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getAdConfig()Lcom/vungle/warren/AdConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/AdConfig;->getFlexViewCloseTime()I

    move-result p1

    if-lez p1, :cond_61

    .line 271
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->scheduler:Lcom/vungle/warren/utility/Scheduler;

    new-instance v3, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$2;

    invoke-direct {v3, p0}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$2;-><init>(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;)V

    iget-object v4, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    .line 283
    invoke-virtual {v4}, Lcom/vungle/warren/model/Advertisement;->getAdConfig()Lcom/vungle/warren/AdConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vungle/warren/AdConfig;->getFlexViewCloseTime()I

    move-result v4

    int-to-long v4, v4

    mul-long v4, v4, v1

    .line 271
    invoke-interface {p1, v3, v4, v5}, Lcom/vungle/warren/utility/Scheduler;->schedule(Ljava/lang/Runnable;J)V

    .line 286
    :cond_61
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->cookieMap:Ljava/util/Map;

    const-string v3, "incentivizedTextSetByPub"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/model/Cookie;

    const/4 v3, 0x0

    if-nez p1, :cond_70

    move-object v9, v3

    goto :goto_77

    :cond_70
    const-string v4, "userID"

    .line 287
    invoke-virtual {p1, v4}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v9, p1

    .line 289
    :goto_77
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    if-nez p1, :cond_a1

    .line 290
    new-instance p1, Lcom/vungle/warren/model/Report;

    iget-object v5, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    iget-object v6, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v10, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->sessionData:Lcom/vungle/warren/SessionData;

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Lcom/vungle/warren/model/Report;-><init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;JLjava/lang/String;Lcom/vungle/warren/SessionData;)V

    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    .line 291
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v4, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v4}, Lcom/vungle/warren/model/Advertisement;->getTtDownload()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/vungle/warren/model/Report;->setTtDownload(J)V

    .line 292
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v4, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v5, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {p1, v4, v5}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 295
    :cond_a1
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->durationRecorder:Lcom/vungle/warren/ui/DurationRecorder;

    if-nez p1, :cond_b2

    .line 296
    new-instance p1, Lcom/vungle/warren/ui/DurationRecorder;

    iget-object v4, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v5, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v6, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-direct {p1, v4, v5, v6}, Lcom/vungle/warren/ui/DurationRecorder;-><init>(Lcom/vungle/warren/model/Report;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->durationRecorder:Lcom/vungle/warren/ui/DurationRecorder;

    .line 299
    :cond_b2
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->cookieMap:Ljava/util/Map;

    const-string v4, "consentIsImportantToVungle"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/model/Cookie;

    const/4 v4, 0x1

    if-eqz p1, :cond_11d

    const-string v5, "is_country_data_protected"

    .line 302
    invoke-virtual {p1, v5}, Lcom/vungle/warren/model/Cookie;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v6, "consent_status"

    if-eqz v5, :cond_db

    invoke-virtual {p1, v6}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "unknown"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_db

    const/4 v5, 0x1

    goto :goto_dc

    :cond_db
    const/4 v5, 0x0

    .line 304
    :goto_dc
    iget-object v7, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->webClient:Lcom/vungle/warren/ui/view/WebViewAPI;

    const-string v8, "consent_title"

    .line 305
    invoke-virtual {p1, v8}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v8, "consent_message"

    .line 306
    invoke-virtual {p1, v8}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v8, "button_accept"

    .line 307
    invoke-virtual {p1, v8}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v8, "button_deny"

    .line 308
    invoke-virtual {p1, v8}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move v8, v5

    .line 304
    invoke-interface/range {v7 .. v12}, Lcom/vungle/warren/ui/view/WebViewAPI;->setConsentStatus(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_11d

    const-string v5, "opted_out_by_timeout"

    .line 314
    invoke-virtual {p1, v6, v5}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    div-long/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-virtual {p1, v2, v1}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "consent_source"

    const-string v2, "vungle_modal"

    .line 316
    invoke-virtual {p1, v1, v2}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 317
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {v1, p1, v2}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 322
    :cond_11d
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/vungle/warren/model/Advertisement;->getShowCloseDelay(Z)I

    move-result p1

    if-lez p1, :cond_137

    .line 325
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->scheduler:Lcom/vungle/warren/utility/Scheduler;

    new-instance v2, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$3;

    invoke-direct {v2, p0}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$3;-><init>(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;)V

    int-to-long v4, p1

    invoke-interface {v1, v2, v4, v5}, Lcom/vungle/warren/utility/Scheduler;->schedule(Ljava/lang/Runnable;J)V

    goto :goto_139

    .line 332
    :cond_137
    iput-boolean v4, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->backEnabled:Z

    .line 335
    :goto_139
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Advertisement;->getTemplateType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->updateWindow(Z)V

    .line 337
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz p1, :cond_157

    .line 338
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "start"

    invoke-interface {p1, v1, v3, v0}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_157
    return-void
.end method

.method private reportErrorAndCloseAd(I)V
    .registers 2
    .param p1    # I
        .annotation build Lcom/vungle/warren/error/VungleException$ExceptionCode;
        .end annotation
    .end param

    .line 738
    invoke-direct {p0, p1}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->makeBusError(I)V

    .line 739
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->closeView()V

    return-void
.end method


# virtual methods
.method public bridge synthetic attach(Lcom/vungle/warren/ui/contract/AdContract$AdView;Lcom/vungle/warren/ui/state/OptionsState;)V
    .registers 3
    .param p1    # Lcom/vungle/warren/ui/contract/AdContract$AdView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/warren/ui/state/OptionsState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 47
    check-cast p1, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->attach(Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;Lcom/vungle/warren/ui/state/OptionsState;)V

    return-void
.end method

.method public attach(Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;Lcom/vungle/warren/ui/state/OptionsState;)V
    .registers 9
    .param p1    # Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/warren/ui/state/OptionsState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 214
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->isDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 215
    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    .line 216
    invoke-interface {p1, p0}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->setPresenter(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;)V

    .line 218
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Advertisement;->getAdConfig()Lcom/vungle/warren/AdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/AdConfig;->getSettings()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_1f

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_1d

    const/4 v1, 0x1

    .line 220
    :cond_1d
    iput-boolean v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->backEnabled:Z

    :cond_1f
    const/4 v0, -0x1

    .line 225
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Advertisement;->getAdConfig()Lcom/vungle/warren/AdConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/warren/AdConfig;->getAdOrientation()I

    move-result v1

    const/4 v3, 0x3

    const/4 v4, 0x6

    const/4 v5, 0x7

    if-ne v1, v3, :cond_3b

    .line 227
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Advertisement;->getOrientation()I

    move-result v1

    if-eqz v1, :cond_3d

    if-eq v1, v2, :cond_43

    const/4 v4, -0x1

    goto :goto_43

    :cond_3b
    if-nez v1, :cond_3f

    :cond_3d
    const/4 v4, 0x7

    goto :goto_43

    :cond_3f
    if-ne v1, v2, :cond_42

    goto :goto_43

    :cond_42
    const/4 v4, 0x4

    .line 245
    :cond_43
    :goto_43
    sget-object v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested Orientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-interface {p1, v4}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->setOrientation(I)V

    .line 247
    invoke-direct {p0, p2}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->prepare(Lcom/vungle/warren/ui/state/OptionsState;)V

    return-void
.end method

.method public detach(Z)V
    .registers 3

    or-int/lit8 p1, p1, 0x2

    .line 255
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->fileExistenceOperation:Lcom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;

    if-eqz v0, :cond_9

    .line 256
    invoke-virtual {v0}, Lcom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;->cancel()V

    .line 259
    :cond_9
    invoke-virtual {p0, p1}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->stop(I)V

    .line 260
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {p1}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->destroyAdView()V

    return-void
.end method

.method public generateSaveState(Lcom/vungle/warren/ui/state/OptionsState;)V
    .registers 5
    .param p1    # Lcom/vungle/warren/ui/state/OptionsState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_3

    return-void

    .line 431
    :cond_3
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 432
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Report;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "saved_report"

    invoke-interface {p1, v1, v0}, Lcom/vungle/warren/ui/state/OptionsState;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "incentivized_sent"

    invoke-interface {p1, v1, v0}, Lcom/vungle/warren/ui/state/OptionsState;->put(Ljava/lang/String;Z)V

    return-void
.end method

.method public handleExit(Ljava/lang/String;)Z
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "javascript:window.vungle.mraidBridgeExt.requestMRAIDClose()"

    const/4 v1, 0x0

    if-eqz p1, :cond_48

    .line 461
    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    if-nez v2, :cond_11

    .line 462
    sget-object p1, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->TAG:Ljava/lang/String;

    const-string v0, "Unable to close advertisement"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 465
    :cond_11
    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    .line 466
    sget-object p1, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->TAG:Ljava/lang/String;

    const-string v0, "Cannot close FlexView Ad with invalid placement reference id"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 469
    :cond_25
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getTemplateType()Ljava/lang/String;

    move-result-object p1

    const-string v2, "flexview"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    .line 470
    sget-object p1, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->TAG:Ljava/lang/String;

    const-string v0, "Cannot close a Non FlexView ad"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 473
    :cond_3b
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {p1, v0}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->showWebsite(Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string v0, "mraidCloseByApi"

    .line 474
    invoke-virtual {p0, v0, p1}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 476
    :cond_48
    iget-boolean p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->backEnabled:Z

    if-eqz p1, :cond_51

    .line 478
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {p1, v0}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->showWebsite(Ljava/lang/String;)V

    :cond_51
    return v1
.end method

.method public onMraidAction(Ljava/lang/String;)V
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 657
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x12bedc78

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2a

    const v1, 0x5a5ddf8

    if-eq v0, v1, :cond_20

    const v1, 0x551ac888

    if-eq v0, v1, :cond_16

    goto :goto_34

    :cond_16
    const-string v0, "download"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x1

    goto :goto_35

    :cond_20
    const-string v0, "close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x0

    goto :goto_35

    :cond_2a
    const-string v0, "privacy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x2

    goto :goto_35

    :cond_34
    :goto_34
    const/4 v0, -0x1

    :goto_35
    if-eqz v0, :cond_57

    if-eq v0, v3, :cond_53

    if-ne v0, v2, :cond_3c

    goto :goto_5a

    .line 671
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_53
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->download()V

    goto :goto_5a

    .line 660
    :cond_57
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->closeView()V

    :goto_5a
    return-void
.end method

.method public onReceivedError(Ljava/lang/String;)V
    .registers 4

    .line 712
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    if-eqz v0, :cond_10

    .line 713
    invoke-virtual {v0, p1}, Lcom/vungle/warren/model/Report;->recordError(Ljava/lang/String;)V

    .line 714
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {p1, v0, v1}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    :cond_10
    return-void
.end method

.method public onRenderProcessUnresponsive(Landroid/webkit/WebView;Landroid/webkit/WebViewRenderProcess;)V
    .registers 3
    .param p1    # Landroid/webkit/WebView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/webkit/WebViewRenderProcess;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 p1, 0x20

    .line 726
    invoke-direct {p0, p1}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->handleWebViewException(I)V

    return-void
.end method

.method public onViewConfigurationChanged()V
    .registers 4

    .line 208
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Advertisement;->getTemplateType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "flexview"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->updateWindow(Z)V

    .line 209
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->webClient:Lcom/vungle/warren/ui/view/WebViewAPI;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/vungle/warren/ui/view/WebViewAPI;->notifyPropertiesChange(Z)V

    return-void
.end method

.method public onWebRenderingProcessGone(Landroid/webkit/WebView;Z)Z
    .registers 3

    const/16 p1, 0x1f

    .line 720
    invoke-direct {p0, p1}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->handleWebViewException(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public processCommand(Ljava/lang/String;Lcom/google/gson/JsonObject;)Z
    .registers 19
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/gson/JsonObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 487
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "useCustomPrivacy"

    const-string v5, "openNonMraid"

    const-string v6, "successfulView"

    const-string v7, "open"

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    sparse-switch v3, :sswitch_data_394

    goto/16 :goto_84

    :sswitch_1a
    const-string v3, "useCustomClose"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    const/4 v3, 0x7

    goto/16 :goto_85

    :sswitch_25
    const-string v3, "close"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    const/4 v3, 0x0

    goto :goto_85

    :sswitch_2f
    const-string v3, "tpat"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    const/4 v3, 0x3

    goto :goto_85

    :sswitch_39
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    const/4 v3, 0x5

    goto :goto_85

    :sswitch_41
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    const/16 v3, 0x8

    goto :goto_85

    :sswitch_4a
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    const/4 v3, 0x6

    goto :goto_85

    :sswitch_52
    const-string v3, "openPrivacy"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    const/16 v3, 0x9

    goto :goto_85

    :sswitch_5d
    const-string v3, "consentAction"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    const/4 v3, 0x1

    goto :goto_85

    :sswitch_67
    const-string v3, "actionWithValue"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    const/4 v3, 0x2

    goto :goto_85

    :sswitch_71
    const-string v3, "action"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    const/4 v3, 0x4

    goto :goto_85

    :sswitch_7b
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    const/16 v3, 0xa

    goto :goto_85

    :cond_84
    :goto_84
    const/4 v3, -0x1

    :goto_85
    const-string v12, "gone"

    const-string v13, "url"

    const v14, 0x30809f

    const-string v15, "event"

    const/4 v8, 0x0

    packed-switch v3, :pswitch_data_3c2

    return v10

    .line 633
    :pswitch_93
    iget-object v1, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v1, :cond_a0

    .line 634
    iget-object v2, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v6, v8, v2}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    :cond_a0
    iget-object v1, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->cookieMap:Ljava/util/Map;

    const-string v2, "configSettings"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/model/Cookie;

    .line 638
    iget-object v2, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result v2

    if-eqz v2, :cond_116

    if-eqz v1, :cond_116

    const-string v2, "isReportIncentivizedEnabled"

    invoke-virtual {v1, v2}, Lcom/vungle/warren/model/Cookie;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_116

    iget-object v1, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_116

    .line 640
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 641
    new-instance v2, Lcom/google/gson/JsonPrimitive;

    iget-object v3, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v3}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v3, "placement_reference_id"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 642
    new-instance v2, Lcom/google/gson/JsonPrimitive;

    iget-object v3, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v3}, Lcom/vungle/warren/model/Advertisement;->getAppID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v3, "app_id"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 643
    new-instance v2, Lcom/google/gson/JsonPrimitive;

    iget-object v3, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-virtual {v3}, Lcom/vungle/warren/model/Report;->getAdStartTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v3, "adStartTime"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 644
    new-instance v2, Lcom/google/gson/JsonPrimitive;

    iget-object v3, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-virtual {v3}, Lcom/vungle/warren/model/Report;->getUserID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v3, "user"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 645
    iget-object v2, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->analytics:Lcom/vungle/warren/analytics/AdAnalytics;

    invoke-interface {v2, v1}, Lcom/vungle/warren/analytics/AdAnalytics;->ri(Lcom/google/gson/JsonObject;)V

    :cond_116
    return v11

    .line 625
    :pswitch_117
    invoke-virtual {v2, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 626
    iget-object v2, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->activityManager:Lcom/vungle/warren/utility/ActivityManager;

    new-instance v3, Lcom/vungle/warren/ui/PresenterAppLeftCallback;

    iget-object v4, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    iget-object v5, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-direct {v3, v4, v5}, Lcom/vungle/warren/ui/PresenterAppLeftCallback;-><init>(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;Lcom/vungle/warren/model/Placement;)V

    invoke-virtual {v2, v3}, Lcom/vungle/warren/utility/ActivityManager;->addOnNextAppLeftCallback(Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V

    .line 627
    iget-object v2, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {v2, v1}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->open(Ljava/lang/String;)V

    return v11

    .line 611
    :pswitch_133
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 612
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    if-eq v2, v14, :cond_160

    const v3, 0x36758e

    if-eq v2, v3, :cond_156

    const v3, 0x5cb1923

    if-eq v2, v3, :cond_14c

    goto :goto_167

    :cond_14c
    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_167

    const/4 v10, 0x2

    goto :goto_168

    :cond_156
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_167

    const/4 v10, 0x1

    goto :goto_168

    :cond_160
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_167

    goto :goto_168

    :cond_167
    :goto_167
    const/4 v10, -0x1

    :goto_168
    if-eqz v10, :cond_186

    if-eq v10, v11, :cond_186

    if-ne v10, v9, :cond_16f

    goto :goto_186

    .line 618
    :cond_16f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_186
    :goto_186
    return v11

    :pswitch_187
    const-string v1, "sdkCloseButton"

    .line 599
    invoke-virtual {v2, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 600
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x715b4053

    if-eq v2, v3, :cond_1b3

    if-eq v2, v14, :cond_1ac

    const v3, 0x1bd1f072

    if-eq v2, v3, :cond_1a2

    goto :goto_1bd

    :cond_1a2
    const-string v2, "visible"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1bd

    const/4 v10, 0x2

    goto :goto_1be

    :cond_1ac
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1bd

    goto :goto_1be

    :cond_1b3
    const-string v2, "invisible"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1bd

    const/4 v10, 0x1

    goto :goto_1be

    :cond_1bd
    :goto_1bd
    const/4 v10, -0x1

    :goto_1be
    if-eqz v10, :cond_1dc

    if-eq v10, v11, :cond_1dc

    if-ne v10, v9, :cond_1c5

    goto :goto_1dc

    .line 606
    :cond_1c5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1dc
    :goto_1dc
    return v11

    :pswitch_1dd
    const-string v3, "download"

    .line 578
    invoke-virtual {v0, v3, v8}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1ee

    const-string v1, "mraidOpen"

    .line 580
    invoke-virtual {v0, v1, v8}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f9

    .line 581
    :cond_1ee
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f9

    const-string v1, "nonMraidOpen"

    .line 582
    invoke-virtual {v0, v1, v8}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    :cond_1f9
    :goto_1f9
    invoke-virtual {v2, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 586
    iget-object v2, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->activityManager:Lcom/vungle/warren/utility/ActivityManager;

    new-instance v3, Lcom/vungle/warren/ui/PresenterAppLeftCallback;

    iget-object v4, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    iget-object v5, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-direct {v3, v4, v5}, Lcom/vungle/warren/ui/PresenterAppLeftCallback;-><init>(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;Lcom/vungle/warren/model/Placement;)V

    invoke-virtual {v2, v3}, Lcom/vungle/warren/utility/ActivityManager;->addOnNextAppLeftCallback(Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V

    if-eqz v1, :cond_21e

    .line 587
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_218

    goto :goto_21e

    .line 590
    :cond_218
    iget-object v2, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {v2, v1}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->open(Ljava/lang/String;)V

    goto :goto_225

    .line 588
    :cond_21e
    :goto_21e
    sget-object v1, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->TAG:Ljava/lang/String;

    const-string v2, "CTA destination URL is not configured properly"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :goto_225
    iget-object v1, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v1, :cond_234

    .line 594
    iget-object v2, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "adClick"

    invoke-interface {v1, v7, v3, v2}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_234
    :pswitch_234
    return v11

    .line 567
    :pswitch_235
    invoke-virtual {v2, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 569
    iget-object v2, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->analytics:Lcom/vungle/warren/analytics/AdAnalytics;

    iget-object v3, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v3, v1}, Lcom/vungle/warren/model/Advertisement;->getTpatUrls(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    return v11

    .line 511
    :pswitch_249
    invoke-virtual {v2, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "value"

    .line 512
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 513
    iget-object v3, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/vungle/warren/model/Report;->recordAction(Ljava/lang/String;Ljava/lang/String;J)V

    .line 514
    iget-object v3, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v4, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v5, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {v3, v4, v5}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    const-string v3, "videoViewed"

    .line 518
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_331

    iget-wide v3, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->duration:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_331

    .line 522
    :try_start_27d
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 523
    iget-wide v4, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->duration:J
    :try_end_283
    .catch Ljava/lang/NumberFormatException; {:try_start_27d .. :try_end_283} :catch_28b

    long-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v3, v3, v4

    float-to-int v10, v3

    goto :goto_292

    .line 525
    :catch_28b
    sget-object v3, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->TAG:Ljava/lang/String;

    const-string v4, "value for videoViewed is null !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_292
    if-lez v10, :cond_32c

    .line 529
    iget-object v3, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v3, :cond_2b2

    .line 530
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "percentViewed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v5}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v8, v5}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :cond_2b2
    iget-object v3, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->cookieMap:Ljava/util/Map;

    const-string v4, "configSettings"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/warren/model/Cookie;

    .line 534
    iget-object v4, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v4}, Lcom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result v4

    if-eqz v4, :cond_32c

    const/16 v4, 0x4b

    if-le v10, v4, :cond_32c

    if-eqz v3, :cond_32c

    const-string v4, "isReportIncentivizedEnabled"

    .line 535
    invoke-virtual {v3, v4}, Lcom/vungle/warren/model/Cookie;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_32c

    iget-object v3, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 536
    invoke-virtual {v3, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-nez v3, :cond_32c

    .line 538
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 539
    new-instance v4, Lcom/google/gson/JsonPrimitive;

    iget-object v5, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v5}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v5, "placement_reference_id"

    invoke-virtual {v3, v5, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 540
    new-instance v4, Lcom/google/gson/JsonPrimitive;

    iget-object v5, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v5}, Lcom/vungle/warren/model/Advertisement;->getAppID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v5, "app_id"

    invoke-virtual {v3, v5, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 541
    new-instance v4, Lcom/google/gson/JsonPrimitive;

    iget-object v5, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-virtual {v5}, Lcom/vungle/warren/model/Report;->getAdStartTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v5, "adStartTime"

    invoke-virtual {v3, v5, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 542
    new-instance v4, Lcom/google/gson/JsonPrimitive;

    iget-object v5, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-virtual {v5}, Lcom/vungle/warren/model/Report;->getUserID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v5, "user"

    invoke-virtual {v3, v5, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 543
    iget-object v4, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->analytics:Lcom/vungle/warren/analytics/AdAnalytics;

    invoke-interface {v4, v3}, Lcom/vungle/warren/analytics/AdAnalytics;->ri(Lcom/google/gson/JsonObject;)V

    .line 547
    :cond_32c
    iget-object v3, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->durationRecorder:Lcom/vungle/warren/ui/DurationRecorder;

    invoke-virtual {v3}, Lcom/vungle/warren/ui/DurationRecorder;->update()V

    :cond_331
    const-string v3, "videoLength"

    .line 550
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_347

    .line 554
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->duration:J

    .line 555
    invoke-virtual {v0, v3, v2}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object v1, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->webClient:Lcom/vungle/warren/ui/view/WebViewAPI;

    invoke-interface {v1, v11}, Lcom/vungle/warren/ui/view/WebViewAPI;->notifyPropertiesChange(Z)V

    .line 560
    :cond_347
    iget-object v1, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {v1, v11}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->setVisibility(Z)V

    return v11

    .line 495
    :pswitch_34d
    iget-object v1, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->cookieMap:Ljava/util/Map;

    const-string v3, "consentIsImportantToVungle"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/model/Cookie;

    if-nez v1, :cond_35e

    .line 497
    new-instance v1, Lcom/vungle/warren/model/Cookie;

    invoke-direct {v1, v3}, Lcom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    .line 500
    :cond_35e
    invoke-virtual {v2, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "consent_status"

    .line 501
    invoke-virtual {v1, v3, v2}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "consent_source"

    const-string v3, "vungle_modal"

    .line 502
    invoke-virtual {v1, v2, v3}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 503
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "timestamp"

    invoke-virtual {v1, v3, v2}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 506
    iget-object v2, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v3, v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {v2, v1, v3}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    return v11

    :pswitch_38a
    const-string v1, "mraidClose"

    .line 490
    invoke-virtual {v0, v1, v8}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-direct/range {p0 .. p0}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->closeView()V

    return v11

    nop

    :sswitch_data_394
    .sparse-switch
        -0x71fc83a1 -> :sswitch_7b
        -0x54d081ca -> :sswitch_71
        -0x2bd2454b -> :sswitch_67
        -0x2762d110 -> :sswitch_5d
        -0x1e7a3222 -> :sswitch_52
        -0x18f2f4ec -> :sswitch_4a
        -0x14bf8370 -> :sswitch_41
        0x34264a -> :sswitch_39
        0x366baf -> :sswitch_2f
        0x5a5ddf8 -> :sswitch_25
        0x6037d900 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_3c2
    .packed-switch 0x0
        :pswitch_38a
        :pswitch_34d
        :pswitch_249
        :pswitch_235
        :pswitch_234
        :pswitch_1dd
        :pswitch_1dd
        :pswitch_187
        :pswitch_133
        :pswitch_117
        :pswitch_93
    .end packed-switch
.end method

.method public reportAction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "videoLength"

    .line 194
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 197
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->duration:J

    .line 198
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-wide v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->duration:J

    invoke-virtual {p1, v0, v1}, Lcom/vungle/warren/model/Report;->setVideoLength(J)V

    .line 199
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {p1, p2, v0}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    return-void

    .line 202
    :cond_1f
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/vungle/warren/model/Report;->recordAction(Ljava/lang/String;Ljava/lang/String;J)V

    .line 203
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {p1, p2, v0}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    return-void
.end method

.method public restoreFromSave(Lcom/vungle/warren/ui/state/OptionsState;)V
    .registers 4
    .param p1    # Lcom/vungle/warren/ui/state/OptionsState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    const-string v1, "incentivized_sent"

    .line 443
    invoke-interface {p1, v1, v0}, Lcom/vungle/warren/ui/state/OptionsState;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 446
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 450
    :cond_11
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    if-nez p1, :cond_1a

    .line 452
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {p1}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->close()V

    :cond_1a
    return-void
.end method

.method public setAdVisibility(Z)V
    .registers 3

    .line 417
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->webClient:Lcom/vungle/warren/ui/view/WebViewAPI;

    invoke-interface {v0, p1}, Lcom/vungle/warren/ui/view/WebViewAPI;->setAdVisibility(Z)V

    if-eqz p1, :cond_d

    .line 419
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->durationRecorder:Lcom/vungle/warren/ui/DurationRecorder;

    invoke-virtual {p1}, Lcom/vungle/warren/ui/DurationRecorder;->start()V

    goto :goto_12

    .line 421
    :cond_d
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->durationRecorder:Lcom/vungle/warren/ui/DurationRecorder;

    invoke-virtual {p1}, Lcom/vungle/warren/ui/DurationRecorder;->stop()V

    :goto_12
    return-void
.end method

.method public setEventListener(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;)V
    .registers 2
    .param p1    # Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 189
    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    return-void
.end method

.method public start()V
    .registers 2

    .line 375
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->hasWebView()Z

    move-result v0

    if-nez v0, :cond_e

    const/16 v0, 0x1f

    .line 376
    invoke-direct {p0, v0}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->reportErrorAndCloseAd(I)V

    return-void

    .line 380
    :cond_e
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->setImmersiveMode()V

    .line 381
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->resumeWeb()V

    const/4 v0, 0x1

    .line 382
    invoke-virtual {p0, v0}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->setAdVisibility(Z)V

    return-void
.end method

.method public stop(I)V
    .registers 7
    .param p1    # I
        .annotation build Lcom/vungle/warren/ui/contract/AdContract$AdStopReason;
        .end annotation
    .end param

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_f

    const/4 v3, 0x1

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    :goto_10
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    .line 391
    :goto_17
    iget-object v4, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {v4}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->pauseWeb()V

    .line 394
    invoke-virtual {p0, v1}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->setAdVisibility(Z)V

    if-nez v0, :cond_5c

    if-eqz v3, :cond_5c

    .line 395
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->isDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 398
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->webClient:Lcom/vungle/warren/ui/view/WebViewAPI;

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    .line 399
    invoke-interface {v0, v1}, Lcom/vungle/warren/ui/view/WebViewAPI;->setMRAIDDelegate(Lcom/vungle/warren/ui/view/WebViewAPI$MRAIDDelegate;)V

    :cond_33
    if-eqz p1, :cond_3a

    const-string p1, "mraidCloseByApi"

    .line 403
    invoke-virtual {p0, p1, v1}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :cond_3a
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {p1, v0, v2}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 408
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz p1, :cond_5c

    .line 410
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Report;->isCTAClicked()Z

    move-result v0

    if-eqz v0, :cond_51

    const-string v1, "isCTAClicked"

    :cond_51
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "end"

    invoke-interface {p1, v2, v1, v0}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5c
    return-void
.end method
