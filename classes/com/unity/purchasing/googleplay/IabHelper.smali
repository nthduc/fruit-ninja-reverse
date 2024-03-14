.class public Lcom/unity/purchasing/googleplay/IabHelper;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity/purchasing/googleplay/IabHelper$OnConsumeMultiFinishedListener;,
        Lcom/unity/purchasing/googleplay/IabHelper$OnConsumeFinishedListener;,
        Lcom/unity/purchasing/googleplay/IabHelper$QueryInventoryFinishedListener;,
        Lcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;,
        Lcom/unity/purchasing/googleplay/IabHelper$OnIabSetupFinishedListener;
    }
.end annotation


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_SERVICE_UNAVAILABLE:I = 0x2

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_INVALID_CONSUMPTION:I = -0x3f2

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE:I = -0x3f1

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f0

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field private static final IN_APP_BILLING_API_VERSION_3:I = 0x3

.field private static final IN_APP_BILLING_API_VERSION_5:I = 0x5

.field private static final IN_APP_BILLING_API_VERSION_6:I = 0x6

.field private static final IN_APP_BILLING_API_VERSION_7:I = 0x7

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final ITEM_TYPE_SUBS:Ljava/lang/String; = "subs"

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"

.field protected static final TAG:Ljava/lang/String; = "UnityIAP"

.field public static billingResponseCodeNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private inv:Lcom/unity/purchasing/googleplay/Inventory;

.field private launcher:Lcom/unity/purchasing/googleplay/IActivityLauncher;

.field mAsyncOperation:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mDaydreamApiAvailable:Z

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field volatile mDisposed:Z

.field mPurchaseListener:Lcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;

.field mPurchasingItemType:Ljava/lang/String;

.field mRequestCode:I

.field volatile mSetupDone:Z

.field mSubscriptionPurchaseHistorySupported:Z

.field mSubscriptionUpgradeDowngradeSupported:Z

.field mSubscriptionsSupported:Z

.field private mUnityVrEnabled:Z

.field private mVrSupported:Z

.field private serviceManager:Lcom/unity/purchasing/googleplay/IBillingServiceManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unity/purchasing/googleplay/IabHelper;->billingResponseCodeNames:Ljava/util/HashMap;

    .line 181
    sget-object v0, Lcom/unity/purchasing/googleplay/IabHelper;->billingResponseCodeNames:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BILLING_RESPONSE_RESULT_OK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/unity/purchasing/googleplay/IabHelper;->billingResponseCodeNames:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BILLING_RESPONSE_RESULT_USER_CANCELED"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/unity/purchasing/googleplay/IabHelper;->billingResponseCodeNames:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BILLING_RESPONSE_RESULT_SERVICE_UNAVAILABLE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/unity/purchasing/googleplay/IabHelper;->billingResponseCodeNames:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/unity/purchasing/googleplay/IabHelper;->billingResponseCodeNames:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/unity/purchasing/googleplay/IabHelper;->billingResponseCodeNames:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BILLING_RESPONSE_RESULT_DEVELOPER_ERROR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/unity/purchasing/googleplay/IabHelper;->billingResponseCodeNames:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BILLING_RESPONSE_RESULT_ERROR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/unity/purchasing/googleplay/IabHelper;->billingResponseCodeNames:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/unity/purchasing/googleplay/IabHelper;->billingResponseCodeNames:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/unity/purchasing/googleplay/IabHelper;->billingResponseCodeNames:Ljava/util/HashMap;

    const/16 v1, -0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IABHELPER_ERROR_BASE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/unity/purchasing/googleplay/IabHelper;->billingResponseCodeNames:Ljava/util/HashMap;

    const/16 v1, -0x3e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IABHELPER_REMOTE_EXCEPTION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/unity/purchasing/googleplay/IabHelper;->billingResponseCodeNames:Ljava/util/HashMap;

    const/16 v1, -0x3ea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IABHELPER_BAD_RESPONSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/unity/purchasing/googleplay/IabHelper;->billingResponseCodeNames:Ljava/util/HashMap;

    const/16 v1, -0x3eb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IABHELPER_VERIFICATION_FAILED"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/unity/purchasing/googleplay/IabHelper;->billingResponseCodeNames:Ljava/util/HashMap;

    const/16 v1, -0x3ec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IABHELPER_SEND_INTENT_FAILED"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/unity/purchasing/googleplay/IabHelper;->billingResponseCodeNames:Ljava/util/HashMap;

    const/16 v1, -0x3ed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IABHELPER_USER_CANCELLED"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/unity/purchasing/googleplay/IabHelper;->billingResponseCodeNames:Ljava/util/HashMap;

    const/16 v1, -0x3ee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IABHELPER_UNKNOWN_PURCHASE_RESPONSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/unity/purchasing/googleplay/IabHelper;->billingResponseCodeNames:Ljava/util/HashMap;

    const/16 v1, -0x3ef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IABHELPER_MISSING_TOKEN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/unity/purchasing/googleplay/IabHelper;->billingResponseCodeNames:Ljava/util/HashMap;

    const/16 v1, -0x3f0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IABHELPER_UNKNOWN_ERROR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/unity/purchasing/googleplay/IabHelper;->billingResponseCodeNames:Ljava/util/HashMap;

    const/16 v1, -0x3f1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/unity/purchasing/googleplay/IabHelper;->billingResponseCodeNames:Ljava/util/HashMap;

    const/16 v1, -0x3f2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IABHELPER_INVALID_CONSUMPTION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unity/purchasing/googleplay/IBillingServiceManager;Lcom/unity/purchasing/googleplay/IActivityLauncher;)V
    .registers 6

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mDebugLog:Z

    const-string v1, "UnityIAP"

    .line 81
    iput-object v1, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 84
    iput-boolean v0, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mSetupDone:Z

    .line 88
    iput-boolean v0, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mDisposed:Z

    .line 91
    iput-boolean v0, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mSubscriptionsSupported:Z

    .line 94
    iput-boolean v0, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mSubscriptionUpgradeDowngradeSupported:Z

    .line 97
    iput-boolean v0, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mSubscriptionPurchaseHistorySupported:Z

    .line 100
    iput-boolean v0, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mVrSupported:Z

    .line 103
    iput-boolean v0, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mUnityVrEnabled:Z

    .line 106
    iput-boolean v0, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mDaydreamApiAvailable:Z

    const-string v0, ""

    .line 110
    iput-object v0, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mContext:Landroid/content/Context;

    .line 212
    iput-object p2, p0, Lcom/unity/purchasing/googleplay/IabHelper;->serviceManager:Lcom/unity/purchasing/googleplay/IBillingServiceManager;

    .line 213
    iput-object p3, p0, Lcom/unity/purchasing/googleplay/IabHelper;->launcher:Lcom/unity/purchasing/googleplay/IActivityLauncher;

    .line 214
    new-instance p1, Lcom/unity/purchasing/googleplay/Inventory;

    invoke-direct {p1}, Lcom/unity/purchasing/googleplay/Inventory;-><init>()V

    iput-object p1, p0, Lcom/unity/purchasing/googleplay/IabHelper;->inv:Lcom/unity/purchasing/googleplay/Inventory;

    const-string p1, "IAB helper created."

    .line 216
    invoke-virtual {p0, p1}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/unity/purchasing/googleplay/IabHelper;Lcom/unity/purchasing/googleplay/IabHelper$OnIabSetupFinishedListener;Lcom/android/vending/billing/IInAppBillingService;)V
    .registers 3

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/unity/purchasing/googleplay/IabHelper;->finishSetup(Lcom/unity/purchasing/googleplay/IabHelper$OnIabSetupFinishedListener;Lcom/android/vending/billing/IInAppBillingService;)V

    return-void
