.class public final Lcom/applovin/impl/sdk/ad/a;
.super Lcom/applovin/impl/sdk/ad/g;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/sdk/j;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/impl/sdk/ad/g;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/sdk/j;)V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/a;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/a;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/a;->g()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/a;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/ad/a;->aJ()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/a;->c:Ljava/lang/String;

    return-void
.end method

.method private aJ()Ljava/lang/String;
    .registers 3

    const-string v0, "stream_url"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/a;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/a;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/a;->adObject:Lorg/json/JSONObject;

    const-string v2, "html"

    iget-object v3, p0, Lcom/applovin/impl/sdk/ad/a;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/applovin/impl/sdk/ad/a;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, v2, v3, v4}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/a;->adObject:Lorg/json/JSONObject;

    const-string v2, "stream_url"

    iget-object v3, p0, Lcom/applovin/impl/sdk/ad/a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/applovin/impl/sdk/ad/a;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, v2, v3, v4}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    monitor-exit v0

    return-void

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public a(Landroid/net/Uri;)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/a;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/a;->adObject:Lorg/json/JSONObject;

    const-string v2, "video"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/applovin/impl/sdk/ad/a;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, v2, p1, v3}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    monitor-exit v0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/a;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/a;->adObject:Lorg/json/JSONObject;

    const-string v2, "html"

    iget-object v3, p0, Lcom/applovin/impl/sdk/ad/a;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, v2, p1, v3}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    monitor-exit v0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public b()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/a;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/a;->adObject:Lorg/json/JSONObject;

    const-string v2, "html"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/applovin/impl/sdk/ad/a;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, v2, v3, v4}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/a;->adObject:Lorg/json/JSONObject;

    const-string v1, "stream_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public e()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/a;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/a;->adObject:Lorg/json/JSONObject;

    const-string v2, "stream_url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public f()Landroid/net/Uri;
    .registers 3

    invoke-direct {p0}, Lcom/applovin/impl/sdk/ad/a;->aJ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_f
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 3

    const-string v0, "video"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/a;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Landroid/net/Uri;
    .registers 3

    const-string v0, "click_url"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/a;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasVideoUrl()Z
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/a;->f()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public i()Landroid/net/Uri;
    .registers 3

    const-string v0, "video_click_url"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/a;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_13
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/a;->h()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public j()F
    .registers 3

    const-string v0, "mraid_close_delay_graphic"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/a;->getFloatFromAdObject(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public k()Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "close_button_graphic_hidden"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/ad/a;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public l()Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/a;->adObject:Lorg/json/JSONObject;

    const-string v1, "close_button_expandable_hidden"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/ad/a;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0

    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method public m()Lcom/applovin/impl/adview/h$a;
    .registers 3

    sget-object v0, Lcom/applovin/impl/adview/h$a;->c:Lcom/applovin/impl/adview/h$a;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/h$a;->a()I

    move-result v0

    const-string v1, "expandable_style"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/ad/a;->getIntFromAdObject(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/ad/a;->a(I)Lcom/applovin/impl/adview/h$a;

    move-result-object v0

    return-object v0
.end method
