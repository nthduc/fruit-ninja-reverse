.class public Lcom/applovin/impl/sdk/network/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/applovin/impl/sdk/network/d;->a:Ljava/lang/Object;

    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 3

    invoke-static {p1}, Lcom/applovin/impl/sdk/network/d;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_b

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_b
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    :try_start_11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_19} :catch_19

    :catch_19
    :cond_19
    return-object p1
.end method

.method static a(ILjava/lang/String;Landroid/content/Context;)V
    .registers 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    sget-object v0, Lcom/applovin/impl/sdk/network/d;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_a
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/r;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/applovin/impl/sdk/network/d;->a(Ljava/lang/String;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_2b

    add-int/lit8 v3, v3, 0x1

    :try_start_20
    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_23} :catch_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_2b

    :catch_23
    :try_start_23
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_26} :catch_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2b

    :catch_26
    :try_start_26
    invoke-static {v1, p2}, Lcom/applovin/impl/sdk/network/d;->a(Lorg/json/JSONObject;Landroid/content/Context;)V

    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/applovin/impl/sdk/network/d;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/applovin/impl/sdk/b/d;->q:Lcom/applovin/impl/sdk/b/d;

    invoke-static {v1, p0}, Lcom/applovin/impl/sdk/b/e;->a(Lcom/applovin/impl/sdk/b/d;Landroid/content/Context;)V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method private static a(Lorg/json/JSONObject;Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/applovin/impl/sdk/b/d;->q:Lcom/applovin/impl/sdk/b/d;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/applovin/impl/sdk/b/e;->a(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Object;Landroid/content/Context;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 4

    sget-object v0, Lcom/applovin/impl/sdk/network/d;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/applovin/impl/sdk/b/d;->q:Lcom/applovin/impl/sdk/b/d;

    const-string v2, "{}"

    invoke-static {v1, v2, p0}, Lcom/applovin/impl/sdk/b/e;->b(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_12} :catch_16
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    :try_start_12
    monitor-exit v0

    return-object v1

    :catchall_14
    move-exception p0

    goto :goto_1d

    :catch_16
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    monitor-exit v0

    return-object p0

    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_14

    throw p0
.end method