.end method

.method static synthetic access$100(Lcom/unity/purchasing/googleplay/IabHelper;)Z
    .registers 1

    .line 77
    iget-boolean p0, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mVrSupported:Z

    return p0
.end method

.method static synthetic access$200(Lcom/unity/purchasing/googleplay/IabHelper;)Z
    .registers 1

    .line 77
    iget-boolean p0, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mUnityVrEnabled:Z

    return p0
.end method

.method static synthetic access$300(Lcom/unity/purchasing/googleplay/IabHelper;)Lcom/unity/purchasing/googleplay/Inventory;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/unity/purchasing/googleplay/IabHelper;->inv:Lcom/unity/purchasing/googleplay/Inventory;

    return-object p0
.end method

.method static synthetic access$400(Lcom/unity/purchasing/googleplay/IabHelper;)Z
    .registers 1

    .line 77
    iget-boolean p0, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mDaydreamApiAvailable:Z

    return p0
.end method

.method static synthetic access$500(Lcom/unity/purchasing/googleplay/IabHelper;)Lcom/unity/purchasing/googleplay/IActivityLauncher;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/unity/purchasing/googleplay/IabHelper;->launcher:Lcom/unity/purchasing/googleplay/IActivityLauncher;

    return-object p0
.end method

.method public static byteArrayToHexString([B)Ljava/lang/String;
    .registers 7

    .line 1331
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1332
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v1, :cond_26

    aget-byte v4, p0, v3

    const/4 v5, 0x1

    .line 1333
    new-array v5, v5, [Ljava/lang/Object;

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "%02x"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1335
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private finishSetup(Lcom/unity/purchasing/googleplay/IabHelper$OnIabSetupFinishedListener;Lcom/android/vending/billing/IInAppBillingService;)V
    .registers 10

    const-string v0, "subs"

    const-string v1, "inapp"

    .line 285
    iget-object v2, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :try_start_a
    const-string v3, "Checking for in-app billing 3 support."

    .line 287
    invoke-virtual {p0, v3}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 v3, 0x3

    .line 290
    invoke-interface {p2, v3, v2, v1}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_24

    .line 292
    new-instance p2, Lcom/unity/purchasing/googleplay/IabResult;

    const-string v0, "Billing V3 not supported."

    invoke-direct {p2, v4, v0}, Lcom/unity/purchasing/googleplay/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/unity/purchasing/googleplay/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/unity/purchasing/googleplay/IabResult;)V

    .line 296
    iput-boolean v5, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mSubscriptionsSupported:Z

    return-void

    .line 299
    :cond_24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In-app billing version 3 supported for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 302
    invoke-interface {p2, v3, v2, v0}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_6f

    const-string v3, "Subscriptions AVAILABLE."

    .line 304
    invoke-virtual {p0, v3}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 305
    iput-boolean v4, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mSubscriptionsSupported:Z

    const/4 v3, 0x5

    .line 308
    invoke-interface {p2, v3, v2, v0}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_55

    .line 310
    iput-boolean v4, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mSubscriptionUpgradeDowngradeSupported:Z

    const-string v3, "Subscription upgrade and downgrade are AVAILABLE."

    .line 311
    invoke-virtual {p0, v3}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    goto :goto_5a

    :cond_55
    const-string v3, "Subscription upgrade and downgrade are NOT AVAILABLE."

    .line 314
    invoke-virtual {p0, v3}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    :goto_5a
    const/4 v3, 0x6

    .line 318
    invoke-interface {p2, v3, v2, v0}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_69

    .line 320
    iput-boolean v4, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mSubscriptionPurchaseHistorySupported:Z

    const-string v0, "Subscriptions information parse AVAILABLE."

    .line 321
    invoke-virtual {p0, v0}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    goto :goto_83

    :cond_69
    const-string v0, "Subscriptions information parse NOT AVAILABLE."

    .line 324
    invoke-virtual {p0, v0}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    goto :goto_83

    .line 329
    :cond_6f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Subscriptions NOT AVAILABLE. Response: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    :goto_83
    const/4 v0, 0x7

    .line 334
    invoke-interface {p2, v0, v2, v1}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_bd

    .line 336
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "vr"

    .line 337
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 338
    iget-object v3, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v3, v1, v2}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupportedExtraParams(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p2

    if-nez p2, :cond_a8

    const-string p2, "VR supported."

    .line 340
    invoke-virtual {p0, p2}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 341
    iput-boolean v4, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mVrSupported:Z

    goto :goto_c2

    .line 344
    :cond_a8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VR purchases  NOT AVAILABLE. Response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    goto :goto_c2

    :cond_bd
    const-string p2, "In app billing version 7 is not supported"

    .line 348
    invoke-virtual {p0, p2}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 351
    :goto_c2
    iput-boolean v4, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mSetupDone:Z
    :try_end_c4
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_c4} :catch_cf

    .line 359
    new-instance p2, Lcom/unity/purchasing/googleplay/IabResult;

    const-string v0, "Setup successful."

    invoke-direct {p2, v5, v0}, Lcom/unity/purchasing/googleplay/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/unity/purchasing/googleplay/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/unity/purchasing/googleplay/IabResult;)V

    return-void

    .line 354
    :catch_cf
    new-instance p2, Lcom/unity/purchasing/googleplay/IabResult;

    const/16 v0, -0x3e9

    const-string v1, "RemoteException while setting up in-app billing."

    invoke-direct {p2, v0, v1}, Lcom/unity/purchasing/googleplay/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/unity/purchasing/googleplay/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/unity/purchasing/googleplay/IabResult;)V

    return-void
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .registers 4

    const-string v0, "/"

    const-string v1, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    .line 1031
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    .line 1041
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/16 v2, -0x3e8

    if-gt p0, v2, :cond_31

    sub-int/2addr v2, p0

    if-ltz v2, :cond_1b

    .line 1045
    array-length v1, v0

    if-ge v2, v1, :cond_1b

    aget-object p0, v0, v2

    return-object p0

    .line 1046
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":Unknown IAB Helper Error"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_31
    if-ltz p0, :cond_3a

    .line 1048
    array-length v0, v1

    if-lt p0, v0, :cond_37

    goto :goto_3a

    .line 1051
    :cond_37
    aget-object p0, v1, p0

    return-object p0

    .line 1049
    :cond_3a
    :goto_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":Unknown"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method checkSetupDone(Ljava/lang/String;)V
    .registers 5

    .line 1057
    iget-boolean v0, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mSetupDone:Z

    if-eqz v0, :cond_5

    return-void

    .line 1058
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state for operation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity/purchasing/googleplay/IabHelper;->logError(Ljava/lang/String;)V

    .line 1059
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method consume(Lcom/unity/purchasing/googleplay/Purchase;Lcom/android/vending/billing/IInAppBillingService;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/unity/purchasing/googleplay/IabException;
        }
    .end annotation

    const-string v0, "Error consuming sku "

    .line 913
    iget-object v1, p1, Lcom/unity/purchasing/googleplay/Purchase;->mItemType:Ljava/lang/String;

    const-string v2, "inapp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e3

    .line 919
    :try_start_c
    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/Purchase;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 920
    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_8f

    const-string v3, ""

    .line 921
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8f

    .line 927
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Consuming sku: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 v3, 0x3

    .line 928
    iget-object v4, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4, v1}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_5c

    .line 930
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Successfully consumed sku: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    return-void

    .line 932
    :cond_5c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/unity/purchasing/googleplay/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 933
    new-instance v1, Lcom/unity/purchasing/googleplay/IabException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p2, v0}, Lcom/unity/purchasing/googleplay/IabException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 922
    :cond_8f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t consume "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". No token."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/unity/purchasing/googleplay/IabHelper;->logError(Ljava/lang/String;)V

    .line 923
    new-instance p2, Lcom/unity/purchasing/googleplay/IabException;

    const/16 v0, -0x3ef

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PurchaseInfo is missing token for sku: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/unity/purchasing/googleplay/IabException;-><init>(ILjava/lang/String;)V

    throw p2
    :try_end_c9
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c9} :catch_c9

    :catch_c9
    move-exception p2

    .line 936
    new-instance v0, Lcom/unity/purchasing/googleplay/IabException;

    const/16 v1, -0x3e9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception while consuming. PurchaseInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1, p2}, Lcom/unity/purchasing/googleplay/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 914
    :cond_e3
    new-instance p2, Lcom/unity/purchasing/googleplay/IabException;

    const/16 v0, -0x3f2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Items of type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/unity/purchasing/googleplay/Purchase;->mItemType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' can\'t be consumed."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/unity/purchasing/googleplay/IabException;-><init>(ILjava/lang/String;)V

    throw p2
