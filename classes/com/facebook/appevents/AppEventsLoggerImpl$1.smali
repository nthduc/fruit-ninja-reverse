.class final Lcom/facebook/appevents/AppEventsLoggerImpl$1;
.super Ljava/lang/Object;
.source "AppEventsLoggerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/AppEventsLoggerImpl;->initializeLib(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$logger:Lcom/facebook/appevents/AppEventsLoggerImpl;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLoggerImpl;)V
    .registers 3

    .line 124
    iput-object p1, p0, Lcom/facebook/appevents/AppEventsLoggerImpl$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/appevents/AppEventsLoggerImpl$1;->val$logger:Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    const-string v0, "kitsBitmask"

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    .line 127
    :cond_9
    :try_start_9
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "com.facebook.core.Core"

    const-string v3, "com.facebook.login.Login"

    const-string v4, "com.facebook.share.Share"

    const-string v5, "com.facebook.places.Places"

    const-string v6, "com.facebook.messenger.Messenger"

    const-string v7, "com.facebook.applinks.AppLinks"

    const-string v8, "com.facebook.marketing.Marketing"

    const-string v9, "com.facebook.gamingservices.GamingServices"

    const-string v10, "com.facebook.all.All"

    const-string v11, "com.android.billingclient.api.BillingClient"

    const-string v12, "com.android.vending.billing.IInAppBillingService"

    .line 129
    filled-new-array/range {v2 .. v12}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "core_lib_included"

    const-string v4, "login_lib_included"

    const-string v5, "share_lib_included"

    const-string v6, "places_lib_included"

    const-string v7, "messenger_lib_included"

    const-string v8, "applinks_lib_included"

    const-string v9, "marketing_lib_included"

    const-string v10, "gamingservices_lib_included"

    const-string v11, "all_lib_included"

    const-string v12, "billing_client_lib_included"

    const-string v13, "billing_service_lib_included"

    .line 144
    filled-new-array/range {v3 .. v13}, [Ljava/lang/String;

    move-result-object v3

    .line 160
    array-length v4, v2

    array-length v5, v3

    if-ne v4, v5, :cond_7e

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 166
    :goto_49
    array-length v7, v2

    if-ge v5, v7, :cond_5c

    .line 167
    aget-object v7, v2, v5

    .line 168
    aget-object v8, v3, v5
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_50} :catch_86

    .line 171
    :try_start_50
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v7, 0x1

    .line 172
    invoke-virtual {v1, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_57
    .catch Ljava/lang/ClassNotFoundException; {:try_start_50 .. :try_end_57} :catch_59
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_57} :catch_86

    shl-int/2addr v7, v5

    or-int/2addr v6, v7

    :catch_59
    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    .line 179
    :cond_5c
    :try_start_5c
    iget-object v2, p0, Lcom/facebook/appevents/AppEventsLoggerImpl$1;->val$context:Landroid/content/Context;

    const-string v3, "com.facebook.sdk.appEventPreferences"

    .line 180
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 181
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v6, :cond_7d

    .line 183
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 184
    iget-object v0, p0, Lcom/facebook/appevents/AppEventsLoggerImpl$1;->val$logger:Lcom/facebook/appevents/AppEventsLoggerImpl;

    const-string v2, "fb_sdk_initialize"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logEventImplicitly(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    :cond_7d
    return-void

    .line 161
    :cond_7e
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Number of class names and key names should match"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_86} :catch_86

    :catch_86
    move-exception v0

    .line 186
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method