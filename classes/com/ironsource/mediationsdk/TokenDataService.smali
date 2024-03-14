.class Lcom/ironsource/mediationsdk/TokenDataService;
.super Ljava/lang/Object;
.source "TokenDataService.java"


# static fields
.field private static mInstance:Lcom/ironsource/mediationsdk/TokenDataService;


# instance fields
.field private tokenData:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/TokenDataService;->tokenData:Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/TokenDataService;)Lorg/json/JSONObject;
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/TokenDataService;->fetchAdvertisingId()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/ironsource/mediationsdk/TokenDataService;Lorg/json/JSONObject;)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/TokenDataService;->updateTokenData(Lorg/json/JSONObject;)V

    return-void
.end method

.method private collectDataFromDevice()V
    .registers 2

    .line 71
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/TokenDataService;->fetchPermanentData()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/TokenDataService;->updateTokenData(Lorg/json/JSONObject;)V

    .line 72
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/TokenDataService;->fetchMutableData()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/TokenDataService;->updateTokenData(Lorg/json/JSONObject;)V

    return-void
.end method

.method private fetchAdvertisingId()Lorg/json/JSONObject;
    .registers 10

    const-string v0, ""

    .line 95
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 96
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_7d

    const/4 v3, 0x0

    .line 106
    :try_start_12
    invoke-static {v2}, Lcom/ironsource/environment/DeviceStatus;->getAdvertisingIdInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_36

    .line 107
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_36

    .line 108
    aget-object v5, v4, v3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_27

    .line 109
    aget-object v5, v4, v3
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_26} :catch_38

    goto :goto_28

    :cond_27
    move-object v5, v0

    :goto_28
    const/4 v6, 0x1

    .line 111
    :try_start_29
    aget-object v4, v4, v6

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_33} :catch_34

    goto :goto_54

    :catch_34
    move-exception v4

    goto :goto_3a

    :cond_36
    move-object v5, v0

    goto :goto_54

    :catch_38
    move-exception v4

    move-object v5, v0

    .line 114
    :goto_3a
    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got the following error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 117
    :goto_54
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5d

    const-string v0, "GAID"

    goto :goto_69

    .line 121
    :cond_5d
    invoke-static {v2}, Lcom/ironsource/environment/DeviceStatus;->getOrGenerateOnceUniqueIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 122
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_69

    const-string v0, "UUID"

    :cond_69
    :goto_69
    :try_start_69
    const-string v2, "advId"

    .line 127
    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "advType"

    .line 128
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "isLAT"

    .line 129
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_78} :catch_79

    goto :goto_7d

    :catch_79
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7d
    :goto_7d
    return-object v1
.end method

