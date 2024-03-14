.class public Lcom/applovin/impl/mediation/a/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lorg/json/JSONObject;

.field protected final b:Lcom/applovin/impl/sdk/j;

.field private final c:Lorg/json/JSONObject;

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/lang/Object;

.field private volatile f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/mediation/a/e;->d:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/mediation/a/e;->e:Ljava/lang/Object;

    if-eqz p3, :cond_2e

    if-eqz p2, :cond_26

    if-eqz p1, :cond_1e

    iput-object p3, p0, Lcom/applovin/impl/mediation/a/e;->b:Lcom/applovin/impl/sdk/j;

    iput-object p2, p0, Lcom/applovin/impl/mediation/a/e;->a:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/applovin/impl/mediation/a/e;->c:Lorg/json/JSONObject;

    return-void

    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No spec object specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No full response specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No sdk specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a()I
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/e;->b:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/a;->K:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "mute_state"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/mediation/a/e;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/mediation/a/e;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected B()Lorg/json/JSONObject;
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/e;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/mediation/a/e;->a:Lorg/json/JSONObject;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method protected C()Lorg/json/JSONObject;
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/mediation/a/e;->c:Lorg/json/JSONObject;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public D()Ljava/lang/String;
    .registers 3

    const-string v0, "class"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/a/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public E()Ljava/lang/String;
    .registers 3

    const-string v0, "name"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/a/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public F()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/e;->E()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public G()Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "is_testing"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/mediation/a/e;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public H()Z
    .registers 3

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "run_on_ui_thread"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/mediation/a/e;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public I()Landroid/os/Bundle;
    .registers 5

    const-string v0, "server_parameters"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/a/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/json/JSONObject;

    if-eqz v1, :cond_14

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/a/e;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/i;->c(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_19

    :cond_14
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_19
    invoke-direct {p0}, Lcom/applovin/impl/mediation/a/e;->a()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_39

    const/4 v2, 0x2

    const-string v3, "is_muted"

    if-ne v1, v2, :cond_33

    iget-object v1, p0, Lcom/applovin/impl/mediation/a/e;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->l()Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinSdkSettings;->isMuted()Z

    move-result v1

    :goto_2f
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_39

    :cond_33
    if-nez v1, :cond_37

    const/4 v1, 0x1

    goto :goto_2f

    :cond_37
    const/4 v1, 0x0

    goto :goto_2f

    :cond_39
    :goto_39
    return-object v0
.end method

.method public J()J
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/e;->b:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/a;->n:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "adapter_timeout_ms"

    invoke-virtual {p0, v2, v0, v1}, Lcom/applovin/impl/mediation/a/e;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public K()J
    .registers 4

    const-string v0, "init_completion_delay_ms"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/mediation/a/e;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public L()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Ljava/lang/String;F)F
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/mediation/a/e;->c:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/mediation/a/e;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, p1, p2, v2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;FLcom/applovin/impl/sdk/j;)F

    move-result p1

    monitor-exit v0

    return p1

    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method protected a(Ljava/lang/String;I)I
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/e;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/mediation/a/e;->a:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/mediation/a/e;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, p1, p2, v2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;ILcom/applovin/impl/sdk/j;)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method protected a(Ljava/lang/String;J)J
    .registers 7

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/e;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/mediation/a/e;->a:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/mediation/a/e;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, p1, p2, p3, v2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;JLcom/applovin/impl/sdk/j;)J

    move-result-wide p1

    monitor-exit v0

    return-wide p1

    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/e;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/mediation/a/e;->a:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/mediation/a/e;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, p1, p2, v2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method protected a(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/e;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/mediation/a/e;->a:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/mediation/a/e;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, p1, p2, v2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;Lcom/applovin/impl/sdk/j;)Lorg/json/JSONArray;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method protected a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/mediation/a/e;->c:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/mediation/a/e;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, p1, p2, v2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)Lorg/json/JSONObject;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public a(Landroid/content/Context;)Z
    .registers 4

    const-string v0, "huc"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/a/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/applovin/impl/mediation/a/e;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p1

    return p1

    :cond_12
    invoke-static {p1}, Lcom/applovin/sdk/AppLovinPrivacySettings;->hasUserConsent(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/applovin/impl/mediation/a/e;->a(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method

.method protected a(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/mediation/a/e;->c:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/e;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/mediation/a/e;->a:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/mediation/a/e;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, p1, p2, v2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/j;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method protected b(Ljava/lang/String;I)I
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/mediation/a/e;->c:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/mediation/a/e;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, p1, p2, v2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;ILcom/applovin/impl/sdk/j;)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method protected b(Ljava/lang/String;J)J
    .registers 7

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/mediation/a/e;->c:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/mediation/a/e;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, p1, p2, p3, v2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;JLcom/applovin/impl/sdk/j;)J

    move-result-wide p1

    monitor-exit v0

    return-wide p1

    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/mediation/a/e;->c:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/mediation/a/e;->c:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/mediation/a/e;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, p1, p2, v2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method protected b(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/mediation/a/e;->c:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/mediation/a/e;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, p1, p2, v2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;Lcom/applovin/impl/sdk/j;)Lorg/json/JSONArray;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public b(Landroid/content/Context;)Z
    .registers 4

    const-string v0, "aru"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/a/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/applovin/impl/mediation/a/e;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p1

    return p1

    :cond_12
    invoke-static {p1}, Lcom/applovin/sdk/AppLovinPrivacySettings;->isAgeRestrictedUser(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/applovin/impl/mediation/a/e;->a(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method

.method protected b(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/mediation/a/e;->c:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/mediation/a/e;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, p1, p2, v2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/j;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/mediation/a/e;->f:Ljava/lang/String;

    return-void
.end method

.method protected c(Ljava/lang/String;J)V
    .registers 7

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/mediation/a/e;->c:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/mediation/a/e;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, p1, p2, p3, v2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;JLcom/applovin/impl/sdk/j;)V

    monitor-exit v0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public c(Landroid/content/Context;)Z
    .registers 4

    const-string v0, "dns"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/a/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/applovin/impl/mediation/a/e;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p1

    return p1

    :cond_12
    invoke-static {p1}, Lcom/applovin/sdk/AppLovinPrivacySettings;->isDoNotSell(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/applovin/impl/mediation/a/e;->a(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_35

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/mediation/a/e;->a(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0, p1, v1}, Lcom/applovin/impl/mediation/a/e;->b(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p1

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {p1, v1}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v1

    :cond_35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No key specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/mediation/a/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    return-object v1

    :cond_d
    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/mediation/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediationAdapterSpec{adapterClass=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/e;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', adapterName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/e;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', isTesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/e;->G()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
