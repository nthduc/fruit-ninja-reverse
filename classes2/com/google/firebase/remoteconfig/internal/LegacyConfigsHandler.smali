.class public Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-config@@19.1.4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler$NamespaceLegacyConfigs;
    }
.end annotation


# static fields
.field static final ACTIVATE_FILE_NAME:Ljava/lang/String; = "activate"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final DEFAULTS_FILE_NAME:Ljava/lang/String; = "defaults"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final EXPERIMENT_ID_KEY:Ljava/lang/String; = "experimentId"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final EXPERIMENT_START_TIME_KEY:Ljava/lang/String; = "experimentStartTime"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final EXPERIMENT_TIME_TO_LIVE_KEY:Ljava/lang/String; = "timeToLiveMillis"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final EXPERIMENT_TRIGGER_EVENT_KEY:Ljava/lang/String; = "triggerEvent"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final EXPERIMENT_TRIGGER_TIMEOUT_KEY:Ljava/lang/String; = "triggerTimeoutMillis"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final EXPERIMENT_VARIANT_ID_KEY:Ljava/lang/String; = "variantId"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final FETCH_FILE_NAME:Ljava/lang/String; = "fetch"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final FRC_3P_NAMESPACE:Ljava/lang/String; = "firebase"

.field static final LEGACY_CONFIGS_FILE_NAME:Ljava/lang/String; = "persisted_config"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final LEGACY_FRC_NAMESPACE_PREFIX:Ljava/lang/String; = "configns:"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final LEGACY_SETTINGS_FILE_NAME:Ljava/lang/String; = "com.google.firebase.remoteconfig_legacy_settings"

.field private static final PROTO_BYTE_ARRAY_ENCODING:Ljava/nio/charset/Charset;

.field private static final SAVE_LEGACY_CONFIGS_FLAG_NAME:Ljava/lang/String; = "save_legacy_configs"

.field static final protoTimestampStringParser:Ljava/lang/ThreadLocal;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final appId:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final legacySettings:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTF-8"

    .line 101
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler;->PROTO_BYTE_ARRAY_ENCODING:Ljava/nio/charset/Charset;

    .line 122
    new-instance v0, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler$1;

    invoke-direct {v0}, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler$1;-><init>()V

    sput-object v0, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler;->protoTimestampStringParser:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler;->context:Landroid/content/Context;

    .line 137
    iput-object p2, p0, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler;->appId:Ljava/lang/String;

    const-string p2, "com.google.firebase.remoteconfig_legacy_settings"

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler;->legacySettings:Landroid/content/SharedPreferences;

    return-void
.end method

