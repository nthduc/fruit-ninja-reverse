.class Lcom/facebook/appevents/AppEventsLoggerImpl;
.super Ljava/lang/Object;
.source "AppEventsLoggerImpl.java"


# static fields
.field private static final ACCOUNT_KIT_EVENT_NAME_PREFIX:Ljava/lang/String; = "fb_ak"

.field private static final APP_EVENTS_KILLSWITCH:Ljava/lang/String; = "app_events_killswitch"

.field private static final APP_EVENT_NAME_PUSH_OPENED:Ljava/lang/String; = "fb_mobile_push_opened"

.field private static final APP_EVENT_PREFERENCES:Ljava/lang/String; = "com.facebook.sdk.appEventPreferences"

.field private static final APP_EVENT_PUSH_PARAMETER_ACTION:Ljava/lang/String; = "fb_push_action"

.field private static final APP_EVENT_PUSH_PARAMETER_CAMPAIGN:Ljava/lang/String; = "fb_push_campaign"

.field private static final APP_SUPPORTS_ATTRIBUTION_ID_RECHECK_PERIOD_IN_SECONDS:I = 0x15180

.field private static final PUSH_PAYLOAD_CAMPAIGN_KEY:Ljava/lang/String; = "campaign"

.field private static final PUSH_PAYLOAD_KEY:Ljava/lang/String; = "fb_push_payload"

.field private static final TAG:Ljava/lang/String; = "com.facebook.appevents.AppEventsLoggerImpl"

.field private static anonymousAppDeviceGUID:Ljava/lang/String;

.field private static backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static flushBehavior:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

.field private static isActivateAppEventRequested:Z

.field private static pushNotificationsRegistrationId:Ljava/lang/String;

.field private static final staticLock:Ljava/lang/Object;


# instance fields
.field private final accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

.field private final contextName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 82
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;->AUTO:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    sput-object v0, Lcom/facebook/appevents/AppEventsLoggerImpl;->flushBehavior:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventsLoggerImpl;->staticLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V
    .registers 4

    .line 483
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getActivityName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/appevents/AppEventsLoggerImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V
    .registers 4

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 488
    iput-object p1, p0, Lcom/facebook/appevents/AppEventsLoggerImpl;->contextName:Ljava/lang/String;

    if-nez p3, :cond_e

    .line 491
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object p3

    :cond_e
    if-eqz p3, :cond_2a

    .line 495
    invoke-virtual {p3}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result p1

    if-nez p1, :cond_2a

    if-eqz p2, :cond_22

    .line 496
    invoke-virtual {p3}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 497
    :cond_22
    new-instance p1, Lcom/facebook/appevents/AccessTokenAppIdPair;

    invoke-direct {p1, p3}, Lcom/facebook/appevents/AccessTokenAppIdPair;-><init>(Lcom/facebook/AccessToken;)V

    iput-object p1, p0, Lcom/facebook/appevents/AppEventsLoggerImpl;->accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

    goto :goto_3c

    :cond_2a
    if-nez p2, :cond_34

    .line 501
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 503
    :cond_34
    new-instance p1, Lcom/facebook/appevents/AccessTokenAppIdPair;

    const/4 p3, 0x0

    invoke-direct {p1, p3, p2}, Lcom/facebook/appevents/AccessTokenAppIdPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/appevents/AppEventsLoggerImpl;->accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

    .line 506
    :goto_3c
    invoke-static {}, Lcom/facebook/appevents/AppEventsLoggerImpl;->initializeTimersIfNeeded()V

    return-void
.end method

