.class public Lcom/vungle/warren/ui/presenter/LocalAdPresenter;
.super Ljava/lang/Object;
.source "LocalAdPresenter.java"

# interfaces
.implements Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;
.implements Lcom/vungle/warren/ui/view/WebViewAPI$WebClientErrorHandler;


# static fields
.field static final EXTRA_INCENTIVIZED_SENT:Ljava/lang/String; = "incentivized_sent"

.field static final EXTRA_IN_POST:Ljava/lang/String; = "in_post_roll"

.field static final EXTRA_IS_MUTED:Ljava/lang/String; = "is_muted_mode"

.field static final EXTRA_REPORT:Ljava/lang/String; = "saved_report"

.field static final EXTRA_VIDEO_POSITION:Ljava/lang/String; = "videoPosition"

.field static final HTTPS_VUNGLE_COM_PRIVACY:Ljava/lang/String; = "https://vungle.com/privacy/"

.field public static final INCENTIVIZED_TRESHOLD:I = 0x4b

.field static final TAG:Ljava/lang/String; = "LocalAdPresenter"


# instance fields
.field private activityManager:Lcom/vungle/warren/utility/ActivityManager;

.field private adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

.field private advertisement:Lcom/vungle/warren/model/Advertisement;

.field private final analytics:Lcom/vungle/warren/analytics/AdAnalytics;

.field private assetDir:Ljava/io/File;

.field private bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

.field private busy:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private checkpointList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/vungle/warren/model/Advertisement$Checkpoint;",
            ">;"
        }
    .end annotation
.end field

.field private final cookies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/vungle/warren/model/Cookie;",
            ">;"
        }
    .end annotation
.end field

.field private dialogBody:Ljava/lang/String;

.field private dialogClose:Ljava/lang/String;

.field private dialogContinue:Ljava/lang/String;

.field private dialogTitle:Ljava/lang/String;

.field private duration:I

.field private durationRecorder:Lcom/vungle/warren/ui/DurationRecorder;

.field private fileExistenceOperation:Lcom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;

.field private inPost:Z

.field private isDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private muted:Z

.field private placement:Lcom/vungle/warren/model/Placement;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private progress:I

.field private repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

.field private report:Lcom/vungle/warren/model/Report;

.field private repository:Lcom/vungle/warren/persistence/Repository;

.field private final scheduler:Lcom/vungle/warren/utility/Scheduler;

.field private sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private sessionData:Lcom/vungle/warren/SessionData;

.field private userExitEnabled:Z

.field private videoPosition:I

.field private final videoTracker:Lcom/vungle/warren/analytics/AnalyticsVideoTracker;

.field private final webViewAPI:Lcom/vungle/warren/ui/view/WebViewAPI;


