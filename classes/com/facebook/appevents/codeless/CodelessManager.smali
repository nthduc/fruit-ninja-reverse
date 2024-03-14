.class public final Lcom/facebook/appevents/codeless/CodelessManager;
.super Ljava/lang/Object;
.source "CodelessManager.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static deviceSessionID:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static isAppIndexingEnabled:Ljava/lang/Boolean;

.field private static volatile isCheckingSession:Ljava/lang/Boolean;

.field private static final isCodelessEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sensorManager:Landroid/hardware/SensorManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static viewIndexer:Lcom/facebook/appevents/codeless/ViewIndexer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final viewIndexingTrigger:Lcom/facebook/appevents/codeless/ViewIndexingTrigger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 50
    new-instance v0, Lcom/facebook/appevents/codeless/ViewIndexingTrigger;

    invoke-direct {v0}, Lcom/facebook/appevents/codeless/ViewIndexingTrigger;-><init>()V

    sput-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->viewIndexingTrigger:Lcom/facebook/appevents/codeless/ViewIndexingTrigger;

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->isCodelessEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 56
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->isAppIndexingEnabled:Ljava/lang/Boolean;

    .line 57
    sput-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->isCheckingSession:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .registers 2

    const-class v0, Lcom/facebook/appevents/codeless/CodelessManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 49
    :cond_9
    :try_start_9
    invoke-static {p0}, Lcom/facebook/appevents/codeless/CodelessManager;->checkCodelessSession(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    const-class v0, Lcom/facebook/appevents/codeless/CodelessManager;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Boolean;
    .registers 3

    const-class v0, Lcom/facebook/appevents/codeless/CodelessManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 49
    :cond_a
    :try_start_a
    sget-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->isAppIndexingEnabled:Ljava/lang/Boolean;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    const-class v2, Lcom/facebook/appevents/codeless/CodelessManager;

    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static synthetic access$102(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 3

    const-class v0, Lcom/facebook/appevents/codeless/CodelessManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 49
    :cond_a
    :try_start_a
    sput-object p0, Lcom/facebook/appevents/codeless/CodelessManager;->isAppIndexingEnabled:Ljava/lang/Boolean;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    const-class v0, Lcom/facebook/appevents/codeless/CodelessManager;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/facebook/appevents/codeless/CodelessManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 49
    :cond_a
    :try_start_a
    sput-object p0, Lcom/facebook/appevents/codeless/CodelessManager;->deviceSessionID:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    const-class v0, Lcom/facebook/appevents/codeless/CodelessManager;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static synthetic access$300()Lcom/facebook/appevents/codeless/ViewIndexer;
    .registers 3

    const-class v0, Lcom/facebook/appevents/codeless/CodelessManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 49
    :cond_a
    :try_start_a
    sget-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->viewIndexer:Lcom/facebook/appevents/codeless/ViewIndexer;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    const-class v2, Lcom/facebook/appevents/codeless/CodelessManager;

    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static synthetic access$402(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 3

    const-class v0, Lcom/facebook/appevents/codeless/CodelessManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 49
    :cond_a
    :try_start_a
    sput-object p0, Lcom/facebook/appevents/codeless/CodelessManager;->isCheckingSession:Ljava/lang/Boolean;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    const-class v0, Lcom/facebook/appevents/codeless/CodelessManager;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method private static checkCodelessSession(Ljava/lang/String;)V
    .registers 3

    const-class v0, Lcom/facebook/appevents/codeless/CodelessManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 136
    :cond_9
    :try_start_9
    sget-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->isCheckingSession:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    :cond_12
    const/4 v0, 0x1

    .line 139
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->isCheckingSession:Ljava/lang/Boolean;

    .line 141
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/appevents/codeless/CodelessManager$2;

    invoke-direct {v1, p0}, Lcom/facebook/appevents/codeless/CodelessManager$2;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_25} :catch_26

    return-void

    :catch_26
    move-exception p0

    .line 200
    const-class v0, Lcom/facebook/appevents/codeless/CodelessManager;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static disable()V
    .registers 2

    const-class v0, Lcom/facebook/appevents/codeless/CodelessManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 132
    :cond_9
    :try_start_9
    sget-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->isCodelessEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    .line 133
    const-class v1, Lcom/facebook/appevents/codeless/CodelessManager;

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static enable()V
    .registers 2

    const-class v0, Lcom/facebook/appevents/codeless/CodelessManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 128
    :cond_9
    :try_start_9
    sget-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->isCodelessEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    .line 129
    const-class v1, Lcom/facebook/appevents/codeless/CodelessManager;

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static getCurrentDeviceSessionID()Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/facebook/appevents/codeless/CodelessManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 203
    :cond_a
    :try_start_a
    sget-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->deviceSessionID:Ljava/lang/String;

    if-nez v0, :cond_18

    .line 204
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->deviceSessionID:Ljava/lang/String;

    .line 207
    :cond_18
    sget-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->deviceSessionID:Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_1a} :catch_1b

    return-object v0

    :catch_1b
    move-exception v0

    const-class v2, Lcom/facebook/appevents/codeless/CodelessManager;

    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static getIsAppIndexingEnabled()Z
    .registers 3

    const-class v0, Lcom/facebook/appevents/codeless/CodelessManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 211
    :cond_a
    :try_start_a
    sget-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->isAppIndexingEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_10} :catch_11

    return v0

    :catch_11
    move-exception v0

    const-class v2, Lcom/facebook/appevents/codeless/CodelessManager;

    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method public static onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    const-class v0, Lcom/facebook/appevents/codeless/CodelessManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 124
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/facebook/appevents/codeless/CodelessMatcher;->getInstance()Lcom/facebook/appevents/codeless/CodelessMatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/appevents/codeless/CodelessMatcher;->destroy(Landroid/app/Activity;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p0

    .line 125
    const-class v0, Lcom/facebook/appevents/codeless/CodelessManager;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    const-class v0, Lcom/facebook/appevents/codeless/CodelessManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 109
    :cond_9
    :try_start_9
    sget-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->isCodelessEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    .line 113
    :cond_12
    invoke-static {}, Lcom/facebook/appevents/codeless/CodelessMatcher;->getInstance()Lcom/facebook/appevents/codeless/CodelessMatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/appevents/codeless/CodelessMatcher;->remove(Landroid/app/Activity;)V

    .line 115
    sget-object p0, Lcom/facebook/appevents/codeless/CodelessManager;->viewIndexer:Lcom/facebook/appevents/codeless/ViewIndexer;

    if-eqz p0, :cond_22

    .line 116
    sget-object p0, Lcom/facebook/appevents/codeless/CodelessManager;->viewIndexer:Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-virtual {p0}, Lcom/facebook/appevents/codeless/ViewIndexer;->unschedule()V

    .line 118
    :cond_22
    sget-object p0, Lcom/facebook/appevents/codeless/CodelessManager;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz p0, :cond_2d

    .line 119
    sget-object p0, Lcom/facebook/appevents/codeless/CodelessManager;->sensorManager:Landroid/hardware/SensorManager;

    sget-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->viewIndexingTrigger:Lcom/facebook/appevents/codeless/ViewIndexingTrigger;

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_2d} :catch_2e

    :cond_2d
    return-void

    :catch_2e
    move-exception p0

    .line 121
    const-class v0, Lcom/facebook/appevents/codeless/CodelessManager;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static onActivityResumed(Landroid/app/Activity;)V
    .registers 5

    const-class v0, Lcom/facebook/appevents/codeless/CodelessManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 60
    :cond_9
    :try_start_9
    sget-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->isCodelessEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    .line 64
    :cond_12
    invoke-static {}, Lcom/facebook/appevents/codeless/CodelessMatcher;->getInstance()Lcom/facebook/appevents/codeless/CodelessMatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/appevents/codeless/CodelessMatcher;->add(Landroid/app/Activity;)V

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 67
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-static {v1}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v2

    if-eqz v2, :cond_6a

    .line 70
    invoke-virtual {v2}, Lcom/facebook/internal/FetchedAppSettings;->getCodelessEventsEnabled()Z

    move-result v3

    if-nez v3, :cond_2e

    goto :goto_6a

    :cond_2e
    const-string v3, "sensor"

    .line 72
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    sput-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->sensorManager:Landroid/hardware/SensorManager;

    .line 73
    sget-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_3d

    return-void

    .line 77
    :cond_3d
    sget-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 78
    new-instance v3, Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-direct {v3, p0}, Lcom/facebook/appevents/codeless/ViewIndexer;-><init>(Landroid/app/Activity;)V

    sput-object v3, Lcom/facebook/appevents/codeless/CodelessManager;->viewIndexer:Lcom/facebook/appevents/codeless/ViewIndexer;

    .line 79
    sget-object p0, Lcom/facebook/appevents/codeless/CodelessManager;->viewIndexingTrigger:Lcom/facebook/appevents/codeless/ViewIndexingTrigger;

    new-instance v3, Lcom/facebook/appevents/codeless/CodelessManager$1;

    invoke-direct {v3, v2, v1}, Lcom/facebook/appevents/codeless/CodelessManager$1;-><init>(Lcom/facebook/internal/FetchedAppSettings;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/facebook/appevents/codeless/ViewIndexingTrigger;->setOnShakeListener(Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;)V

    .line 93
    sget-object p0, Lcom/facebook/appevents/codeless/CodelessManager;->sensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/facebook/appevents/codeless/CodelessManager;->viewIndexingTrigger:Lcom/facebook/appevents/codeless/ViewIndexingTrigger;

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    if-eqz v2, :cond_6a

    .line 96
    invoke-virtual {v2}, Lcom/facebook/internal/FetchedAppSettings;->getCodelessEventsEnabled()Z

    move-result p0

    if-eqz p0, :cond_6a

    .line 97
    sget-object p0, Lcom/facebook/appevents/codeless/CodelessManager;->viewIndexer:Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-virtual {p0}, Lcom/facebook/appevents/codeless/ViewIndexer;->schedule()V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_6a} :catch_6b

    :cond_6a
    :goto_6a
    return-void

    :catch_6b
    move-exception p0

    .line 106
    const-class v0, Lcom/facebook/appevents/codeless/CodelessManager;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static updateAppIndexing(Ljava/lang/Boolean;)V
    .registers 2

    const-class v0, Lcom/facebook/appevents/codeless/CodelessManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 215
    :cond_9
    :try_start_9
    sput-object p0, Lcom/facebook/appevents/codeless/CodelessManager;->isAppIndexingEnabled:Ljava/lang/Boolean;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    .line 216
    const-class v0, Lcom/facebook/appevents/codeless/CodelessManager;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
