.class public Lcom/helpshift/applifecycle/HSAppLifeCycleController;
.super Ljava/lang/Object;
.source "HSAppLifeCycleController.java"

# interfaces
.implements Lcom/helpshift/applifecycle/HSAppLifeCycleListener;


# static fields
.field private static instance:Lcom/helpshift/applifecycle/HSAppLifeCycleController;

.field private static final lock:Ljava/lang/Object;


# instance fields
.field private appLifeCycleListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/helpshift/applifecycle/HSAppLifeCycleListener;",
            ">;"
        }
    .end annotation
.end field

.field private lifeCycleTracker:Lcom/helpshift/applifecycle/BaseAppLifeCycleTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/helpshift/applifecycle/HSAppLifeCycleController;->lock:Ljava/lang/Object;

    .line 16
    new-instance v0, Lcom/helpshift/applifecycle/HSAppLifeCycleController;

    invoke-direct {v0}, Lcom/helpshift/applifecycle/HSAppLifeCycleController;-><init>()V

    sput-object v0, Lcom/helpshift/applifecycle/HSAppLifeCycleController;->instance:Lcom/helpshift/applifecycle/HSAppLifeCycleController;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helpshift/applifecycle/HSAppLifeCycleController;->appLifeCycleListeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    .line 12
    sget-object v0, Lcom/helpshift/applifecycle/HSAppLifeCycleController;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/helpshift/applifecycle/HSAppLifeCycleController;)Ljava/util/List;
    .registers 1

    .line 12
    iget-object p0, p0, Lcom/helpshift/applifecycle/HSAppLifeCycleController;->appLifeCycleListeners:Ljava/util/List;

    return-object p0
.end method

.method public static getInstance()Lcom/helpshift/applifecycle/HSAppLifeCycleController;
    .registers 1

    .line 23
    sget-object v0, Lcom/helpshift/applifecycle/HSAppLifeCycleController;->instance:Lcom/helpshift/applifecycle/HSAppLifeCycleController;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized init(Landroid/app/Application;Z)V
    .registers 4

    monitor-enter p0

    .line 31
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/applifecycle/HSAppLifeCycleController;->lifeCycleTracker:Lcom/helpshift/applifecycle/BaseAppLifeCycleTracker;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1f

    if-eqz v0, :cond_7

    .line 32
    monitor-exit p0

    return-void

    :cond_7
    if-eqz p2, :cond_11

    .line 37
    :try_start_9
    new-instance p2, Lcom/helpshift/applifecycle/ManualAppLifeCycleTracker;

    invoke-direct {p2, p1}, Lcom/helpshift/applifecycle/ManualAppLifeCycleTracker;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/helpshift/applifecycle/HSAppLifeCycleController;->lifeCycleTracker:Lcom/helpshift/applifecycle/BaseAppLifeCycleTracker;

    goto :goto_18

    .line 40
    :cond_11
    new-instance p2, Lcom/helpshift/applifecycle/DefaultAppLifeCycleTracker;

    invoke-direct {p2, p1}, Lcom/helpshift/applifecycle/DefaultAppLifeCycleTracker;-><init>(Landroid/app/Application;)V

    iput-object p2, p0, Lcom/helpshift/applifecycle/HSAppLifeCycleController;->lifeCycleTracker:Lcom/helpshift/applifecycle/BaseAppLifeCycleTracker;

    .line 43
    :goto_18
    iget-object p1, p0, Lcom/helpshift/applifecycle/HSAppLifeCycleController;->lifeCycleTracker:Lcom/helpshift/applifecycle/BaseAppLifeCycleTracker;

    invoke-virtual {p1, p0}, Lcom/helpshift/applifecycle/BaseAppLifeCycleTracker;->registerAppLifeCycleListener(Lcom/helpshift/applifecycle/HSAppLifeCycleListener;)V
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_1f

    .line 44
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isAppInForeground()Z
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/helpshift/applifecycle/HSAppLifeCycleController;->lifeCycleTracker:Lcom/helpshift/applifecycle/BaseAppLifeCycleTracker;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 87
    :cond_6
    invoke-virtual {v0}, Lcom/helpshift/applifecycle/BaseAppLifeCycleTracker;->isAppInForeground()Z

    move-result v0

    return v0
.end method

.method public onAppBackground(Landroid/content/Context;)V
    .registers 4

    .line 107
    invoke-static {}, Lcom/helpshift/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lcom/helpshift/util/concurrent/ApiExecutor;

    move-result-object v0

    .line 108
    new-instance v1, Lcom/helpshift/applifecycle/HSAppLifeCycleController$2;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/applifecycle/HSAppLifeCycleController$2;-><init>(Lcom/helpshift/applifecycle/HSAppLifeCycleController;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lcom/helpshift/util/concurrent/ApiExecutor;->runAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAppForeground(Landroid/content/Context;)V
    .registers 4

    .line 92
    invoke-static {}, Lcom/helpshift/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lcom/helpshift/util/concurrent/ApiExecutor;

    move-result-object v0

    .line 93
    new-instance v1, Lcom/helpshift/applifecycle/HSAppLifeCycleController$1;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/applifecycle/HSAppLifeCycleController$1;-><init>(Lcom/helpshift/applifecycle/HSAppLifeCycleController;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lcom/helpshift/util/concurrent/ApiExecutor;->runAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onManualAppBackgroundAPI()V
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/helpshift/applifecycle/HSAppLifeCycleController;->lifeCycleTracker:Lcom/helpshift/applifecycle/BaseAppLifeCycleTracker;

    if-nez v0, :cond_5

    return-void

    .line 75
    :cond_5
    invoke-virtual {v0}, Lcom/helpshift/applifecycle/BaseAppLifeCycleTracker;->onManualAppBackgroundAPI()V

    return-void
.end method

.method public onManualAppForegroundAPI()V
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/helpshift/applifecycle/HSAppLifeCycleController;->lifeCycleTracker:Lcom/helpshift/applifecycle/BaseAppLifeCycleTracker;

    if-nez v0, :cond_5

    return-void

    .line 62
    :cond_5
    invoke-virtual {v0}, Lcom/helpshift/applifecycle/BaseAppLifeCycleTracker;->onManualAppForegroundAPI()V

    return-void
.end method

.method public registerAppLifeCycleListener(Lcom/helpshift/applifecycle/HSAppLifeCycleListener;)V
    .registers 4
    .param p1    # Lcom/helpshift/applifecycle/HSAppLifeCycleListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    sget-object v0, Lcom/helpshift/applifecycle/HSAppLifeCycleController;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_3
    iget-object v1, p0, Lcom/helpshift/applifecycle/HSAppLifeCycleController;->appLifeCycleListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method