.method private convertConfigHolder(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/remoteconfig/internal/ConfigContainer;",
            ">;"
        }
    .end annotation

    .line 233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 235
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;->getTimestamp()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 237
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;->getExperimentPayloadList()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler;->convertLegacyAbtExperiments(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    .line 240
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;->getNamespaceKeyValueList()Ljava/util/List;

    move-result-object p1

    .line 241
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;

    .line 242
    invoke-virtual {v3}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->getNamespace()Ljava/lang/String;

    move-result-object v4

    const-string v5, "configns:"

    .line 243
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3c

    const/16 v5, 0x9

    .line 244
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 248
    :cond_3c
    invoke-static {}, Lcom/google/firebase/remoteconfig/internal/ConfigContainer;->newBuilder()Lcom/google/firebase/remoteconfig/internal/ConfigContainer$Builder;

    move-result-object v5

    .line 249
    invoke-virtual {v3}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->getKeyValueList()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler;->convertKeyValueList(Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/google/firebase/remoteconfig/internal/ConfigContainer$Builder;->replaceConfigsWith(Ljava/util/Map;)Lcom/google/firebase/remoteconfig/internal/ConfigContainer$Builder;

    move-result-object v3

    .line 250
    invoke-virtual {v3, v1}, Lcom/google/firebase/remoteconfig/internal/ConfigContainer$Builder;->withFetchTime(Ljava/util/Date;)Lcom/google/firebase/remoteconfig/internal/ConfigContainer$Builder;

    move-result-object v3

    const-string v5, "firebase"

    .line 251
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 252
    invoke-virtual {v3, v2}, Lcom/google/firebase/remoteconfig/internal/ConfigContainer$Builder;->withAbtExperiments(Lorg/json/JSONArray;)Lcom/google/firebase/remoteconfig/internal/ConfigContainer$Builder;

    .line 256
    :cond_5b
    :try_start_5b
    invoke-virtual {v3}, Lcom/google/firebase/remoteconfig/internal/ConfigContainer$Builder;->build()Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_62
    .catch Lorg/json/JSONException; {:try_start_5b .. :try_end_62} :catch_63

    goto :goto_1e

    :catch_63
    const-string v3, "FirebaseRemoteConfig"

    const-string v4, "A set of legacy configs could not be converted."

    .line 259
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    :cond_6b
    return-object v0
.end method

.method private convertKeyValueList(Ljava/util/List;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 322
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 323
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    .line 325
    invoke-virtual {v1}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v1

    sget-object v3, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler;->PROTO_BYTE_ARRAY_ENCODING:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Lcom/google/protobuf/ByteString;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 324
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_27
    return-object v0
.end method

.method private convertLegacyAbtExperiment(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 303
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 305
    invoke-virtual {p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getExperimentId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "experimentId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    invoke-virtual {p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getVariantId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "variantId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    sget-object v1, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler;->protoTimestampStringParser:Ljava/lang/ThreadLocal;

    .line 310
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DateFormat;

    new-instance v2, Ljava/util/Date;

    .line 311
    invoke-virtual {p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getExperimentStartTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "experimentStartTime"

    .line 307
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    invoke-virtual {p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getTriggerEvent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "triggerEvent"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 314
    invoke-virtual {p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getTriggerTimeoutMillis()J

    move-result-wide v1

    const-string v3, "triggerTimeoutMillis"

    .line 313
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 315
    invoke-virtual {p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getTimeToLiveMillis()J

    move-result-wide v1

    const-string p1, "timeToLiveMillis"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v0
.end method

.method private convertLegacyAbtExperiments(Ljava/util/List;)Lorg/json/JSONArray;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 270
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 271
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 272
    invoke-direct {p0, v1}, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler;->deserializePayload(Lcom/google/protobuf/ByteString;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 275
    :try_start_1b
    invoke-direct {p0, v1}, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler;->convertLegacyAbtExperiment(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_22} :catch_23

    goto :goto_9

    :catch_23
    move-exception v1

    const-string v2, "FirebaseRemoteConfig"

    const-string v3, "A legacy ABT experiment could not be parsed."

    .line 278
    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :cond_2c
    return-object v0
.end method

.method private deserializePayload(Lcom/google/protobuf/ByteString;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 288
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->iterator()Lcom/google/protobuf/ByteString$ByteIterator;

    move-result-object v0

    .line 289
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result p1

    new-array p1, p1, [B

    const/4 v1, 0x0

    .line 290
    :goto_b
    array-length v2, p1

    if-ge v1, v2, :cond_1d

    .line 291
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 293
    :cond_1d
    invoke-static {p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->parseFrom([B)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    move-result-object p1
    :try_end_21
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_21} :catch_22

    return-object p1

    :catch_22
    move-exception p1

    const-string v0, "FirebaseRemoteConfig"

    const-string v1, "Payload was not defined or could not be deserialized."

    .line 295
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private getConvertedLegacyConfigs()Ljava/util/Map;
    .registers 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler$NamespaceLegacyConfigs;",
            ">;"
        }
    .end annotation

    .line 196
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler;->readPersistedConfig()Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

    move-result-object v0

    .line 198
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-nez v0, :cond_c

    return-object v1

    .line 204
    :cond_c
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->getActiveConfigHolder()Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler;->convertConfigHolder(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;)Ljava/util/Map;

    move-result-object v2

    .line 206
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->getFetchedConfigHolder()Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler;->convertConfigHolder(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;)Ljava/util/Map;

    move-result-object v3

    .line 208
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->getDefaultsConfigHolder()Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler;->convertConfigHolder(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;)Ljava/util/Map;

    move-result-object v0

    .line 210
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 211
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 212
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 213
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 215
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_42
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_85

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 216
    new-instance v6, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler$NamespaceLegacyConfigs;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler$NamespaceLegacyConfigs;-><init>(Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler$1;)V

    .line 217
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_63

    .line 218
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    # invokes: Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler$NamespaceLegacyConfigs;->setActivatedConfigs(Lcom/google/firebase/remoteconfig/internal/ConfigContainer;)V
    invoke-static {v6, v7}, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler$NamespaceLegacyConfigs;->access$400(Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler$NamespaceLegacyConfigs;Lcom/google/firebase/remoteconfig/internal/ConfigContainer;)V

    .line 220
    :cond_63
    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_72

    .line 221
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    # invokes: Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler$NamespaceLegacyConfigs;->setFetchedConfigs(Lcom/google/firebase/remoteconfig/internal/ConfigContainer;)V
    invoke-static {v6, v7}, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler$NamespaceLegacyConfigs;->access$500(Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler$NamespaceLegacyConfigs;Lcom/google/firebase/remoteconfig/internal/ConfigContainer;)V

    .line 223
    :cond_72
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_81

    .line 224
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    # invokes: Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler$NamespaceLegacyConfigs;->setDefaultsConfigs(Lcom/google/firebase/remoteconfig/internal/ConfigContainer;)V
    invoke-static {v6, v7}, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler$NamespaceLegacyConfigs;->access$600(Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler$NamespaceLegacyConfigs;Lcom/google/firebase/remoteconfig/internal/ConfigContainer;)V

    .line 226
    :cond_81
    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    :cond_85
    return-object v1
.end method

.method private readPersistedConfig()Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;
    .registers 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "Failed to close persisted config file."

    const-string v1, "FirebaseRemoteConfig"

    .line 333
    iget-object v2, p0, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler;->context:Landroid/content/Context;

    const/4 v3, 0x0

    if-nez v2, :cond_a

    return-object v3

    :cond_a
    :try_start_a
    const-string v4, "persisted_config"

    .line 339
    invoke-virtual {v2, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_10} :catch_3a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_10} :catch_28
    .catchall {:try_start_a .. :try_end_10} :catchall_23

    .line 340
    :try_start_10
    invoke-static {v2}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

    move-result-object v3
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_14} :catch_21
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_14} :catch_1f
    .catchall {:try_start_10 .. :try_end_14} :catchall_4c

    if-eqz v2, :cond_1e

    .line 350
    :try_start_16
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception v2

    .line 353
    invoke-static {v1, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    :goto_1e
    return-object v3

    :catch_1f
    move-exception v4

    goto :goto_2a

    :catch_21
    move-exception v4

    goto :goto_3c

    :catchall_23
    move-exception v2

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_4d

    :catch_28
    move-exception v4

    move-object v2, v3

    :goto_2a
    :try_start_2a
    const-string v5, "Cannot initialize from persisted config."

    .line 345
    invoke-static {v1, v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_4c

    if-eqz v2, :cond_39

    .line 350
    :try_start_31
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_39

    :catch_35
    move-exception v2

    .line 353
    invoke-static {v1, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_39
    :goto_39
    return-object v3

    :catch_3a
    move-exception v4

    move-object v2, v3

    :goto_3c
    :try_start_3c
    const-string v5, "Persisted config file was not found."

    .line 342
    invoke-static {v1, v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_4c

    if-eqz v2, :cond_4b

    .line 350
    :try_start_43
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_4b

    :catch_47
    move-exception v2

    .line 353
    invoke-static {v1, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4b
    :goto_4b
    return-object v3

    :catchall_4c
    move-exception v3

    :goto_4d
    if-eqz v2, :cond_57

    .line 350
    :try_start_4f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_57

    :catch_53
    move-exception v2

    .line 353
    invoke-static {v1, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    :cond_57
    :goto_57
    throw v3
.end method

.method private saveLegacyConfigs(Ljava/util/Map;)V
    .registers 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler$NamespaceLegacyConfigs;",
            ">;)V"
        }
    .end annotation

    .line 168
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 169
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 170
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler$NamespaceLegacyConfigs;

    const-string v2, "fetch"

    .line 172
    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler;->getCacheClient(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    move-result-object v2

    const-string v3, "activate"

    .line 173
    invoke-virtual {p0, v1, v3}, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler;->getCacheClient(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    move-result-object v3

    const-string v4, "defaults"

    .line 174
    invoke-virtual {p0, v1, v4}, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler;->getCacheClient(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    move-result-object v1

    .line 176
    # invokes: Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler$NamespaceLegacyConfigs;->getFetchedConfigs()Lcom/google/firebase/remoteconfig/internal/ConfigContainer;
    invoke-static {v0}, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler$NamespaceLegacyConfigs;->access$000(Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler$NamespaceLegacyConfigs;)Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    move-result-object v4

    if-eqz v4, :cond_3f

    .line 177
    # invokes: Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler$NamespaceLegacyConfigs;->getFetchedConfigs()Lcom/google/firebase/remoteconfig/internal/ConfigContainer;
    invoke-static {v0}, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler$NamespaceLegacyConfigs;->access$000(Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler$NamespaceLegacyConfigs;)Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;->put(Lcom/google/firebase/remoteconfig/internal/ConfigContainer;)Lcom/google/android/gms/tasks/Task;

    .line 179
    :cond_3f
    # invokes: Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler$NamespaceLegacyConfigs;->getActivatedConfigs()Lcom/google/firebase/remoteconfig/internal/ConfigContainer;
    invoke-static {v0}, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler$NamespaceLegacyConfigs;->access$100(Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler$NamespaceLegacyConfigs;)Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    move-result-object v2

    if-eqz v2, :cond_4c

    .line 180
    # invokes: Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler$NamespaceLegacyConfigs;->getActivatedConfigs()Lcom/google/firebase/remoteconfig/internal/ConfigContainer;
    invoke-static {v0}, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler$NamespaceLegacyConfigs;->access$100(Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler$NamespaceLegacyConfigs;)Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;->put(Lcom/google/firebase/remoteconfig/internal/ConfigContainer;)Lcom/google/android/gms/tasks/Task;

    .line 182
    :cond_4c
    # invokes: Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler$NamespaceLegacyConfigs;->getDefaultsConfigs()Lcom/google/firebase/remoteconfig/internal/ConfigContainer;
    invoke-static {v0}, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler$NamespaceLegacyConfigs;->access$200(Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler$NamespaceLegacyConfigs;)Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 183
    # invokes: Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler$NamespaceLegacyConfigs;->getDefaultsConfigs()Lcom/google/firebase/remoteconfig/internal/ConfigContainer;
    invoke-static {v0}, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler$NamespaceLegacyConfigs;->access$200(Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler$NamespaceLegacyConfigs;)Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;->put(Lcom/google/firebase/remoteconfig/internal/ConfigContainer;)Lcom/google/android/gms/tasks/Task;

    goto :goto_8

    :cond_5a
    return-void
.end method


# virtual methods
.method getCacheClient(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;
    .registers 5

    .line 364
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler;->appId:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->getCacheClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    move-result-object p1

    return-object p1
.end method

.method public saveLegacyConfigsIfNecessary()Z
    .registers 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler;->legacySettings:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    const-string v2, "save_legacy_configs"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_21

    .line 151
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler;->getConvertedLegacyConfigs()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler;->saveLegacyConfigs(Ljava/util/Map;)V

    .line 152
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler;->legacySettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return v1

    :cond_21
    return v3
.end method
