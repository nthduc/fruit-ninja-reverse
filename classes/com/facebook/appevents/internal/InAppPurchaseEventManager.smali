.class Lcom/facebook/appevents/internal/InAppPurchaseEventManager;
.super Ljava/lang/Object;
.source "InAppPurchaseEventManager.java"


# static fields
.field private static final AS_INTERFACE:Ljava/lang/String; = "asInterface"

.field private static final CACHE_CLEAR_TIME_LIMIT_SEC:I = 0x93a80

.field private static final DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field private static final GET_PURCHASES:Ljava/lang/String; = "getPurchases"

.field private static final GET_PURCHASE_HISTORY:Ljava/lang/String; = "getPurchaseHistory"

.field private static final GET_SKU_DETAILS:Ljava/lang/String; = "getSkuDetails"

.field private static final INAPP:Ljava/lang/String; = "inapp"

.field private static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field private static final INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field private static final IN_APP_BILLING_SERVICE:Ljava/lang/String; = "com.android.vending.billing.IInAppBillingService"

.field private static final IN_APP_BILLING_SERVICE_STUB:Ljava/lang/String; = "com.android.vending.billing.IInAppBillingService$Stub"

.field private static final IS_BILLING_SUPPORTED:Ljava/lang/String; = "isBillingSupported"

.field private static final ITEM_ID_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field private static final LAST_CLEARED_TIME:Ljava/lang/String; = "LAST_CLEARED_TIME"

.field private static final MAX_QUERY_PURCHASE_NUM:I = 0x1e

.field private static final PACKAGE_NAME:Ljava/lang/String;

.field private static final PURCHASE_EXPIRE_TIME_SEC:I = 0x15180

.field private static final PURCHASE_INAPP_STORE:Ljava/lang/String; = "com.facebook.internal.PURCHASE"

.field private static final PURCHASE_STOP_QUERY_TIME_SEC:I = 0x4b0

.field private static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field private static final SKU_DETAILS_STORE:Ljava/lang/String; = "com.facebook.internal.SKU_DETAILS"

.field private static final SKU_DETAIL_EXPIRE_TIME_SEC:I = 0xa8c0

.field private static final SUBSCRIPTION:Ljava/lang/String; = "subs"

.field private static final TAG:Ljava/lang/String; = "com.facebook.appevents.internal.InAppPurchaseEventManager"

.field private static final classMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final methodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final purchaseInappSharedPrefs:Landroid/content/SharedPreferences;