.end method

.method public consumeAsync(Lcom/unity/purchasing/googleplay/Purchase;Lcom/unity/purchasing/googleplay/IabHelper$OnConsumeFinishedListener;Z)V
    .registers 5

    const-string v0, "consume"

    .line 1003
    invoke-virtual {p0, v0}, Lcom/unity/purchasing/googleplay/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 1004
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1005
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 1006
    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/unity/purchasing/googleplay/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/unity/purchasing/googleplay/IabHelper$OnConsumeFinishedListener;Lcom/unity/purchasing/googleplay/IabHelper$OnConsumeMultiFinishedListener;Z)V

    return-void
.end method

.method public consumeAsync(Ljava/util/List;Lcom/unity/purchasing/googleplay/IabHelper$OnConsumeMultiFinishedListener;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unity/purchasing/googleplay/Purchase;",
            ">;",
            "Lcom/unity/purchasing/googleplay/IabHelper$OnConsumeMultiFinishedListener;",
            "Z)V"
        }
    .end annotation

    const-string v0, "consume"

    .line 1016
    invoke-virtual {p0, v0}, Lcom/unity/purchasing/googleplay/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1017
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/unity/purchasing/googleplay/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/unity/purchasing/googleplay/IabHelper$OnConsumeFinishedListener;Lcom/unity/purchasing/googleplay/IabHelper$OnConsumeMultiFinishedListener;Z)V

    return-void
.end method

.method consumeAsyncInternal(Ljava/util/List;Lcom/unity/purchasing/googleplay/IabHelper$OnConsumeFinishedListener;Lcom/unity/purchasing/googleplay/IabHelper$OnConsumeMultiFinishedListener;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unity/purchasing/googleplay/Purchase;",
            ">;",
            "Lcom/unity/purchasing/googleplay/IabHelper$OnConsumeFinishedListener;",
            "Lcom/unity/purchasing/googleplay/IabHelper$OnConsumeMultiFinishedListener;",
            "Z)V"
        }
    .end annotation

    .line 1296
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/IabHelper;->serviceManager:Lcom/unity/purchasing/googleplay/IBillingServiceManager;

    new-instance v7, Lcom/unity/purchasing/googleplay/IabHelper$5;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p4

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/unity/purchasing/googleplay/IabHelper$5;-><init>(Lcom/unity/purchasing/googleplay/IabHelper;Ljava/util/List;ZLcom/unity/purchasing/googleplay/IabHelper$OnConsumeFinishedListener;Lcom/unity/purchasing/googleplay/IabHelper$OnConsumeMultiFinishedListener;)V

    invoke-interface {v0, v7}, Lcom/unity/purchasing/googleplay/IBillingServiceManager;->workWith(Lcom/unity/purchasing/googleplay/BillingServiceProcessor;)V

    return-void
.end method

.method consumeSilently(Lcom/unity/purchasing/googleplay/Purchase;Lcom/android/vending/billing/IInAppBillingService;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/unity/purchasing/googleplay/IabException;
        }
    .end annotation

    .line 950
    iget-object v0, p1, Lcom/unity/purchasing/googleplay/Purchase;->mItemType:Ljava/lang/String;

    const-string v1, "inapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 954
    :cond_b
    :try_start_b
    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/Purchase;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 955
    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/Purchase;->getSku()Ljava/lang/String;

    if-eqz v0, :cond_27

    const-string p1, ""

    .line 956
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_27

    :cond_1d
    const/4 p1, 0x3

    .line 959
    iget-object v1, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p1, v1, v0}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_27} :catch_27

    :catch_27
    :cond_27
    :goto_27
    return-void
