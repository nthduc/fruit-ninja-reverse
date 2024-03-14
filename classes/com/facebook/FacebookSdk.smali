.class public final Lcom/facebook/FacebookSdk;
.super Ljava/lang/Object;
.source "FacebookSdk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/FacebookSdk$GraphRequestCreator;,
        Lcom/facebook/FacebookSdk$InitializeCallback;
    }
.end annotation


# static fields
.field public static final ADVERTISER_ID_COLLECTION_ENABLED_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.AdvertiserIDCollectionEnabled"

.field public static final APPLICATION_ID_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.ApplicationId"

.field public static final APPLICATION_NAME_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.ApplicationName"

.field public static final APP_EVENT_PREFERENCES:Ljava/lang/String; = "com.facebook.sdk.appEventPreferences"

.field private static final ATTRIBUTION_PREFERENCES:Ljava/lang/String; = "com.facebook.sdk.attributionTracking"

.field public static final AUTO_INIT_ENABLED_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.AutoInitEnabled"

.field public static final AUTO_LOG_APP_EVENTS_ENABLED_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.AutoLogAppEventsEnabled"

.field static final CALLBACK_OFFSET_CHANGED_AFTER_INIT:Ljava/lang/String; = "The callback request code offset can\'t be updated once the SDK is initialized. Call FacebookSdk.setCallbackRequestCodeOffset inside your Application.onCreate method"

.field static final CALLBACK_OFFSET_NEGATIVE:Ljava/lang/String; = "The callback request code offset can\'t be negative."

.field public static final CALLBACK_OFFSET_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.CallbackOffset"

.field public static final CLIENT_TOKEN_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.ClientToken"

.field public static final CODELESS_DEBUG_LOG_ENABLED_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.CodelessDebugLogEnabled"

.field public static final DATA_PROCESSING_OPTIONS_PREFERENCES:Ljava/lang/String; = "com.facebook.sdk.DataProcessingOptions"

.field public static final DATA_PROCESSION_OPTIONS:Ljava/lang/String; = "data_processing_options"

.field public static final DATA_PROCESSION_OPTIONS_COUNTRY:Ljava/lang/String; = "data_processing_options_country"

.field public static final DATA_PROCESSION_OPTIONS_STATE:Ljava/lang/String; = "data_processing_options_state"

.field private static final DEFAULT_CALLBACK_REQUEST_CODE_OFFSET:I = 0xface

.field private static final FACEBOOK_COM:Ljava/lang/String; = "facebook.com"

.field private static final FB_GG:Ljava/lang/String; = "fb.gg"

.field private static final LOCK:Ljava/lang/Object;

.field private static final MAX_REQUEST_CODE_RANGE:I = 0x64

.field public static final MONITOR_ENABLED_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.MonitorEnabled"

.field private static final PUBLISH_ACTIVITY_PATH:Ljava/lang/String; = "%s/activities"

.field private static final TAG:Ljava/lang/String; = "com.facebook.FacebookSdk"

.field public static final WEB_DIALOG_THEME:Ljava/lang/String; = "com.facebook.sdk.WebDialogTheme"

.field private static volatile appClientToken:Ljava/lang/String;

.field private static applicationContext:Landroid/content/Context;

.field private static volatile applicationId:Ljava/lang/String;

.field private static volatile applicationName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static cacheDir:Lcom/facebook/internal/LockOnGetVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/internal/LockOnGetVariable<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static callbackRequestCodeOffset:I

.field private static volatile codelessDebugLogEnabled:Ljava/lang/Boolean;

.field private static executor:Ljava/util/concurrent/Executor;

.field private static volatile facebookDomain:Ljava/lang/String;

.field private static graphApiVersion:Ljava/lang/String;

.field private static graphRequestCreator:Lcom/facebook/FacebookSdk$GraphRequestCreator;

.field public static hasCustomTabsPrefetching:Z

.field public static ignoreAppSwitchToLoggedOut:Z

.field private static volatile isDebugEnabled:Z

.field private static isLegacyTokenUpgradeSupported:Z

