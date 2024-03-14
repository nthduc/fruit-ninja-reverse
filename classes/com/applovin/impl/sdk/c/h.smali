.class public Lcom/applovin/impl/sdk/c/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/j;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/j;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/c/h;->b:Ljava/util/Map;

    if-eqz p1, :cond_f

    iput-object p1, p0, Lcom/applovin/impl/sdk/c/h;->a:Lcom/applovin/impl/sdk/j;

    return-void

    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No sdk specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private e()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/c/h;->a:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/d;->n:Lcom/applovin/impl/sdk/b/d;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/c/h;->c()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_1e

    :catch_10
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/c/h;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v1

    const-string v2, "GlobalStatsManager"

    const-string v3, "Unable to save stats"

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1e
    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/sdk/c/g;)J
    .registers 4

    const-wide/16 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/applovin/impl/sdk/c/h;->a(Lcom/applovin/impl/sdk/c/g;J)J

    move-result-wide v0

    return-wide v0
.end method

.method a(Lcom/applovin/impl/sdk/c/g;J)J
    .registers 7

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/h;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/c/h;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/c/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_17

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_17
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    add-long/2addr v1, p2

    iget-object p2, p0, Lcom/applovin/impl/sdk/c/h;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/c/g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2e

    invoke-direct {p0}, Lcom/applovin/impl/sdk/c/h;->e()V

    return-wide v1

    :catchall_2e
    move-exception p1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p1
.end method

.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/h;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/c/h;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-direct {p0}, Lcom/applovin/impl/sdk/c/h;->e()V

    return-void

    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v1
.end method

.method public b(Lcom/applovin/impl/sdk/c/g;)J
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/h;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/c/h;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/c/g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_17

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :cond_17
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public b()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/h;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/applovin/impl/sdk/c/g;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/sdk/c/g;

    iget-object v3, p0, Lcom/applovin/impl/sdk/c/h;->b:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/c/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_21
    invoke-direct {p0}, Lcom/applovin/impl/sdk/c/h;->e()V

    monitor-exit v0

    return-void

    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1

    return-void
.end method

.method public b(Lcom/applovin/impl/sdk/c/g;J)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/h;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/c/h;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/c/g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_15

    invoke-direct {p0}, Lcom/applovin/impl/sdk/c/h;->e()V

    return-void

    :catchall_15
    move-exception p1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public c()Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/h;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p0, Lcom/applovin/impl/sdk/c/h;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_12

    :cond_2c
    monitor-exit v0

    return-object v1

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1

    return-void
.end method

.method public c(Lcom/applovin/impl/sdk/c/g;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/h;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/c/h;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/c/g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    invoke-direct {p0}, Lcom/applovin/impl/sdk/c/h;->e()V

    return-void

    :catchall_11
    move-exception p1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public d()V
    .registers 8

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/h;->a:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/d;->n:Lcom/applovin/impl/sdk/b/d;

    const-string v2, "{}"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_c
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/h;->b:Ljava/util/Map;

    monitor-enter v0
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_14} :catch_37

    :try_start_14
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :catch_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_34

    if-eqz v3, :cond_32

    :try_start_1e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/applovin/impl/sdk/c/h;->b:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_31} :catch_18
    .catchall {:try_start_1e .. :try_end_31} :catchall_34

    goto :goto_18

    :cond_32
    :try_start_32
    monitor-exit v0

    goto :goto_45

    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_34

    :try_start_36
    throw v1
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_37} :catch_37

    :catch_37
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/c/h;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v1

    const-string v2, "GlobalStatsManager"

    const-string v3, "Unable to load stats"

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_45
    return-void
.end method