.end method

.method public dispose()V
    .registers 2

    const-string v0, "Disposing."

    .line 369
    invoke-virtual {p0, v0}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 370
    iput-boolean v0, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mSetupDone:Z

    .line 371
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/IabHelper;->serviceManager:Lcom/unity/purchasing/googleplay/IBillingServiceManager;

    invoke-interface {v0}, Lcom/unity/purchasing/googleplay/IBillingServiceManager;->dispose()V

    const/4 v0, 0x1

    .line 372
    iput-boolean v0, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mDisposed:Z

    return-void
.end method

.method public enableDaydreamApi(Z)V
    .registers 2

    .line 244
    iput-boolean p1, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mDaydreamApiAvailable:Z

    return-void
.end method

.method public enableDebugLogging(Z)V
    .registers 2

    .line 228
    iput-boolean p1, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mDebugLog:Z

    return-void
.end method

.method public enableDebugLogging(ZLjava/lang/String;)V
    .registers 3

    .line 223
    iput-boolean p1, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mDebugLog:Z

    .line 224
    iput-object p2, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mDebugTag:Ljava/lang/String;

    return-void
.end method

.method public enableUnityVr(Z)V
    .registers 2

    .line 236
    iput-boolean p1, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mUnityVrEnabled:Z

    return-void
.end method