.field private static final loggingBehaviors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/facebook/LoggingBehavior;",
            ">;"
        }
    .end annotation
.end field

.field private static onProgressThreshold:Ljava/util/concurrent/atomic/AtomicLong;

.field private static sdkFullyInitialized:Ljava/lang/Boolean;

.field private static sdkInitialized:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 71
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/LoggingBehavior;

    sget-object v2, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v2, v1, v3

    .line 72
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    const-string v0, "facebook.com"

    .line 82
    sput-object v0, Lcom/facebook/FacebookSdk;->facebookDomain:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/32 v1, 0x10000

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/facebook/FacebookSdk;->onProgressThreshold:Ljava/util/concurrent/atomic/AtomicLong;

    .line 84
    sput-boolean v3, Lcom/facebook/FacebookSdk;->isDebugEnabled:Z

    .line 85
    sput-boolean v3, Lcom/facebook/FacebookSdk;->isLegacyTokenUpgradeSupported:Z

    const v0, 0xface

    .line 88
    sput v0, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/FacebookSdk;->LOCK:Ljava/lang/Object;

    .line 90
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getDefaultAPIVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->graphApiVersion:Ljava/lang/String;

    .line 91
    sput-boolean v3, Lcom/facebook/FacebookSdk;->hasCustomTabsPrefetching:Z

    .line 92
    sput-boolean v3, Lcom/facebook/FacebookSdk;->ignoreAppSwitchToLoggedOut:Z

    .line 155
    sput-object v4, Lcom/facebook/FacebookSdk;->sdkInitialized:Ljava/lang/Boolean;

    .line 156
    sput-object v4, Lcom/facebook/FacebookSdk;->sdkFullyInitialized:Ljava/lang/Boolean;

    .line 158
    new-instance v0, Lcom/facebook/FacebookSdk$1;

    invoke-direct {v0}, Lcom/facebook/FacebookSdk$1;-><init>()V

    sput-object v0, Lcom/facebook/FacebookSdk;->graphRequestCreator:Lcom/facebook/FacebookSdk$GraphRequestCreator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .registers 1

    .line 68
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 68
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public static addLoggingBehavior(Lcom/facebook/LoggingBehavior;)V
    .registers 3

    .line 467
    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v0

    .line 468
    :try_start_3
    sget-object v1, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 469
    invoke-static {}, Lcom/facebook/FacebookSdk;->updateGraphDebugBehavior()V

    .line 470
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public static clearLoggingBehaviors()V
    .registers 2

    .line 494
    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v0

    .line 495
    :try_start_3
    sget-object v1, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 496
    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static fullyInitialize()V
    .registers 1

    const/4 v0, 0x1

    .line 441
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->sdkFullyInitialized:Ljava/lang/Boolean;

    return-void
.end method

.method public static getAdvertiserIDCollectionEnabled()Z
    .registers 1

    .line 1028
    invoke-static {}, Lcom/facebook/UserSettingsManager;->getAdvertiserIDCollectionEnabled()Z

    move-result v0

    return v0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .registers 1

    .line 648
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 649
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getApplicationId()Ljava/lang/String;
    .registers 1

    .line 909
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 910
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public static getApplicationName()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 930
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 931
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public static getApplicationSignature(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-class v0, Lcom/facebook/FacebookSdk;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 869
    :cond_a
    :try_start_a
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    if-nez p0, :cond_10

    return-object v1

    .line 873
    :cond_10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_17

    return-object v1

    .line 878
    :cond_17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_1b} :catch_47

    const/16 v2, 0x40

    .line 881
    :try_start_1d
    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d .. :try_end_21} :catch_46
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_21} :catch_47

    .line 886
    :try_start_21
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_46

    .line 887
    array-length v0, v0
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_26} :catch_47

    if-nez v0, :cond_29

    goto :goto_46

    :cond_29
    :try_start_29
    const-string v0, "SHA-1"

    .line 893
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_2f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_29 .. :try_end_2f} :catch_46
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2f} :catch_47

    .line 898
    :try_start_2f
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 899
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/16 v0, 0x9

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_45} :catch_47

    return-object p0

    :catch_46
    :cond_46
    :goto_46
    return-object v1

    :catch_47
    move-exception p0

    const-class v0, Lcom/facebook/FacebookSdk;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static getAutoInitEnabled()Z
    .registers 1

    .line 965
    invoke-static {}, Lcom/facebook/UserSettingsManager;->getAutoInitEnabled()Z

    move-result v0

    return v0
