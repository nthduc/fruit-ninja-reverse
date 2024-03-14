.class Lcom/facebook/appevents/FacebookSDKJSInterface;
.super Ljava/lang/Object;
.source "FacebookSDKJSInterface.java"


# static fields
.field private static final PARAMETER_FBSDK_PIXEL_REFERRAL:Ljava/lang/String; = "_fb_pixel_referral_id"

.field private static final PROTOCOL:Ljava/lang/String; = "fbmq-0.1"

.field public static final TAG:Ljava/lang/String; = "FacebookSDKJSInterface"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/facebook/appevents/FacebookSDKJSInterface;->context:Landroid/content/Context;

    return-void
.end method

.method private static jsonStringToBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3

    const-class v0, Lcom/facebook/appevents/FacebookSDKJSInterface;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 57
    :cond_a
    :try_start_a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-static {v0}, Lcom/facebook/appevents/FacebookSDKJSInterface;->jsonToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_13} :catch_16
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    goto :goto_1c

    .line 62
    :catch_16
    :try_start_16
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_1b} :catch_14

    return-object p0

    :goto_1c
    const-class v0, Lcom/facebook/appevents/FacebookSDKJSInterface;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method private static jsonToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-class v0, Lcom/facebook/appevents/FacebookSDKJSInterface;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 45
    :cond_a
    :try_start_a
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 47
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 48
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 49
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 50
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_26} :catch_28

    goto :goto_13

    :cond_27
    return-object v0

    :catch_28
    move-exception p0

    .line 52
    const-class v0, Lcom/facebook/appevents/FacebookSDKJSInterface;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public getProtocol()Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    const-string v0, "fbmq-0.1"
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    .line 84
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-nez p1, :cond_13

    .line 68
    :try_start_9
    sget-object p1, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    sget-object p2, Lcom/facebook/appevents/FacebookSDKJSInterface;->TAG:Ljava/lang/String;

    const-string p3, "Can\'t bridge an event without a referral Pixel ID. Check your webview Pixel configuration"

    invoke-static {p1, p2, p3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 75
    :cond_13
    new-instance v0, Lcom/facebook/appevents/InternalAppEventsLogger;

    iget-object v1, p0, Lcom/facebook/appevents/FacebookSDKJSInterface;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/appevents/InternalAppEventsLogger;-><init>(Landroid/content/Context;)V

    .line 77
    invoke-static {p3}, Lcom/facebook/appevents/FacebookSDKJSInterface;->jsonStringToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p3

    const-string v1, "_fb_pixel_referral_id"

    .line 78
    invoke-virtual {p3, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0, p2, p3}, Lcom/facebook/appevents/InternalAppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_26} :catch_27

    return-void

    :catch_27
    move-exception p1

    .line 80
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