.field private static final skuDetailSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->methodMap:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->classMap:Ljava/util/HashMap;

    .line 77
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->PACKAGE_NAME:Ljava/lang/String;

    .line 82
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "com.facebook.internal.SKU_DETAILS"

    .line 83
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->skuDetailSharedPrefs:Landroid/content/SharedPreferences;

    .line 85
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.facebook.internal.PURCHASE"

    .line 86
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->purchaseInappSharedPrefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static asInterface(Landroid/content/Context;Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x1

    .line 90
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "com.android.vending.billing.IInAppBillingService$Stub"

    const-string v1, "asInterface"

    const/4 v2, 0x0

    .line 91
    invoke-static {p0, p1, v1, v2, v0}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->invokeMethod(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static clearSkuDetailsCache()V
    .registers 8

    .line 441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 444
    sget-object v2, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->skuDetailSharedPrefs:Landroid/content/SharedPreferences;

    const-wide/16 v3, 0x0

    const-string v5, "LAST_CLEARED_TIME"

    invoke-interface {v2, v5, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v2, v6, v3

    if-nez v2, :cond_23

    .line 446
    sget-object v2, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->skuDetailSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_3d

    :cond_23
    sub-long v2, v0, v6

    const-wide/32 v6, 0x93a80

    cmp-long v4, v2, v6

    if-lez v4, :cond_3d

    .line 448
    sget-object v2, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->skuDetailSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3d
    :goto_3d
    return-void
.end method

.method private static filterPurchases(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 330
    sget-object v1, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->purchaseInappSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 332
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 334
    :try_start_22
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "productId"

    .line 335
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "purchaseTime"

    .line 336
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    const-string v11, "purchaseToken"

    .line 337
    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 338
    div-long/2addr v9, v4

    sub-long v9, v2, v9

    const-wide/32 v11, 0x15180

    cmp-long v13, v9, v11

    if-lez v13, :cond_44

    goto :goto_16

    .line 342
    :cond_44
    sget-object v9, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->purchaseInappSharedPrefs:Landroid/content/SharedPreferences;

    const-string v10, ""

    invoke-interface {v9, v8, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 344
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_53

    goto :goto_16

    .line 348
    :cond_53
    invoke-interface {v1, v8, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 349
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_59
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_59} :catch_5a

    goto :goto_16

    :catch_5a
    nop

    goto :goto_16

    .line 355
    :cond_5c
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object v0
.end method

.method private static getClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 399
    sget-object v0, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->classMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_b

    return-object v0

    .line 405
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 406
    sget-object p0, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->classMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_18} :catch_18

    :catch_18
    return-object v0
.end method

.method private static getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 362
    sget-object v0, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->methodMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 369
    :try_start_d
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v3, :sswitch_data_b4

    goto :goto_4b

    :sswitch_1a
    const-string v3, "getSkuDetails"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    const/4 v2, 0x1

    goto :goto_4b

    :sswitch_24
    const-string v3, "getPurchaseHistory"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    const/4 v2, 0x4

    goto :goto_4b

    :sswitch_2e
    const-string v3, "asInterface"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    const/4 v2, 0x0

    goto :goto_4b

    :sswitch_38
    const-string v3, "isBillingSupported"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    const/4 v2, 0x2

    goto :goto_4b

    :sswitch_42
    const-string v3, "getPurchases"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    const/4 v2, 0x3

    :cond_4b
    :goto_4b
    if-eqz v2, :cond_a3

    if-eq v2, v8, :cond_90

    if-eq v2, v7, :cond_81

    if-eq v2, v6, :cond_6e

    if-eq v2, v4, :cond_56

    goto :goto_a9

    :cond_56
    const/4 v1, 0x5

    .line 383
    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v8

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v7

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v6

    const-class v2, Landroid/os/Bundle;

    aput-object v2, v1, v4

    goto :goto_a9

    .line 380
    :cond_6e
    new-array v1, v4, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v8

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v7

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v6

    goto :goto_a9

    .line 377
    :cond_81
    new-array v1, v6, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v8

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v7

    goto :goto_a9

    .line 374
    :cond_90
    new-array v1, v4, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v8

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v7

    const-class v2, Landroid/os/Bundle;

    aput-object v2, v1, v6

    goto :goto_a9

    .line 371
    :cond_a3
    new-array v1, v8, [Ljava/lang/Class;

    const-class v2, Landroid/os/IBinder;

    aput-object v2, v1, v5

    .line 388
    :goto_a9
    invoke-virtual {p0, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 389
    sget-object p0, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->methodMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_b2} :catch_b2

    :catch_b2
    return-object v0

    nop

    :sswitch_data_b4
    .sparse-switch
        -0x6b5af324 -> :sswitch_42
        -0x5677d643 -> :sswitch_38
        -0x42f2e6d9 -> :sswitch_2e
        -0x236d29e3 -> :sswitch_24
        -0x222c05a5 -> :sswitch_1a
    .end sparse-switch
.end method

.method private static getPurchaseHistory(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 277
    invoke-static/range {p0 .. p2}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->isBillingSupported(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_96

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_13
    const/4 v6, 0x5

    .line 283
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    sget-object v7, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x2

    aput-object p2, v6, v7

    const/4 v7, 0x3

    aput-object v3, v6, v7

    const/4 v3, 0x4

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    aput-object v7, v6, v3

    const-string v3, "com.android.vending.billing.IInAppBillingService"

    const-string v7, "getPurchaseHistory"

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 287
    invoke-static {v9, v3, v7, v10, v6}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->invokeMethod(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8d

    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v11, 0x3e8

    div-long/2addr v6, v11

    .line 291
    check-cast v3, Landroid/os/Bundle;

    const-string v13, "RESPONSE_CODE"

    .line 292
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_8d

    const-string v13, "INAPP_PURCHASE_DATA_LIST"

    .line 295
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    if-nez v13, :cond_58

    goto :goto_8d

    .line 300
    :cond_58
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :catch_5c
    :goto_5c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_85

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 302
    :try_start_68
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "purchaseTime"

    .line 303
    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    div-long v16, v16, v11

    sub-long v16, v6, v16

    const-wide/16 v18, 0x4b0

    cmp-long v1, v16, v18

    if-lez v1, :cond_7f

    const/4 v5, 0x1

    goto :goto_85

    .line 309
    :cond_7f
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_82
    .catch Lorg/json/JSONException; {:try_start_68 .. :try_end_82} :catch_5c

    add-int/lit8 v4, v4, 0x1

    goto :goto_5c

    :cond_85
    :goto_85
    const-string v1, "INAPP_CONTINUATION_TOKEN"

    .line 317
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_8e

    :cond_8d
    :goto_8d
    const/4 v3, 0x0

    :goto_8e
    const/16 v1, 0x1e

    if-ge v4, v1, :cond_96

    if-eqz v3, :cond_96

    if-eqz v5, :cond_13

    :cond_96
    return-object v0
.end method

.method static getPurchaseHistoryInapp(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_8

    return-object v0

    :cond_8
    const-string v1, "com.android.vending.billing.IInAppBillingService"

    .line 257
    invoke-static {p0, v1}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_11

    return-object v0

    :cond_11
    const-string v2, "getPurchaseHistory"

    .line 262
    invoke-static {v1, v2}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_1a

    return-object v0

    :cond_1a
    const-string v0, "inapp"

    .line 267
    invoke-static {p0, p1, v0}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getPurchaseHistory(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 269
    invoke-static {p0}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->filterPurchases(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private static getPurchases(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_8

    return-object v0

    .line 206
    :cond_8
    invoke-static {p0, p1, p2}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->isBillingSupported(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5c

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    const/4 v4, 0x0

    :cond_16
    const/4 v5, 0x4

    .line 212
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v1

    const/4 v7, 0x1

    sget-object v8, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->PACKAGE_NAME:Ljava/lang/String;

    aput-object v8, v5, v7

    const/4 v7, 0x2

    aput-object p2, v5, v7

    aput-object v3, v5, v6

    const-string v3, "com.android.vending.billing.IInAppBillingService"

    const-string v6, "getPurchases"

    .line 214
    invoke-static {p0, v3, v6, p1, v5}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->invokeMethod(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_55

    .line 219
    check-cast v3, Landroid/os/Bundle;

    const-string v5, "RESPONSE_CODE"

    .line 220
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_55

    const-string v5, "INAPP_PURCHASE_DATA_LIST"

    .line 223
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_5c

    .line 225
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v4, v6

    .line 226
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v5, "INAPP_CONTINUATION_TOKEN"

    .line 227
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_56

    :cond_55
    move-object v3, v2

    :goto_56
    const/16 v5, 0x1e

    if-ge v4, v5, :cond_5c

    if-nez v3, :cond_16

    :cond_5c
    return-object v0
.end method

.method static getPurchasesInapp(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "inapp"

    .line 191
    invoke-static {p0, p1, v0}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getPurchases(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->filterPurchases(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static getPurchasesSubs(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "subs"

    .line 195
    invoke-static {p0, p1, v0}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getPurchases(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->filterPurchases(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static getSkuDetails(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 97
    invoke-static {p1}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->readSkuDetailsFromCache(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v0

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 101
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 102
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 107
    :cond_23
    invoke-static {p0, v1, p2, p3}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getSkuDetailsFromGoogle(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/Map;

    move-result-object p0

    .line 106
    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method private static getSkuDetailsFromGoogle(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_71

    .line 117
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_71

    .line 121
    :cond_e
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ITEM_ID_LIST"

    .line 122
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v2, 0x4

    .line 123
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x3

    .line 124
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    sget-object v4, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v2, v6

    const/4 v4, 0x2

    if-eqz p3, :cond_2e

    const-string p3, "subs"

    goto :goto_30

    :cond_2e
    const-string p3, "inapp"

    :goto_30
    aput-object p3, v2, v4

    aput-object v1, v2, v3

    const-string p3, "com.android.vending.billing.IInAppBillingService"

    const-string v1, "getSkuDetails"

    .line 127
    invoke-static {p0, p3, v1, p2, v2}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->invokeMethod(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_71

    .line 130
    check-cast p0, Landroid/os/Bundle;

    const-string p2, "RESPONSE_CODE"

    .line 131
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_71

    const-string p2, "DETAILS_LIST"

    .line 133
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_6e

    .line 134
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ne p2, p3, :cond_6e

    .line 135
    :goto_5a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v5, p2, :cond_6e

    .line 136
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_5a

    .line 140
    :cond_6e
    invoke-static {v0}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->writeSkuDetailsToCache(Ljava/util/Map;)V

    :cond_71
    :goto_71
    return-object v0
.end method

.method static hasFreeTrialPeirod(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 241
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "freeTrialPeriod"

    .line 242
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 243
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_12} :catch_15

    if-nez p0, :cond_15

    const/4 v0, 0x1

    :catch_15
    :cond_15
    return v0
.end method

.method private static invokeMethod(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 417
    invoke-static {p0, p1}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_8

    return-object p1

    .line 422
    :cond_8
    invoke-static {p0, p2}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-nez p2, :cond_f

    return-object p1

    :cond_f
    if-eqz p3, :cond_15

    .line 428
    invoke-virtual {p0, p3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 432
    :cond_15
    :try_start_15
    invoke-virtual {p2, p3, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_15 .. :try_end_19} :catch_1a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_15 .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    return-object p1
.end method

.method private static isBillingSupported(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 180
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_8
    const/4 v1, 0x3

    .line 183
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    aput-object p2, v2, v1

    const-string p2, "com.android.vending.billing.IInAppBillingService"

    const-string v1, "isBillingSupported"

    .line 185
    invoke-static {p0, p2, v1, p1, v2}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->invokeMethod(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2c

    .line 187
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_2c

    const/4 v0, 0x1

    :cond_2c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static readSkuDetailsFromCache(Ljava/util/ArrayList;)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 152
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 153
    sget-object v4, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->skuDetailSharedPrefs:Landroid/content/SharedPreferences;

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    const/4 v5, 0x2

    const-string v6, ";"

    .line 155
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 156
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    sub-long v5, v1, v5

    const-wide/32 v7, 0xa8c0

    cmp-long v9, v5, v7

    if-gez v9, :cond_10

    const/4 v5, 0x1

    .line 158
    aget-object v4, v4, v5

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_43
    return-object v0
.end method

.method private static writeSkuDetailsToCache(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 169
    sget-object v2, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->skuDetailSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 170
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 171
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_15

    .line 174
    :cond_45
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