.end method

.method public static getAutoLogAppEventsEnabled()Z
    .registers 1

    .line 987
    invoke-static {}, Lcom/facebook/UserSettingsManager;->getAutoLogAppEventsEnabled()Z

    move-result v0

    return v0
.end method

.method public static getCacheDir()Ljava/io/File;
    .registers 1

    .line 1092
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 1093
    sget-object v0, Lcom/facebook/FacebookSdk;->cacheDir:Lcom/facebook/internal/LockOnGetVariable;

    invoke-virtual {v0}, Lcom/facebook/internal/LockOnGetVariable;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public static getCallbackRequestCodeOffset()I
    .registers 1

    .line 1112
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 1113
    sget v0, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    return v0
.end method

.method public static getClientToken()Ljava/lang/String;
    .registers 1

    .line 950
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 951
    sget-object v0, Lcom/facebook/FacebookSdk;->appClientToken:Ljava/lang/String;

    return-object v0
.end method

.method public static getCodelessDebugLogEnabled()Z
    .registers 1

    .line 1008
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 1009
    sget-object v0, Lcom/facebook/FacebookSdk;->codelessDebugLogEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getCodelessSetupEnabled()Z
    .registers 1

    .line 1014
    invoke-static {}, Lcom/facebook/UserSettingsManager;->getCodelessSetupEnabled()Z

    move-result v0

    return v0
.end method

.method public static getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 563
    sget-object v0, Lcom/facebook/FacebookSdk;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 564
    :try_start_3
    sget-object v1, Lcom/facebook/FacebookSdk;->executor:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_b

    .line 565
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v1, Lcom/facebook/FacebookSdk;->executor:Ljava/util/concurrent/Executor;

    .line 567
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_f

    .line 568
    sget-object v0, Lcom/facebook/FacebookSdk;->executor:Ljava/util/concurrent/Executor;

    return-object v0

    :catchall_f
    move-exception v1

    .line 567
    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public static getFacebookDomain()Ljava/lang/String;
    .registers 1

    .line 592
    sget-object v0, Lcom/facebook/FacebookSdk;->facebookDomain:Ljava/lang/String;

    return-object v0
.end method

.method public static getGraphApiVersion()Ljava/lang/String;
    .registers 4

    .line 677
    sget-object v0, Lcom/facebook/FacebookSdk;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/facebook/FacebookSdk;->graphApiVersion:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "getGraphApiVersion: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    sget-object v0, Lcom/facebook/FacebookSdk;->graphApiVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getGraphDomain()Ljava/lang/String;
    .registers 3

    .line 605
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 610
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getGraphDomain()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_11

    .line 614
    sget-object v0, Lcom/facebook/FacebookSdk;->facebookDomain:Ljava/lang/String;

    goto :goto_26

    :cond_11
    const-string v1, "gaming"

    .line 615
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 616
    sget-object v0, Lcom/facebook/FacebookSdk;->facebookDomain:Ljava/lang/String;

    const-string v1, "facebook.com"

    const-string v2, "fb.gg"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    .line 618
    :cond_24
    sget-object v0, Lcom/facebook/FacebookSdk;->facebookDomain:Ljava/lang/String;

    :goto_26
    return-object v0
.end method

.method public static getLimitEventAndDataUsage(Landroid/content/Context;)Z
    .registers 3

    .line 768
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    const/4 v0, 0x0

    const-string v1, "com.facebook.sdk.appEventPreferences"

    .line 770
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "limitEventUsage"

    .line 771
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getLoggingBehaviors()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/facebook/LoggingBehavior;",
            ">;"
        }
    .end annotation

    .line 453
    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v0

    .line 454
    :try_start_3
    new-instance v1, Ljava/util/HashSet;

    sget-object v2, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_10
    move-exception v1

    .line 455
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public static getMonitorEnabled()Z
    .registers 1

    .line 1046
    invoke-static {}, Lcom/facebook/UserSettingsManager;->getMonitorEnabled()Z

    move-result v0

    return v0