.method getAccountId(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "accountId"

    const/4 v1, 0x0

    .line 1353
    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1354
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_36

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_36

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_36

    .line 1355
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1356
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "accountId is: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_36} :catch_36

    :catch_36
    :cond_36
    return-object v1
.end method

.method getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .registers 5

    if-nez p1, :cond_9

    const-string p1, "null Bundle received from service, unknown cause and impact, returning error"

    .line 1066
    invoke-virtual {p0, p1}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 p1, 0x6

    return p1

    :cond_9
    const-string v0, "RESPONSE_CODE"

    .line 1070
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_18

    const-string p1, "Bundle with null response code, assuming OK (known issue)"

    .line 1072
    invoke-virtual {p0, p1}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 1075
    :cond_18
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_23

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 1076
    :cond_23
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2f

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    return p1

    :cond_2f
    const-string v0, "Unexpected type for bundle response code."

    .line 1078
    invoke-virtual {p0, v0}, Lcom/unity/purchasing/googleplay/IabHelper;->logError(Ljava/lang/String;)V

    .line 1079
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity/purchasing/googleplay/IabHelper;->logError(Ljava/lang/String;)V

    .line 1080
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type for bundle response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getResponseCodeFromIntent(Landroid/content/Intent;)I
    .registers 5

    .line 1086
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_13

    const-string p1, "Intent with no response code, assuming OK (known issue)"

    .line 1088
    invoke-virtual {p0, p1}, Lcom/unity/purchasing/googleplay/IabHelper;->logError(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 1091
    :cond_13
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1e

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 1092
    :cond_1e
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2a

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    return p1

    :cond_2a
    const-string v0, "Unexpected type for intent response code."

    .line 1094
    invoke-virtual {p0, v0}, Lcom/unity/purchasing/googleplay/IabHelper;->logError(Ljava/lang/String;)V

    .line 1095
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity/purchasing/googleplay/IabHelper;->logError(Ljava/lang/String;)V

    .line 1096
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type for intent response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .registers 13

    .line 695
    iget v0, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mRequestCode:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_6

    return v1

    :cond_6
    const-string p1, "handleActivityResult"

    .line 697
    invoke-virtual {p0, p1}, Lcom/unity/purchasing/googleplay/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    const/16 p1, -0x3ea

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_25

    const-string p2, "Null data in IAB activity result."

    .line 700
    invoke-virtual {p0, p2}, Lcom/unity/purchasing/googleplay/IabHelper;->logError(Ljava/lang/String;)V

    .line 701
    new-instance p2, Lcom/unity/purchasing/googleplay/IabResult;

    const-string p3, "Null data in IAB result"

    invoke-direct {p2, p1, p3}, Lcom/unity/purchasing/googleplay/IabResult;-><init>(ILjava/lang/String;)V

    .line 702
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mPurchaseListener:Lcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p1, :cond_24

    invoke-interface {p1, p2, v2}, Lcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/unity/purchasing/googleplay/IabResult;Lcom/unity/purchasing/googleplay/Purchase;)V

    :cond_24
    return v0

    .line 706
    :cond_25
    invoke-virtual {p0, p3}, Lcom/unity/purchasing/googleplay/IabHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v3

    const-string v4, "INAPP_PURCHASE_DATA"

    .line 707
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "INAPP_DATA_SIGNATURE"

    .line 708
    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 709
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Purchase data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 710
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Data signature: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 v6, -0x1

    if-ne p2, v6, :cond_11e

    if-nez v3, :cond_11e

    const-string p2, "Successful resultcode from purchase activity."

    .line 712
    invoke-virtual {p0, p2}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 713
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 714
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 715
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Extras: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 716
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected item type: "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    if-eqz v4, :cond_ee

    if-nez v5, :cond_be

    goto :goto_ee

    .line 728
    :cond_be
    :try_start_be
    new-instance p2, Lcom/unity/purchasing/googleplay/Purchase;

    iget-object p3, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-direct {p2, p3, v4, v5}, Lcom/unity/purchasing/googleplay/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    invoke-virtual {p2}, Lcom/unity/purchasing/googleplay/Purchase;->getSku()Ljava/lang/String;
    :try_end_c8
    .catch Lorg/json/JSONException; {:try_start_be .. :try_end_c8} :catch_d8

    .line 739
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mPurchaseListener:Lcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p1, :cond_1a8

    .line 740
    new-instance p3, Lcom/unity/purchasing/googleplay/IabResult;

    const-string v2, "Success"

    invoke-direct {p3, v1, v2}, Lcom/unity/purchasing/googleplay/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p3, p2}, Lcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/unity/purchasing/googleplay/IabResult;Lcom/unity/purchasing/googleplay/Purchase;)V

    goto/16 :goto_1a8

    :catch_d8
    move-exception p2

    const-string p3, "Failed to parse purchase data."

    .line 732
    invoke-virtual {p0, p3}, Lcom/unity/purchasing/googleplay/IabHelper;->logError(Ljava/lang/String;)V

    .line 733
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 734
    new-instance p2, Lcom/unity/purchasing/googleplay/IabResult;

    invoke-direct {p2, p1, p3}, Lcom/unity/purchasing/googleplay/IabResult;-><init>(ILjava/lang/String;)V

    .line 735
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mPurchaseListener:Lcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p1, :cond_ed

    invoke-interface {p1, p2, v2}, Lcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/unity/purchasing/googleplay/IabResult;Lcom/unity/purchasing/googleplay/Purchase;)V

    :cond_ed
    return v0

    :cond_ee
    :goto_ee
    const-string p1, "BUG: either purchaseData or dataSignature is null."

    .line 719
    invoke-virtual {p0, p1}, Lcom/unity/purchasing/googleplay/IabHelper;->logError(Ljava/lang/String;)V

    .line 720
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 721
    new-instance p1, Lcom/unity/purchasing/googleplay/IabResult;

    const/16 p2, -0x3f0

    const-string p3, "IAB returned null purchaseData or dataSignature"

    invoke-direct {p1, p2, p3}, Lcom/unity/purchasing/googleplay/IabResult;-><init>(ILjava/lang/String;)V

    .line 722
    iget-object p2, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mPurchaseListener:Lcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p2, :cond_11d

    invoke-interface {p2, p1, v2}, Lcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/unity/purchasing/googleplay/IabResult;Lcom/unity/purchasing/googleplay/Purchase;)V

    :cond_11d
    return v0

    :cond_11e
    if-ne p2, v6, :cond_149

    .line 745
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Result code was OK but in-app billing response was not OK: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/unity/purchasing/googleplay/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 746
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mPurchaseListener:Lcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p1, :cond_1a8

    .line 747
    new-instance p1, Lcom/unity/purchasing/googleplay/IabResult;

    const-string p2, "Problem purchasing item."

    invoke-direct {p1, v3, p2}, Lcom/unity/purchasing/googleplay/IabResult;-><init>(ILjava/lang/String;)V

    .line 748
    iget-object p2, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mPurchaseListener:Lcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {p2, p1, v2}, Lcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/unity/purchasing/googleplay/IabResult;Lcom/unity/purchasing/googleplay/Purchase;)V

    goto :goto_1a8

    :cond_149
    if-nez p2, :cond_174

    .line 752
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Purchase canceled - Response: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/unity/purchasing/googleplay/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 753
    new-instance p1, Lcom/unity/purchasing/googleplay/IabResult;

    invoke-static {v3}, Lcom/unity/purchasing/googleplay/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v3, p2}, Lcom/unity/purchasing/googleplay/IabResult;-><init>(ILjava/lang/String;)V

    .line 754
    iget-object p2, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mPurchaseListener:Lcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p2, :cond_1a8

    invoke-interface {p2, p1, v2}, Lcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/unity/purchasing/googleplay/IabResult;Lcom/unity/purchasing/googleplay/Purchase;)V

    goto :goto_1a8

    .line 757
    :cond_174
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Purchase failed. Result code: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". Response: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    invoke-static {v3}, Lcom/unity/purchasing/googleplay/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 757
    invoke-virtual {p0, p1}, Lcom/unity/purchasing/googleplay/IabHelper;->logError(Ljava/lang/String;)V

    .line 759
    new-instance p1, Lcom/unity/purchasing/googleplay/IabResult;

    const/16 p2, -0x3ee

    const-string p3, "Unknown purchase response."

    invoke-direct {p1, p2, p3}, Lcom/unity/purchasing/googleplay/IabResult;-><init>(ILjava/lang/String;)V

    .line 760
    iget-object p2, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mPurchaseListener:Lcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p2, :cond_1a8

    invoke-interface {p2, p1, v2}, Lcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/unity/purchasing/googleplay/IabResult;Lcom/unity/purchasing/googleplay/Purchase;)V

    :cond_1a8
    :goto_1a8
    return v0
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;)V
    .registers 11

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 412
    invoke-virtual/range {v0 .. v5}, Lcom/unity/purchasing/googleplay/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .registers 13

    const-string v3, "inapp"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 417
    invoke-virtual/range {v0 .. v6}, Lcom/unity/purchasing/googleplay/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .registers 18

    move-object v8, p0

    move-object/from16 v6, p5

    const-string v0, "launchPurchaseFlow"

    .line 577
    invoke-virtual {p0, v0}, Lcom/unity/purchasing/googleplay/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    const-string v0, "subs"

    move-object v3, p3

    .line 579
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-boolean v0, v8, Lcom/unity/purchasing/googleplay/IabHelper;->mSubscriptionsSupported:Z

    if-nez v0, :cond_25

    .line 580
    new-instance v0, Lcom/unity/purchasing/googleplay/IabResult;

    const/16 v1, -0x3f1

    const-string v2, "Subscriptions are not available."

    invoke-direct {v0, v1, v2}, Lcom/unity/purchasing/googleplay/IabResult;-><init>(ILjava/lang/String;)V

    if-eqz v6, :cond_24

    const/4 v1, 0x0

    .line 582
    invoke-interface {v6, v0, v1}, Lcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/unity/purchasing/googleplay/IabResult;Lcom/unity/purchasing/googleplay/Purchase;)V

    :cond_24
    return-void

    .line 585
    :cond_25
    iget-object v9, v8, Lcom/unity/purchasing/googleplay/IabHelper;->serviceManager:Lcom/unity/purchasing/googleplay/IBillingServiceManager;

    new-instance v10, Lcom/unity/purchasing/googleplay/IabHelper$3;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p6

    move-object v5, p1

    move-object/from16 v6, p5

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/unity/purchasing/googleplay/IabHelper$3;-><init>(Lcom/unity/purchasing/googleplay/IabHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;I)V

    invoke-interface {v9, v10}, Lcom/unity/purchasing/googleplay/IBillingServiceManager;->workWith(Lcom/unity/purchasing/googleplay/BillingServiceProcessor;)V

    return-void
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;)V
    .registers 11

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 422
    invoke-virtual/range {v0 .. v5}, Lcom/unity/purchasing/googleplay/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    return-void
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .registers 13

    const-string v3, "subs"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 427
    invoke-virtual/range {v0 .. v6}, Lcom/unity/purchasing/googleplay/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    return-void
.end method

.method public launchSubscriptionUpdateFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;ILcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v8, p0

    move-object/from16 v6, p5

    const-string v0, "launchSubscriptionUpdateFlow"

    .line 452
    invoke-virtual {p0, v0}, Lcom/unity/purchasing/googleplay/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 454
    iget-boolean v0, v8, Lcom/unity/purchasing/googleplay/IabHelper;->mSubscriptionsSupported:Z

    if-eqz v0, :cond_26

    iget-boolean v0, v8, Lcom/unity/purchasing/googleplay/IabHelper;->mSubscriptionUpgradeDowngradeSupported:Z

    if-nez v0, :cond_11

    goto :goto_26

    .line 461
    :cond_11
    iget-object v9, v8, Lcom/unity/purchasing/googleplay/IabHelper;->serviceManager:Lcom/unity/purchasing/googleplay/IBillingServiceManager;

    new-instance v10, Lcom/unity/purchasing/googleplay/IabHelper$2;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p6

    move-object v4, p3

    move-object v5, p1

    move-object/from16 v6, p5

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/unity/purchasing/googleplay/IabHelper$2;-><init>(Lcom/unity/purchasing/googleplay/IabHelper;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/app/Activity;Lcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;I)V

    invoke-interface {v9, v10}, Lcom/unity/purchasing/googleplay/IBillingServiceManager;->workWith(Lcom/unity/purchasing/googleplay/BillingServiceProcessor;)V

    return-void

    .line 455
    :cond_26
    :goto_26
    new-instance v0, Lcom/unity/purchasing/googleplay/IabResult;

    const/16 v1, -0x3f1

    const-string v2, "Subscription upgrade/downgrade is not available."

    invoke-direct {v0, v1, v2}, Lcom/unity/purchasing/googleplay/IabResult;-><init>(ILjava/lang/String;)V

    if-eqz v6, :cond_35

    const/4 v1, 0x0

    .line 457
    invoke-interface {v6, v0, v1}, Lcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/unity/purchasing/googleplay/IabResult;Lcom/unity/purchasing/googleplay/Purchase;)V

    :cond_35
    return-void
.end method

.method logDebug(Ljava/lang/String;)V
    .registers 3

    .line 1339
    iget-boolean v0, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mDebugLog:Z

    if-eqz v0, :cond_9

    const-string v0, "UnityIAP"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method logError(Ljava/lang/String;)V
    .registers 4

    .line 1343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In-app billing error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UnityIAP"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .registers 4

    .line 1347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In-app billing warning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UnityIAP"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public queryInventory(ZLjava/util/List;Lcom/android/vending/billing/IInAppBillingService;)Lcom/unity/purchasing/googleplay/Inventory;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/vending/billing/IInAppBillingService;",
            ")",
            "Lcom/unity/purchasing/googleplay/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/unity/purchasing/googleplay/IabException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 766
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/unity/purchasing/googleplay/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;Lcom/android/vending/billing/IInAppBillingService;)Lcom/unity/purchasing/googleplay/Inventory;

    move-result-object p1

    return-object p1
.end method

.method public queryInventory(ZLjava/util/List;Ljava/util/List;Lcom/android/vending/billing/IInAppBillingService;)Lcom/unity/purchasing/googleplay/Inventory;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/vending/billing/IInAppBillingService;",
            ")",
            "Lcom/unity/purchasing/googleplay/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/unity/purchasing/googleplay/IabException;
        }
    .end annotation

    const-string p3, "inapp"

    const-string v0, "queryInventory"

    .line 784
    invoke-virtual {p0, v0}, Lcom/unity/purchasing/googleplay/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 786
    :try_start_7
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/IabHelper;->inv:Lcom/unity/purchasing/googleplay/Inventory;

    invoke-virtual {p0, v0, p3, p4}, Lcom/unity/purchasing/googleplay/IabHelper;->queryPurchases(Lcom/unity/purchasing/googleplay/Inventory;Ljava/lang/String;Lcom/android/vending/billing/IInAppBillingService;)I

    move-result v0

    if-nez v0, :cond_63

    if-eqz p1, :cond_22

    .line 792
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/IabHelper;->inv:Lcom/unity/purchasing/googleplay/Inventory;

    invoke-virtual {p0, p3, v0, p2, p4}, Lcom/unity/purchasing/googleplay/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/unity/purchasing/googleplay/Inventory;Ljava/util/List;Lcom/android/vending/billing/IInAppBillingService;)I

    move-result p3

    if-nez p3, :cond_1a

    goto :goto_22

    .line 794
    :cond_1a
    new-instance p1, Lcom/unity/purchasing/googleplay/IabException;

    const-string p2, "Error refreshing inventory (querying prices of items)."

    invoke-direct {p1, p3, p2}, Lcom/unity/purchasing/googleplay/IabException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 799
    :cond_22
    :goto_22
    iget-boolean p3, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mSubscriptionsSupported:Z
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_24} :catch_81
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_24} :catch_76
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_24} :catch_6b

    const-string v0, "subs"

    if-eqz p3, :cond_4b

    .line 800
    :try_start_28
    iget-object p3, p0, Lcom/unity/purchasing/googleplay/IabHelper;->inv:Lcom/unity/purchasing/googleplay/Inventory;

    invoke-virtual {p0, p3, v0, p4}, Lcom/unity/purchasing/googleplay/IabHelper;->queryPurchases(Lcom/unity/purchasing/googleplay/Inventory;Ljava/lang/String;Lcom/android/vending/billing/IInAppBillingService;)I

    move-result p3

    if-nez p3, :cond_43

    if-eqz p1, :cond_4b

    .line 806
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/IabHelper;->inv:Lcom/unity/purchasing/googleplay/Inventory;

    invoke-virtual {p0, v0, p1, p2, p4}, Lcom/unity/purchasing/googleplay/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/unity/purchasing/googleplay/Inventory;Ljava/util/List;Lcom/android/vending/billing/IInAppBillingService;)I

    move-result p1

    if-nez p1, :cond_3b

    goto :goto_4b

    .line 808
    :cond_3b
    new-instance p2, Lcom/unity/purchasing/googleplay/IabException;

    const-string p3, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {p2, p1, p3}, Lcom/unity/purchasing/googleplay/IabException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 802
    :cond_43
    new-instance p1, Lcom/unity/purchasing/googleplay/IabException;

    const-string p2, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {p1, p3, p2}, Lcom/unity/purchasing/googleplay/IabException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 813
    :cond_4b
    :goto_4b
    iget-boolean p1, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mSubscriptionPurchaseHistorySupported:Z

    if-eqz p1, :cond_60

    .line 815
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/IabHelper;->inv:Lcom/unity/purchasing/googleplay/Inventory;

    invoke-virtual {p0, p1, v0, p4}, Lcom/unity/purchasing/googleplay/IabHelper;->queryPurchaseHistory(Lcom/unity/purchasing/googleplay/Inventory;Ljava/lang/String;Lcom/android/vending/billing/IInAppBillingService;)I

    move-result p1

    if-nez p1, :cond_58

    goto :goto_60

    .line 817
    :cond_58
    new-instance p2, Lcom/unity/purchasing/googleplay/IabException;

    const-string p3, "Error query Purchase History"

    invoke-direct {p2, p1, p3}, Lcom/unity/purchasing/googleplay/IabException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 821
    :cond_60
    :goto_60
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/IabHelper;->inv:Lcom/unity/purchasing/googleplay/Inventory;

    return-object p1

    .line 788
    :cond_63
    new-instance p1, Lcom/unity/purchasing/googleplay/IabException;

    const-string p2, "Error refreshing inventory (querying owned items)."

    invoke-direct {p1, v0, p2}, Lcom/unity/purchasing/googleplay/IabException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_6b} :catch_81
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_6b} :catch_76
    .catch Ljava/lang/SecurityException; {:try_start_28 .. :try_end_6b} :catch_6b

    :catch_6b
    move-exception p1

    .line 831
    new-instance p2, Lcom/unity/purchasing/googleplay/IabException;

    const/16 p3, -0x3f0

    const-string p4, "SecurityException querying inventory, update Google Play - https://github.com/googlesamples/android-play-billing/issues/26"

    invoke-direct {p2, p3, p4, p1}, Lcom/unity/purchasing/googleplay/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_76
    move-exception p1

    .line 827
    new-instance p2, Lcom/unity/purchasing/googleplay/IabException;

    const/16 p3, -0x3ea

    const-string p4, "Error parsing JSON response while refreshing inventory."

    invoke-direct {p2, p3, p4, p1}, Lcom/unity/purchasing/googleplay/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_81
    move-exception p1

    .line 824
    new-instance p2, Lcom/unity/purchasing/googleplay/IabException;

    const/16 p3, -0x3e9

    const-string p4, "Remote exception while refreshing inventory."

    invoke-direct {p2, p3, p4, p1}, Lcom/unity/purchasing/googleplay/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public queryInventoryAsync(Lcom/unity/purchasing/googleplay/IabHelper$QueryInventoryFinishedListener;)V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    .line 895
    invoke-virtual/range {v0 .. v5}, Lcom/unity/purchasing/googleplay/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/unity/purchasing/googleplay/IabHelper$QueryInventoryFinishedListener;J)V

    return-void