# direct methods
.method public constructor <init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/utility/Scheduler;Lcom/vungle/warren/analytics/AdAnalytics;Lcom/vungle/warren/analytics/AnalyticsVideoTracker;Lcom/vungle/warren/ui/view/WebViewAPI;Lcom/vungle/warren/ui/state/OptionsState;Ljava/io/File;Lcom/vungle/warren/SessionData;Lcom/vungle/warren/utility/ActivityManager;)V
    .registers 14
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
    .param p6    # Lcom/vungle/warren/analytics/AnalyticsVideoTracker;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/vungle/warren/ui/view/WebViewAPI;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/vungle/warren/ui/state/OptionsState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/vungle/warren/SessionData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Lcom/vungle/warren/utility/ActivityManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->cookies:Ljava/util/Map;

    const-string v0, "Are you sure?"

    .line 139
    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->dialogTitle:Ljava/lang/String;

    const-string v0, "If you exit now, you will not get your reward"

    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->dialogBody:Ljava/lang/String;

    const-string v0, "Continue"

    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->dialogContinue:Ljava/lang/String;

    const-string v0, "Close"

    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->dialogClose:Ljava/lang/String;

    .line 159
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 160
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->isDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 163
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->checkpointList:Ljava/util/LinkedList;

    .line 164
    new-instance v0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$1;

    invoke-direct {v0, p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$1;-><init>(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)V

    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    .line 774
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 200
    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    .line 201
    iput-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    .line 202
    iput-object p4, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->scheduler:Lcom/vungle/warren/utility/Scheduler;

    .line 203
    iput-object p5, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->analytics:Lcom/vungle/warren/analytics/AdAnalytics;

    .line 204
    iput-object p6, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->videoTracker:Lcom/vungle/warren/analytics/AnalyticsVideoTracker;

    .line 205
    iput-object p7, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->webViewAPI:Lcom/vungle/warren/ui/view/WebViewAPI;

    .line 206
    iput-object p3, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    .line 207
    iput-object p9, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->assetDir:Ljava/io/File;

    .line 208
    iput-object p11, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->activityManager:Lcom/vungle/warren/utility/ActivityManager;

    .line 209
    iput-object p10, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->sessionData:Lcom/vungle/warren/SessionData;

    .line 211
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getCheckpoints()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_66

    .line 212
    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->checkpointList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getCheckpoints()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 213
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->checkpointList:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 216
    :cond_66
    invoke-direct {p0, p8}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->loadData(Lcom/vungle/warren/ui/state/OptionsState;)V

    return-void
.end method

.method static synthetic access$000(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;I)V
    .registers 2

    .line 65
    invoke-direct {p0, p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->makeBusError(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)V
    .registers 1

    .line 65
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->closeAndReport()V

    return-void
.end method

.method static synthetic access$200(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Lcom/vungle/warren/analytics/AnalyticsVideoTracker;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->videoTracker:Lcom/vungle/warren/analytics/AnalyticsVideoTracker;

    return-object p0
.end method

.method static synthetic access$300(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Lcom/vungle/warren/model/Advertisement;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    return-object p0
.end method

.method static synthetic access$500(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Lcom/vungle/warren/analytics/AdAnalytics;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->analytics:Lcom/vungle/warren/analytics/AdAnalytics;

    return-object p0
.end method

.method static synthetic access$600(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Z
    .registers 1

    .line 65
    iget-boolean p0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->inPost:Z

    return p0
.end method

.method static synthetic access$602(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;Z)Z
    .registers 2

    .line 65
    iput-boolean p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->inPost:Z

    return p1
.end method

.method static synthetic access$700(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Lcom/vungle/warren/persistence/Repository;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    return-object p0
.end method

.method static synthetic access$800(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)V
    .registers 1

    .line 65
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->continueWithPostroll()V

    return-void
.end method

.method static synthetic access$902(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;Z)Z
    .registers 2

    .line 65
    iput-boolean p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->userExitEnabled:Z

    return p1
.end method

.method private closeAndReport()V
    .registers 3

    .line 758
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->isVideoPlaying()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 759
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->videoTracker:Lcom/vungle/warren/analytics/AnalyticsVideoTracker;

    invoke-interface {v0}, Lcom/vungle/warren/analytics/AnalyticsVideoTracker;->stop()V

    .line 762
    :cond_d
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "LocalAdPresenter"

    const-string v1, "Busy with closing"

    .line 763
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 767
    :cond_1d
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    const-string v1, "close"

    .line 768
    invoke-virtual {p0, v1, v0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->scheduler:Lcom/vungle/warren/utility/Scheduler;

    invoke-interface {v0}, Lcom/vungle/warren/utility/Scheduler;->cancelAll()V

    .line 771
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->close()V

    return-void
.end method

.method private continueWithPostroll()V
    .registers 2

    .line 493
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Advertisement;->hasPostroll()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 494
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->playPost()V

    goto :goto_f

    .line 496
    :cond_c
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->closeAndReport()V

    :goto_f
    return-void
.end method

.method private download()V
    .registers 7

    const-string v0, "LocalAdPresenter"

    const-string v1, "cta"

    const-string v2, ""

    .line 727
    invoke-virtual {p0, v1, v2}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    :try_start_9
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->analytics:Lcom/vungle/warren/analytics/AdAnalytics;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    const-string v3, "postroll_click"

    invoke-virtual {v2, v3}, Lcom/vungle/warren/model/Advertisement;->getTpatUrls(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    .line 731
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->analytics:Lcom/vungle/warren/analytics/AdAnalytics;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    const-string v3, "click_url"

    invoke-virtual {v2, v3}, Lcom/vungle/warren/model/Advertisement;->getTpatUrls(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    .line 732
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->analytics:Lcom/vungle/warren/analytics/AdAnalytics;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    const-string v3, "video_click"

    invoke-virtual {v2, v3}, Lcom/vungle/warren/model/Advertisement;->getTpatUrls(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    .line 733
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->analytics:Lcom/vungle/warren/analytics/AdAnalytics;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    iget-object v4, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v4, v2}, Lcom/vungle/warren/model/Advertisement;->getCTAURL(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-interface {v1, v3}, Lcom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    const-string v1, "download"

    const/4 v2, 0x0

    .line 735
    invoke-virtual {p0, v1, v2}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1, v4}, Lcom/vungle/warren/model/Advertisement;->getCTAURL(Z)Ljava/lang/String;

    move-result-object v1

    .line 740
    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->activityManager:Lcom/vungle/warren/utility/ActivityManager;

    new-instance v3, Lcom/vungle/warren/ui/PresenterAppLeftCallback;

    iget-object v4, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    iget-object v5, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-direct {v3, v4, v5}, Lcom/vungle/warren/ui/PresenterAppLeftCallback;-><init>(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;Lcom/vungle/warren/model/Placement;)V

    invoke-virtual {v2, v3}, Lcom/vungle/warren/utility/ActivityManager;->addOnNextAppLeftCallback(Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V

    if-eqz v1, :cond_6a

    .line 741
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_64

    goto :goto_6a

    .line 744
    :cond_64
    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v2, v1}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->open(Ljava/lang/String;)V

    goto :goto_6f

    :cond_6a
    :goto_6a
    const-string v1, "CTA destination URL is not configured properly"

    .line 742
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :goto_6f
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v1, :cond_88

    .line 748
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    const-string v2, "open"

    const-string v3, "adClick"

    iget-object v4, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v4}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_82
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9 .. :try_end_82} :catch_83

    goto :goto_88

    :catch_83
    const-string v1, "Unable to find destination activity"

    .line 751
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_88
    :goto_88
    return-void
.end method

.method private handleWebViewException(I)V
    .registers 3
    .param p1    # I
        .annotation build Lcom/vungle/warren/error/VungleException$ExceptionCode;
        .end annotation
    .end param

    .line 813
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    if-eqz v0, :cond_7

    .line 814
    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->removeWebView()V

    .line 816
    :cond_7
    invoke-direct {p0, p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->reportErrorAndCloseAd(I)V

    return-void
.end method

.method private isWebPageBlank()Z
    .registers 3

    .line 501
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->getWebsiteUrl()Ljava/lang/String;

    move-result-object v0

    .line 502
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "about:blank"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method private loadData(Lcom/vungle/warren/ui/state/OptionsState;)V
    .registers 6

    .line 778
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->cookies:Ljava/util/Map;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    const-class v2, Lcom/vungle/warren/model/Cookie;

    const-string v3, "incentivizedTextSetByPub"

    invoke-virtual {v1, v3, v2}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->cookies:Ljava/util/Map;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    const-class v2, Lcom/vungle/warren/model/Cookie;

    const-string v3, "consentIsImportantToVungle"

    invoke-virtual {v1, v3, v2}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->cookies:Ljava/util/Map;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    const-class v2, Lcom/vungle/warren/model/Cookie;

    const-string v3, "configSettings"

    invoke-virtual {v1, v3, v2}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_5b

    const-string v0, "saved_report"

    .line 783
    invoke-interface {p1, v0}, Lcom/vungle/warren/ui/state/OptionsState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 784
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 p1, 0x0

    goto :goto_57

    :cond_49
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    const-class v1, Lcom/vungle/warren/model/Report;

    invoke-virtual {v0, p1, v1}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/model/Report;

    :goto_57
    if-eqz p1, :cond_5b

    .line 787
    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    :cond_5b
    return-void
.end method

.method private makeBusError(I)V
    .registers 4
    .param p1    # I
        .annotation build Lcom/vungle/warren/error/VungleException$ExceptionCode;
        .end annotation
    .end param

    .line 826
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v0, :cond_12

    .line 827
    new-instance v1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v1, p1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {p1}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onError(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method private needShowGDPR(Lcom/vungle/warren/model/Cookie;)Z
    .registers 3
    .param p1    # Lcom/vungle/warren/model/Cookie;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1e

    const-string v0, "is_country_data_protected"

    .line 388
    invoke-virtual {p1, v0}, Lcom/vungle/warren/model/Cookie;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "consent_status"

    .line 389
    invoke-virtual {p1, v0}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "unknown"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method private playPost()V
    .registers 4

    .line 333
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->assetDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 334
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "index.html"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 336
    new-instance v0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$2;

    invoke-direct {v0, p0, v1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$2;-><init>(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;Ljava/io/File;)V

    invoke-static {v1, v0}, Lcom/vungle/warren/utility/AsyncFileUtils;->isFileExistAsync(Ljava/io/File;Lcom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;)Lcom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->fileExistenceOperation:Lcom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;

    return-void
.end method

.method private prepare(Lcom/vungle/warren/ui/state/OptionsState;)V
    .registers 10
    .param p1    # Lcom/vungle/warren/ui/state/OptionsState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 363
    invoke-virtual {p0, p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->restoreFromSave(Lcom/vungle/warren/ui/state/OptionsState;)V

    .line 365
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->cookies:Ljava/util/Map;

    const-string v0, "incentivizedTextSetByPub"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/model/Cookie;

    const/4 v0, 0x0

    if-nez p1, :cond_12

    move-object v6, v0

    goto :goto_19

    :cond_12
    const-string v1, "userID"

    .line 366
    invoke-virtual {p1, v1}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    .line 368
    :goto_19
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    if-nez p1, :cond_43

    .line 369
    new-instance p1, Lcom/vungle/warren/model/Report;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    iget-object v3, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v7, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->sessionData:Lcom/vungle/warren/SessionData;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/vungle/warren/model/Report;-><init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;JLjava/lang/String;Lcom/vungle/warren/SessionData;)V

    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    .line 370
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Advertisement;->getTtDownload()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/vungle/warren/model/Report;->setTtDownload(J)V

    .line 371
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {p1, v1, v2}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 374
    :cond_43
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->durationRecorder:Lcom/vungle/warren/ui/DurationRecorder;

    if-nez p1, :cond_54

    .line 375
    new-instance p1, Lcom/vungle/warren/ui/DurationRecorder;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v3, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-direct {p1, v1, v2, v3}, Lcom/vungle/warren/ui/DurationRecorder;-><init>(Lcom/vungle/warren/model/Report;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->durationRecorder:Lcom/vungle/warren/ui/DurationRecorder;

    .line 378
    :cond_54
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->webViewAPI:Lcom/vungle/warren/ui/view/WebViewAPI;

    invoke-interface {p1, p0}, Lcom/vungle/warren/ui/view/WebViewAPI;->setErrorHandler(Lcom/vungle/warren/ui/view/WebViewAPI$WebClientErrorHandler;)V

    .line 381
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Advertisement;->isCtaOverlayEnabled()Z

    move-result v1

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v2}, Lcom/vungle/warren/model/Advertisement;->getCtaClickArea()Z

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->showCTAOverlay(ZZ)V

    .line 382
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz p1, :cond_79

    .line 383
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "start"

    invoke-interface {p1, v2, v0, v1}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_79
    return-void
.end method

.method private reportError(Ljava/lang/String;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 225
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-virtual {v0, p1}, Lcom/vungle/warren/model/Report;->recordError(Ljava/lang/String;)V

    .line 226
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {p1, v0, v1}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    const/16 p1, 0x1b

    .line 228
    invoke-direct {p0, p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->makeBusError(I)V

    .line 229
    iget-boolean p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->inPost:Z

    if-nez p1, :cond_23

    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->hasPostroll()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 231
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->playPost()V

    goto :goto_2d

    :cond_23
    const/16 p1, 0xa

    .line 234
    invoke-direct {p0, p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->makeBusError(I)V

    .line 235
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {p1}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->close()V

    :goto_2d
    return-void
.end method

.method private reportErrorAndCloseAd(I)V
    .registers 2
    .param p1    # I
        .annotation build Lcom/vungle/warren/error/VungleException$ExceptionCode;
        .end annotation
    .end param

    .line 821
    invoke-direct {p0, p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->makeBusError(I)V

    .line 822
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->closeAndReport()V

    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 13

    .line 488
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->pauseVideo()V

    .line 489
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private showGDPR(Lcom/vungle/warren/model/Cookie;)V
    .registers 8
    .param p1    # Lcom/vungle/warren/model/Cookie;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 394
    new-instance v5, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$3;

    invoke-direct {v5, p0, p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$3;-><init>(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;Lcom/vungle/warren/model/Cookie;)V

    const-string v0, "consent_status"

    const-string v1, "opted_out_by_timeout"

    .line 415
    invoke-virtual {p1, v0, v1}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "timestamp"

    invoke-virtual {p1, v1, v0}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "consent_source"

    const-string v1, "vungle_modal"

    .line 417
    invoke-virtual {p1, v0, v1}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 418
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {v0, p1, v1}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    const-string v0, "consent_title"

    .line 421
    invoke-virtual {p1, v0}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "consent_message"

    .line 422
    invoke-virtual {p1, v0}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "button_accept"

    .line 423
    invoke-virtual {p1, v0}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "button_deny"

    .line 424
    invoke-virtual {p1, v0}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    .line 421
    invoke-direct/range {v0 .. v5}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private showIncetivizedDialog()V
    .registers 11

    .line 461
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->dialogTitle:Ljava/lang/String;

    .line 462
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->dialogBody:Ljava/lang/String;

    .line 463
    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->dialogContinue:Ljava/lang/String;

    .line 464
    iget-object v3, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->dialogClose:Ljava/lang/String;

    .line 466
    iget-object v4, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->cookies:Ljava/util/Map;

    const-string v5, "incentivizedTextSetByPub"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vungle/warren/model/Cookie;

    if-eqz v4, :cond_50

    const-string v0, "title"

    .line 468
    invoke-virtual {v4, v0}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1f

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->dialogTitle:Ljava/lang/String;

    goto :goto_23

    :cond_1f
    invoke-virtual {v4, v0}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_23
    const-string v1, "body"

    .line 469
    invoke-virtual {v4, v1}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2e

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->dialogBody:Ljava/lang/String;

    goto :goto_32

    :cond_2e
    invoke-virtual {v4, v1}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_32
    const-string v2, "continue"

    .line 470
    invoke-virtual {v4, v2}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3d

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->dialogContinue:Ljava/lang/String;

    goto :goto_41

    :cond_3d
    invoke-virtual {v4, v2}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_41
    const-string v3, "close"

    .line 471
    invoke-virtual {v4, v3}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4c

    iget-object v3, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->dialogClose:Ljava/lang/String;

    goto :goto_50

    :cond_4c
    invoke-virtual {v4, v3}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_50
    :goto_50
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    .line 474
    new-instance v9, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$4;

    invoke-direct {v9, p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$4;-><init>(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)V

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

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

    .line 65
    check-cast p1, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->attach(Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;Lcom/vungle/warren/ui/state/OptionsState;)V

    return-void
.end method

.method public attach(Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;Lcom/vungle/warren/ui/state/OptionsState;)V
    .registers 9
    .param p1    # Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/warren/ui/state/OptionsState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 273
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->isDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 276
    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    .line 277
    invoke-interface {p1, p0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->setPresenter(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;)V

    .line 280
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Advertisement;->getAdConfig()Lcom/vungle/warren/AdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/AdConfig;->getSettings()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_28

    and-int/lit8 v3, v0, 0x1

    if-ne v3, v2, :cond_1e

    const/4 v3, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v3, 0x0

    .line 284
    :goto_1f
    iput-boolean v3, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->muted:Z

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_26

    const/4 v1, 0x1

    .line 285
    :cond_26
    iput-boolean v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->userExitEnabled:Z

    :cond_28
    const/4 v0, -0x1

    .line 290
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Advertisement;->getAdConfig()Lcom/vungle/warren/AdConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/warren/AdConfig;->getAdOrientation()I

    move-result v1

    const/4 v3, 0x3

    const/4 v4, 0x6

    const/4 v5, 0x7

    if-ne v1, v3, :cond_44

    .line 292
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Advertisement;->getOrientation()I

    move-result v1

    if-eqz v1, :cond_46

    if-eq v1, v2, :cond_4c

    const/4 v4, -0x1

    goto :goto_4c

    :cond_44
    if-nez v1, :cond_48

    :cond_46
    const/4 v4, 0x7

    goto :goto_4c

    :cond_48
    if-ne v1, v2, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v4, 0x4

    .line 310
    :cond_4c
    :goto_4c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requested Orientation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalAdPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-interface {p1, v4}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->setOrientation(I)V

    .line 312
    invoke-direct {p0, p2}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->prepare(Lcom/vungle/warren/ui/state/OptionsState;)V

    return-void
.end method

.method public detach(Z)V
    .registers 3

    or-int/lit8 p1, p1, 0x2

    .line 320
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->fileExistenceOperation:Lcom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;

    if-eqz v0, :cond_9

    .line 321
    invoke-virtual {v0}, Lcom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;->cancel()V

    .line 324
    :cond_9
    invoke-virtual {p0, p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->stop(I)V

    .line 325
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {p1}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->destroyAdView()V

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

    .line 679
    :cond_3
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 680
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    if-nez v0, :cond_12

    const/4 v0, 0x0

    goto :goto_16

    :cond_12
    invoke-virtual {v0}, Lcom/vungle/warren/model/Report;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_16
    const-string v1, "saved_report"

    invoke-interface {p1, v1, v0}, Lcom/vungle/warren/ui/state/OptionsState;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "incentivized_sent"

    invoke-interface {p1, v1, v0}, Lcom/vungle/warren/ui/state/OptionsState;->put(Ljava/lang/String;Z)V

    .line 682
    iget-boolean v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->inPost:Z

    const-string v1, "in_post_roll"

    invoke-interface {p1, v1, v0}, Lcom/vungle/warren/ui/state/OptionsState;->put(Ljava/lang/String;Z)V

    .line 683
    iget-boolean v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->muted:Z

    const-string v1, "is_muted_mode"

    invoke-interface {p1, v1, v0}, Lcom/vungle/warren/ui/state/OptionsState;->put(Ljava/lang/String;Z)V

    .line 684
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    if-eqz v0, :cond_45

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->isVideoPlaying()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->getVideoPosition()I

    move-result v0

    goto :goto_47

    :cond_45
    iget v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->videoPosition:I

    :goto_47
    const-string v1, "videoPosition"

    invoke-interface {p1, v1, v0}, Lcom/vungle/warren/ui/state/OptionsState;->put(Ljava/lang/String;I)V

    return-void
.end method

.method public handleExit(Ljava/lang/String;)Z
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 430
    iget-boolean p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->inPost:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_9

    .line 431
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->closeAndReport()V

    return v0

    .line 436
    :cond_9
    iget-boolean p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->userExitEnabled:Z

    const/4 v1, 0x0

    if-nez p1, :cond_f

    return v1

    .line 443
    :cond_f
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {p1}, Lcom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result p1

    if-eqz p1, :cond_21

    iget p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->progress:I

    const/16 v2, 0x4b

    if-gt p1, v2, :cond_21

    .line 444
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->showIncetivizedDialog()V

    return v1

    :cond_21
    const/4 p1, 0x0

    const-string v2, "video_close"

    .line 448
    invoke-virtual {p0, v2, p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->hasPostroll()Z

    move-result p1

    if-eqz p1, :cond_33

    .line 452
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->playPost()V

    return v1

    .line 455
    :cond_33
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->closeAndReport()V

    return v0
.end method

.method public onDownload()V
    .registers 1

    .line 658
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->download()V

    return-void
.end method

.method public onMediaError(Ljava/lang/String;)Z
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 663
    invoke-direct {p0, p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->reportError(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onMraidAction(Ljava/lang/String;)V
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 705
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
    if-eqz v0, :cond_5a

    if-eq v0, v3, :cond_53

    if-ne v0, v2, :cond_3c

    goto :goto_5d

    .line 722
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

    .line 712
    :cond_53
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->download()V

    .line 713
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->closeAndReport()V

    goto :goto_5d

    .line 707
    :cond_5a
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->closeAndReport()V

    :goto_5d
    return-void
.end method

.method public onMute(Z)V
    .registers 4

    .line 647
    iput-boolean p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->muted:Z

    if-eqz p1, :cond_c

    const-string v0, "mute"

    const-string v1, "true"

    .line 649
    invoke-virtual {p0, v0, v1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_c
    const-string v0, "unmute"

    const-string v1, "false"

    .line 651
    invoke-virtual {p0, v0, v1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    :goto_13
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->videoTracker:Lcom/vungle/warren/analytics/AnalyticsVideoTracker;

    invoke-interface {v0, p1}, Lcom/vungle/warren/analytics/AnalyticsVideoTracker;->setPlayerVolume(Z)V

    return-void
.end method

.method public onPrivacy()V
    .registers 5

    .line 669
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->activityManager:Lcom/vungle/warren/utility/ActivityManager;

    new-instance v1, Lcom/vungle/warren/ui/PresenterAppLeftCallback;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    iget-object v3, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-direct {v1, v2, v3}, Lcom/vungle/warren/ui/PresenterAppLeftCallback;-><init>(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;Lcom/vungle/warren/model/Placement;)V

    invoke-virtual {v0, v1}, Lcom/vungle/warren/utility/ActivityManager;->addOnNextAppLeftCallback(Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V

    .line 670
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    const-string v1, "https://vungle.com/privacy/"

    invoke-interface {v0, v1}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->open(Ljava/lang/String;)V

    return-void
.end method

.method public onProgressUpdate(IF)V
    .registers 6

    int-to-float v0, p1

    div-float/2addr v0, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float v0, v0, p2

    float-to-int p2, v0

    .line 583
    iput p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->progress:I

    .line 584
    iput p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->videoPosition:I

    .line 585
    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->durationRecorder:Lcom/vungle/warren/ui/DurationRecorder;

    invoke-virtual {p2}, Lcom/vungle/warren/ui/DurationRecorder;->update()V

    .line 587
    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz p2, :cond_31

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "percentViewed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->progress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v1, v2}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    :cond_31
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "%d"

    invoke-static {p2, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "video_viewed"

    invoke-virtual {p0, p2, p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->videoTracker:Lcom/vungle/warren/analytics/AnalyticsVideoTracker;

    iget p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->progress:I

    invoke-interface {p1, p2}, Lcom/vungle/warren/analytics/AnalyticsVideoTracker;->onProgress(I)V

    .line 595
    iget p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->progress:I

    const/16 p2, 0x64

    if-ne p1, p2, :cond_84

    .line 598
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->videoTracker:Lcom/vungle/warren/analytics/AnalyticsVideoTracker;

    invoke-interface {p1}, Lcom/vungle/warren/analytics/AnalyticsVideoTracker;->stop()V

    .line 600
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->checkpointList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_81

    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->checkpointList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/model/Advertisement$Checkpoint;

    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement$Checkpoint;->getPercentage()B

    move-result p1

    if-ne p1, p2, :cond_81

    .line 601
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->analytics:Lcom/vungle/warren/analytics/AdAnalytics;

    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->checkpointList:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vungle/warren/model/Advertisement$Checkpoint;

    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement$Checkpoint;->getUrls()[Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    .line 605
    :cond_81
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->continueWithPostroll()V

    .line 609
    :cond_84
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->videoPosition:I

    invoke-virtual {p1, p2}, Lcom/vungle/warren/model/Report;->recordProgress(I)V

    .line 610
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {p1, p2, v1}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 614
    :goto_94
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->checkpointList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_be

    iget p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->progress:I

    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->checkpointList:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vungle/warren/model/Advertisement$Checkpoint;

    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement$Checkpoint;->getPercentage()B

    move-result p2

    if-le p1, p2, :cond_be

    .line 617
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->analytics:Lcom/vungle/warren/analytics/AdAnalytics;

    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->checkpointList:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vungle/warren/model/Advertisement$Checkpoint;

    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement$Checkpoint;->getUrls()[Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    goto :goto_94

    .line 621
    :cond_be
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->cookies:Ljava/util/Map;

    const-string p2, "configSettings"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/model/Cookie;

    .line 622
    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {p2}, Lcom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result p2

    if-eqz p2, :cond_13a

    iget p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->progress:I

    const/16 v1, 0x4b

    if-le p2, v1, :cond_13a

    if-eqz p1, :cond_13a

    const-string p2, "isReportIncentivizedEnabled"

    .line 624
    invoke-virtual {p1, p2}, Lcom/vungle/warren/model/Cookie;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_13a

    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 625
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_13a

    .line 628
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 629
    new-instance p2, Lcom/google/gson/JsonPrimitive;

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v0, "placement_reference_id"

    invoke-virtual {p1, v0, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 630
    new-instance p2, Lcom/google/gson/JsonPrimitive;

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Advertisement;->getAppID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v0, "app_id"

    invoke-virtual {p1, v0, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 631
    new-instance p2, Lcom/google/gson/JsonPrimitive;

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Report;->getAdStartTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v0, "adStartTime"

    invoke-virtual {p1, v0, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 632
    new-instance p2, Lcom/google/gson/JsonPrimitive;

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Report;->getUserID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v0, "user"

    invoke-virtual {p1, v0, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 633
    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->analytics:Lcom/vungle/warren/analytics/AdAnalytics;

    invoke-interface {p2, p1}, Lcom/vungle/warren/analytics/AdAnalytics;->ri(Lcom/google/gson/JsonObject;)V

    :cond_13a
    return-void
.end method

.method public onReceivedError(Ljava/lang/String;)V
    .registers 4

    .line 795
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    if-eqz v0, :cond_10

    .line 796
    invoke-virtual {v0, p1}, Lcom/vungle/warren/model/Report;->recordError(Ljava/lang/String;)V

    .line 797
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

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

    .line 809
    invoke-direct {p0, p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->handleWebViewException(I)V

    return-void
.end method

.method public onVideoStart(IF)V
    .registers 6

    .line 640
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    float-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%d"

    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "videoLength"

    invoke-virtual {p0, v0, p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->videoTracker:Lcom/vungle/warren/analytics/AnalyticsVideoTracker;

    invoke-interface {p1, p2}, Lcom/vungle/warren/analytics/AnalyticsVideoTracker;->start(I)V

    .line 642
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->videoTracker:Lcom/vungle/warren/analytics/AnalyticsVideoTracker;

    iget-boolean p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->muted:Z

    invoke-interface {p1, p2}, Lcom/vungle/warren/analytics/AnalyticsVideoTracker;->setPlayerVolume(Z)V

    return-void
.end method

.method public onViewConfigurationChanged()V
    .registers 3

    .line 268
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->webViewAPI:Lcom/vungle/warren/ui/view/WebViewAPI;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/vungle/warren/ui/view/WebViewAPI;->notifyPropertiesChange(Z)V

    return-void
.end method

.method public onWebRenderingProcessGone(Landroid/webkit/WebView;Z)Z
    .registers 3

    const/16 p1, 0x1f

    .line 803
    invoke-direct {p0, p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->handleWebViewException(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public reportAction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "videoLength"

    .line 240
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 243
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->duration:I

    .line 244
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->duration:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/vungle/warren/model/Report;->setVideoLength(J)V

    .line 245
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {p1, p2, v0}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    return-void

    :cond_20
    const/4 v0, -0x1

    .line 252
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x321793ce    # -4.874256E8f

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_4b

    const v2, 0x335219

    if-eq v1, v2, :cond_41

    const v2, 0x51b1cd34

    if-eq v1, v2, :cond_37

    goto :goto_54

    :cond_37
    const-string v1, "video_close"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    const/4 v0, 0x2

    goto :goto_54

    :cond_41
    const-string v1, "mute"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    const/4 v0, 0x0

    goto :goto_54

    :cond_4b
    const-string v1, "unmute"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    const/4 v0, 0x1

    :cond_54
    :goto_54
    if-eqz v0, :cond_5b

    if-eq v0, v4, :cond_5b

    if-eq v0, v3, :cond_5b

    goto :goto_66

    .line 256
    :cond_5b
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->analytics:Lcom/vungle/warren/analytics/AdAnalytics;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1, p1}, Lcom/vungle/warren/model/Advertisement;->getTpatUrls(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    .line 261
    :goto_66
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/vungle/warren/model/Report;->recordAction(Ljava/lang/String;Ljava/lang/String;J)V

    .line 262
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

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

    .line 693
    invoke-interface {p1, v1, v0}, Lcom/vungle/warren/ui/state/OptionsState;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 695
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 698
    :cond_12
    iget-boolean v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->inPost:Z

    const-string v1, "in_post_roll"

    invoke-interface {p1, v1, v0}, Lcom/vungle/warren/ui/state/OptionsState;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->inPost:Z

    .line 699
    iget-boolean v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->muted:Z

    const-string v1, "is_muted_mode"

    invoke-interface {p1, v1, v0}, Lcom/vungle/warren/ui/state/OptionsState;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->muted:Z

    .line 700
    iget v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->videoPosition:I

    const-string v1, "videoPosition"

    invoke-interface {p1, v1, v0}, Lcom/vungle/warren/ui/state/OptionsState;->getInt(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->videoPosition:I

    return-void
.end method

.method public setEventListener(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;)V
    .registers 2
    .param p1    # Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 221
    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    return-void
.end method

.method public start()V
    .registers 6

    .line 507
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->durationRecorder:Lcom/vungle/warren/ui/DurationRecorder;

    invoke-virtual {v0}, Lcom/vungle/warren/ui/DurationRecorder;->start()V

    .line 509
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->hasWebView()Z

    move-result v0

    if-nez v0, :cond_13

    const/16 v0, 0x1f

    .line 510
    invoke-direct {p0, v0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->reportErrorAndCloseAd(I)V

    return-void

    .line 514
    :cond_13
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->setImmersiveMode()V

    .line 515
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->resumeWeb()V

    .line 518
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->cookies:Ljava/util/Map;

    const-string v1, "consentIsImportantToVungle"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Cookie;

    .line 519
    invoke-direct {p0, v0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->needShowGDPR(Lcom/vungle/warren/model/Cookie;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 520
    invoke-direct {p0, v0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->showGDPR(Lcom/vungle/warren/model/Cookie;)V

    return-void

    .line 524
    :cond_31
    iget-boolean v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->inPost:Z

    if-eqz v0, :cond_3f

    .line 525
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->isWebPageBlank()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 526
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->playPost()V

    goto :goto_9b

    .line 528
    :cond_3f
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->isVideoPlaying()Z

    move-result v0

    if-nez v0, :cond_9b

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->isDialogVisible()Z

    move-result v0

    if-nez v0, :cond_9b

    .line 530
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->assetDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 531
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    iget-boolean v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->muted:Z

    iget v3, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->videoPosition:I

    invoke-interface {v1, v0, v2, v3}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->playVideo(Ljava/io/File;ZI)V

    .line 534
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vungle/warren/model/Advertisement;->getShowCloseDelay(Z)I

    move-result v0

    if-lez v0, :cond_93

    .line 537
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->scheduler:Lcom/vungle/warren/utility/Scheduler;

    new-instance v2, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$5;

    invoke-direct {v2, p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$5;-><init>(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)V

    int-to-long v3, v0

    invoke-interface {v1, v2, v3, v4}, Lcom/vungle/warren/utility/Scheduler;->schedule(Ljava/lang/Runnable;J)V

    goto :goto_9b

    :cond_93
    const/4 v0, 0x1

    .line 547
    iput-boolean v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->userExitEnabled:Z

    .line 548
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->showCloseButton()V

    :cond_9b
    :goto_9b
    return-void
.end method

.method public stop(I)V
    .registers 5
    .param p1    # I
        .annotation build Lcom/vungle/warren/ui/contract/AdContract$AdStopReason;
        .end annotation
    .end param

    .line 555
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->durationRecorder:Lcom/vungle/warren/ui/DurationRecorder;

    invoke-virtual {v0}, Lcom/vungle/warren/ui/DurationRecorder;->stop()V

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_13

    const/4 v1, 0x1

    .line 560
    :cond_13
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {p1}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->pauseWeb()V

    .line 562
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {p1}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->isVideoPlaying()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 563
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {p1}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->getVideoPosition()I

    move-result p1

    iput p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->videoPosition:I

    .line 564
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {p1}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->pauseVideo()V

    :cond_2d
    if-nez v0, :cond_5e

    if-eqz v1, :cond_5e

    .line 568
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->isDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_6b

    const/4 p1, 0x0

    const-string v0, "close"

    .line 569
    invoke-virtual {p0, v0, p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->scheduler:Lcom/vungle/warren/utility/Scheduler;

    invoke-interface {v0}, Lcom/vungle/warren/utility/Scheduler;->cancelAll()V

    .line 571
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v0, :cond_6b

    .line 573
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Report;->isCTAClicked()Z

    move-result v1

    if-eqz v1, :cond_52

    const-string p1, "isCTAClicked"

    :cond_52
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "end"

    invoke-interface {v0, v2, p1, v1}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6b

    .line 576
    :cond_5e
    iget-boolean p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->inPost:Z

    if-nez p1, :cond_64

    if-eqz v1, :cond_6b

    .line 577
    :cond_64
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    const-string v0, "about:blank"

    invoke-interface {p1, v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->showWebsite(Ljava/lang/String;)V

    :cond_6b
    :goto_6b
    return-void
.end method
