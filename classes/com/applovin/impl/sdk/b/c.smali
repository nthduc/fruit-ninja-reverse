.class public Lcom/applovin/impl/sdk/b/c;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lcom/applovin/impl/sdk/j;

.field protected final b:Lcom/applovin/impl/sdk/q;

.field protected final c:Landroid/content/Context;

.field protected final d:Landroid/content/SharedPreferences;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Object;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/j;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/b/c;->e:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/b/c;->f:Ljava/lang/Object;

    iput-object p1, p0, Lcom/applovin/impl/sdk/b/c;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/b/c;->b:Lcom/applovin/impl/sdk/q;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->F()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/b/c;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/c;->c:Landroid/content/Context;

    const-string v1, "com.applovin.sdk.1"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/b/c;->d:Landroid/content/SharedPreferences;

    :try_start_2a
    const-class v0, Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-class v0, Lcom/applovin/impl/sdk/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_3c} :catch_3c

    :catch_3c
    :try_start_3c
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->l()Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "localSettings"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->l()Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Lcom/applovin/impl/sdk/b/c;->g:Ljava/util/Map;
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_5a} :catch_5a

    :catch_5a
    return-void
.end method

.method private static a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_d
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_1b

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide p0

    double-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_1b
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_28

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_28
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_35

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_35
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_3e

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3e
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SDK Error: unknown value type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private e()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.applovin.sdk."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/sdk/b/c;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/applovin/impl/sdk/b/b;)Lcom/applovin/impl/sdk/b/b;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/applovin/impl/sdk/b/b<",
            "TT;>;)",
            "Lcom/applovin/impl/sdk/b/b<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/c;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/applovin/impl/sdk/b/b;->c()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/b/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    monitor-exit v0

    return-object v2

    :cond_23
    monitor-exit v0

    return-object p2

    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p1

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/b/b<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_20

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/c;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/applovin/impl/sdk/b/c;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_17

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/b/b;->b()Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_17
    invoke-virtual {p1, v1}, Lcom/applovin/impl/sdk/b/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_1d

    throw p1

    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No setting type specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()V
    .registers 8

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/c;->c:Landroid/content/Context;

    if-eqz v0, :cond_52

    invoke-direct {p0}, Lcom/applovin/impl/sdk/b/c;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/b/c;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    iget-object v2, p0, Lcom/applovin/impl/sdk/b/c;->d:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {}, Lcom/applovin/impl/sdk/b/b;->c()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_19
    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/applovin/impl/sdk/b/b;

    iget-object v5, p0, Lcom/applovin/impl/sdk/b/c;->e:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/b/b;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_19

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/b/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/applovin/impl/sdk/b/c;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v6, v4, v5, v2}, Lcom/applovin/impl/sdk/j;->a(Ljava/lang/String;Ljava/lang/Object;Landroid/content/SharedPreferences$Editor;)V

    goto :goto_19

    :cond_4a
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit v1

    return-void

    :catchall_4f
    move-exception v0

    monitor-exit v1
    :try_end_51
    .catchall {:try_start_b .. :try_end_51} :catchall_4f

    throw v0

    :cond_52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No context specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/b/b;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/b/b<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1d

    if-eqz p2, :cond_15

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/c;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/applovin/impl/sdk/b/c;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/b/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p1

    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No new value specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No setting type specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 8

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/c;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_60

    if-lez v3, :cond_7

    const/4 v3, 0x0

    :try_start_1c
    invoke-virtual {p0, v2, v3}, Lcom/applovin/impl/sdk/b/c;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/b/b;)Lcom/applovin/impl/sdk/b/b;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/b/b;->b()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, p1, v4}, Lcom/applovin/impl/sdk/b/c;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v4, p0, Lcom/applovin/impl/sdk/b/c;->e:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/b/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->eC:Lcom/applovin/impl/sdk/b/b;

    if-ne v3, v2, :cond_7

    iget-object v2, p0, Lcom/applovin/impl/sdk/b/c;->e:Ljava/util/Map;

    sget-object v3, Lcom/applovin/impl/sdk/b/b;->eD:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/b/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_4a} :catch_56
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_4a} :catch_4b
    .catchall {:try_start_1c .. :try_end_4a} :catchall_60

    goto :goto_7

    :catch_4b
    move-exception v2

    :try_start_4c
    iget-object v3, p0, Lcom/applovin/impl/sdk/b/c;->b:Lcom/applovin/impl/sdk/q;

    const-string v4, "SettingsManager"

    const-string v5, "Unable to convert setting object "

    :goto_52
    invoke-virtual {v3, v4, v5, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :catch_56
    move-exception v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/b/c;->b:Lcom/applovin/impl/sdk/q;

    const-string v4, "SettingsManager"

    const-string v5, "Unable to parse JSON settingsValues array"

    goto :goto_52

    :cond_5e
    monitor-exit v0

    return-void

    :catchall_60
    move-exception p1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_4c .. :try_end_62} :catchall_60

    throw p1

    return-void
.end method

.method public b(Lcom/applovin/impl/sdk/b/b;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/b/b<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/b/c;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .registers 10

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/c;->c:Landroid/content/Context;

    if-eqz v0, :cond_77

    invoke-direct {p0}, Lcom/applovin/impl/sdk/b/c;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/b/c;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    invoke-static {}, Lcom/applovin/impl/sdk/b/b;->c()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/impl/sdk/b/b;
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_74

    :try_start_1f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/b/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/b/b;->b()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/applovin/impl/sdk/b/c;->a:Lcom/applovin/impl/sdk/j;

    const/4 v7, 0x0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    iget-object v8, p0, Lcom/applovin/impl/sdk/b/c;->d:Landroid/content/SharedPreferences;

    invoke-virtual {v6, v4, v7, v5, v8}, Lcom/applovin/impl/sdk/j;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_13

    iget-object v5, p0, Lcom/applovin/impl/sdk/b/c;->e:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/b/b;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_4e} :catch_4f
    .catchall {:try_start_1f .. :try_end_4e} :catchall_74

    goto :goto_13

    :catch_4f
    move-exception v4

    :try_start_50
    iget-object v5, p0, Lcom/applovin/impl/sdk/b/c;->b:Lcom/applovin/impl/sdk/q;

    const-string v6, "SettingsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to load \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/b/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v6, v3, v4}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    :cond_72
    monitor-exit v1

    return-void

    :catchall_74
    move-exception v0

    monitor-exit v1
    :try_end_76
    .catchall {:try_start_50 .. :try_end_76} :catchall_74

    throw v0

    :cond_77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No context specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method

.method public c(Lcom/applovin/impl/sdk/b/b;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/b/b<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/applovin/mediation/MaxAdFormat;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/b/c;->b(Lcom/applovin/impl/sdk/b/b;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/r;->c(Ljava/lang/String;)Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_22
    return-object v0
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/c;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/b/c;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_11

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/c;->a:Lcom/applovin/impl/sdk/j;

    iget-object v1, p0, Lcom/applovin/impl/sdk/b/c;->d:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Landroid/content/SharedPreferences;)V

    return-void

    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/c;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->l()Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdkSettings;->isVerboseLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->T:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/b/c;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    :goto_1e
    return v0
.end method