.end method

.method public queryInventoryAsync(ZLcom/unity/purchasing/googleplay/IabHelper$QueryInventoryFinishedListener;)V
    .registers 9

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    .line 899
    invoke-virtual/range {v0 .. v5}, Lcom/unity/purchasing/googleplay/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/unity/purchasing/googleplay/IabHelper$QueryInventoryFinishedListener;J)V

    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/List;Lcom/unity/purchasing/googleplay/IabHelper$QueryInventoryFinishedListener;J)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/unity/purchasing/googleplay/IabHelper$QueryInventoryFinishedListener;",
            "J)V"
        }
    .end annotation

    const-string v0, "queryInventory"

    .line 863
    invoke-virtual {p0, v0}, Lcom/unity/purchasing/googleplay/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 864
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/IabHelper;->serviceManager:Lcom/unity/purchasing/googleplay/IBillingServiceManager;

    new-instance v8, Lcom/unity/purchasing/googleplay/IabHelper$4;

    move-object v1, v8

    move-object v2, p0

    move-wide v3, p4

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/unity/purchasing/googleplay/IabHelper$4;-><init>(Lcom/unity/purchasing/googleplay/IabHelper;JZLjava/util/List;Lcom/unity/purchasing/googleplay/IabHelper$QueryInventoryFinishedListener;)V

    invoke-interface {v0, v8}, Lcom/unity/purchasing/googleplay/IBillingServiceManager;->workWith(Lcom/unity/purchasing/googleplay/BillingServiceProcessor;)V

    return-void
.end method

