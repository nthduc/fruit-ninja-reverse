.class public Lcom/facebook/appevents/codeless/ViewIndexer;
.super Ljava/lang/Object;
.source "ViewIndexer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/codeless/ViewIndexer$ScreenshotTaker;
    }
.end annotation


# static fields
.field private static final APP_VERSION_PARAM:Ljava/lang/String; = "app_version"

.field private static final PLATFORM_PARAM:Ljava/lang/String; = "platform"

.field private static final REQUEST_TYPE:Ljava/lang/String; = "request_type"

.field private static final SUCCESS:Ljava/lang/String; = "success"

.field private static final TAG:Ljava/lang/String; = "com.facebook.appevents.codeless.ViewIndexer"

.field private static final TREE_PARAM:Ljava/lang/String; = "tree"

.field private static instance:Lcom/facebook/appevents/codeless/ViewIndexer;


# instance fields
.field private activityReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private indexingTimer:Ljava/util/Timer;

.field private previousDigest:Ljava/lang/String;

.field private final uiThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->activityReference:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->previousDigest:Ljava/lang/String;

    .line 78
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->uiThreadHandler:Landroid/os/Handler;

    .line 79
    sput-object p0, Lcom/facebook/appevents/codeless/ViewIndexer;->instance:Lcom/facebook/appevents/codeless/ViewIndexer;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/appevents/codeless/ViewIndexer;)Ljava/lang/ref/WeakReference;
    .registers 3

    const-class v0, Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 61
    :cond_a
    :try_start_a
    iget-object p0, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->activityReference:Ljava/lang/ref/WeakReference;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    const-class v0, Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static synthetic access$100(Lcom/facebook/appevents/codeless/ViewIndexer;)Landroid/os/Handler;
    .registers 3

    const-class v0, Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 61
    :cond_a
    :try_start_a
    iget-object p0, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->uiThreadHandler:Landroid/os/Handler;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    const-class v0, Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 61
    :cond_a
    :try_start_a
    sget-object v0, Lcom/facebook/appevents/codeless/ViewIndexer;->TAG:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    const-class v2, Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static synthetic access$300(Lcom/facebook/appevents/codeless/ViewIndexer;Ljava/lang/String;)V
    .registers 3

    const-class v0, Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 61
    :cond_9
    :try_start_9
    invoke-direct {p0, p1}, Lcom/facebook/appevents/codeless/ViewIndexer;->sendToServer(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    const-class p1, Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/facebook/appevents/codeless/ViewIndexer;)Ljava/util/Timer;
    .registers 3

    const-class v0, Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 61
    :cond_a
    :try_start_a
    iget-object p0, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->indexingTimer:Ljava/util/Timer;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    const-class v0, Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static synthetic access$402(Lcom/facebook/appevents/codeless/ViewIndexer;Ljava/util/Timer;)Ljava/util/Timer;
    .registers 4

    const-class v0, Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 61
    :cond_a
    :try_start_a
    iput-object p1, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->indexingTimer:Ljava/util/Timer;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p0

    const-class p1, Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static synthetic access$500(Lcom/facebook/appevents/codeless/ViewIndexer;)Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 61
    :cond_a
    :try_start_a
    iget-object p0, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->previousDigest:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    const-class v0, Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static synthetic access$502(Lcom/facebook/appevents/codeless/ViewIndexer;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-class v0, Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 61
    :cond_a
    :try_start_a
    iput-object p1, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->previousDigest:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p0

    const-class p1, Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static buildAppIndexingRequest(Ljava/lang/String;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/GraphRequest;
    .registers 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    const-class v0, Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    if-nez p0, :cond_d

    return-object v1

    .line 243
    :cond_d
    :try_start_d
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s/app_indexing"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    .line 245
    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 244
    invoke-static {p1, p2, v1, v1}, Lcom/facebook/GraphRequest;->newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object p1

    .line 247
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->getParameters()Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_2a

    .line 249
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_2a
    const-string v0, "tree"

    .line 252
    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "app_version"

    .line 253
    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "platform"

    const-string v0, "android"

    .line 254
    invoke-virtual {p2, p0, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "request_type"

    .line 255
    invoke-virtual {p2, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "app_indexing"

    .line 256
    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_55

    const-string p0, "device_session_id"

    .line 258
    invoke-static {}, Lcom/facebook/appevents/codeless/CodelessManager;->getCurrentDeviceSessionID()Ljava/lang/String;

    move-result-object p3

    .line 257
    invoke-virtual {p2, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_55
    invoke-virtual {p1, p2}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 263
    new-instance p0, Lcom/facebook/appevents/codeless/ViewIndexer$4;

    invoke-direct {p0}, Lcom/facebook/appevents/codeless/ViewIndexer$4;-><init>()V

    invoke-virtual {p1, p0}, Lcom/facebook/GraphRequest;->setCallback(Lcom/facebook/GraphRequest$Callback;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_60} :catch_61

    return-object p1

    :catch_61
    move-exception p0

    .line 271
    const-class p1, Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method private sendToServer(Ljava/lang/String;)V
    .registers 4

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 190
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/appevents/codeless/ViewIndexer$3;

    invoke-direct {v1, p0, p1}, Lcom/facebook/appevents/codeless/ViewIndexer$3;-><init>(Lcom/facebook/appevents/codeless/ViewIndexer;Ljava/lang/String;)V

    .line 191
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p1

    .line 230
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static sendToServerUnityInstance(Ljava/lang/String;)V
    .registers 2

    const-class v0, Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 178
    :cond_9
    :try_start_9
    sget-object v0, Lcom/facebook/appevents/codeless/ViewIndexer;->instance:Lcom/facebook/appevents/codeless/ViewIndexer;

    if-nez v0, :cond_e

    return-void

    .line 181
    :cond_e
    sget-object v0, Lcom/facebook/appevents/codeless/ViewIndexer;->instance:Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-virtual {v0, p0}, Lcom/facebook/appevents/codeless/ViewIndexer;->sendToServerUnity(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 182
    const-class v0, Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public schedule()V
    .registers 4

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 83
    :cond_7
    :try_start_7
    new-instance v0, Lcom/facebook/appevents/codeless/ViewIndexer$1;

    invoke-direct {v0, p0}, Lcom/facebook/appevents/codeless/ViewIndexer$1;-><init>(Lcom/facebook/appevents/codeless/ViewIndexer;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_22

    .line 138
    :try_start_c
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/facebook/appevents/codeless/ViewIndexer$2;

    invoke-direct {v2, p0, v0}, Lcom/facebook/appevents/codeless/ViewIndexer$2;-><init>(Lcom/facebook/appevents/codeless/ViewIndexer;Ljava/util/TimerTask;)V

    .line 139
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_18
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_c .. :try_end_18} :catch_19
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_18} :catch_22

    goto :goto_21

    :catch_19
    move-exception v0

    .line 157
    :try_start_1a
    sget-object v1, Lcom/facebook/appevents/codeless/ViewIndexer;->TAG:Ljava/lang/String;

    const-string v2, "Error scheduling indexing job"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_21} :catch_22

    :goto_21
    return-void

    :catch_22
    move-exception v0

    .line 159
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public sendToServerUnity(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 186
    :cond_7
    :try_start_7
    sget-object v0, Lcom/facebook/appevents/codeless/ViewIndexer;->instance:Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-direct {v0, p1}, Lcom/facebook/appevents/codeless/ViewIndexer;->sendToServer(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p1

    .line 187
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public unschedule()V
    .registers 4

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 162
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_12

    return-void

    .line 167
    :cond_12
    iget-object v0, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->indexingTimer:Ljava/util/Timer;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_14} :catch_28

    if-eqz v0, :cond_27

    .line 169
    :try_start_16
    iget-object v0, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->indexingTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->indexingTimer:Ljava/util/Timer;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1e} :catch_1f
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_1e} :catch_28

    goto :goto_27

    :catch_1f
    move-exception v0

    .line 172
    :try_start_20
    sget-object v1, Lcom/facebook/appevents/codeless/ViewIndexer;->TAG:Ljava/lang/String;

    const-string v2, "Error unscheduling indexing job"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_27} :catch_28

    :cond_27
    :goto_27
    return-void

    :catch_28
    move-exception v0

    .line 175
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