.method public static declared-synchronized getInstance()Lcom/ironsource/mediationsdk/TokenDataService;
    .registers 2

    const-class v0, Lcom/ironsource/mediationsdk/TokenDataService;

    monitor-enter v0

    .line 34
    :try_start_3
    sget-object v1, Lcom/ironsource/mediationsdk/TokenDataService;->mInstance:Lcom/ironsource/mediationsdk/TokenDataService;

    if-nez v1, :cond_e

    .line 35
    new-instance v1, Lcom/ironsource/mediationsdk/TokenDataService;

    invoke-direct {v1}, Lcom/ironsource/mediationsdk/TokenDataService;-><init>()V

    sput-object v1, Lcom/ironsource/mediationsdk/TokenDataService;->mInstance:Lcom/ironsource/mediationsdk/TokenDataService;

    .line 38
    :cond_e
    sget-object v1, Lcom/ironsource/mediationsdk/TokenDataService;->mInstance:Lcom/ironsource/mediationsdk/TokenDataService;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private updateTokenData(Lorg/json/JSONObject;)V
    .registers 5

    .line 62
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 63
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 65
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/ironsource/mediationsdk/TokenDataService;->add(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_18
    return-void
.end method


# virtual methods
.method declared-synchronized add(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    monitor-enter p0

    .line 54
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/TokenDataService;->tokenData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_6} :catch_9
    .catchall {:try_start_1 .. :try_end_6} :catchall_7

    goto :goto_d

    :catchall_7
    move-exception p1

    goto :goto_f

    :catch_9
    move-exception p1

    .line 56
    :try_start_a
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_7

    .line 58
    :goto_d
    monitor-exit p0

    return-void

    :goto_f
    monitor-exit p0

    throw p1
.end method

.method collectAdvertisingData()V
    .registers 3

    .line 78
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ironsource/mediationsdk/TokenDataService$1;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/TokenDataService$1;-><init>(Lcom/ironsource/mediationsdk/TokenDataService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 87
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_12
    return-void
.end method

.method fetchMutableData()Lorg/json/JSONObject;
    .registers 10

    .line 139
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 140
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 142
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDisplayWidth()I

    move-result v2

    .line 143
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDisplayHeight()I

    move-result v3

    .line 144
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDeviceDensity()F

    move-result v4

    if-eqz v1, :cond_ec

    .line 148
    :try_start_1b
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/AdapterRepository;->getMetaData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    .line 149
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 150
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_30
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 151
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_30

    .line 154
    :cond_4a
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/IronSourceObject;->getConsent()Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_5d

    const-string v7, "consent"

    .line 156
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v0, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_5d
    const-string v5, "connT"

    .line 159
    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "dVol"

    .line 160
    invoke-static {v1}, Lcom/ironsource/environment/DeviceStatus;->getSystemVolumePercent(Landroid/content/Context;)F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v0, v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v5, "root"

    .line 161
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->isRootedDevice()Z

    move-result v7

    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v5, "bat"

    .line 162
    invoke-static {v1}, Lcom/ironsource/environment/DeviceStatus;->getBatteryLevel(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "diskFS"

    .line 163
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getAvailableInternalMemorySizeInMegaBytes()J

    move-result-wide v7

    invoke-virtual {v0, v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "MD"

    .line 164
    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cTime"

    .line 165
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v0, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "dWidth"

    .line 166
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "dHeight"

    .line 167
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "dScrenScle"

    .line 168
    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sDepIS"

    .line 169
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getSessionDepth(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "sDepRV"

    .line 170
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getSessionDepth(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_cd
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_cd} :catch_ce

    goto :goto_ec

    :catch_ce
    move-exception v1

    .line 173
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got the following error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_ec
    :goto_ec
    return-object v0
.end method

.method fetchPermanentData()Lorg/json/JSONObject;
    .registers 7

    .line 183
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 184
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_10a

    .line 188
    :try_start_f
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->getAge()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1e

    const/4 v2, -0x1

    .line 190
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 193
    :cond_1e
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->getGender()Ljava/lang/String;

    move-result-object v3

    .line 194
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2e

    const-string v3, "unknown"

    :cond_2e
    const-string v4, "uGen"

    .line 197
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 200
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_50

    const-string v4, "dLang"

    .line 201
    invoke-static {v3}, Lcom/ironsource/environment/StringUtils;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    :cond_50
    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginType()Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_63

    const-string v4, "plType"

    .line 206
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    :cond_63
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getAndroidOsVersion()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7b

    const-string v4, "dOSVF"

    .line 211
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "[^0-9/.]"

    const-string v5, ""

    .line 212
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "dOSV"

    .line 213
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7b
    const-string v3, "uAge"

    .line 216
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sId"

    .line 217
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "appKey"

    .line 218
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mCar"

    .line 219
    invoke-static {v1}, Lcom/ironsource/environment/DeviceStatus;->getMobileCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "medV"

    .line 220
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "dModel"

    .line 221
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "dOS"

    const-string v3, "android"

    .line 222
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "dMake"

    .line 223
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "dAPI"

    .line 224
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "bId"

    .line 225
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "appV"

    .line 226
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ironsource/environment/ApplicationContext;->getPublisherApplicationVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "usId"

    .line 227
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_eb
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_eb} :catch_ec

    goto :goto_10a

    :catch_ec
    move-exception v1

    .line 231
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got the following error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_10a
    :goto_10a
    return-object v0
.end method

.method getTokenData()Lorg/json/JSONObject;
    .registers 2

    .line 46
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/TokenDataService;->collectDataFromDevice()V

    .line 48
    iget-object v0, p0, Lcom/ironsource/mediationsdk/TokenDataService;->tokenData:Lorg/json/JSONObject;

    return-object v0
.end method