.method public queryPurchaseHistory(Lcom/unity/purchasing/googleplay/Inventory;Ljava/lang/String;Lcom/android/vending/billing/IInAppBillingService;)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1114
    iget-boolean v0, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mDisposed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const-string p1, "queryPurchase History - Biller disposed. Returning..."

    .line 1115
    invoke-virtual {p0, p1}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    return v1

    .line 1119
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Querying owned items\' purchase history, item type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 1120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 v0, 0x0

    move-object v6, v0

    .line 1126
    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getPurchaseHistory with continuation token: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 v3, 0x6

    .line 1127
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    move-object v2, p3

    move-object v5, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/vending/billing/IInAppBillingService;->getPurchaseHistory(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_64

    return v1

    .line 1133
    :cond_64
    invoke-virtual {p0, v0}, Lcom/unity/purchasing/googleplay/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v2

    .line 1134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Purchase history response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    if-eqz v2, :cond_9b

    .line 1136
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getPurchaseHistory() failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/unity/purchasing/googleplay/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    return v2

    :cond_9b
    const-string v2, "INAPP_PURCHASE_ITEM_LIST"

    .line 1139
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14c

    const-string v3, "INAPP_PURCHASE_DATA_LIST"

    .line 1140
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14c

    const-string v4, "INAPP_DATA_SIGNATURE_LIST"

    .line 1141
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b5

    goto/16 :goto_14c

    .line 1146
    :cond_b5
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v5, "inapp"

    .line 1149
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_110

    .line 1151
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1152
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    .line 1154
    :goto_ca
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_110

    .line 1155
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1156
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1157
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1158
    new-instance v9, Lcom/unity/purchasing/googleplay/Purchase;

    invoke-direct {v9, p2, v6, v7}, Lcom/unity/purchasing/googleplay/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    invoke-virtual {v9}, Lcom/unity/purchasing/googleplay/Purchase;->getToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_10a

    const-string v7, "queryPurchaseHistory BUG: empty/null token!"

    .line 1161
    invoke-virtual {p0, v7}, Lcom/unity/purchasing/googleplay/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 1162
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Purchase data: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 1164
    :cond_10a
    invoke-virtual {p1, v8, v9}, Lcom/unity/purchasing/googleplay/Inventory;->addPurchaseToConsumablePurchaseHistory(Ljava/lang/String;Lcom/unity/purchasing/googleplay/Purchase;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_ca

    :cond_110
    const-string v3, "subs"

    .line 1168
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12b

    const/4 v3, 0x0

    .line 1169
    :goto_119
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_12b

    .line 1170
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1171
    invoke-virtual {p1, v4}, Lcom/unity/purchasing/googleplay/Inventory;->addPurchaseToSubscriptionPurchaseHistory(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_119

    :cond_12b
    const-string v2, "INAPP_CONTINUATION_TOKEN"

    .line 1175
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Continuation token: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 1177
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    return v1

    :cond_14c
    :goto_14c
    const-string p1, "Bundle returned from getPurchaseHistory() doesn\'t contain required fields."

    .line 1142
    invoke-virtual {p0, p1}, Lcom/unity/purchasing/googleplay/IabHelper;->logError(Ljava/lang/String;)V

    const/16 p1, -0x3ea

    return p1
.end method

.method queryPurchases(Lcom/unity/purchasing/googleplay/Inventory;Ljava/lang/String;Lcom/android/vending/billing/IInAppBillingService;)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1182
    iget-boolean v0, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mDisposed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const-string p1, "queryPurchases - Biller disposed. Returning..."

    .line 1183
    invoke-virtual {p0, p1}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    return v1

    .line 1187
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Querying owned items, item type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 1188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1194
    :cond_3a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling getPurchases with continuation token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 v2, 0x3

    .line 1195
    iget-object v3, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v2, v3, p2, v0}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1198
    invoke-virtual {p0, v0}, Lcom/unity/purchasing/googleplay/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v2

    .line 1199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Owned items response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    if-eqz v2, :cond_90

    .line 1201
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getPurchases() failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/unity/purchasing/googleplay/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    return v2

    :cond_90
    const-string v2, "INAPP_PURCHASE_ITEM_LIST"

    .line 1204
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_132

    const-string v3, "INAPP_PURCHASE_DATA_LIST"

    .line 1205
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_132

    const-string v4, "INAPP_DATA_SIGNATURE_LIST"

    .line 1206
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_aa

    goto/16 :goto_132

    .line 1211
    :cond_aa
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1213
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1215
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    .line 1218
    :goto_b7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_111

    .line 1219
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1220
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1221
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1222
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sku is owned: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 1223
    new-instance v8, Lcom/unity/purchasing/googleplay/Purchase;

    invoke-direct {v8, p2, v6, v7}, Lcom/unity/purchasing/googleplay/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    invoke-virtual {v8}, Lcom/unity/purchasing/googleplay/Purchase;->getToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_10b

    const-string v7, "queryPurchase BUG: empty/null token!"

    .line 1226
    invoke-virtual {p0, v7}, Lcom/unity/purchasing/googleplay/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 1227
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Purchase data: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 1231
    :cond_10b
    invoke-virtual {p1, v8}, Lcom/unity/purchasing/googleplay/Inventory;->addPurchase(Lcom/unity/purchasing/googleplay/Purchase;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_b7

    :cond_111
    const-string v2, "INAPP_CONTINUATION_TOKEN"

    .line 1234
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Continuation token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 1236
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3a

    return v1

    :cond_132
    :goto_132
    const-string p1, "Bundle returned from getPurchases() doesn\'t contain required fields."

    .line 1207
    invoke-virtual {p0, p1}, Lcom/unity/purchasing/googleplay/IabHelper;->logError(Ljava/lang/String;)V

    const/16 p1, -0x3ea

    return p1
.end method

.method querySkuDetails(Ljava/lang/String;Lcom/unity/purchasing/googleplay/Inventory;Ljava/util/List;Lcom/android/vending/billing/IInAppBillingService;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/unity/purchasing/googleplay/Inventory;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/vending/billing/IInAppBillingService;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "Querying SKU details."

    .line 1242
    invoke-virtual {p0, v0}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 1243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1244
    invoke-virtual {p2, p1}, Lcom/unity/purchasing/googleplay/Inventory;->getAllOwnedSkus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p3, :cond_16

    .line 1245
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1247
    :cond_16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v1, 0x0

    if-nez p3, :cond_23

    const-string p1, "queryPrices: nothing to do because there are no SKUs."

    .line 1248
    invoke-virtual {p0, p1}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    return v1

    .line 1252
    :cond_23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_a9

    const/16 p3, 0x14

    .line 1253
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 1255
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_39
    if-ge v3, p3, :cond_45

    .line 1257
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 1260
    :cond_45
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v3, "ITEM_ID_LIST"

    .line 1261
    invoke-virtual {p3, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v3, 0x3

    .line 1262
    iget-object v4, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4, v3, v4, p1, p3}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3

    .line 1265
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    const-string v2, "DETAILS_LIST"

    .line 1267
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8c

    .line 1268
    invoke-virtual {p0, p3}, Lcom/unity/purchasing/googleplay/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result p1

    if-eqz p1, :cond_84

    .line 1270
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getSkuDetails() failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/unity/purchasing/googleplay/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    return p1

    :cond_84
    const-string p1, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    .line 1274
    invoke-virtual {p0, p1}, Lcom/unity/purchasing/googleplay/IabHelper;->logError(Ljava/lang/String;)V

    const/16 p1, -0x3ea

    return p1

    .line 1279
    :cond_8c
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    .line 1282
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_94
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1283
    new-instance v3, Lcom/unity/purchasing/googleplay/SkuDetails;

    invoke-direct {v3, p1, v2}, Lcom/unity/purchasing/googleplay/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    invoke-virtual {p2, v3}, Lcom/unity/purchasing/googleplay/Inventory;->addSkuDetails(Lcom/unity/purchasing/googleplay/SkuDetails;)V

    goto :goto_94

    :cond_a9
    return v1
.end method

.method public startSetup(Lcom/unity/purchasing/googleplay/IabHelper$OnIabSetupFinishedListener;)V
    .registers 4

    .line 270
    iget-boolean v0, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mSetupDone:Z

    if-nez v0, :cond_14

    const-string v0, "Starting in-app billing setup."

    .line 273
    invoke-virtual {p0, v0}, Lcom/unity/purchasing/googleplay/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/IabHelper;->serviceManager:Lcom/unity/purchasing/googleplay/IBillingServiceManager;

    new-instance v1, Lcom/unity/purchasing/googleplay/IabHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/unity/purchasing/googleplay/IabHelper$1;-><init>(Lcom/unity/purchasing/googleplay/IabHelper;Lcom/unity/purchasing/googleplay/IabHelper$OnIabSetupFinishedListener;)V

    invoke-interface {v0, v1}, Lcom/unity/purchasing/googleplay/IBillingServiceManager;->workWith(Lcom/unity/purchasing/googleplay/BillingServiceProcessor;)V

    return-void

    .line 270
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "IAB helper is already set up."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public subscriptionPurchaseHistorySupported()Z
    .registers 2

    .line 382
    iget-boolean v0, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mSubscriptionPurchaseHistorySupported:Z

    return v0
.end method

.method public subscriptionUpgradeDowngradeSupported()Z
    .registers 2

    .line 387
    iget-boolean v0, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mSubscriptionUpgradeDowngradeSupported:Z

    return v0
.end method

.method public subscriptionsSupported()Z
    .registers 2

    .line 377
    iget-boolean v0, p0, Lcom/unity/purchasing/googleplay/IabHelper;->mSubscriptionsSupported:Z

    return v0
.end method
