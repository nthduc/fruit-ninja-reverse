.class public Lcom/ironsource/mediationsdk/sdk/GeneralProperties;
.super Ljava/lang/Object;
.source "GeneralProperties.java"


# static fields
.field public static final USER_ID:Ljava/lang/String; = "userId"

.field public static final USER_ID_TYPE:Ljava/lang/String; = "userIdType"

.field private static mInstance:Lcom/ironsource/mediationsdk/sdk/GeneralProperties;


# instance fields
.field private mProperties:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->mProperties:Lorg/json/JSONObject;

    return-void
.end method

.method public static declared-synchronized getProperties()Lcom/ironsource/mediationsdk/sdk/GeneralProperties;
    .registers 2

    const-class v0, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;

    monitor-enter v0

    .line 21
    :try_start_3
    sget-object v1, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->mInstance:Lcom/ironsource/mediationsdk/sdk/GeneralProperties;

    if-nez v1, :cond_e

    .line 22
    new-instance v1, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;

    invoke-direct {v1}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;-><init>()V

    sput-object v1, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->mInstance:Lcom/ironsource/mediationsdk/sdk/GeneralProperties;

    .line 24
    :cond_e
    sget-object v1, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->mInstance:Lcom/ironsource/mediationsdk/sdk/GeneralProperties;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 42
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->mProperties:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized putKey(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    monitor-enter p0

    .line 36
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->mProperties:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_a
    .catchall {:try_start_1 .. :try_end_6} :catchall_7

    goto :goto_a

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1

    .line 38
    :catch_a
    :goto_a
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized putKeys(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_22

    .line 30
    :try_start_3
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 31
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->putKey(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1f

    goto :goto_b

    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1

    .line 32
    :cond_22
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized toJSON()Lorg/json/JSONObject;
    .registers 2

    monitor-enter p0

    .line 46
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->mProperties:Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
