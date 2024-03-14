.class public final Lcom/facebook/appevents/aam/MetadataIndexer;
.super Ljava/lang/Object;
.source "MetadataIndexer.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.facebook.appevents.aam.MetadataIndexer"

.field private static enabled:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 38
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/aam/MetadataIndexer;->enabled:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .registers 2

    const-class v0, Lcom/facebook/appevents/aam/MetadataIndexer;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 36
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/facebook/appevents/aam/MetadataIndexer;->updateRules()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    const-class v1, Lcom/facebook/appevents/aam/MetadataIndexer;

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$102(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 3

    const-class v0, Lcom/facebook/appevents/aam/MetadataIndexer;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 36
    :cond_a
    :try_start_a
    sput-object p0, Lcom/facebook/appevents/aam/MetadataIndexer;->enabled:Ljava/lang/Boolean;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    const-class v0, Lcom/facebook/appevents/aam/MetadataIndexer;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static enable()V
    .registers 2

    const-class v0, Lcom/facebook/appevents/aam/MetadataIndexer;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 68
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/appevents/aam/MetadataIndexer$1;

    invoke-direct {v1}, Lcom/facebook/appevents/aam/MetadataIndexer$1;-><init>()V

    .line 69
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_15} :catch_18
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_15} :catch_16

    goto :goto_1e

    :catch_16
    move-exception v0

    goto :goto_1f

    :catch_18
    move-exception v0

    .line 81
    :try_start_19
    sget-object v1, Lcom/facebook/appevents/aam/MetadataIndexer;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_1e} :catch_16

    :goto_1e
    return-void

    .line 83
    :goto_1f
    const-class v1, Lcom/facebook/appevents/aam/MetadataIndexer;

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static onActivityResumed(Landroid/app/Activity;)V
    .registers 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const-class v0, Lcom/facebook/appevents/aam/MetadataIndexer;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 43
    :cond_9
    :try_start_9
    sget-object v0, Lcom/facebook/appevents/aam/MetadataIndexer;->enabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/facebook/appevents/aam/MetadataRule;->getRules()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_20

    .line 47
    :cond_1c
    invoke-static {p0}, Lcom/facebook/appevents/aam/MetadataViewObserver;->startTrackingActivity(Landroid/app/Activity;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1f} :catch_27
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_1f} :catch_21

    goto :goto_27

    :cond_20
    :goto_20
    return-void

    :catch_21
    move-exception p0

    .line 50
    const-class v0, Lcom/facebook/appevents/aam/MetadataIndexer;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :catch_27
    :goto_27
    return-void
.end method

.method private static updateRules()V
    .registers 2

    const-class v0, Lcom/facebook/appevents/aam/MetadataIndexer;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 54
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/internal/FetchedAppSettingsManager;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v0

    if-nez v0, :cond_15

    return-void

    .line 59
    :cond_15
    invoke-virtual {v0}, Lcom/facebook/internal/FetchedAppSettings;->getRawAamRules()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    return-void

    .line 63
    :cond_1c
    invoke-static {v0}, Lcom/facebook/appevents/aam/MetadataRule;->updateRules(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception v0

    .line 64
    const-class v1, Lcom/facebook/appevents/aam/MetadataIndexer;

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
