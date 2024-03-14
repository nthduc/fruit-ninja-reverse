.class public Lcom/ironsource/mediationsdk/AuctionDataUtils;
.super Ljava/lang/Object;
.source "AuctionDataUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/AuctionDataUtils$ImpressionHttpTask;,
        Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;,
        Lcom/ironsource/mediationsdk/AuctionDataUtils$SecureFlag;
    }
.end annotation


# static fields
.field private static final AUCTION_RESPONSE_SERVER_DATA_ADM_KEY:Ljava/lang/String; = "adMarkup"

.field private static final AUCTION_RESPONSE_SERVER_DATA_MARKET_PLACE_DEMAND_TYPE_KEY:Ljava/lang/String; = "dynamicDemandSource"

.field private static final AUCTION_RESPONSE_SERVER_DATA_PARAMS_KEY:Ljava/lang/String; = "params"

.field private static final TAG:Ljava/lang/String; = "AuctionDataUtils"

.field private static sInstance:Lcom/ironsource/mediationsdk/AuctionDataUtils;


# instance fields
.field private final AUCTION_LOSS_MACRO:Ljava/lang/String;

.field private final AUCTION_PRICE_MACRO:Ljava/lang/String;

.field private final DYNAMIC_DEMAND_SOURCE_MACRO:Ljava/lang/String;

.field private final INSTANCE_NAME_MACRO:Ljava/lang/String;

.field private final INSTANCE_TYPE_MACRO:Ljava/lang/String;

.field private final PLACEMENT_NAME_MACRO:Ljava/lang/String;

.field private mBrowserUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 62
    new-instance v0, Lcom/ironsource/mediationsdk/AuctionDataUtils;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/AuctionDataUtils;-><init>()V

    sput-object v0, Lcom/ironsource/mediationsdk/AuctionDataUtils;->sInstance:Lcom/ironsource/mediationsdk/AuctionDataUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "${AUCTION_PRICE}"

    .line 42
    iput-object v0, p0, Lcom/ironsource/mediationsdk/AuctionDataUtils;->AUCTION_PRICE_MACRO:Ljava/lang/String;

    const-string v0, "${AUCTION_LOSS}"

    .line 43
    iput-object v0, p0, Lcom/ironsource/mediationsdk/AuctionDataUtils;->AUCTION_LOSS_MACRO:Ljava/lang/String;

    const-string v0, "${PLACEMENT_NAME}"

    .line 44
    iput-object v0, p0, Lcom/ironsource/mediationsdk/AuctionDataUtils;->PLACEMENT_NAME_MACRO:Ljava/lang/String;

    const-string v0, "${INSTANCE}"

    .line 45
    iput-object v0, p0, Lcom/ironsource/mediationsdk/AuctionDataUtils;->INSTANCE_NAME_MACRO:Ljava/lang/String;

    const-string v0, "${INSTANCE_TYPE}"

    .line 46
    iput-object v0, p0, Lcom/ironsource/mediationsdk/AuctionDataUtils;->INSTANCE_TYPE_MACRO:Ljava/lang/String;

    const-string v0, "${DYNAMIC_DEMAND_SOURCE}"

    .line 47
    iput-object v0, p0, Lcom/ironsource/mediationsdk/AuctionDataUtils;->DYNAMIC_DEMAND_SOURCE_MACRO:Ljava/lang/String;

    const-string v0, ""

    .line 55
    iput-object v0, p0, Lcom/ironsource/mediationsdk/AuctionDataUtils;->mBrowserUserAgent:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$500(Lcom/ironsource/mediationsdk/AuctionDataUtils;)Ljava/lang/String;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/ironsource/mediationsdk/AuctionDataUtils;->mBrowserUserAgent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/ironsource/mediationsdk/AuctionDataUtils;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionDataUtils;->mBrowserUserAgent:Ljava/lang/String;

    return-object p1
.end method

.method private fetchNativeKeysListFromMinimizedToken(Lorg/json/JSONObject;Ljava/util/List;)Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 362
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_32

    .line 364
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 365
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    sget-object p2, Lcom/ironsource/environment/TokenConstants;->defaultNativeTokenKeysToInclude:Ljava/util/ArrayList;

    .line 366
    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 367
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 370
    :try_start_1f
    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 371
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2c} :catch_2d

    goto :goto_13

    :catch_2d
    move-exception v2

    .line 375
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13

    :cond_32
    return-object v0
.end method