.method static activateApp(Landroid/app/Application;Ljava/lang/String;)V
    .registers 3

    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 92
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/facebook/FacebookSdk;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 97
    invoke-static {}, Lcom/facebook/appevents/AnalyticsUserIDStore;->initStore()V

    .line 98
    invoke-static {}, Lcom/facebook/appevents/UserDataStore;->initStore()V

    if-nez p1, :cond_1b

    .line 101
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object p1

    .line 107
    :cond_1b
    invoke-static {p0, p1}, Lcom/facebook/FacebookSdk;->publishInstallAsync(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    invoke-static {p0, p1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->startTracking(Landroid/app/Application;Ljava/lang/String;)V

    return-void

    .line 93
    :cond_22
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "The Facebook sdk must be initialized before calling activateApp"

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_2a} :catch_2a

    :catch_2a
    move-exception p0

    .line 112
    const-class p1, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static augmentWebView(Landroid/webkit/WebView;Landroid/content/Context;)V
    .registers 7

    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 436
    :cond_9
    :try_start_9
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 437
    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_1c

    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    .line 438
    :goto_1d
    array-length v3, v0

    const/4 v4, 0x1

    if-le v3, v4, :cond_27

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 440
    :cond_27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_53

    const/4 v0, 0x4

    if-lt v1, v0, :cond_53

    if-ne v1, v0, :cond_35

    if-gt v2, v4, :cond_35

    goto :goto_53

    .line 450
    :cond_35
    new-instance v0, Lcom/facebook/appevents/FacebookSDKJSInterface;

    invoke-direct {v0, p1}, Lcom/facebook/appevents/FacebookSDKJSInterface;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fbmq_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 450
    invoke-virtual {p0, v0, p1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 443
    :cond_53
    :goto_53
    sget-object p0, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    sget-object p1, Lcom/facebook/appevents/AppEventsLoggerImpl;->TAG:Ljava/lang/String;

    const-string v0, "augmentWebView is only available for Android SDK version >= 17 on devices running Android >= 4.2"

    invoke-static {p0, p1, v0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_5c} :catch_5d

    return-void

    :catch_5d
    move-exception p0

    .line 452
    const-class p1, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static eagerFlush()V
    .registers 2

    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 631
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/facebook/appevents/AppEventsLoggerImpl;->getFlushBehavior()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    move-result-object v0

    sget-object v1, Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;->EXPLICIT_ONLY:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    if-eq v0, v1, :cond_16

    .line 632
    sget-object v0, Lcom/facebook/appevents/FlushReason;->EAGER_FLUSHING_EVENT:Lcom/facebook/appevents/FlushReason;

    invoke-static {v0}, Lcom/facebook/appevents/AppEventQueue;->flush(Lcom/facebook/appevents/FlushReason;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_16} :catch_17

    :cond_16
    return-void

    :catch_17
    move-exception v0

    .line 634
    const-class v1, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static functionDEPRECATED(Ljava/lang/String;)V
    .registers 4

    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 115
    :cond_9
    :try_start_9
    sget-object v0, Lcom/facebook/appevents/AppEventsLoggerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This function is deprecated. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception p0

    .line 116
    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static getAnalyticsExecutor()Ljava/util/concurrent/Executor;
    .registers 3

    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 646
    :cond_a
    :try_start_a
    sget-object v0, Lcom/facebook/appevents/AppEventsLoggerImpl;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_11

    .line 647
    invoke-static {}, Lcom/facebook/appevents/AppEventsLoggerImpl;->initializeTimersIfNeeded()V

    .line 650
    :cond_11
    sget-object v0, Lcom/facebook/appevents/AppEventsLoggerImpl;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    move-exception v0

    const-class v2, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static getAnonymousAppDeviceGUID(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 654
    :cond_a
    :try_start_a
    sget-object v0, Lcom/facebook/appevents/AppEventsLoggerImpl;->anonymousAppDeviceGUID:Ljava/lang/String;

    if-nez v0, :cond_5d

    .line 655
    sget-object v0, Lcom/facebook/appevents/AppEventsLoggerImpl;->staticLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_11} :catch_60

    .line 656
    :try_start_11
    sget-object v2, Lcom/facebook/appevents/AppEventsLoggerImpl;->anonymousAppDeviceGUID:Ljava/lang/String;

    if-nez v2, :cond_58

    const-string v2, "com.facebook.sdk.appEventPreferences"

    const/4 v3, 0x0

    .line 659
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "anonymousAppDeviceGUID"

    .line 660
    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/facebook/appevents/AppEventsLoggerImpl;->anonymousAppDeviceGUID:Ljava/lang/String;

    .line 661
    sget-object v2, Lcom/facebook/appevents/AppEventsLoggerImpl;->anonymousAppDeviceGUID:Ljava/lang/String;

    if-nez v2, :cond_58

    .line 663
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XZ"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/facebook/appevents/AppEventsLoggerImpl;->anonymousAppDeviceGUID:Ljava/lang/String;

    const-string v2, "com.facebook.sdk.appEventPreferences"

    .line 666
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 667
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v2, "anonymousAppDeviceGUID"

    sget-object v3, Lcom/facebook/appevents/AppEventsLoggerImpl;->anonymousAppDeviceGUID:Ljava/lang/String;

    .line 668
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 669
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 672
    :cond_58
    monitor-exit v0

    goto :goto_5d

    :catchall_5a
    move-exception p0

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_11 .. :try_end_5c} :catchall_5a

    :try_start_5c
    throw p0

    .line 675
    :cond_5d
    :goto_5d
    sget-object p0, Lcom/facebook/appevents/AppEventsLoggerImpl;->anonymousAppDeviceGUID:Ljava/lang/String;
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5f} :catch_60

    return-object p0

    :catch_60
    move-exception p0

    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static getFlushBehavior()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;
    .registers 3

    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 191
    :cond_a
    :try_start_a
    sget-object v0, Lcom/facebook/appevents/AppEventsLoggerImpl;->staticLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_d} :catch_14

    .line 192
    :try_start_d
    sget-object v2, Lcom/facebook/appevents/AppEventsLoggerImpl;->flushBehavior:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    monitor-exit v0

    return-object v2

    :catchall_11
    move-exception v2

    .line 193
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_11

    :try_start_13
    throw v2
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_14} :catch_14

    :catch_14
    move-exception v0

    const-class v2, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static getInstallReferrer()Ljava/lang/String;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 419
    :cond_a
    :try_start_a
    new-instance v0, Lcom/facebook/appevents/AppEventsLoggerImpl$2;

    invoke-direct {v0}, Lcom/facebook/appevents/AppEventsLoggerImpl$2;-><init>()V

    invoke-static {v0}, Lcom/facebook/internal/InstallReferrerUtil;->tryUpdateReferrerInfo(Lcom/facebook/internal/InstallReferrerUtil$Callback;)V

    .line 429
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.facebook.sdk.appEventPreferences"

    const/4 v3, 0x0

    .line 431
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "install_referrer"

    .line 432
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_23} :catch_24

    return-object v0

    :catch_24
    move-exception v0

    const-class v2, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static getPushNotificationsRegistrationId()Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 403
    :cond_a
    :try_start_a
    sget-object v0, Lcom/facebook/appevents/AppEventsLoggerImpl;->staticLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_d} :catch_14

    .line 404
    :try_start_d
    sget-object v2, Lcom/facebook/appevents/AppEventsLoggerImpl;->pushNotificationsRegistrationId:Ljava/lang/String;

    monitor-exit v0

    return-object v2

    :catchall_11
    move-exception v2

    .line 405
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_11

    :try_start_13
    throw v2
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_14} :catch_14

    :catch_14
    move-exception v0

    const-class v2, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static initializeLib(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 119
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    .line 122
    :cond_10
    new-instance v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/appevents/AppEventsLoggerImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    .line 123
    sget-object p1, Lcom/facebook/appevents/AppEventsLoggerImpl;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/facebook/appevents/AppEventsLoggerImpl$1;

    invoke-direct {v1, p0, v0}, Lcom/facebook/appevents/AppEventsLoggerImpl$1;-><init>(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLoggerImpl;)V

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception p0

    .line 188
    const-class p1, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static initializeTimersIfNeeded()V
    .registers 10

    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 510
    :cond_9
    :try_start_9
    sget-object v0, Lcom/facebook/appevents/AppEventsLoggerImpl;->staticLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_c} :catch_30

    .line 511
    :try_start_c
    sget-object v1, Lcom/facebook/appevents/AppEventsLoggerImpl;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v1, :cond_12

    .line 512
    monitor-exit v0

    return-void

    .line 517
    :cond_12
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v1, Lcom/facebook/appevents/AppEventsLoggerImpl;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 518
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_2d

    .line 520
    :try_start_1b
    new-instance v4, Lcom/facebook/appevents/AppEventsLoggerImpl$3;

    invoke-direct {v4}, Lcom/facebook/appevents/AppEventsLoggerImpl$3;-><init>()V

    .line 535
    sget-object v3, Lcom/facebook/appevents/AppEventsLoggerImpl;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v5, 0x0

    const-wide/32 v7, 0x15180

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v3 .. v9}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_2c} :catch_30

    return-void

    :catchall_2d
    move-exception v1

    .line 518
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw v1
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_30} :catch_30

    :catch_30
    move-exception v0

    .line 540
    const-class v1, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static logEvent(Lcom/facebook/appevents/AppEvent;Lcom/facebook/appevents/AccessTokenAppIdPair;)V
    .registers 3

    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 613
    :cond_9
    :try_start_9
    invoke-static {p1, p0}, Lcom/facebook/appevents/AppEventQueue;->add(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V

    .line 616
    invoke-virtual {p0}, Lcom/facebook/appevents/AppEvent;->getIsImplicit()Z

    move-result p1

    if-nez p1, :cond_2f

    sget-boolean p1, Lcom/facebook/appevents/AppEventsLoggerImpl;->isActivateAppEventRequested:Z

    if-nez p1, :cond_2f

    .line 617
    invoke-virtual {p0}, Lcom/facebook/appevents/AppEvent;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "fb_mobile_activate_app"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    .line 618
    sput-boolean p0, Lcom/facebook/appevents/AppEventsLoggerImpl;->isActivateAppEventRequested:Z

    goto :goto_2f

    .line 620
    :cond_26
    sget-object p0, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    const-string p1, "AppEvents"

    const-string v0, "Warning: Please call AppEventsLogger.activateApp(...)from the long-lived activity\'s onResume() methodbefore logging other app events."

    invoke-static {p0, p1, v0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_2f} :catch_30

    :cond_2f
    :goto_2f
    return-void

    :catch_30
    move-exception p0

    .line 628
    const-class p1, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static notifyDeveloperError(Ljava/lang/String;)V
    .registers 3

    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 642
    :cond_9
    :try_start_9
    sget-object v0, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    const-string v1, "AppEvents"

    invoke-static {v0, v1, p0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p0

    .line 643
    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static onContextStop()V
    .registers 2

    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 378
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/facebook/appevents/AppEventQueue;->persistToDisk()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    .line 379
    const-class v1, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static setFlushBehavior(Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;)V
    .registers 2

    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 197
    :cond_9
    :try_start_9
    sget-object v0, Lcom/facebook/appevents/AppEventsLoggerImpl;->staticLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_c} :catch_13

    .line 198
    :try_start_c
    sput-object p0, Lcom/facebook/appevents/AppEventsLoggerImpl;->flushBehavior:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    .line 199
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_10

    :try_start_12
    throw p0
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_13} :catch_13

    :catch_13
    move-exception p0

    .line 200
    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static setInstallReferrer(Ljava/lang/String;)V
    .registers 4

    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 409
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.facebook.sdk.appEventPreferences"

    const/4 v2, 0x0

    .line 411
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz p0, :cond_23

    .line 413
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "install_referrer"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_23} :catch_24

    :cond_23
    return-void

    :catch_24
    move-exception p0

    .line 415
    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static setPushNotificationsRegistrationId(Ljava/lang/String;)V
    .registers 4

    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 387
    :cond_9
    :try_start_9
    sget-object v0, Lcom/facebook/appevents/AppEventsLoggerImpl;->staticLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_c} :catch_35

    .line 388
    :try_start_c
    sget-object v1, Lcom/facebook/appevents/AppEventsLoggerImpl;->pushNotificationsRegistrationId:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/facebook/internal/Utility;->stringsEqualOrEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 389
    sput-object p0, Lcom/facebook/appevents/AppEventsLoggerImpl;->pushNotificationsRegistrationId:Ljava/lang/String;

    .line 391
    new-instance p0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    .line 392
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v2}, Lcom/facebook/appevents/AppEventsLoggerImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    const-string v1, "fb_mobile_obtain_push_token"

    .line 394
    invoke-virtual {p0, v1}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logEvent(Ljava/lang/String;)V

    .line 395
    invoke-static {}, Lcom/facebook/appevents/AppEventsLoggerImpl;->getFlushBehavior()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    move-result-object v1

    sget-object v2, Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;->EXPLICIT_ONLY:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    if-eq v1, v2, :cond_30

    .line 396
    invoke-virtual {p0}, Lcom/facebook/appevents/AppEventsLoggerImpl;->flush()V

    .line 399
    :cond_30
    monitor-exit v0

    return-void

    :catchall_32
    move-exception p0

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_c .. :try_end_34} :catchall_32

    :try_start_34
    throw p0
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_35} :catch_35

    :catch_35
    move-exception p0

    .line 400
    const-class v0, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method flush()V
    .registers 2

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 373
    :cond_7
    :try_start_7
    sget-object v0, Lcom/facebook/appevents/FlushReason;->EXPLICIT:Lcom/facebook/appevents/FlushReason;

    invoke-static {v0}, Lcom/facebook/appevents/AppEventQueue;->flush(Lcom/facebook/appevents/FlushReason;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    .line 374
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public getApplicationId()Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 479
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/facebook/appevents/AppEventsLoggerImpl;->accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

    invoke-virtual {v0}, Lcom/facebook/appevents/AccessTokenAppIdPair;->getApplicationId()Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method isValidForAccessToken(Lcom/facebook/AccessToken;)Z
    .registers 4

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 382
    :cond_8
    :try_start_8
    new-instance v0, Lcom/facebook/appevents/AccessTokenAppIdPair;

    invoke-direct {v0, p1}, Lcom/facebook/appevents/AccessTokenAppIdPair;-><init>(Lcom/facebook/AccessToken;)V

    .line 383
    iget-object p1, p0, Lcom/facebook/appevents/AppEventsLoggerImpl;->accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

    invoke-virtual {p1, v0}, Lcom/facebook/appevents/AccessTokenAppIdPair;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_13} :catch_14

    return p1

    :catch_14
    move-exception p1

    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method logEvent(Ljava/lang/String;)V
    .registers 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 203
    :try_start_8
    invoke-virtual {p0, p1, v0}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p1

    .line 204
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method logEvent(Ljava/lang/String;D)V
    .registers 5

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 207
    :try_start_8
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p1

    .line 208
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V
    .registers 12

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 216
    :cond_7
    :try_start_7
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->getCurrentSessionGuid()Ljava/util/UUID;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p4

    .line 215
    invoke-virtual/range {v1 .. v6}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p1

    .line 217
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 10

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 211
    :try_start_9
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->getCurrentSessionGuid()Ljava/util/UUID;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p1

    .line 212
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V
    .registers 19
    .param p5    # Ljava/util/UUID;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v1, p0

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    if-eqz p1, :cond_6d

    .line 572
    :try_start_a
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_6d

    :cond_11
    const-string v0, "app_events_killswitch"

    .line 578
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    .line 577
    invoke-static {v0, v2, v10}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->getGateKeeperForKey(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_1c} :catch_69

    const/4 v11, 0x1

    const-string v12, "AppEvents"

    if-eqz v0, :cond_2d

    .line 579
    :try_start_21
    sget-object v0, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    const-string v2, "KillSwitch is enabled and fail to log app event: %s"

    new-array v3, v11, [Ljava/lang/Object;

    aput-object p1, v3, v10

    invoke-static {v0, v12, v2, v3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_2c} :catch_69

    return-void

    .line 588
    :cond_2d
    :try_start_2d
    new-instance v0, Lcom/facebook/appevents/AppEvent;

    iget-object v3, v1, Lcom/facebook/appevents/AppEventsLoggerImpl;->contextName:Ljava/lang/String;

    .line 595
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->isInBackground()Z

    move-result v8

    move-object v2, v0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/facebook/appevents/AppEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZZLjava/util/UUID;)V

    .line 597
    iget-object v2, v1, Lcom/facebook/appevents/AppEventsLoggerImpl;->accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

    invoke-static {v0, v2}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logEvent(Lcom/facebook/appevents/AppEvent;Lcom/facebook/appevents/AccessTokenAppIdPair;)V
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_46} :catch_58
    .catch Lcom/facebook/FacebookException; {:try_start_2d .. :try_end_46} :catch_47
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_46} :catch_69

    goto :goto_68

    :catch_47
    move-exception v0

    .line 608
    :try_start_48
    sget-object v2, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    const-string v3, "Invalid app event: %s"

    new-array v4, v11, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    invoke-static {v2, v12, v3, v4}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_68

    :catch_58
    move-exception v0

    .line 600
    sget-object v2, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    const-string v3, "JSON encoding for app event failed: \'%s\'"

    new-array v4, v11, [Ljava/lang/Object;

    .line 604
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    .line 600
    invoke-static {v2, v12, v3, v4}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_68} :catch_69

    :goto_68
    return-void

    :catch_69
    move-exception v0

    .line 610
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :cond_6d
    :goto_6d
    return-void
