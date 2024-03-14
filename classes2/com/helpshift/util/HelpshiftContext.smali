.class public Lcom/helpshift/util/HelpshiftContext;
.super Ljava/lang/Object;
.source "HelpshiftContext.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Helpshift_Context"

.field private static campaignAppLifeCycleListener:Lcom/helpshift/app/CampaignAppLifeCycleListener;

.field private static context:Landroid/content/Context;

.field private static coreApi:Lcom/helpshift/CoreApi;

.field public static installAPICalled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static installCallSuccessful:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final lock:Ljava/lang/Object;

.field private static platform:Lcom/helpshift/common/platform/Platform;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/helpshift/util/HelpshiftContext;->lock:Ljava/lang/Object;

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/helpshift/util/HelpshiftContext;->installCallSuccessful:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/helpshift/util/HelpshiftContext;->installAPICalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .registers 1

    .line 30
    sget-object v0, Lcom/helpshift/util/HelpshiftContext;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getCampaignAppLifeCycleListener()Lcom/helpshift/app/CampaignAppLifeCycleListener;
    .registers 1

    .line 46
    sget-object v0, Lcom/helpshift/util/HelpshiftContext;->campaignAppLifeCycleListener:Lcom/helpshift/app/CampaignAppLifeCycleListener;

    return-object v0
.end method

.method public static getCoreApi()Lcom/helpshift/CoreApi;
    .registers 1

    .line 72
    sget-object v0, Lcom/helpshift/util/HelpshiftContext;->coreApi:Lcom/helpshift/CoreApi;

    return-object v0
.end method

.method public static getPlatform()Lcom/helpshift/common/platform/Platform;
    .registers 1

    .line 68
    sget-object v0, Lcom/helpshift/util/HelpshiftContext;->platform:Lcom/helpshift/common/platform/Platform;

    return-object v0
.end method

.method public static initializeCore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 59
    sget-object v0, Lcom/helpshift/util/HelpshiftContext;->platform:Lcom/helpshift/common/platform/Platform;

    if-nez v0, :cond_d

    .line 60
    new-instance v0, Lcom/helpshift/common/platform/AndroidPlatform;

    sget-object v1, Lcom/helpshift/util/HelpshiftContext;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/helpshift/common/platform/AndroidPlatform;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/helpshift/util/HelpshiftContext;->platform:Lcom/helpshift/common/platform/Platform;

    .line 62
    :cond_d
    sget-object p0, Lcom/helpshift/util/HelpshiftContext;->coreApi:Lcom/helpshift/CoreApi;

    if-nez p0, :cond_1a

    .line 63
    new-instance p0, Lcom/helpshift/JavaCore;

    sget-object p1, Lcom/helpshift/util/HelpshiftContext;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-direct {p0, p1}, Lcom/helpshift/JavaCore;-><init>(Lcom/helpshift/common/platform/Platform;)V

    sput-object p0, Lcom/helpshift/util/HelpshiftContext;->coreApi:Lcom/helpshift/CoreApi;

    :cond_1a
    return-void
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .registers 3

    .line 34
    sget-object v0, Lcom/helpshift/util/HelpshiftContext;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 35
    :try_start_3
    sget-object v1, Lcom/helpshift/util/HelpshiftContext;->context:Landroid/content/Context;

    if-nez v1, :cond_9

    .line 36
    sput-object p0, Lcom/helpshift/util/HelpshiftContext;->context:Landroid/content/Context;

    .line 38
    :cond_9
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public static setCampaignAppLifeCycleListener(Lcom/helpshift/app/CampaignAppLifeCycleListener;)V
    .registers 2
    .param p0    # Lcom/helpshift/app/CampaignAppLifeCycleListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 53
    sget-object v0, Lcom/helpshift/util/HelpshiftContext;->campaignAppLifeCycleListener:Lcom/helpshift/app/CampaignAppLifeCycleListener;

    if-nez v0, :cond_6

    .line 54
    sput-object p0, Lcom/helpshift/util/HelpshiftContext;->campaignAppLifeCycleListener:Lcom/helpshift/app/CampaignAppLifeCycleListener;

    :cond_6
    return-void
.end method

.method public static verifyInstall()Z
    .registers 4

    .line 76
    sget-object v0, Lcom/helpshift/util/HelpshiftContext;->installAPICalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 79
    sget-object v0, Lcom/helpshift/util/HelpshiftContext;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "Helpshift_Context"

    const-string v3, "com.helpshift.Core.install() method not called with valid arguments"

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_18

    goto :goto_2a

    .line 84
    :cond_18
    sget-object v0, Lcom/helpshift/util/HelpshiftContext;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/helpshift/util/ApplicationUtil;->isApplicationDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 89
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 86
    :cond_24
    new-instance v0, Lcom/helpshift/exceptions/HelpshiftInitializationException;

    invoke-direct {v0, v3}, Lcom/helpshift/exceptions/HelpshiftInitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_2a
    :goto_2a
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2e
    const/4 v0, 0x1

    return v0
.end method