.method private getAuctionSecureFlag()Lcom/ironsource/mediationsdk/AuctionDataUtils$SecureFlag;
    .registers 5

    .line 149
    sget-object v0, Lcom/ironsource/mediationsdk/AuctionDataUtils$SecureFlag;->SECURE:Lcom/ironsource/mediationsdk/AuctionDataUtils$SecureFlag;

    .line 152
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_18

    .line 154
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/ironsource/mediationsdk/AuctionDataUtils$SecureFlag;->NOT_SECURE:Lcom/ironsource/mediationsdk/AuctionDataUtils$SecureFlag;

    goto :goto_3e

    :cond_15
    sget-object v0, Lcom/ironsource/mediationsdk/AuctionDataUtils$SecureFlag;->SECURE:Lcom/ironsource/mediationsdk/AuctionDataUtils$SecureFlag;

    goto :goto_3e

    .line 156
    :cond_18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3c

    .line 158
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 159
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_33

    const/4 v0, 0x1

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    :goto_34
    if-eqz v0, :cond_39

    .line 160
    sget-object v0, Lcom/ironsource/mediationsdk/AuctionDataUtils$SecureFlag;->NOT_SECURE:Lcom/ironsource/mediationsdk/AuctionDataUtils$SecureFlag;

    goto :goto_3e

    :cond_39
    sget-object v0, Lcom/ironsource/mediationsdk/AuctionDataUtils$SecureFlag;->SECURE:Lcom/ironsource/mediationsdk/AuctionDataUtils$SecureFlag;

    goto :goto_3e

    .line 164
    :cond_3c
    sget-object v0, Lcom/ironsource/mediationsdk/AuctionDataUtils$SecureFlag;->NOT_SECURE:Lcom/ironsource/mediationsdk/AuctionDataUtils$SecureFlag;

    .line 167
    :goto_3e
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secureFlag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-object v0
.end method

.method private getDeviceLang()Ljava/lang/String;
    .registers 5

    .line 141
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 142
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lang = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-object v0
.end method

.method private getDeviceType()Ljava/lang/String;
    .registers 2

    .line 130
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/environment/DeviceStatus;->getIsTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "Tablet"

    goto :goto_13

    :cond_11
    const-string v0, "Phone"

    :goto_13
    return-object v0
.end method

.method public static getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;
    .registers 1

    .line 65
    sget-object v0, Lcom/ironsource/mediationsdk/AuctionDataUtils;->sInstance:Lcom/ironsource/mediationsdk/AuctionDataUtils;

    return-object v0
.end method

.method private getPlayerTokenWithMinimizedKeyParams(Lorg/json/JSONObject;Ljava/util/List;)Lorg/json/JSONObject;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 338
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_46

    .line 340
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 341
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 342
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 344
    :try_start_17
    sget-object v3, Lcom/ironsource/environment/TokenConstants;->minimizedTokenKeyNames:Ljava/util/HashMap;

    invoke-virtual {p0, v3, v2}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getMinimizedKeyParamFromMap(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 349
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_33

    sget-object v4, Lcom/ironsource/environment/TokenConstants;->defaultNativeTokenKeysToInclude:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    const-string v4, "metadata_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    :cond_33
    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 350
    :cond_39
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_40} :catch_41

    goto :goto_b

    :catch_41
    move-exception v2

    .line 353
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    :cond_46
    return-object v0
.end method


