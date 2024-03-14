.class public Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;
.super Ljava/lang/Object;
.source "InAppPurchaseActivityLifecycleTracker.java"


# static fields
.field private static final BILLING_ACTIVITY_NAME:Ljava/lang/String; = "com.android.billingclient.api.ProxyBillingActivity"

.field private static final SERVICE_INTERFACE_NAME:Ljava/lang/String; = "com.android.vending.billing.IInAppBillingService$Stub"

.field private static final TAG:Ljava/lang/String; = "com.facebook.appevents.internal.InAppPurchaseActivityLifecycleTracker"

.field private static callbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private static hasBiillingActivity:Ljava/lang/Boolean;

.field private static hasBillingService:Ljava/lang/Boolean;

.field private static inAppBillingObj:Ljava/lang/Object;

.field private static intent:Landroid/content/Intent;

.field private static final isTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->isTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 51
    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->hasBillingService:Ljava/lang/Boolean;

    .line 52
    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->hasBiillingActivity:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    .line 40
    sget-object v0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->inAppBillingObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1

    .line 40
    sput-object p0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->inAppBillingObj:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .registers 3

    .line 40
    invoke-static {p0, p1, p2}, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->logPurchase(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/Boolean;
    .registers 1

    .line 40
    sget-object v0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->hasBiillingActivity:Ljava/lang/Boolean;

    return-object v0
.end method

.method private static initializeIfNotInitialized()V
    .registers 3

    .line 69
    sget-object v0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->hasBillingService:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    :try_start_6
    const-string v1, "com.android.vending.billing.IInAppBillingService$Stub"

    .line 74
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v1, 0x1

    .line 75
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->hasBillingService:Ljava/lang/Boolean;
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_12} :catch_45

    :try_start_12
    const-string v2, "com.android.billingclient.api.ProxyBillingActivity"

    .line 82
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 83
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->hasBiillingActivity:Ljava/lang/Boolean;
    :try_end_1d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_1d} :catch_1e

    goto :goto_24

    .line 85
    :catch_1e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->hasBiillingActivity:Ljava/lang/Boolean;

    .line 88
    :goto_24
    invoke-static {}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->clearSkuDetailsCache()V

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.example.iaphack"

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->intent:Landroid/content/Intent;

    .line 94
    new-instance v0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$1;

    invoke-direct {v0}, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$1;-><init>()V

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->serviceConnection:Landroid/content/ServiceConnection;

    .line 107
    new-instance v0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$2;

    invoke-direct {v0}, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$2;-><init>()V

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->callbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void

    .line 77
    :catch_45
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->hasBillingService:Ljava/lang/Boolean;

    return-void
.end method

.method private static logPurchase(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 191
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 195
    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 196
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 197
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 199
    :try_start_21
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "productId"

    .line 200
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 201
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_32} :catch_33

    goto :goto_15

    :catch_33
    move-exception v2

    .line 205
    sget-object v3, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->TAG:Ljava/lang/String;

    const-string v4, "Error parsing in-app purchase data."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 209
    :cond_3c
    sget-object p1, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->inAppBillingObj:Ljava/lang/Object;

    .line 210
    invoke-static {p0, v1, p1, p2}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getSkuDetails(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/Map;

    move-result-object p0

    .line 212
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 214
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 213
    invoke-static {v1, p1, p2}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->logPurchase(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4a

    :cond_6a
    return-void
.end method

.method private static startTracking()V
    .registers 4

    .line 178
    sget-object v0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->isTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 181
    :cond_b
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 182
    instance-of v2, v0, Landroid/app/Application;

    if-eqz v2, :cond_22

    .line 183
    move-object v2, v0

    check-cast v2, Landroid/app/Application;

    .line 184
    sget-object v3, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->callbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v2, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 185
    sget-object v2, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->intent:Landroid/content/Intent;

    sget-object v3, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_22
    return-void
.end method

.method public static update()V
    .registers 1

    .line 59
    invoke-static {}, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->initializeIfNotInitialized()V

    .line 60
    sget-object v0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->hasBillingService:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 63
    :cond_c
    invoke-static {}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->isImplicitPurchaseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 64
    invoke-static {}, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->startTracking()V

    :cond_15
    return-void
.end method