.end method

.method logEventFromSE(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 220
    :cond_7
    :try_start_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_is_suggested_event"

    const-string v2, "1"

    .line 221
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_button_text"

    .line 222
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0, p1, v0}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_1b} :catch_1c

    return-void

    :catch_1c
    move-exception p1

    .line 224
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method logEventImplicitly(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V
    .registers 11

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v5, 0x1

    .line 544
    :try_start_8
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->getCurrentSessionGuid()Ljava/util/UUID;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 543
    invoke-virtual/range {v1 .. v6}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p1

    .line 545
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method logEventImplicitly(Ljava/lang/String;Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    .registers 11

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-eqz p2, :cond_30

    if-nez p3, :cond_c

    goto :goto_30

    :cond_c
    if-nez p4, :cond_13

    .line 555
    :try_start_e
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :cond_13
    move-object v3, p4

    const-string p4, "fb_currency"

    .line 557
    invoke-virtual {p3}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-virtual {p2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v4, 0x1

    .line 563
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->getCurrentSessionGuid()Ljava/util/UUID;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 558
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    return-void

    .line 550
    :cond_30
    :goto_30
    sget-object p1, Lcom/facebook/appevents/AppEventsLoggerImpl;->TAG:Ljava/lang/String;

    const-string p2, "purchaseAmount and currency cannot be null"

    invoke-static {p1, p2}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_37} :catch_38

    return-void

    :catch_38
    move-exception p1

    .line 564
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method logProductItem(Ljava/lang/String;Lcom/facebook/appevents/AppEventsLogger$ProductAvailability;Lcom/facebook/appevents/AppEventsLogger$ProductCondition;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/util/Currency;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 15

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-nez p1, :cond_12

    :try_start_9
    const-string p1, "itemID cannot be null"

    .line 313
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLoggerImpl;->notifyDeveloperError(Ljava/lang/String;)V

    return-void

    :catch_f
    move-exception p1

    goto/16 :goto_c6

    :cond_12
    if-nez p2, :cond_1a

    const-string p1, "availability cannot be null"

    .line 316
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLoggerImpl;->notifyDeveloperError(Ljava/lang/String;)V

    return-void

    :cond_1a
    if-nez p3, :cond_22

    const-string p1, "condition cannot be null"

    .line 319
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLoggerImpl;->notifyDeveloperError(Ljava/lang/String;)V

    return-void

    :cond_22
    if-nez p4, :cond_2a

    const-string p1, "description cannot be null"

    .line 322
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLoggerImpl;->notifyDeveloperError(Ljava/lang/String;)V

    return-void

    :cond_2a
    if-nez p5, :cond_32

    const-string p1, "imageLink cannot be null"

    .line 325
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLoggerImpl;->notifyDeveloperError(Ljava/lang/String;)V

    return-void

    :cond_32
    if-nez p6, :cond_3a

    const-string p1, "link cannot be null"

    .line 328
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLoggerImpl;->notifyDeveloperError(Ljava/lang/String;)V

    return-void

    :cond_3a
    if-nez p7, :cond_42

    const-string p1, "title cannot be null"

    .line 331
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLoggerImpl;->notifyDeveloperError(Ljava/lang/String;)V

    return-void

    :cond_42
    if-nez p8, :cond_4a

    const-string p1, "priceAmount cannot be null"

    .line 334
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLoggerImpl;->notifyDeveloperError(Ljava/lang/String;)V

    return-void

    :cond_4a
    if-nez p9, :cond_52

    const-string p1, "currency cannot be null"

    .line 337
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLoggerImpl;->notifyDeveloperError(Ljava/lang/String;)V

    return-void

    :cond_52
    if-nez p10, :cond_5e

    if-nez p11, :cond_5e

    if-nez p12, :cond_5e

    const-string p1, "Either gtin, mpn or brand is required"

    .line 340
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLoggerImpl;->notifyDeveloperError(Ljava/lang/String;)V

    return-void

    :cond_5e
    if-nez p13, :cond_65

    .line 345
    new-instance p13, Landroid/os/Bundle;

    invoke-direct {p13}, Landroid/os/Bundle;-><init>()V

    :cond_65
    const-string v0, "fb_product_item_id"

    .line 347
    invoke-virtual {p13, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fb_product_availability"

    .line 348
    invoke-virtual {p2}, Lcom/facebook/appevents/AppEventsLogger$ProductAvailability;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p13, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fb_product_condition"

    .line 349
    invoke-virtual {p3}, Lcom/facebook/appevents/AppEventsLogger$ProductCondition;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p13, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fb_product_description"

    .line 350
    invoke-virtual {p13, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fb_product_image_link"

    .line 351
    invoke-virtual {p13, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fb_product_link"

    .line 352
    invoke-virtual {p13, p1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fb_product_title"

    .line 353
    invoke-virtual {p13, p1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fb_product_price_amount"

    const/4 p2, 0x3

    const/4 p3, 0x4

    .line 356
    invoke-virtual {p8, p2, p3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p2

    .line 354
    invoke-virtual {p13, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fb_product_price_currency"

    .line 357
    invoke-virtual {p9}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p13, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p10, :cond_af

    const-string p1, "fb_product_gtin"

    .line 359
    invoke-virtual {p13, p1, p10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_af
    if-eqz p11, :cond_b6

    const-string p1, "fb_product_mpn"

    .line 362
    invoke-virtual {p13, p1, p11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b6
    if-eqz p12, :cond_bd

    const-string p1, "fb_product_brand"

    .line 365
    invoke-virtual {p13, p1, p12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_bd
    const-string p1, "fb_mobile_catalog_update"

    .line 368
    invoke-virtual {p0, p1, p13}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 369
    invoke-static {}, Lcom/facebook/appevents/AppEventsLoggerImpl;->eagerFlush()V
    :try_end_c5
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_c5} :catch_f

    return-void

    .line 370
    :goto_c6
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;)V
    .registers 4

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 227
    :try_start_8
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p1

    .line 228
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    .registers 6

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 231
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->isImplicitPurchaseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 232
    sget-object v0, Lcom/facebook/appevents/AppEventsLoggerImpl;->TAG:Ljava/lang/String;

    const-string v1, "You are logging purchase events while auto-logging of in-app purchase is enabled in the SDK. Make sure you don\'t log duplicate events"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    const/4 v0, 0x0

    .line 237
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;Z)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p1

    .line 238
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;Z)V
    .registers 11

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-nez p1, :cond_11

    :try_start_9
    const-string p1, "purchaseAmount cannot be null"

    .line 248
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLoggerImpl;->notifyDeveloperError(Ljava/lang/String;)V

    return-void

    :catch_f
    move-exception p1

    goto :goto_41

    :cond_11
    if-nez p2, :cond_19

    const-string p1, "currency cannot be null"

    .line 251
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLoggerImpl;->notifyDeveloperError(Ljava/lang/String;)V

    return-void

    :cond_19
    if-nez p3, :cond_20

    .line 256
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_20
    move-object v3, p3

    const-string p3, "fb_currency"

    .line 258
    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fb_mobile_purchase"

    .line 262
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 265
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->getCurrentSessionGuid()Ljava/util/UUID;

    move-result-object v5

    move-object v0, p0

    move v4, p4

    .line 260
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    .line 266
    invoke-static {}, Lcom/facebook/appevents/AppEventsLoggerImpl;->eagerFlush()V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_40} :catch_f

    return-void

    .line 267
    :goto_41
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method logPurchaseImplicitly(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    .registers 5

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 241
    :try_start_8
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;Z)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p1

    .line 242
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method logPushNotificationOpen(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 5

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    :try_start_8
    const-string v1, "fb_push_payload"

    .line 272
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 273
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    return-void

    .line 277
    :cond_15
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "campaign"

    .line 278
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_20} :catch_23
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_20} :catch_21

    goto :goto_23

    :catch_21
    move-exception p1

    goto :goto_46

    :catch_23
    :goto_23
    if-nez v0, :cond_2f

    .line 283
    :try_start_25
    sget-object p1, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    sget-object p2, Lcom/facebook/appevents/AppEventsLoggerImpl;->TAG:Ljava/lang/String;

    const-string v0, "Malformed payload specified for logging a push notification open."

    invoke-static {p1, p2, v0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 290
    :cond_2f
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fb_push_campaign"

    .line 291
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_40

    const-string v0, "fb_push_action"

    .line 293
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    const-string p2, "fb_mobile_push_opened"

    .line 295
    invoke-virtual {p0, p2, p1}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_45} :catch_21

    return-void

    .line 296
    :goto_46
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V
    .registers 11

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    const-string v0, "fb_ak"

    .line 455
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 456
    sget-object p1, Lcom/facebook/appevents/AppEventsLoggerImpl;->TAG:Ljava/lang/String;

    const-string p2, "logSdkEvent is deprecated and only supports account kit for legacy, please use logEvent instead"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 463
    :cond_17
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v5, 0x1

    .line 469
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->getCurrentSessionGuid()Ljava/util/UUID;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 464
    invoke-virtual/range {v1 .. v6}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_29} :catch_2a

    :cond_29
    return-void

    :catch_2a
    move-exception p1

    .line 471
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