.end method

.method public static getOnProgressThreshold()J
    .registers 2

    .line 793
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 794
    sget-object v0, Lcom/facebook/FacebookSdk;->onProgressThreshold:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .registers 1

    const-string v0, "7.1.0"

    return-object v0
.end method

.method public static isDebugEnabled()Z
    .registers 1

    .line 516
    sget-boolean v0, Lcom/facebook/FacebookSdk;->isDebugEnabled:Z

    return v0
.end method

.method public static isFacebookRequestCode(I)Z
    .registers 2

    .line 1126
    sget v0, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    if-lt p0, v0, :cond_a

    add-int/lit8 v0, v0, 0x64

    if-ge p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static declared-synchronized isFullyInitialized()Z
    .registers 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    const-class v0, Lcom/facebook/FacebookSdk;

    monitor-enter v0

    .line 436
    :try_start_3
    sget-object v1, Lcom/facebook/FacebookSdk;->sdkFullyInitialized:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized isInitialized()Z
    .registers 2

    const-class v0, Lcom/facebook/FacebookSdk;

    monitor-enter v0

    .line 424
    :try_start_3
    sget-object v1, Lcom/facebook/FacebookSdk;->sdkInitialized:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isLegacyTokenUpgradeSupported()Z
    .registers 1

    .line 535
    sget-boolean v0, Lcom/facebook/FacebookSdk;->isLegacyTokenUpgradeSupported:Z

    return v0
.end method

