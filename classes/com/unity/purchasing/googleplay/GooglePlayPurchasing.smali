.class public Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;
.super Lcom/unity/purchasing/common/StoreDeserializer;
.source "GooglePlayPurchasing.java"

# interfaces
.implements Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$Features;,
        Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;
    }
.end annotation


# static fields
.field public static final ACTIVITY_REQUEST_CODE:I = 0x3e7

.field public static final CONSUMPTIONMANAGER_POLL_FAST_MS:J = 0x1f4L

.field public static final PURCHASEFAILURERECONCILER_POLL_FAST_MS:J = 0x1f4L

.field public static final SILENT_CONSUME:Z = false

.field protected static final TAG:Ljava/lang/String; = "UnityIAP"

.field private static instance:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing; = null

.field private static final isDaydreamApiAvailable:Z

.field public static logInfoDebugEnabled:Z = true


# instance fields
.field public PurchaseListener:Lcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;

.field public aPurchaseActivity:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public aVRPurchaseActivity:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public activityPending:Z

.field private aggressivelyRecoverLostPurchases:Z

.field protected consumptionManager:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;

.field private context:Landroid/content/Context;

.field protected failedPurchaseReconciler:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

.field features:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$Features;

.field private helper:Lcom/unity/purchasing/googleplay/IabHelper;

.field private inventory:Lcom/unity/purchasing/googleplay/Inventory;

.field private isUnityVrEnabled:Z

.field private launcher:Lcom/unity/purchasing/googleplay/IActivityLauncher;

.field private manager:Lcom/unity/purchasing/googleplay/IBillingServiceManager;

.field private offlineBackOffTime:I

.field private persistentDataPath:Ljava/lang/String;

.field public productJSON:Ljava/lang/String;

.field private productUnderPurchase:Lcom/unity/purchasing/common/ProductDefinition;

.field private volatile purchaseInProgress:Z

.field private purchasesUpdatedReceiver:Landroid/content/BroadcastReceiver;

.field private volatile subscriptionUpdateInProgress:Z

.field private suspectFailedConsumableSkus:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private timekeeper:Lcom/unity/purchasing/googleplay/ITimekeeper;

.field private unityPurchasing:Lcom/unity/purchasing/common/IStoreCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    :try_start_0
    const-string v0, "com.google.vr.ndk.base.DaydreamApi"

    .line 253
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    goto :goto_8

    :catch_7
    const/4 v0, 0x0

    .line 257
    :goto_8
    sput-boolean v0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->isDaydreamApiAvailable:Z

    return-void
.end method