# virtual methods
.method createToken(Lorg/json/JSONObject;Ljava/util/List;)Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 305
    invoke-static {}, Lcom/ironsource/mediationsdk/TokenDataService;->getInstance()Lcom/ironsource/mediationsdk/TokenDataService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/TokenDataService;->getTokenData()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->fetchNativeKeysListFromMinimizedToken(Lorg/json/JSONObject;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    .line 306
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getPlayerTokenWithMinimizedKeyParams(Lorg/json/JSONObject;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object p1

    .line 309
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    .line 310
    :goto_14
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 311
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 314
    :try_start_20
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_39

    :cond_38
    move-object v2, v1

    .line 317
    :goto_39
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_40} :catch_41

    goto :goto_14

    :catch_41
    move-exception v1

    .line 319
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14

    :cond_46
    return-object v0
.end method

.method decodeAdmResponse(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 3

    :try_start_0
    const-string v0, "C38FB23A402222A0C17D34A92F971D1F"

    .line 391
    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 392
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    const/4 p1, 0x0

    return-object p1
.end method

.method encryptToken(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 3

    .line 383
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "C38FB23A402222A0C17D34A92F971D1F"

    .line 384
    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public enrichNotificationURL(Ljava/lang/String;ILcom/ironsource/mediationsdk/AuctionResponseItem;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    .line 411
    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getPrice()Ljava/lang/String;

    move-result-object v5

    .line 412
    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    .line 413
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v0

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getServerData()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getDynamicDemandSourceIdFromServerData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v6, p4

    move-object v7, p5

    .line 415
    invoke-virtual/range {v0 .. v7}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->enrichNotificationURL(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public enrichNotificationURL(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v0, "${AUCTION_PRICE}"

    .line 401
    invoke-virtual {p1, v0, p5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p5, "${AUCTION_LOSS}"

    .line 402
    invoke-virtual {p1, p5, p6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p5, "${INSTANCE}"

    .line 403
    invoke-virtual {p1, p5, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 404
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "${INSTANCE_TYPE}"

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "${DYNAMIC_DEMAND_SOURCE}"

    .line 405
    invoke-virtual {p1, p2, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "${PLACEMENT_NAME}"

    .line 406
    invoke-virtual {p1, p2, p7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method enrichToken(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Lcom/ironsource/mediationsdk/AuctionHistory;ILjava/lang/String;Lcom/ironsource/mediationsdk/utils/AuctionSettings;)Lorg/json/JSONObject;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/mediationsdk/AuctionHistory;",
            "I",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/utils/AuctionSettings;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 182
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 184
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "performance"

    const/4 v4, 0x2

    const-string v5, "instanceType"

    const-string v6, ""

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 185
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 186
    invoke-virtual {v7, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 187
    new-instance v4, Lorg/json/JSONObject;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v5, "biddingAdditionalData"

    invoke-virtual {v7, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p4, :cond_3e

    .line 188
    invoke-virtual {p4, v2}, Lcom/ironsource/mediationsdk/AuctionHistory;->getStoredPerformanceForInstance(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 189
    :cond_3e
    invoke-virtual {v7, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    invoke-virtual {v0, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d

    :cond_45
    const/4 p2, 0x1

    if-eqz p3, :cond_6f

    .line 194
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4c
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 195
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 196
    invoke-virtual {v2, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p4, :cond_67

    .line 197
    invoke-virtual {p4, v1}, Lcom/ironsource/mediationsdk/AuctionHistory;->getStoredPerformanceForInstance(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_68

    :cond_67
    move-object v7, v6

    .line 198
    :goto_68
    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4c

    .line 203
    :cond_6f
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/AdapterRepository;->getMetaData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p3

    .line 204
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    .line 205
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_84
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9e

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 206
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_84

    .line 210
    :cond_9e
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 211
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "applicationUserId"

    invoke-virtual {p3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getGender()Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c0

    const-string v1, "unknown"

    :cond_c0
    const-string v2, "applicationUserGender"

    .line 217
    invoke-virtual {p3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getAge()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_d4

    const/4 v1, -0x1

    .line 222
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_d4
    const-string v2, "applicationUserAge"

    .line 224
    invoke-virtual {p3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getConsent()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_ec

    .line 228
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "consent"

    invoke-virtual {p3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 231
    :cond_ec
    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->getMobileCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mobileCarrier"

    invoke-virtual {p3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "connectionType"

    invoke-virtual {p3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deviceOS"

    const-string v2, "android"

    .line 233
    invoke-virtual {p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    const-string v2, "deviceWidth"

    invoke-virtual {p3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 235
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    const-string v2, "deviceHeight"

    invoke-virtual {p3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceOSVersion"

    invoke-virtual {p3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "deviceModel"

    invoke-virtual {p3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "deviceMake"

    invoke-virtual {p3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bundleId"

    invoke-virtual {p3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ironsource/environment/ApplicationContext;->getPublisherApplicationVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appVersion"

    invoke-virtual {p3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-string v3, "clientTimestamp"

    invoke-virtual {p3, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 243
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getBrowserUserAgent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "browserUserAgent"

    invoke-virtual {p3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceType"

    invoke-virtual {p3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getDeviceLang()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceLang"

    invoke-virtual {p3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getAuctionSecureFlag()Lcom/ironsource/mediationsdk/AuctionDataUtils$SecureFlag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AuctionDataUtils$SecureFlag;->ordinal()I

    move-result v1

    const-string v2, "secure"

    invoke-virtual {p3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v1, 0x0

    .line 256
    :try_start_1a0
    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->getAdvertisingIdInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1c1

    .line 257
    array-length v3, v2

    if-ne v3, v4, :cond_1c1

    .line 258
    aget-object v3, v2, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b4

    .line 259
    aget-object v3, v2, v1
    :try_end_1b3
    .catch Ljava/lang/Exception; {:try_start_1a0 .. :try_end_1b3} :catch_1c1

    goto :goto_1b5

    :cond_1b4
    move-object v3, v6

    .line 261
    :goto_1b5
    :try_start_1b5
    aget-object p2, v2, p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2
    :try_end_1bf
    .catch Ljava/lang/Exception; {:try_start_1b5 .. :try_end_1bf} :catch_1c2

    move v1, p2

    goto :goto_1c2

    :catch_1c1
    :cond_1c1
    move-object v3, v6

    .line 267
    :catch_1c2
    :goto_1c2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1cb

    const-string v6, "GAID"

    goto :goto_1d7

    .line 271
    :cond_1cb
    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->getOrGenerateOnceUniqueIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 272
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1d7

    const-string v6, "UUID"

    .line 278
    :cond_1d7
    :goto_1d7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1f3

    const-string p1, "advId"

    .line 279
    invoke-virtual {p3, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "advIdType"

    .line 280
    invoke-virtual {p3, p1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v1, :cond_1ec

    const-string p1, "true"

    goto :goto_1ee

    :cond_1ec
    const-string p1, "false"

    :goto_1ee
    const-string p2, "isLimitAdTrackingEnabled"

    .line 281
    invoke-virtual {p3, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    :cond_1f3
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 285
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object p2

    const-string v1, "applicationKey"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object p2

    const-string v1, "SDKVersion"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "clientParams"

    .line 287
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "sessionDepth"

    .line 288
    invoke-virtual {p1, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "sessionId"

    .line 289
    invoke-virtual {p1, p2, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "instances"

    .line 290
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    invoke-virtual {p7}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getAuctionData()Ljava/lang/String;

    move-result-object p2

    const-string p3, "auctionData"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "metaData"

    .line 292
    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p1
.end method

.method public getAdmFromServerData(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "adMarkup"

    .line 505
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 507
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    return-object p1
.end method

.method getAuctionDataFromResponse(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 71
    new-instance v0, Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;-><init>()V

    const-string v1, "auctionId"

    .line 72
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;->mAuctionId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;->access$002(Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;->mWaterfall:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;->access$102(Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;Ljava/util/List;)Ljava/util/List;

    const-string v1, "waterfall"

    .line 75
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 76
    :goto_1d
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_5d

    .line 77
    new-instance v3, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/ironsource/mediationsdk/AuctionResponseItem;-><init>(Lorg/json/JSONObject;)V

    .line 78
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->isValid()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 84
    # getter for: Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;->mWaterfall:Ljava/util/List;
    invoke-static {v0}, Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;->access$100(Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_3c
    const/16 p1, 0x3ea

    .line 79
    # setter for: Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;->mErrorCode:I
    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;->access$202(Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;I)I

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "waterfall "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    # setter for: Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;->mErrorMessage:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;->access$302(Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "invalid response"

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5d
    const-string v1, "settings"

    .line 87
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 88
    new-instance v2, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/ironsource/mediationsdk/AuctionResponseItem;-><init>(Lorg/json/JSONObject;)V

    # setter for: Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;->mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;
    invoke-static {v0, v2}, Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;->access$402(Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;Lcom/ironsource/mediationsdk/AuctionResponseItem;)Lcom/ironsource/mediationsdk/AuctionResponseItem;

    :cond_71
    return-object v0
.end method

.method public getAuctionResponseItem(Ljava/lang/String;Ljava/util/List;)Lcom/ironsource/mediationsdk/AuctionResponseItem;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/AuctionResponseItem;",
            ">;)",
            "Lcom/ironsource/mediationsdk/AuctionResponseItem;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 174
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 175
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 176
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    return-object p1

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_21
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAuctionResponseServerDataParams(Ljava/lang/String;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "params"

    .line 484
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 486
    :try_start_7
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 487
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 488
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 489
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 490
    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 491
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 492
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 493
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1a

    .line 494
    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_33} :catch_34

    goto :goto_1a

    :catch_34
    :cond_34
    return-object v1
.end method

.method public getBrowserUserAgent()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AuctionDataUtils;->mBrowserUserAgent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 119
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 121
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getBrowserUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 125
    :cond_17
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AuctionDataUtils;->mBrowserUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getDynamicDemandSourceIdFromServerData(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "dynamicDemandSource"

    const-string v1, "params"

    const-string v2, ""

    .line 516
    :try_start_6
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 517
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 518
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 519
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 520
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_1f} :catch_20

    move-object v2, p1

    :catch_20
    :cond_20
    return-object v2
.end method

.method getMinimizedKeyParamFromMap(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 329
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 330
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    :cond_d
    return-object p2
.end method

.method sendResponse(Ljava/lang/String;)V
    .registers 5

    .line 419
    new-instance v0, Lcom/ironsource/mediationsdk/AuctionDataUtils$ImpressionHttpTask;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/AuctionDataUtils$ImpressionHttpTask;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/AuctionDataUtils$ImpressionHttpTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setBrowserUserAgent()V
    .registers 4

    .line 95
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 97
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v1

    new-instance v2, Lcom/ironsource/mediationsdk/AuctionDataUtils$1;

    invoke-direct {v2, p0, v0}, Lcom/ironsource/mediationsdk/AuctionDataUtils$1;-><init>(Lcom/ironsource/mediationsdk/AuctionDataUtils;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_16
    return-void
.end method
