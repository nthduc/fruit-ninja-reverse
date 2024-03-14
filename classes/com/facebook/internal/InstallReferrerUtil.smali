.class public Lcom/facebook/internal/InstallReferrerUtil;
.super Ljava/lang/Object;
.source "InstallReferrerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/InstallReferrerUtil$Callback;
    }
.end annotation


# static fields
.field private static final IS_REFERRER_UPDATED:Ljava/lang/String; = "is_referrer_updated"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .registers 2

    const-class v0, Lcom/facebook/internal/InstallReferrerUtil;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 35
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/facebook/internal/InstallReferrerUtil;->updateReferrer()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    const-class v1, Lcom/facebook/internal/InstallReferrerUtil;

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static isUpdated()Z
    .registers 3

    const-class v0, Lcom/facebook/internal/InstallReferrerUtil;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 100
    :cond_a
    :try_start_a
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.facebook.sdk.appEventPreferences"

    .line 101
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "is_referrer_updated"

    .line 102
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_1a} :catch_1b

    return v0

    :catch_1b
    move-exception v0

    const-class v2, Lcom/facebook/internal/InstallReferrerUtil;

    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method private static tryConnectReferrerInfo(Lcom/facebook/internal/InstallReferrerUtil$Callback;)V
    .registers 3

    const-class v0, Lcom/facebook/internal/InstallReferrerUtil;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 49
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->newBuilder(Landroid/content/Context;)Lcom/android/installreferrer/api/InstallReferrerClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient$Builder;->build()Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/facebook/internal/InstallReferrerUtil$1;

    invoke-direct {v1, v0, p0}, Lcom/facebook/internal/InstallReferrerUtil$1;-><init>(Lcom/android/installreferrer/api/InstallReferrerClient;Lcom/facebook/internal/InstallReferrerUtil$Callback;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_1a} :catch_1e

    .line 85
    :try_start_1a
    invoke-virtual {v0, v1}, Lcom/android/installreferrer/api/InstallReferrerClient;->startConnection(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_1d
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1d} :catch_1e

    :catch_1d
    return-void

    :catch_1e
    move-exception p0

    .line 89
    const-class v0, Lcom/facebook/internal/InstallReferrerUtil;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static tryUpdateReferrerInfo(Lcom/facebook/internal/InstallReferrerUtil$Callback;)V
    .registers 2

    const-class v0, Lcom/facebook/internal/InstallReferrerUtil;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 42
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/facebook/internal/InstallReferrerUtil;->isUpdated()Z

    move-result v0

    if-nez v0, :cond_12

    .line 43
    invoke-static {p0}, Lcom/facebook/internal/InstallReferrerUtil;->tryConnectReferrerInfo(Lcom/facebook/internal/InstallReferrerUtil$Callback;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_12} :catch_13

    :cond_12
    return-void

    :catch_13
    move-exception p0

    .line 45
    const-class v0, Lcom/facebook/internal/InstallReferrerUtil;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static updateReferrer()V
    .registers 3

    const-class v0, Lcom/facebook/internal/InstallReferrerUtil;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 93
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.facebook.sdk.appEventPreferences"

    const/4 v2, 0x0

    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_referrer_updated"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception v0

    .line 96
    const-class v1, Lcom/facebook/internal/InstallReferrerUtil;

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