.method public constructor <init>(Lcom/unity/purchasing/common/IStoreCallback;Lcom/unity/purchasing/googleplay/IabHelper;Lcom/unity/purchasing/googleplay/IBillingServiceManager;Landroid/content/Context;Lcom/unity/purchasing/googleplay/IActivityLauncher;Ljava/lang/Class;Ljava/lang/Class;Lcom/unity/purchasing/googleplay/ITimekeeper;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity/purchasing/common/IStoreCallback;",
            "Lcom/unity/purchasing/googleplay/IabHelper;",
            "Lcom/unity/purchasing/googleplay/IBillingServiceManager;",
            "Landroid/content/Context;",
            "Lcom/unity/purchasing/googleplay/IActivityLauncher;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Lcom/unity/purchasing/googleplay/ITimekeeper;",
            ")V"
        }
    .end annotation

    .line 321
    invoke-direct {p0}, Lcom/unity/purchasing/common/StoreDeserializer;-><init>()V

    const-string v0, "unityiap.googleplaypurchasing"

    .line 53
    iput-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->persistentDataPath:Ljava/lang/String;

    .line 230
    new-instance v0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;

    invoke-direct {v0, p0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;-><init>(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)V

    iput-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->consumptionManager:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;

    .line 232
    new-instance v0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    invoke-direct {v0, p0}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;-><init>(Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;)V

    iput-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->failedPurchaseReconciler:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    .line 243
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->suspectFailedConsumableSkus:Ljava/util/HashSet;

    .line 246
    const-class v0, Lcom/unity/purchasing/googleplay/VRPurchaseActivity;

    iput-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->aVRPurchaseActivity:Ljava/lang/Class;

    .line 247
    const-class v0, Lcom/unity/purchasing/googleplay/PurchaseActivity;

    iput-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->aPurchaseActivity:Ljava/lang/Class;

    .line 265
    new-instance v0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$Features;

    invoke-direct {v0, p0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$Features;-><init>(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)V

    iput-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->features:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$Features;

    .line 565
    new-instance v0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$3;

    invoke-direct {v0, p0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$3;-><init>(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)V

    iput-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->PurchaseListener:Lcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v0, 0x0

    .line 843
    iput-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->purchasesUpdatedReceiver:Landroid/content/BroadcastReceiver;

    const/16 v1, 0x1388

    .line 857
    iput v1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->offlineBackOffTime:I

    const/4 v1, 0x0

    .line 944
    iput-boolean v1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->purchaseInProgress:Z

    .line 945
    iput-boolean v1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->subscriptionUpdateInProgress:Z

    .line 322
    iput-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->unityPurchasing:Lcom/unity/purchasing/common/IStoreCallback;

    .line 323
    iput-object p2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->helper:Lcom/unity/purchasing/googleplay/IabHelper;

    .line 324
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->helper:Lcom/unity/purchasing/googleplay/IabHelper;

    sget-boolean p2, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->isDaydreamApiAvailable:Z

    invoke-virtual {p1, p2}, Lcom/unity/purchasing/googleplay/IabHelper;->enableDaydreamApi(Z)V

    .line 325
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->helper:Lcom/unity/purchasing/googleplay/IabHelper;

    sget-boolean p2, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logInfoDebugEnabled:Z

    invoke-virtual {p1, p2}, Lcom/unity/purchasing/googleplay/IabHelper;->enableDebugLogging(Z)V

    .line 326
    iput-object p3, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->manager:Lcom/unity/purchasing/googleplay/IBillingServiceManager;

    .line 327
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->manager:Lcom/unity/purchasing/googleplay/IBillingServiceManager;

    sget-boolean p2, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logInfoDebugEnabled:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-interface {p1, p2}, Lcom/unity/purchasing/googleplay/IBillingServiceManager;->setLogLevel(I)V

    .line 328
    iput-object p4, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->context:Landroid/content/Context;

    .line 329
    iput-object p5, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->launcher:Lcom/unity/purchasing/googleplay/IActivityLauncher;

    .line 330
    iput-object p6, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->aPurchaseActivity:Ljava/lang/Class;

    .line 331
    iput-object p7, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->aVRPurchaseActivity:Ljava/lang/Class;

    .line 332
    iput-object p8, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->timekeeper:Lcom/unity/purchasing/googleplay/ITimekeeper;

    .line 333
    sput-object p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->instance:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    .line 335
    invoke-direct {p0, v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->initPersistentDataPath(Ljava/lang/String;)V

    .line 337
    invoke-direct {p0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->registerPurchasesUpdatedReceiver()V

    return-void
.end method

.method public static ContinuePurchase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 287
    sget-object v0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->instance:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    if-eqz v0, :cond_9

    .line 288
    invoke-virtual {v0, p0, p1, p2}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->StartPurchase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static ContinueSubscriptionUpdate(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 296
    sget-object v0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->instance:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    if-eqz v0, :cond_9

    .line 297
    invoke-virtual {v0, p0, p1, p2}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->StartSubscriptionUpdate(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static ProcessActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 304
    sget-object v0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->instance:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    if-eqz v0, :cond_7

    .line 305
    invoke-virtual {v0, p0, p1, p2}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->onActivityResult(IILandroid/content/Intent;)V

    :cond_7
    return-void
.end method

.method private QueryInventory(Ljava/util/List;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 866
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QueryInventory: %s"

    invoke-static {v1, v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    new-instance v5, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$5;

    invoke-direct {v5, p0, p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$5;-><init>(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;Ljava/util/List;)V

    .line 894
    iget-object v2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->helper:Lcom/unity/purchasing/googleplay/IabHelper;

    const/4 v3, 0x1

    move-object v4, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/unity/purchasing/googleplay/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/unity/purchasing/googleplay/IabHelper$QueryInventoryFinishedListener;J)V

    return-void
.end method

.method static synthetic access$000(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)Lcom/unity/purchasing/googleplay/ITimekeeper;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->timekeeper:Lcom/unity/purchasing/googleplay/ITimekeeper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;Lcom/unity/purchasing/googleplay/Purchase;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->removeFromInventory(Lcom/unity/purchasing/googleplay/Purchase;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)Z
    .registers 1

    .line 33
    iget-boolean p0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->aggressivelyRecoverLostPurchases:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)Lcom/unity/purchasing/common/IStoreCallback;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->unityPurchasing:Lcom/unity/purchasing/common/IStoreCallback;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->pollForNewPurchases()V

    return-void
.end method

.method static synthetic access$1300(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;Ljava/util/List;J)V
    .registers 4

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->QueryInventory(Ljava/util/List;J)V

    return-void
.end method

.method static synthetic access$200(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)Lcom/unity/purchasing/googleplay/Inventory;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->inventory:Lcom/unity/purchasing/googleplay/Inventory;

    return-object p0
.end method

.method static synthetic access$300(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)Lcom/unity/purchasing/googleplay/IabHelper;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->helper:Lcom/unity/purchasing/googleplay/IabHelper;

    return-object p0
.end method

.method static synthetic access$400(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)I
    .registers 1

    .line 33
    iget p0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->offlineBackOffTime:I

    return p0
.end method

.method static synthetic access$402(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;I)I
    .registers 2

    .line 33
    iput p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->offlineBackOffTime:I

    return p1
.end method

.method static synthetic access$500(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;Lcom/unity/purchasing/googleplay/Inventory;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->handleInventoryUpdate(Lcom/unity/purchasing/googleplay/Inventory;)V

    return-void
.end method

.method static synthetic access$600(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)Landroid/content/Context;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)Z
    .registers 1

    .line 33
    iget-boolean p0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->purchaseInProgress:Z

    return p0
.end method

.method static synthetic access$702(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;Z)Z
    .registers 2

    .line 33
    iput-boolean p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->purchaseInProgress:Z

    return p1
.end method

.method static synthetic access$800(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)Lcom/unity/purchasing/common/ProductDefinition;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->productUnderPurchase:Lcom/unity/purchasing/common/ProductDefinition;

    return-object p0
.end method

.method static synthetic access$900(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)Ljava/util/HashSet;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->suspectFailedConsumableSkus:Ljava/util/HashSet;

    return-object p0
.end method

.method private addFreeTrialAndIntroPriceFlagToDeveloperPayload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 686
    iget-object v4, v0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->inventory:Lcom/unity/purchasing/googleplay/Inventory;

    invoke-virtual {v4, v2}, Lcom/unity/purchasing/googleplay/Inventory;->hasDetails(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_18

    iget-object v4, v0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->inventory:Lcom/unity/purchasing/googleplay/Inventory;

    invoke-virtual {v4, v2}, Lcom/unity/purchasing/googleplay/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/unity/purchasing/googleplay/SkuDetails;

    move-result-object v4

    goto :goto_19

    :cond_18
    move-object v4, v5

    .line 688
    :goto_19
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 689
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    const-string v8, "accountId"

    if-nez v1, :cond_2a

    const-string v1, ""

    goto :goto_35

    .line 696
    :cond_2a
    :try_start_2a
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 697
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_33} :catch_34

    goto :goto_35

    :catch_34
    nop

    .line 702
    :goto_35
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v9, 0x0

    invoke-static {v1, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v10, "update_subscription_metadata"

    const-string v11, "is_updated"

    const-string v12, "has_introductory_price_trial"

    const-string v13, "is_free_trial"

    const-string v14, "developerPayload"

    if-nez v4, :cond_61

    .line 706
    :try_start_4a
    invoke-virtual {v6, v14, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 707
    invoke-virtual {v6, v13, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 708
    invoke-virtual {v6, v12, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 709
    invoke-virtual {v6, v11, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 710
    invoke-virtual {v6, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 711
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5c
    .catch Lorg/json/JSONException; {:try_start_4a .. :try_end_5c} :catch_5c

    .line 716
    :catch_5c
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_61
    if-eqz v3, :cond_6e

    const-string v5, "oldSkuMetadata is NOT null"

    .line 723
    invoke-static {v5}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->log(Ljava/lang/String;)V

    .line 725
    invoke-direct {v0, v3, v4}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->getUpdateMetadata(Ljava/lang/String;Lcom/unity/purchasing/googleplay/SkuDetails;)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x1

    goto :goto_74

    :cond_6e
    const-string v3, "oldSkuMetadata is null"

    .line 727
    invoke-static {v3}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->log(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 733
    :goto_74
    invoke-virtual {v4}, Lcom/unity/purchasing/googleplay/SkuDetails;->getType()Ljava/lang/String;

    move-result-object v9

    .line 734
    invoke-virtual {v4}, Lcom/unity/purchasing/googleplay/SkuDetails;->getIntroductoryPricePeriod()Ljava/lang/String;

    move-result-object v16

    .line 735
    invoke-virtual {v4}, Lcom/unity/purchasing/googleplay/SkuDetails;->getFreeTrialPeriod()Ljava/lang/String;

    move-result-object v4

    .line 736
    iget-object v15, v0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->inventory:Lcom/unity/purchasing/googleplay/Inventory;

    invoke-virtual {v15, v2}, Lcom/unity/purchasing/googleplay/Inventory;->hasSubscriptionPurchaseHistory(Ljava/lang/String;)Z

    move-result v2

    .line 740
    iget-object v15, v0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->inventory:Lcom/unity/purchasing/googleplay/Inventory;

    move-object/from16 v17, v7

    const-string v7, "subs"

    invoke-virtual {v15, v7}, Lcom/unity/purchasing/googleplay/Inventory;->getAllSkus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_94
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_bf

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 p2, v7

    .line 742
    iget-object v7, v0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->inventory:Lcom/unity/purchasing/googleplay/Inventory;

    invoke-virtual {v7, v15}, Lcom/unity/purchasing/googleplay/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/unity/purchasing/googleplay/SkuDetails;

    move-result-object v7

    invoke-virtual {v7}, Lcom/unity/purchasing/googleplay/SkuDetails;->getFreeTrialPeriod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_bc

    iget-object v7, v0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->inventory:Lcom/unity/purchasing/googleplay/Inventory;

    invoke-virtual {v7, v15}, Lcom/unity/purchasing/googleplay/Inventory;->hasSubscriptionPurchaseHistory(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_bc

    const/4 v7, 0x1

    goto :goto_c0

    :cond_bc
    move-object/from16 v7, p2

    goto :goto_94

    :cond_bf
    const/4 v7, 0x0

    :goto_c0
    const-string v15, "inapp"

    .line 756
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_d5

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d5

    if-nez v2, :cond_d5

    if-eqz v7, :cond_d3

    goto :goto_d5

    :cond_d3
    const/4 v4, 0x1

    goto :goto_d6

    :cond_d5
    :goto_d5
    const/4 v4, 0x0

    .line 762
    :goto_d6
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e7

    if-eqz v2, :cond_e5

    goto :goto_e7

    :cond_e5
    const/4 v2, 0x1

    goto :goto_e8

    :cond_e7
    :goto_e7
    const/4 v2, 0x0

    .line 767
    :goto_e8
    :try_start_e8
    invoke-virtual {v6, v14, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 768
    invoke-virtual {v6, v13, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 769
    invoke-virtual {v6, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 770
    invoke-virtual {v6, v11, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 771
    invoke-virtual {v6, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v7, v17

    .line 772
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_fc
    .catch Lorg/json/JSONException; {:try_start_e8 .. :try_end_fc} :catch_fc

    .line 777
    :catch_fc
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private encodeReceipt(Lcom/unity/purchasing/googleplay/Purchase;Lcom/unity/purchasing/googleplay/SkuDetails;)Ljava/lang/String;
    .registers 6

    .line 991
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "json"

    .line 993
    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "signature"

    .line 994
    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "skuDetails"

    .line 995
    invoke-virtual {p2}, Lcom/unity/purchasing/googleplay/SkuDetails;->getOriginalJSON()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "isPurchaseHistorySupported"

    .line 996
    iget-object v1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->helper:Lcom/unity/purchasing/googleplay/IabHelper;

    invoke-virtual {v1}, Lcom/unity/purchasing/googleplay/IabHelper;->subscriptionPurchaseHistorySupported()Z

    move-result v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 998
    iget-object p2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->inventory:Lcom/unity/purchasing/googleplay/Inventory;

    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/unity/purchasing/googleplay/Inventory;->hasPurchase(Ljava/lang/String;)Z

    move-result p1

    const-string p2, "isOwned"

    .line 999
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_3a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_3a} :catch_3b

    goto :goto_3f

    :catch_3b
    move-exception p1

    .line 1001
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1004
    :goto_3f
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private findPurchaseByOrderId(Ljava/lang/String;)Lcom/unity/purchasing/googleplay/Purchase;
    .registers 5

    .line 948
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->inventory:Lcom/unity/purchasing/googleplay/Inventory;

    invoke-virtual {v0}, Lcom/unity/purchasing/googleplay/Inventory;->getAllPurchases()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity/purchasing/googleplay/Purchase;

    .line 949
    invoke-virtual {v1}, Lcom/unity/purchasing/googleplay/Purchase;->getOrderIdOrPurchaseToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    return-object v1

    :cond_21
    const-string v0, "No consumable with order %s"

    .line 954
    invoke-static {v0, p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private finishTransactionInternal(Ljava/lang/String;)V
    .registers 5

    .line 1152
    invoke-direct {p0, p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->findPurchaseByOrderId(Ljava/lang/String;)Lcom/unity/purchasing/googleplay/Purchase;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 1154
    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Consuming %s"

    invoke-static {v1, v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->helper:Lcom/unity/purchasing/googleplay/IabHelper;

    new-instance v1, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$8;

    invoke-direct {v1, p0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$8;-><init>(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/unity/purchasing/googleplay/IabHelper;->consumeAsync(Lcom/unity/purchasing/googleplay/Purchase;Lcom/unity/purchasing/googleplay/IabHelper$OnConsumeFinishedListener;Z)V

    :cond_1a
    return-void
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .registers 4

    .line 521
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->persistentDataPath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private getUpdateMetadata(Ljava/lang/String;Lcom/unity/purchasing/googleplay/SkuDetails;)Ljava/lang/String;
    .registers 13

    .line 788
    invoke-virtual {p2}, Lcom/unity/purchasing/googleplay/SkuDetails;->getPriceInMicros()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    .line 793
    :try_start_8
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "productId"

    .line 794
    invoke-virtual {v6, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_13} :catch_2b

    :try_start_13
    const-string v7, "is_free_trial"

    .line 795
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_19} :catch_29

    :try_start_19
    const-string v8, "is_introductory_price_period"

    .line 796
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v8, "remaining_time_in_seconds"

    .line 797
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_25} :catch_27

    double-to-long v8, v8

    goto :goto_32

    :catch_27
    move-exception v6

    goto :goto_2e

    :catch_29
    move-exception v6

    goto :goto_2d

    :catch_2b
    move-exception v6

    move-object p1, v3

    :goto_2d
    const/4 v7, 0x0

    .line 799
    :goto_2e
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    move-wide v8, v4

    :goto_32
    if-eqz p1, :cond_84

    .line 802
    iget-object v6, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->inventory:Lcom/unity/purchasing/googleplay/Inventory;

    invoke-virtual {v6, p1}, Lcom/unity/purchasing/googleplay/Inventory;->hasDetails(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3d

    goto :goto_84

    .line 806
    :cond_3d
    iget-object v3, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->inventory:Lcom/unity/purchasing/googleplay/Inventory;

    invoke-virtual {v3, p1}, Lcom/unity/purchasing/googleplay/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/unity/purchasing/googleplay/SkuDetails;

    move-result-object p1

    if-eqz v7, :cond_46

    move-wide v8, v4

    :cond_46
    if-eqz v2, :cond_59

    .line 815
    invoke-virtual {p2}, Lcom/unity/purchasing/googleplay/SkuDetails;->getPriceInMicros()J

    move-result-wide v2

    cmp-long p2, v2, v4

    if-eqz p2, :cond_59

    .line 816
    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/SkuDetails;->getIntroductoryPriceInMicros()J

    move-result-wide v2

    .line 817
    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/SkuDetails;->getIntroductoryPricePeriod()Ljava/lang/String;

    move-result-object p1

    goto :goto_61

    .line 820
    :cond_59
    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/SkuDetails;->getPriceInMicros()J

    move-result-wide v2

    .line 821
    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/SkuDetails;->getSubscriptionPeriod()Ljava/lang/String;

    move-result-object p1

    .line 824
    :goto_61
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_66
    const-string v4, "old_sku_remaining_seconds"

    .line 826
    invoke-virtual {p2, v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "old_sku_price_in_micros"

    .line 827
    invoke-virtual {p2, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "old_sku_period_string"

    .line 828
    invoke-virtual {p2, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "new_sku_price_in_micros"

    .line 829
    invoke-virtual {p2, p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_7a
    .catch Lorg/json/JSONException; {:try_start_66 .. :try_end_7a} :catch_7b

    goto :goto_7f

    :catch_7b
    move-exception p1

    .line 831
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 834
    :goto_7f
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_84
    :goto_84
    return-object v3
.end method

.method private handleInventoryUpdate(Lcom/unity/purchasing/googleplay/Inventory;)V
    .registers 5

    .line 380
    invoke-direct {p0, p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->initInventory(Lcom/unity/purchasing/googleplay/Inventory;)V

    .line 382
    invoke-virtual {p0, p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->NotifyUnityOfProducts(Lcom/unity/purchasing/googleplay/Inventory;)V

    .line 388
    invoke-direct {p0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 390
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 391
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1b
    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 392
    iget-object v2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->inventory:Lcom/unity/purchasing/googleplay/Inventory;

    invoke-virtual {v2, v1}, Lcom/unity/purchasing/googleplay/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/unity/purchasing/googleplay/SkuDetails;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 393
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_33
    const/4 p1, 0x1

    .line 403
    iget-boolean v1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->aggressivelyRecoverLostPurchases:Z

    if-nez v1, :cond_3e

    const-string p1, "Reducing depth of inventory update failure investigation. aggressivelyRecoverLostPurchases is false."

    .line 404
    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->log(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 408
    :cond_3e
    iget-object v1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->failedPurchaseReconciler:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    invoke-virtual {v1, v0, p1}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->retryReconcileAsyncBatch(Ljava/util/Set;Z)V

    return-void
.end method

.method private initInventory(Lcom/unity/purchasing/googleplay/Inventory;)V
    .registers 3

    .line 412
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->inventory:Lcom/unity/purchasing/googleplay/Inventory;

    .line 413
    iput-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->inventory:Lcom/unity/purchasing/googleplay/Inventory;

    .line 414
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->inventory:Lcom/unity/purchasing/googleplay/Inventory;

    invoke-virtual {p1, v0}, Lcom/unity/purchasing/googleplay/Inventory;->initHistory(Lcom/unity/purchasing/googleplay/Inventory;)V

    return-void
.end method

.method private initPersistentDataPath(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 56
    iput-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->persistentDataPath:Ljava/lang/String;

    goto :goto_1e

    .line 58
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".unityiap.googleplaypurchasing"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->persistentDataPath:Ljava/lang/String;

    :goto_1e
    return-void
.end method

.method public static instance(Lcom/unity/purchasing/common/IUnityCallback;)Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;
    .registers 11

    .line 270
    sget-object v0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->instance:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    if-nez v0, :cond_34

    .line 271
    new-instance v4, Lcom/unity/purchasing/googleplay/BillingServiceManager;

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-direct {v4, v0}, Lcom/unity/purchasing/googleplay/BillingServiceManager;-><init>(Landroid/content/Context;)V

    .line 278
    new-instance v0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    new-instance v2, Lcom/unity/purchasing/common/UnityPurchasing;

    invoke-direct {v2, p0}, Lcom/unity/purchasing/common/UnityPurchasing;-><init>(Lcom/unity/purchasing/common/IUnityCallback;)V

    new-instance v3, Lcom/unity/purchasing/googleplay/IabHelper;

    sget-object p0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/unity/purchasing/googleplay/ActivityLauncher;

    invoke-direct {v1}, Lcom/unity/purchasing/googleplay/ActivityLauncher;-><init>()V

    invoke-direct {v3, p0, v4, v1}, Lcom/unity/purchasing/googleplay/IabHelper;-><init>(Landroid/content/Context;Lcom/unity/purchasing/googleplay/IBillingServiceManager;Lcom/unity/purchasing/googleplay/IActivityLauncher;)V

    sget-object v5, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v6, Lcom/unity/purchasing/googleplay/ActivityLauncher;

    invoke-direct {v6}, Lcom/unity/purchasing/googleplay/ActivityLauncher;-><init>()V

    const-class v7, Lcom/unity/purchasing/googleplay/PurchaseActivity;

    const-class v8, Lcom/unity/purchasing/googleplay/VRPurchaseActivity;

    new-instance v9, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$1ThreadTimekeeper;

    invoke-direct {v9}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$1ThreadTimekeeper;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;-><init>(Lcom/unity/purchasing/common/IStoreCallback;Lcom/unity/purchasing/googleplay/IabHelper;Lcom/unity/purchasing/googleplay/IBillingServiceManager;Landroid/content/Context;Lcom/unity/purchasing/googleplay/IActivityLauncher;Ljava/lang/Class;Ljava/lang/Class;Lcom/unity/purchasing/googleplay/ITimekeeper;)V

    sput-object v0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->instance:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    .line 283
    :cond_34
    sget-object p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->instance:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    return-object p0
.end method

.method protected static log(Ljava/lang/String;)V
    .registers 2

    .line 1016
    sget-boolean v0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logInfoDebugEnabled:Z

    if-eqz v0, :cond_9

    const-string v0, "UnityIAP"

    .line 1017
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method protected static log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1022
    sget-boolean v0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logInfoDebugEnabled:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    .line 1023
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->log(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method protected static logDebug(Ljava/lang/String;)V
    .registers 2

    .line 1028
    sget-boolean v0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logInfoDebugEnabled:Z

    if-eqz v0, :cond_9

    const-string v0, "UnityIAP"

    .line 1029
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method protected static logDebug(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1034
    sget-boolean v0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logInfoDebugEnabled:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    .line 1035
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logDebug(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method protected static logError(Ljava/lang/String;)V
    .registers 2

    const-string v0, "UnityIAP"

    .line 1008
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected static logError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    .line 1012
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logError(Ljava/lang/String;)V

    return-void
.end method

.method private pollForNewPurchases()V
    .registers 4

    .line 839
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->failedPurchaseReconciler:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->retryReconcileAsync(Lcom/unity/purchasing/common/PurchaseFailureDescription;Z)V

    return-void
.end method

.method private registerPurchasesUpdatedReceiver()V
    .registers 5

    .line 846
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->purchasesUpdatedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_19

    .line 847
    new-instance v0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$4;

    invoke-direct {v0, p0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$4;-><init>(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)V

    iput-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->purchasesUpdatedReceiver:Landroid/content/BroadcastReceiver;

    .line 853
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->purchasesUpdatedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.vending.billing.PURCHASES_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_19
    return-void
.end method

.method private removeFromInventory(Lcom/unity/purchasing/googleplay/Purchase;)V
    .registers 3

    .line 1201
    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object p1

    .line 1203
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->inventory:Lcom/unity/purchasing/googleplay/Inventory;

    invoke-virtual {v0, p1}, Lcom/unity/purchasing/googleplay/Inventory;->erasePurchase(Ljava/lang/String;)V

    return-void
.end method

.method private trackPurchase(Ljava/lang/String;Lcom/unity/purchasing/common/ProductType;)V
    .registers 5

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trackPurchase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logDebug(Ljava/lang/String;)V

    .line 535
    invoke-direct {p0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 536
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 538
    invoke-virtual {p2}, Lcom/unity/purchasing/common/ProductType;->name()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 540
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public FinishAdditionalTransaction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const-string p1, "Finish additional transaction:%s"

    .line 1207
    invoke-static {p1, p2}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    invoke-direct {p0, p2}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->finishTransactionInternal(Ljava/lang/String;)V

    return-void
.end method

.method public FinishTransaction(Lcom/unity/purchasing/common/ProductDefinition;Ljava/lang/String;)V
    .registers 4

    const-string v0, "Finish transaction:%s"

    .line 1133
    invoke-static {v0, p2}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_d

    const-string p1, "Received FinishTransaction for unknown product with transaction %s. Not consuming."

    .line 1136
    invoke-static {p1, p2}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1146
    :cond_d
    iget-object p1, p1, Lcom/unity/purchasing/common/ProductDefinition;->type:Lcom/unity/purchasing/common/ProductType;

    sget-object v0, Lcom/unity/purchasing/common/ProductType;->Consumable:Lcom/unity/purchasing/common/ProductType;

    if-ne p1, v0, :cond_16

    .line 1147
    invoke-direct {p0, p2}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->finishTransactionInternal(Ljava/lang/String;)V

    :cond_16
    return-void
.end method

.method public NotifyUnityOfProducts(Lcom/unity/purchasing/googleplay/Inventory;)V
    .registers 16

    .line 899
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 900
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 901
    iget-object v2, p1, Lcom/unity/purchasing/googleplay/Inventory;->mSkuMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 903
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/unity/purchasing/googleplay/SkuDetails;

    .line 906
    :try_start_26
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/unity/purchasing/googleplay/SkuDetails;->getOriginalJSON()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_33} :catch_34

    goto :goto_38

    :catch_34
    move-exception v5

    .line 908
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 912
    :goto_38
    new-instance v5, Ljava/math/BigDecimal;

    invoke-virtual {v4}, Lcom/unity/purchasing/googleplay/SkuDetails;->getPriceInMicros()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/math/BigDecimal;-><init>(J)V

    new-instance v6, Ljava/math/BigDecimal;

    const v7, 0xf4240

    invoke-direct {v6, v7}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v13

    .line 913
    new-instance v5, Lcom/unity/purchasing/common/ProductMetadata;

    invoke-virtual {v4}, Lcom/unity/purchasing/googleplay/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v9

    .line 914
    invoke-virtual {v4}, Lcom/unity/purchasing/googleplay/SkuDetails;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lcom/unity/purchasing/googleplay/SkuDetails;->getDescription()Ljava/lang/String;

    move-result-object v11

    .line 915
    invoke-virtual {v4}, Lcom/unity/purchasing/googleplay/SkuDetails;->getISOCurrencyCode()Ljava/lang/String;

    move-result-object v12

    move-object v8, v5

    invoke-direct/range {v8 .. v13}, Lcom/unity/purchasing/common/ProductMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;)V

    .line 919
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 920
    invoke-virtual {p1, v3}, Lcom/unity/purchasing/googleplay/Inventory;->hasPurchase(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_81

    .line 921
    invoke-virtual {p1, v3}, Lcom/unity/purchasing/googleplay/Inventory;->getPurchase(Ljava/lang/String;)Lcom/unity/purchasing/googleplay/Purchase;

    move-result-object v4

    .line 922
    invoke-virtual {p1, v3}, Lcom/unity/purchasing/googleplay/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/unity/purchasing/googleplay/SkuDetails;

    move-result-object v6

    .line 923
    invoke-direct {p0, v4, v6}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->encodeReceipt(Lcom/unity/purchasing/googleplay/Purchase;Lcom/unity/purchasing/googleplay/SkuDetails;)Ljava/lang/String;

    move-result-object v6

    .line 924
    invoke-virtual {v4}, Lcom/unity/purchasing/googleplay/Purchase;->getOrderIdOrPurchaseToken()Ljava/lang/String;

    move-result-object v4

    goto :goto_82

    :cond_81
    move-object v4, v6

    .line 927
    :goto_82
    new-instance v7, Lcom/unity/purchasing/common/ProductDescription;

    invoke-direct {v7, v3, v5, v6, v4}, Lcom/unity/purchasing/common/ProductDescription;-><init>(Ljava/lang/String;Lcom/unity/purchasing/common/ProductMetadata;Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 930
    :cond_8b
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->productJSON:Ljava/lang/String;

    .line 932
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->unityPurchasing:Lcom/unity/purchasing/common/IStoreCallback;

    invoke-interface {p1, v0}, Lcom/unity/purchasing/common/IStoreCallback;->OnProductsRetrieved(Ljava/util/List;)V

    return-void
.end method

.method public NotifyUnityOfPurchase(Lcom/unity/purchasing/googleplay/Purchase;Z)V
    .registers 5

    .line 968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotifyUnityOfPurchase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->log(Ljava/lang/String;)V

    .line 971
    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->untrackPurchase(Ljava/lang/String;)V

    if-eqz p2, :cond_3b

    .line 978
    iget-object p2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->inventory:Lcom/unity/purchasing/googleplay/Inventory;

    invoke-virtual {p2, p1}, Lcom/unity/purchasing/googleplay/Inventory;->addPurchase(Lcom/unity/purchasing/googleplay/Purchase;)V

    .line 980
    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/Purchase;->getItemType()Ljava/lang/String;

    move-result-object p2

    const-string v0, "subs"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3b

    .line 981
    iget-object p2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->inventory:Lcom/unity/purchasing/googleplay/Inventory;

    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/unity/purchasing/googleplay/Inventory;->addPurchaseToSubscriptionPurchaseHistory(Ljava/lang/String;)V

    .line 985
    :cond_3b
    iget-object p2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->inventory:Lcom/unity/purchasing/googleplay/Inventory;

    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/unity/purchasing/googleplay/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/unity/purchasing/googleplay/SkuDetails;

    move-result-object p2

    .line 987
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->unityPurchasing:Lcom/unity/purchasing/common/IStoreCallback;

    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->encodeReceipt(Lcom/unity/purchasing/googleplay/Purchase;Lcom/unity/purchasing/googleplay/SkuDetails;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/Purchase;->getOrderIdOrPurchaseToken()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p2, p1}, Lcom/unity/purchasing/common/IStoreCallback;->OnPurchaseSucceeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Purchase(Lcom/unity/purchasing/common/ProductDefinition;)V
    .registers 3

    const/4 v0, 0x0

    .line 1077
    invoke-virtual {p0, p1, v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->Purchase(Lcom/unity/purchasing/common/ProductDefinition;Ljava/lang/String;)V

    return-void
.end method

.method public Purchase(Lcom/unity/purchasing/common/ProductDefinition;Ljava/lang/String;)V
    .registers 8

    .line 1081
    iget-boolean v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->purchaseInProgress:Z

    if-eqz v0, :cond_13

    .line 1082
    new-instance p2, Lcom/unity/purchasing/common/PurchaseFailureDescription;

    iget-object p1, p1, Lcom/unity/purchasing/common/ProductDefinition;->storeSpecificId:Ljava/lang/String;

    sget-object v0, Lcom/unity/purchasing/common/PurchaseFailureReason;->ExistingPurchasePending:Lcom/unity/purchasing/common/PurchaseFailureReason;

    invoke-direct {p2, p1, v0}, Lcom/unity/purchasing/common/PurchaseFailureDescription;-><init>(Ljava/lang/String;Lcom/unity/purchasing/common/PurchaseFailureReason;)V

    .line 1085
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->unityPurchasing:Lcom/unity/purchasing/common/IStoreCallback;

    invoke-interface {p1, p2}, Lcom/unity/purchasing/common/IStoreCallback;->OnPurchaseFailed(Lcom/unity/purchasing/common/PurchaseFailureDescription;)V

    return-void

    .line 1089
    :cond_13
    iget-object v0, p1, Lcom/unity/purchasing/common/ProductDefinition;->storeSpecificId:Ljava/lang/String;

    .line 1090
    iput-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->productUnderPurchase:Lcom/unity/purchasing/common/ProductDefinition;

    const-string p1, "onPurchaseProduct: %s"

    .line 1091
    invoke-static {p1, v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->inventory:Lcom/unity/purchasing/googleplay/Inventory;

    invoke-virtual {p1, v0}, Lcom/unity/purchasing/googleplay/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/unity/purchasing/googleplay/SkuDetails;

    move-result-object p1

    .line 1094
    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/SkuDetails;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ITEM TYPE:%s"

    invoke-static {v2, v1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    iget-object v1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->context:Landroid/content/Context;

    instance-of v1, v1, Lcom/unity3d/player/UnityPlayerActivity;

    const/4 v2, 0x1

    if-eqz v1, :cond_3c

    iget-boolean v1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->isUnityVrEnabled:Z

    if-eqz v1, :cond_3c

    sget-boolean v1, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->isDaydreamApiAvailable:Z

    if-eqz v1, :cond_3c

    const/4 v1, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v1, 0x0

    .line 1098
    :goto_3d
    invoke-virtual {p0, v1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->createPurchaseIntent(Z)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "productId"

    .line 1099
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1100
    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/SkuDetails;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "itemType"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "developerPayload"

    .line 1101
    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1102
    iput-boolean v2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->purchaseInProgress:Z

    .line 1103
    iput-boolean v2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->activityPending:Z

    if-eqz v1, :cond_6e

    .line 1107
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$7;

    invoke-direct {p2, p0, v3}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$7;-><init>(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;Landroid/content/Intent;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_75

    .line 1118
    :cond_6e
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->launcher:Lcom/unity/purchasing/googleplay/IActivityLauncher;

    iget-object p2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->context:Landroid/content/Context;

    invoke-interface {p1, p2, v3}, Lcom/unity/purchasing/googleplay/IActivityLauncher;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_75
    return-void
.end method

.method public RestoreTransactions(Lcom/unity/purchasing/googleplay/IGooglePlayStoreCallback;)V
    .registers 8

    .line 349
    new-instance v3, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$1;

    invoke-direct {v3, p0, p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$1;-><init>(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;Lcom/unity/purchasing/googleplay/IGooglePlayStoreCallback;)V

    .line 367
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->helper:Lcom/unity/purchasing/googleplay/IabHelper;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/unity/purchasing/googleplay/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/unity/purchasing/googleplay/IabHelper$QueryInventoryFinishedListener;J)V

    return-void
.end method

.method public RetrieveProducts(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unity/purchasing/common/ProductDefinition;",
            ">;)V"
        }
    .end annotation

    .line 1040
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1041
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity/purchasing/common/ProductDefinition;

    .line 1042
    iget-object v1, v1, Lcom/unity/purchasing/common/ProductDefinition;->storeSpecificId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1045
    :cond_1b
    new-instance p1, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$6;

    invoke-direct {p1, p0, v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$6;-><init>(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;Ljava/util/List;)V

    .line 1063
    iget-object v1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->helper:Lcom/unity/purchasing/googleplay/IabHelper;

    iget-boolean v1, v1, Lcom/unity/purchasing/googleplay/IabHelper;->mSetupDone:Z

    if-nez v1, :cond_39

    .line 1065
    :try_start_26
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->manager:Lcom/unity/purchasing/googleplay/IBillingServiceManager;

    invoke-interface {v0}, Lcom/unity/purchasing/googleplay/IBillingServiceManager;->initialise()V

    .line 1066
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->helper:Lcom/unity/purchasing/googleplay/IabHelper;

    invoke-virtual {v0, p1}, Lcom/unity/purchasing/googleplay/IabHelper;->startSetup(Lcom/unity/purchasing/googleplay/IabHelper$OnIabSetupFinishedListener;)V
    :try_end_30
    .catch Lcom/unity/purchasing/googleplay/GooglePlayBillingUnAvailableException; {:try_start_26 .. :try_end_30} :catch_31

    goto :goto_4b

    .line 1068
    :catch_31
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->unityPurchasing:Lcom/unity/purchasing/common/IStoreCallback;

    sget-object v0, Lcom/unity/purchasing/common/InitializationFailureReason;->PurchasingUnavailable:Lcom/unity/purchasing/common/InitializationFailureReason;

    invoke-interface {p1, v0}, Lcom/unity/purchasing/common/IStoreCallback;->OnSetupFailed(Lcom/unity/purchasing/common/InitializationFailureReason;)V

    goto :goto_4b

    .line 1071
    :cond_39
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Requesting %s products"

    invoke-static {v1, p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    .line 1072
    invoke-direct {p0, v0, v1, v2}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->QueryInventory(Ljava/util/List;J)V

    :goto_4b
    return-void
.end method

.method public SetAggressivelyRecoverLostPurchases(Z)V
    .registers 2

    .line 1251
    iput-boolean p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->aggressivelyRecoverLostPurchases:Z

    return-void
.end method

.method public SetFeatures(Ljava/lang/String;)V
    .registers 7

    const-string v0, ","

    .line 1237
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1238
    array-length v0, p1

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_33

    aget-object v2, p1, v1

    const-string v3, "supportsPurchaseFailureReasonDuplicateTransaction"

    .line 1239
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1a

    .line 1240
    iget-object v2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->features:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$Features;

    iput-boolean v4, v2, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$Features;->supportsPurchaseFailureReasonDuplicateTransaction:Z

    goto :goto_30

    :cond_1a
    const-string v3, "persistentDataPath"

    .line 1241
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    const-string v3, "="

    .line 1242
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1243
    array-length v3, v2

    if-le v3, v4, :cond_30

    .line 1244
    aget-object v2, v2, v4

    invoke-direct {p0, v2}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->initPersistentDataPath(Ljava/lang/String;)V

    :cond_30
    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_33
    return-void
.end method

.method public SetLogLevel(I)V
    .registers 4

    if-nez p1, :cond_6

    const/4 v0, 0x1

    .line 1220
    sput-boolean v0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logInfoDebugEnabled:Z

    goto :goto_9

    :cond_6
    const/4 v0, 0x0

    .line 1225
    sput-boolean v0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logInfoDebugEnabled:Z

    .line 1228
    :goto_9
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->helper:Lcom/unity/purchasing/googleplay/IabHelper;

    sget-boolean v1, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logInfoDebugEnabled:Z

    invoke-virtual {v0, v1}, Lcom/unity/purchasing/googleplay/IabHelper;->enableDebugLogging(Z)V

    .line 1229
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->manager:Lcom/unity/purchasing/googleplay/IBillingServiceManager;

    invoke-interface {v0, p1}, Lcom/unity/purchasing/googleplay/IBillingServiceManager;->setLogLevel(I)V

    return-void
.end method

.method public SetUnityVrEnabled(Z)V
    .registers 3

    .line 342
    iput-boolean p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->isUnityVrEnabled:Z

    .line 343
    iget-boolean p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->isUnityVrEnabled:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "isUnityVrEnabled = %s"

    invoke-static {v0, p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public StartPurchase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 505
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->helper:Lcom/unity/purchasing/googleplay/IabHelper;

    iget-boolean v1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->isUnityVrEnabled:Z

    invoke-virtual {v0, v1}, Lcom/unity/purchasing/googleplay/IabHelper;->enableUnityVr(Z)V

    const/4 v0, 0x0

    .line 508
    invoke-direct {p0, p3, p2, v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->addFreeTrialAndIntroPriceFlagToDeveloperPayload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 510
    iget-object p3, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->inventory:Lcom/unity/purchasing/googleplay/Inventory;

    invoke-virtual {p3, p2}, Lcom/unity/purchasing/googleplay/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/unity/purchasing/googleplay/SkuDetails;

    move-result-object p3

    iget-object p3, p3, Lcom/unity/purchasing/googleplay/SkuDetails;->mItemType:Ljava/lang/String;

    const-string v0, "inapp"

    if-ne p3, v0, :cond_2b

    .line 512
    iget-object p3, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->productUnderPurchase:Lcom/unity/purchasing/common/ProductDefinition;

    iget-object p3, p3, Lcom/unity/purchasing/common/ProductDefinition;->type:Lcom/unity/purchasing/common/ProductType;

    invoke-direct {p0, p2, p3}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->trackPurchase(Ljava/lang/String;Lcom/unity/purchasing/common/ProductType;)V

    .line 514
    iget-object v1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->helper:Lcom/unity/purchasing/googleplay/IabHelper;

    const/16 v4, 0x3e7

    iget-object v5, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->PurchaseListener:Lcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/unity/purchasing/googleplay/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    goto :goto_36

    .line 516
    :cond_2b
    iget-object v1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->helper:Lcom/unity/purchasing/googleplay/IabHelper;

    const/16 v4, 0x3e7

    iget-object v5, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->PurchaseListener:Lcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/unity/purchasing/googleplay/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    :goto_36
    return-void
.end method

.method public StartSubscriptionUpdate(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    const-string v0, "productId"

    const/4 v1, 0x0

    .line 463
    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_12} :catch_13

    goto :goto_18

    :catch_13
    move-exception v0

    .line 466
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_17
    move-object v0, v1

    :goto_18
    if-nez v0, :cond_20

    const-string p1, "Error: the product that is going to be updated does not have a valid product id"

    .line 469
    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->log(Ljava/lang/String;)V

    return-void

    .line 473
    :cond_20
    iget-object v2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->inventory:Lcom/unity/purchasing/googleplay/Inventory;

    invoke-virtual {v2, v0}, Lcom/unity/purchasing/googleplay/Inventory;->hasDetails(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    const-string p1, "Error: the product that is going to be updated is not in the current inventory"

    .line 474
    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->log(Ljava/lang/String;)V

    return-void

    .line 478
    :cond_2e
    iget-object v2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->inventory:Lcom/unity/purchasing/googleplay/Inventory;

    invoke-virtual {v2, v0}, Lcom/unity/purchasing/googleplay/Inventory;->hasPurchase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3c

    const-string p1, "Error: the product that is going to be updated has not been purchased yet."

    .line 479
    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->log(Ljava/lang/String;)V

    return-void

    .line 483
    :cond_3c
    iget-object v2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->inventory:Lcom/unity/purchasing/googleplay/Inventory;

    invoke-virtual {v2, p3}, Lcom/unity/purchasing/googleplay/Inventory;->hasDetails(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4a

    const-string p1, "Error: the product that is going to be updated to is not in the current inventory"

    .line 484
    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->log(Ljava/lang/String;)V

    return-void

    .line 488
    :cond_4a
    new-instance v2, Lcom/unity/purchasing/common/ProductDefinition;

    sget-object v3, Lcom/unity/purchasing/common/ProductType;->Subscription:Lcom/unity/purchasing/common/ProductType;

    invoke-direct {v2, p3, p3, v3}, Lcom/unity/purchasing/common/ProductDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/unity/purchasing/common/ProductType;)V

    iput-object v2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->productUnderPurchase:Lcom/unity/purchasing/common/ProductDefinition;

    .line 489
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 490
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    invoke-direct {p0, v1, p3, p2}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->addFreeTrialAndIntroPriceFlagToDeveloperPayload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 492
    iget-object v4, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->helper:Lcom/unity/purchasing/googleplay/IabHelper;

    const/16 v8, 0x3e7

    iget-object v9, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->PurchaseListener:Lcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;

    move-object v5, p1

    move-object v6, p3

    invoke-virtual/range {v4 .. v10}, Lcom/unity/purchasing/googleplay/IabHelper;->launchSubscriptionUpdateFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;ILcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    return-void
.end method

.method public UpgradeDowngradeSubscription(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 419
    iget-boolean v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->subscriptionUpdateInProgress:Z

    if-eqz v0, :cond_a

    const-string p1, "Subscription update is in progress"

    .line 420
    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->log(Ljava/lang/String;)V

    return-void

    .line 424
    :cond_a
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->helper:Lcom/unity/purchasing/googleplay/IabHelper;

    invoke-virtual {v0}, Lcom/unity/purchasing/googleplay/IabHelper;->subscriptionUpgradeDowngradeSupported()Z

    move-result v0

    if-nez v0, :cond_18

    const-string p1, "UpgradeDowngradeSubscription is not supported, this service needs v5 and higher android in app billing api"

    .line 425
    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->log(Ljava/lang/String;)V

    return-void

    :cond_18
    if-eqz p1, :cond_74

    .line 428
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_74

    if-eqz p2, :cond_74

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_29

    goto :goto_74

    .line 433
    :cond_29
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->context:Landroid/content/Context;

    instance-of v0, v0, Lcom/unity3d/player/UnityPlayerActivity;

    const/4 v1, 0x1

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->isUnityVrEnabled:Z

    if-eqz v0, :cond_3a

    sget-boolean v0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->isDaydreamApiAvailable:Z

    if-eqz v0, :cond_3a

    const/4 v0, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    .line 435
    :goto_3b
    invoke-virtual {p0, v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->createPurchaseIntent(Z)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "oldSkuMetadata"

    .line 436
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "newSku"

    .line 437
    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "type"

    const-string p2, "subscription_update"

    .line 438
    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    iput-boolean v1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->subscriptionUpdateInProgress:Z

    .line 440
    iput-boolean v1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->purchaseInProgress:Z

    .line 441
    iput-boolean v1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->activityPending:Z

    if-eqz v0, :cond_6c

    .line 445
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$2;

    invoke-direct {p2, p0, v2}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$2;-><init>(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;Landroid/content/Intent;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_73

    .line 456
    :cond_6c
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->launcher:Lcom/unity/purchasing/googleplay/IActivityLauncher;

    iget-object p2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->context:Landroid/content/Context;

    invoke-interface {p1, p2, v2}, Lcom/unity/purchasing/googleplay/IActivityLauncher;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_73
    return-void

    :cond_74
    :goto_74
    const-string p1, "Cannot update subscription. Subscription product identifiers(SKUs) must not be empty"

    .line 429
    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected createPurchaseIntent(Z)Landroid/content/Intent;
    .registers 4

    if-eqz p1, :cond_5

    .line 1124
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->aVRPurchaseActivity:Ljava/lang/Class;

    goto :goto_7

    :cond_5
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->aPurchaseActivity:Ljava/lang/Class;

    .line 1126
    :goto_7
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getHelper()Lcom/unity/purchasing/googleplay/IabHelper;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->helper:Lcom/unity/purchasing/googleplay/IabHelper;

    return-object v0
.end method

.method public getInventory()Lcom/unity/purchasing/googleplay/Inventory;
    .registers 2

    .line 241
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->inventory:Lcom/unity/purchasing/googleplay/Inventory;

    return-object v0
.end method

.method public getManager()Lcom/unity/purchasing/googleplay/IBillingServiceManager;
    .registers 2

    .line 312
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->manager:Lcom/unity/purchasing/googleplay/IBillingServiceManager;

    return-object v0
.end method

.method public getTimekeeper()Lcom/unity/purchasing/googleplay/ITimekeeper;
    .registers 2

    .line 315
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->timekeeper:Lcom/unity/purchasing/googleplay/ITimekeeper;

    return-object v0
.end method

.method protected getUnityPurchasingCallback()Lcom/unity/purchasing/common/IStoreCallback;
    .registers 2

    .line 310
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->unityPurchasing:Lcom/unity/purchasing/common/IStoreCallback;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 936
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->helper:Lcom/unity/purchasing/googleplay/IabHelper;

    if-eqz v0, :cond_13

    const-string v0, "onActivityResult"

    .line 937
    invoke-static {v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->log(Ljava/lang/String;)V

    .line 938
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->helper:Lcom/unity/purchasing/googleplay/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/unity/purchasing/googleplay/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    const/4 p1, 0x0

    .line 939
    iput-boolean p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->purchaseInProgress:Z

    .line 940
    iput-boolean p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->subscriptionUpdateInProgress:Z

    :cond_13
    return-void
.end method

.method protected untrackPurchase(Ljava/lang/String;)V
    .registers 4

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "untrackPurchase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logDebug(Ljava/lang/String;)V

    .line 552
    invoke-direct {p0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 553
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 555
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 557
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