.method public static isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z
    .registers 3

    .line 509
    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v0

    .line 510
    :try_start_3
    invoke-static {}, Lcom/facebook/FacebookSdk;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v1, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    .line 511
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method static loadDefaultsFromMetadata(Landroid/content/Context;)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    .line 817
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 818
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_11} :catch_91

    if-eqz p0, :cond_91

    .line 823
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_19

    goto/16 :goto_91

    .line 827
    :cond_19
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    if-nez v0, :cond_51

    .line 828
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.facebook.sdk.ApplicationId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 829
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_44

    .line 830
    check-cast v0, Ljava/lang/String;

    .line 831
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    const/4 v1, 0x2

    .line 832
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    goto :goto_51

    .line 834
    :cond_41
    sput-object v0, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    goto :goto_51

    .line 836
    :cond_44
    instance-of v0, v0, Ljava/lang/Number;

    if-nez v0, :cond_49

    goto :goto_51

    .line 837
    :cond_49
    new-instance p0, Lcom/facebook/FacebookException;

    const-string v0, "App Ids cannot be directly placed in the manifest.They must be prefixed by \'fb\' or be placed in the string resource file."

    invoke-direct {p0, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 843
    :cond_51
    :goto_51
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationName:Ljava/lang/String;

    if-nez v0, :cond_5f

    .line 844
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.facebook.sdk.ApplicationName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->applicationName:Ljava/lang/String;

    .line 847
    :cond_5f
    sget-object v0, Lcom/facebook/FacebookSdk;->appClientToken:Ljava/lang/String;

    if-nez v0, :cond_6d

    .line 848
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.facebook.sdk.ClientToken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->appClientToken:Ljava/lang/String;

    .line 851
    :cond_6d
    sget v0, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    const v1, 0xface

    if-ne v0, v1, :cond_7e

    .line 852
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.facebook.sdk.CallbackOffset"

    .line 853
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    .line 856
    :cond_7e
    sget-object v0, Lcom/facebook/FacebookSdk;->codelessDebugLogEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_91

    .line 857
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v0, 0x0

    const-string v1, "com.facebook.sdk.CodelessDebugLogEnabled"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/facebook/FacebookSdk;->codelessDebugLogEnabled:Ljava/lang/Boolean;

    :catch_91
    :cond_91
    :goto_91
    return-void
.end method

.method static publishInstallAndWaitForResponse(Landroid/content/Context;Ljava/lang/String;)V
    .registers 13

    const-class v0, Lcom/facebook/FacebookSdk;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    if-eqz p0, :cond_75

    if-eqz p1, :cond_75

    .line 709
    :try_start_d
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v0

    const-string v1, "com.facebook.sdk.attributionTracking"

    const/4 v2, 0x0

    .line 711
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 712
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ping"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 713
    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2f} :catch_7f
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_2f} :catch_7d

    .line 717
    :try_start_2f
    sget-object v8, Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;->MOBILE_INSTALL_EVENT:Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;

    .line 721
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->getAnonymousAppDeviceGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 722
    invoke-static {p0}, Lcom/facebook/FacebookSdk;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    move-result v10

    .line 718
    invoke-static {v8, v0, v9, v10, p0}, Lcom/facebook/appevents/internal/AppEventsLoggerUtility;->getJSONObjectForGraphAPICall(Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_3d} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3d} :catch_7f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_3d} :catch_7d

    :try_start_3d
    const-string v0, "%s/activities"

    const/4 v8, 0x1

    .line 728
    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v2

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 729
    sget-object v0, Lcom/facebook/FacebookSdk;->graphRequestCreator:Lcom/facebook/FacebookSdk$GraphRequestCreator;

    const/4 v2, 0x0

    .line 730
    invoke-interface {v0, v2, p1, p0, v2}, Lcom/facebook/FacebookSdk$GraphRequestCreator;->createPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object p0

    cmp-long p1, v6, v4

    if-nez p1, :cond_85

    .line 734
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object p0

    .line 736
    invoke-virtual {p0}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object p0

    if-nez p0, :cond_85

    .line 738
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 739
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 740
    invoke-interface {p0, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 741
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_85

    :catch_6c
    move-exception p0

    .line 725
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "An error occurred while publishing install."

    invoke-direct {p1, v0, p0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 706
    :cond_75
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Both context and applicationId must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_7d} :catch_7f
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_7d} :catch_7d

    :catch_7d
    move-exception p0

    goto :goto_86

    :catch_7f
    move-exception p0

    :try_start_80
    const-string p1, "Facebook-publish"

    .line 746
    invoke-static {p1, p0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_85} :catch_7d

    :cond_85
    :goto_85
    return-void

    .line 748
    :goto_86
    const-class p1, Lcom/facebook/FacebookSdk;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static publishInstallAsync(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-class v0, Lcom/facebook/FacebookSdk;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 691
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 692
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/FacebookSdk$9;

    invoke-direct {v1, p0, p1}, Lcom/facebook/FacebookSdk$9;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 693
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_19} :catch_1a

    return-void

    :catch_1a
    move-exception p0

    .line 700
    const-class p1, Lcom/facebook/FacebookSdk;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static removeLoggingBehavior(Lcom/facebook/LoggingBehavior;)V
    .registers 3

    .line 482
    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v0

    .line 483
    :try_start_3
    sget-object v1, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 484
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public static declared-synchronized sdkInitialize(Landroid/content/Context;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/facebook/FacebookSdk;

    monitor-enter v0

    const/4 v1, 0x0

    .line 248
    :try_start_4
    invoke-static {p0, v1}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    .line 249
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized sdkInitialize(Landroid/content/Context;I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/facebook/FacebookSdk;

    monitor-enter v0

    const/4 v1, 0x0

    .line 192
    :try_start_4
    invoke-static {p0, p1, v1}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;ILcom/facebook/FacebookSdk$InitializeCallback;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    .line 193
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized sdkInitialize(Landroid/content/Context;ILcom/facebook/FacebookSdk$InitializeCallback;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/facebook/FacebookSdk;

    monitor-enter v0

    .line 221
    :try_start_3
    sget-object v1, Lcom/facebook/FacebookSdk;->sdkInitialized:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_18

    sget v1, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    if-ne p1, v1, :cond_10

    goto :goto_18

    .line 222
    :cond_10
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "The callback request code offset can\'t be updated once the SDK is initialized. Call FacebookSdk.setCallbackRequestCodeOffset inside your Application.onCreate method"

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    :goto_18
    if-ltz p1, :cond_21

    .line 228
    sput p1, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    .line 229
    invoke-static {p0, p2}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_29

    .line 230
    monitor-exit v0

    return-void

    .line 225
    :cond_21
    :try_start_21
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "The callback request code offset can\'t be negative."

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized sdkInitialize(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/facebook/FacebookSdk;

    monitor-enter v0

    .line 269
    :try_start_3
    sget-object v1, Lcom/facebook/FacebookSdk;->sdkInitialized:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_12

    if-eqz p1, :cond_10

    .line 271
    invoke-interface {p1}, Lcom/facebook/FacebookSdk$InitializeCallback;->onInitialized()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_bd

    .line 273
    :cond_10
    monitor-exit v0

    return-void

    :cond_12
    :try_start_12
    const-string v1, "applicationContext"

    .line 276
    invoke-static {p0, v1}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 280
    invoke-static {p0, v1}, Lcom/facebook/internal/Validate;->hasFacebookActivity(Landroid/content/Context;Z)V

    .line 281
    invoke-static {p0, v1}, Lcom/facebook/internal/Validate;->hasInternetPermissions(Landroid/content/Context;Z)V

    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    .line 286
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->getAnonymousAppDeviceGUID(Landroid/content/Context;)Ljava/lang/String;

    .line 289
    sget-object v1, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/FacebookSdk;->loadDefaultsFromMetadata(Landroid/content/Context;)V

    .line 292
    sget-object v1, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b5

    const/4 v1, 0x1

    .line 301
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/facebook/FacebookSdk;->sdkInitialized:Ljava/lang/Boolean;

    .line 304
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoInitEnabled()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 305
    invoke-static {}, Lcom/facebook/FacebookSdk;->fullyInitialize()V

    .line 309
    :cond_44
    sget-object v1, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_59

    .line 310
    invoke-static {}, Lcom/facebook/UserSettingsManager;->getAutoLogAppEventsEnabled()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 311
    sget-object v1, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Application;

    sget-object v2, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->startTracking(Landroid/app/Application;Ljava/lang/String;)V

    .line 316
    :cond_59
    invoke-static {}, Lcom/facebook/internal/FetchedAppSettingsManager;->loadAppSettingsAsync()V

    .line 319
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->updateAllAvailableProtocolVersionsAsync()V

    .line 321
    sget-object v1, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/internal/BoltsMeasurementEventListener;->getInstance(Landroid/content/Context;)Lcom/facebook/internal/BoltsMeasurementEventListener;

    .line 323
    new-instance v1, Lcom/facebook/internal/LockOnGetVariable;

    new-instance v2, Lcom/facebook/FacebookSdk$2;

    invoke-direct {v2}, Lcom/facebook/FacebookSdk$2;-><init>()V

    invoke-direct {v1, v2}, Lcom/facebook/internal/LockOnGetVariable;-><init>(Ljava/util/concurrent/Callable;)V

    sput-object v1, Lcom/facebook/FacebookSdk;->cacheDir:Lcom/facebook/internal/LockOnGetVariable;

    .line 332
    sget-object v1, Lcom/facebook/internal/FeatureManager$Feature;->Instrument:Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v2, Lcom/facebook/FacebookSdk$3;

    invoke-direct {v2}, Lcom/facebook/FacebookSdk$3;-><init>()V

    invoke-static {v1, v2}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 343
    sget-object v1, Lcom/facebook/internal/FeatureManager$Feature;->AppEvents:Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v2, Lcom/facebook/FacebookSdk$4;

    invoke-direct {v2}, Lcom/facebook/FacebookSdk$4;-><init>()V

    invoke-static {v1, v2}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 354
    sget-object v1, Lcom/facebook/internal/FeatureManager$Feature;->ChromeCustomTabsPrefetching:Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v2, Lcom/facebook/FacebookSdk$5;

    invoke-direct {v2}, Lcom/facebook/FacebookSdk$5;-><init>()V

    invoke-static {v1, v2}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 365
    sget-object v1, Lcom/facebook/internal/FeatureManager$Feature;->IgnoreAppSwitchToLoggedOut:Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v2, Lcom/facebook/FacebookSdk$6;

    invoke-direct {v2}, Lcom/facebook/FacebookSdk$6;-><init>()V

    invoke-static {v1, v2}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 376
    sget-object v1, Lcom/facebook/internal/FeatureManager$Feature;->Monitoring:Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v2, Lcom/facebook/FacebookSdk$7;

    invoke-direct {v2}, Lcom/facebook/FacebookSdk$7;-><init>()V

    invoke-static {v1, v2}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 387
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/facebook/FacebookSdk$8;

    invoke-direct {v2, p1, p0}, Lcom/facebook/FacebookSdk$8;-><init>(Lcom/facebook/FacebookSdk$InitializeCallback;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 415
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_b3
    .catchall {:try_start_12 .. :try_end_b3} :catchall_bd

    .line 416
    monitor-exit v0

    return-void

    .line 293
    :cond_b5
    :try_start_b5
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "A valid Facebook app id must be set in the AndroidManifest.xml or set by calling FacebookSdk.setApplicationId before initializing the sdk."

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_bd
    .catchall {:try_start_b5 .. :try_end_bd} :catchall_bd

    :catchall_bd
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setAdvertiserIDCollectionEnabled(Z)V
    .registers 1

    .line 1023
    invoke-static {p0}, Lcom/facebook/UserSettingsManager;->setAdvertiserIDCollectionEnabled(Z)V

    return-void
.end method

.method public static setApplicationId(Ljava/lang/String;)V
    .registers 1

    .line 919
    sput-object p0, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    return-void
.end method

.method public static setApplicationName(Ljava/lang/String;)V
    .registers 1

    .line 940
    sput-object p0, Lcom/facebook/FacebookSdk;->applicationName:Ljava/lang/String;

    return-void
.end method

.method public static setAutoInitEnabled(Z)V
    .registers 1

    .line 975
    invoke-static {p0}, Lcom/facebook/UserSettingsManager;->setAutoInitEnabled(Z)V

    if-eqz p0, :cond_8

    .line 977
    invoke-static {}, Lcom/facebook/FacebookSdk;->fullyInitialize()V

    :cond_8
    return-void
.end method

.method public static setAutoLogAppEventsEnabled(Z)V
    .registers 2

    .line 999
    invoke-static {p0}, Lcom/facebook/UserSettingsManager;->setAutoLogAppEventsEnabled(Z)V

    if-eqz p0, :cond_e

    .line 1001
    sget-object p0, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Application;

    sget-object v0, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->startTracking(Landroid/app/Application;Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public static setCacheDir(Ljava/io/File;)V
    .registers 2

    .line 1102
    new-instance v0, Lcom/facebook/internal/LockOnGetVariable;

    invoke-direct {v0, p0}, Lcom/facebook/internal/LockOnGetVariable;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/FacebookSdk;->cacheDir:Lcom/facebook/internal/LockOnGetVariable;

    return-void
.end method

.method public static setClientToken(Ljava/lang/String;)V
    .registers 1

    .line 960
    sput-object p0, Lcom/facebook/FacebookSdk;->appClientToken:Ljava/lang/String;

    return-void
.end method

.method public static setCodelessDebugLogEnabled(Z)V
    .registers 1

    .line 1037
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/facebook/FacebookSdk;->codelessDebugLogEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public static setDataProcessingOptions([Ljava/lang/String;)V
    .registers 2

    const-class v0, Lcom/facebook/FacebookSdk;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    .line 1061
    :try_start_a
    invoke-static {p0, v0, v0}, Lcom/facebook/FacebookSdk;->setDataProcessingOptions([Ljava/lang/String;II)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p0

    .line 1062
    const-class v0, Lcom/facebook/FacebookSdk;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static setDataProcessingOptions([Ljava/lang/String;II)V
    .registers 7

    const-string v0, "data_processing_options"

    const-class v1, Lcom/facebook/FacebookSdk;

    invoke-static {v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    :cond_b
    const/4 v1, 0x0

    if-nez p0, :cond_10

    .line 1068
    :try_start_e
    new-array p0, v1, [Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_10} :catch_43

    .line 1071
    :cond_10
    :try_start_10
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1072
    new-instance v3, Lorg/json/JSONArray;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v3, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 1073
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "data_processing_options_country"

    .line 1074
    invoke-virtual {v2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "data_processing_options_state"

    .line 1075
    invoke-virtual {v2, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1076
    sget-object p0, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    const-string p1, "com.facebook.sdk.DataProcessingOptions"

    .line 1077
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1078
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1079
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1080
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_42} :catch_49
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_42} :catch_43

    goto :goto_49

    :catch_43
    move-exception p0

    .line 1083
    const-class p1, Lcom/facebook/FacebookSdk;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :catch_49
    :goto_49
    return-void
.end method

.method public static setExecutor(Ljava/util/concurrent/Executor;)V
    .registers 2

    const-string v0, "executor"

    .line 577
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 578
    sget-object v0, Lcom/facebook/FacebookSdk;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 579
    :try_start_8
    sput-object p0, Lcom/facebook/FacebookSdk;->executor:Ljava/util/concurrent/Executor;

    .line 580
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public static setFacebookDomain(Ljava/lang/String;)V
    .registers 3

    .line 636
    sget-object v0, Lcom/facebook/FacebookSdk;->TAG:Ljava/lang/String;

    const-string v1, "WARNING: Calling setFacebookDomain from non-DEBUG code."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    sput-object p0, Lcom/facebook/FacebookSdk;->facebookDomain:Ljava/lang/String;

    return-void
.end method

.method public static setGraphApiVersion(Ljava/lang/String;)V
    .registers 3

    .line 661
    sget-object v0, Lcom/facebook/FacebookSdk;->TAG:Ljava/lang/String;

    const-string v1, "WARNING: Calling setGraphApiVersion from non-DEBUG code."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-static {p0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/facebook/FacebookSdk;->graphApiVersion:Ljava/lang/String;

    .line 665
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 666
    sput-object p0, Lcom/facebook/FacebookSdk;->graphApiVersion:Ljava/lang/String;

    :cond_17
    return-void
.end method

.method public static setGraphRequestCreator(Lcom/facebook/FacebookSdk$GraphRequestCreator;)V
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1148
    sput-object p0, Lcom/facebook/FacebookSdk;->graphRequestCreator:Lcom/facebook/FacebookSdk$GraphRequestCreator;

    return-void
.end method

.method public static setIsDebugEnabled(Z)V
    .registers 1

    .line 525
    sput-boolean p0, Lcom/facebook/FacebookSdk;->isDebugEnabled:Z

    return-void
.end method

.method public static setLegacyTokenUpgradeSupported(Z)V
    .registers 1

    .line 551
    sput-boolean p0, Lcom/facebook/FacebookSdk;->isLegacyTokenUpgradeSupported:Z

    return-void
.end method

.method public static setLimitEventAndDataUsage(Landroid/content/Context;Z)V
    .registers 4

    const-string v0, "com.facebook.sdk.appEventPreferences"

    const/4 v1, 0x0

    .line 785
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 786
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "limitEventUsage"

    .line 787
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 788
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setMonitorEnabled(Z)V
    .registers 1

    .line 1055
    invoke-static {p0}, Lcom/facebook/UserSettingsManager;->setMonitorEnabled(Z)V

    return-void
.end method

.method public static setOnProgressThreshold(J)V
    .registers 3

    .line 804
    sget-object v0, Lcom/facebook/FacebookSdk;->onProgressThreshold:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method private static updateGraphDebugBehavior()V
    .registers 2

    .line 539
    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    sget-object v1, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_INFO:Lcom/facebook/LoggingBehavior;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    sget-object v1, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_WARNING:Lcom/facebook/LoggingBehavior;

    .line 540
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 541
    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    sget-object v1, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_WARNING:Lcom/facebook/LoggingBehavior;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1b
    return-void
.end method
