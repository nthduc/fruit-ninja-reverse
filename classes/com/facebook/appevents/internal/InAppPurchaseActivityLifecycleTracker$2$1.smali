.class Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$2$1;
.super Ljava/lang/Object;
.source "InAppPurchaseActivityLifecycleTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$2;->onActivityResumed(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$2;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$2;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$2$1;->this$0:Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 117
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 119
    # getter for: Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->inAppBillingObj:Ljava/lang/Object;
    invoke-static {}, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->access$000()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getPurchasesInapp(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .line 120
    # invokes: Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->logPurchase(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    invoke-static {v0, v1, v2}, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->access$100(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 123
    # getter for: Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->inAppBillingObj:Ljava/lang/Object;
    invoke-static {}, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->access$000()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getPurchasesSubs(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    .line 124
    # invokes: Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->logPurchase(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    invoke-static {v0, v1, v2}, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->access$100(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_23} :catch_24

    return-void

    :catch_24
    move-exception v0

    .line 125
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
