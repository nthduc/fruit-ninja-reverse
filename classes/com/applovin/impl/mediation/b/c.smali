.class public Lcom/applovin/impl/mediation/b/c;
.super Lcom/applovin/impl/sdk/d/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:Lcom/applovin/mediation/MaxAdFormat;

.field private final d:Lcom/applovin/impl/mediation/f;

.field private final e:Lorg/json/JSONArray;

.field private final f:Landroid/app/Activity;

.field private final g:Lcom/applovin/mediation/MaxAdListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/impl/mediation/f;Lorg/json/JSONArray;Landroid/app/Activity;Lcom/applovin/impl/sdk/j;Lcom/applovin/mediation/MaxAdListener;)V
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskFetchMediatedAd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p6}, Lcom/applovin/impl/sdk/d/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    iput-object p1, p0, Lcom/applovin/impl/mediation/b/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/mediation/b/c;->c:Lcom/applovin/mediation/MaxAdFormat;

    iput-object p3, p0, Lcom/applovin/impl/mediation/b/c;->d:Lcom/applovin/impl/mediation/f;

    iput-object p4, p0, Lcom/applovin/impl/mediation/b/c;->e:Lorg/json/JSONArray;

    iput-object p5, p0, Lcom/applovin/impl/mediation/b/c;->f:Landroid/app/Activity;

    iput-object p7, p0, Lcom/applovin/impl/mediation/b/c;->g:Lcom/applovin/mediation/MaxAdListener;

    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v0}, Lcom/applovin/impl/mediation/c/b;->a(Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .registers 7

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v1

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/b/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to fetch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/applovin/impl/mediation/b/c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ad: server returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/applovin/impl/sdk/q;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const/16 v0, -0x320

    if-ne p1, v0, :cond_42

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->N()Lcom/applovin/impl/sdk/c/h;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/g;->o:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c/h;->a(Lcom/applovin/impl/sdk/c/g;)J

    :cond_42
    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/b/c;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/b/c;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/b/c;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/b/c;Lorg/json/JSONObject;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/b/c;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/c/h;)V
    .registers 9

    sget-object v0, Lcom/applovin/impl/sdk/c/g;->c:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/c/h;->b(Lcom/applovin/impl/sdk/c/g;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    sget-object v6, Lcom/applovin/impl/sdk/b/b;->dz:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v5, v6}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long v6, v0, v4

    if-lez v6, :cond_2f

    sget-object v0, Lcom/applovin/impl/sdk/c/g;->c:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {p1, v0, v2, v3}, Lcom/applovin/impl/sdk/c/h;->b(Lcom/applovin/impl/sdk/c/g;J)V

    sget-object v0, Lcom/applovin/impl/sdk/c/g;->d:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/c/h;->c(Lcom/applovin/impl/sdk/c/g;)V

    :cond_2f
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/h;->d(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/h;->c(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/h;->e(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/h;->h(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0}, Lcom/applovin/impl/mediation/c/b;->a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0}, Lcom/applovin/impl/mediation/c/b;->b(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/b/c;->b(Lorg/json/JSONObject;)Lcom/applovin/impl/mediation/b/f;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2b} :catch_2c

    return-void

    :catch_2c
    move-exception p1

    const-string v0, "Unable to process mediated ad response"

    invoke-virtual {p0, v0, p1}, Lcom/applovin/impl/mediation/b/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to process ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Lorg/json/JSONObject;)Lcom/applovin/impl/mediation/b/f;
    .registers 10

    new-instance v7, Lcom/applovin/impl/mediation/b/f;

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/c;->c:Lcom/applovin/mediation/MaxAdFormat;

    iget-object v4, p0, Lcom/applovin/impl/mediation/b/c;->f:Landroid/app/Activity;

    iget-object v5, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    iget-object v6, p0, Lcom/applovin/impl/mediation/b/c;->g:Lcom/applovin/mediation/MaxAdListener;

    move-object v0, v7

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/applovin/impl/mediation/b/f;-><init>(Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Lorg/json/JSONObject;Landroid/app/Activity;Lcom/applovin/impl/sdk/j;Lcom/applovin/mediation/MaxAdListener;)V

    return-object v7
.end method

.method private b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v0}, Lcom/applovin/impl/mediation/c/b;->b(Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(I)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/c;->g:Lcom/applovin/mediation/MaxAdListener;

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/c;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/applovin/impl/sdk/utils/j;->a(Lcom/applovin/mediation/MaxAdListener;Ljava/lang/String;I)V

    return-void
.end method

.method private c()Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v0}, Lcom/applovin/impl/mediation/b/c;->e(Lorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/mediation/b/c;->f(Lorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/mediation/b/c;->d(Lorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/mediation/b/c;->c(Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->U:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sc"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->V:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sc2"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->W:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sc3"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->X:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "server_installed_at"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/d;->y:Lcom/applovin/impl/sdk/b/d;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/d;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "persisted_data"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_76
    iget-object v1, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->eh:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_89

    invoke-direct {p0, v0}, Lcom/applovin/impl/mediation/b/c;->h(Lorg/json/JSONObject;)V

    :cond_89
    iget-object v1, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->n()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mediation_provider"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private c(Lorg/json/JSONObject;)V
    .registers 6

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "loaded"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/j;->w()Lcom/applovin/impl/mediation/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/mediation/i;->a()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "failed"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/j;->w()Lcom/applovin/impl/mediation/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/mediation/i;->b()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "classname_info"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "initialized_adapters"

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->x()Lcom/applovin/impl/mediation/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/h;->d()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "initialized_adapter_classnames"

    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/j;->x()Lcom/applovin/impl/mediation/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/mediation/h;->c()Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "installed_mediation_adapters"

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v1}, Lcom/applovin/impl/mediation/c/c;->a(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/mediation/c/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/c/c$a;->a()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_64} :catch_65

    return-void

    :catch_65
    move-exception p1

    const-string v0, "Failed to populate adapter classnames"

    invoke-virtual {p0, v0, p1}, Lcom/applovin/impl/mediation/b/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to populate classnames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/c;->e:Lorg/json/JSONArray;

    if-eqz v0, :cond_9

    const-string v1, "signal_data"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    return-void
.end method

.method private e(Lorg/json/JSONObject;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/c;->a:Ljava/lang/String;

    const-string v2, "ad_unit_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/c;->c:Lcom/applovin/mediation/MaxAdFormat;

    invoke-static {v1}, Lcom/applovin/impl/mediation/c/c;->b(Lcom/applovin/mediation/MaxAdFormat;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_format"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/c;->d:Lcom/applovin/impl/mediation/f;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/f;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/i;->a(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/j;->z()Lcom/applovin/impl/sdk/r;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/mediation/b/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    const-string v3, "previous_winning_network"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/i;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "extra_parameters"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->ac()Lcom/applovin/impl/sdk/v;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "n"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ad_info"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private f(Lorg/json/JSONObject;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->P()Lcom/applovin/impl/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->c()Lcom/applovin/impl/sdk/k$d;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, v1, Lcom/applovin/impl/sdk/k$d;->e:Ljava/lang/String;

    const-string v4, "brand"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, v1, Lcom/applovin/impl/sdk/k$d;->f:Ljava/lang/String;

    const-string v4, "brand_name"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, v1, Lcom/applovin/impl/sdk/k$d;->g:Ljava/lang/String;

    const-string v4, "hardware"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v3, v1, Lcom/applovin/impl/sdk/k$d;->c:I

    const-string v4, "api_level"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v3, v1, Lcom/applovin/impl/sdk/k$d;->j:Ljava/lang/String;

    const-string v4, "carrier"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, v1, Lcom/applovin/impl/sdk/k$d;->i:Ljava/lang/String;

    const-string v4, "country_code"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, v1, Lcom/applovin/impl/sdk/k$d;->k:Ljava/util/Locale;

    const-string v4, "locale"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, v1, Lcom/applovin/impl/sdk/k$d;->d:Ljava/lang/String;

    const-string v4, "model"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, v1, Lcom/applovin/impl/sdk/k$d;->b:Ljava/lang/String;

    const-string v4, "os"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, v1, Lcom/applovin/impl/sdk/k$d;->a:Ljava/lang/String;

    const-string v4, "platform"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, v1, Lcom/applovin/impl/sdk/k$d;->h:Ljava/lang/String;

    const-string v4, "revision"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, v1, Lcom/applovin/impl/sdk/k$d;->l:Ljava/lang/String;

    const-string v4, "orientation_lock"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v3, v1, Lcom/applovin/impl/sdk/k$d;->r:D

    const-string v5, "tz_offset"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    iget-boolean v3, v1, Lcom/applovin/impl/sdk/k$d;->N:Z

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/o;->a(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "aida"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v3, v1, Lcom/applovin/impl/sdk/k$d;->s:I

    const-string v4, "wvvc"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v3, v1, Lcom/applovin/impl/sdk/k$d;->m:F

    float-to-double v3, v3

    const-string v5, "adns"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    iget v3, v1, Lcom/applovin/impl/sdk/k$d;->n:I

    const-string v4, "adnsd"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v3, v1, Lcom/applovin/impl/sdk/k$d;->o:F

    float-to-double v3, v3

    const-string v5, "xdpi"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    iget v3, v1, Lcom/applovin/impl/sdk/k$d;->p:F

    float-to-double v3, v3

    const-string v5, "ydpi"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    iget-wide v3, v1, Lcom/applovin/impl/sdk/k$d;->q:D

    const-string v5, "screen_size_in"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    iget-boolean v3, v1, Lcom/applovin/impl/sdk/k$d;->A:Z

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/o;->a(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sim"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v3, v1, Lcom/applovin/impl/sdk/k$d;->B:Z

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/o;->a(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "gy"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v3, v1, Lcom/applovin/impl/sdk/k$d;->C:Z

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/o;->a(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "is_tablet"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v3, v1, Lcom/applovin/impl/sdk/k$d;->D:Z

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/o;->a(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tv"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v3, v1, Lcom/applovin/impl/sdk/k$d;->E:Z

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/o;->a(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "vs"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v3, v1, Lcom/applovin/impl/sdk/k$d;->F:I

    const-string v4, "lpm"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-wide v3, v1, Lcom/applovin/impl/sdk/k$d;->H:J

    const-string v5, "fs"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-wide v3, v1, Lcom/applovin/impl/sdk/k$d;->I:J

    const-string v5, "tds"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v3, v1, Lcom/applovin/impl/sdk/k$d;->J:Lcom/applovin/impl/sdk/k$e;

    iget-wide v3, v3, Lcom/applovin/impl/sdk/k$e;->b:J

    const-string v5, "fm"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v3, v1, Lcom/applovin/impl/sdk/k$d;->J:Lcom/applovin/impl/sdk/k$e;

    iget-wide v3, v3, Lcom/applovin/impl/sdk/k$e;->a:J

    const-string v5, "tm"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v3, v1, Lcom/applovin/impl/sdk/k$d;->J:Lcom/applovin/impl/sdk/k$e;

    iget-wide v3, v3, Lcom/applovin/impl/sdk/k$e;->c:J

    const-string v5, "lmt"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v3, v1, Lcom/applovin/impl/sdk/k$d;->J:Lcom/applovin/impl/sdk/k$e;

    iget-boolean v3, v3, Lcom/applovin/impl/sdk/k$e;->d:Z

    const-string v4, "lm"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-boolean v3, v1, Lcom/applovin/impl/sdk/k$d;->t:Z

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/o;->a(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "adr"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v3, v1, Lcom/applovin/impl/sdk/k$d;->x:I

    const-string v4, "volume"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v3, v1, Lcom/applovin/impl/sdk/k$d;->y:I

    const-string v4, "sb"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/h;->f(Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "network"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v3, v1, Lcom/applovin/impl/sdk/k$d;->v:J

    const-string v5, "af"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget v3, v1, Lcom/applovin/impl/sdk/k$d;->w:F

    float-to-double v3, v3

    const-string v5, "font"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    iget-object v3, v1, Lcom/applovin/impl/sdk/k$d;->z:Ljava/lang/String;

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_154

    iget-object v3, v1, Lcom/applovin/impl/sdk/k$d;->z:Ljava/lang/String;

    const-string v4, "ua"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_154
    iget-object v3, v1, Lcom/applovin/impl/sdk/k$d;->G:Ljava/lang/String;

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_163

    iget-object v3, v1, Lcom/applovin/impl/sdk/k$d;->G:Ljava/lang/String;

    const-string v4, "so"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_163
    iget-wide v3, v1, Lcom/applovin/impl/sdk/k$d;->Q:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "bt_ms"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v3, v1, Lcom/applovin/impl/sdk/k$d;->R:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mute_switch"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, v1, Lcom/applovin/impl/sdk/k$d;->u:Lcom/applovin/impl/sdk/k$c;

    if-eqz v3, :cond_18b

    iget v4, v3, Lcom/applovin/impl/sdk/k$c;->a:I

    const-string v5, "act"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v3, v3, Lcom/applovin/impl/sdk/k$c;->b:I

    const-string v4, "acm"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_18b
    iget-object v3, v1, Lcom/applovin/impl/sdk/k$d;->K:Ljava/lang/Boolean;

    if-eqz v3, :cond_198

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "huc"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_198
    iget-object v3, v1, Lcom/applovin/impl/sdk/k$d;->L:Ljava/lang/Boolean;

    if-eqz v3, :cond_1a5

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "aru"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1a5
    iget-object v3, v1, Lcom/applovin/impl/sdk/k$d;->M:Ljava/lang/Boolean;

    if-eqz v3, :cond_1b2

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "dns"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1b2
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/b/c;->f()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/g;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v3

    iget v4, v3, Landroid/graphics/Point;->x:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "dx"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "dy"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v3, v1, Lcom/applovin/impl/sdk/k$d;->O:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1df

    iget v3, v1, Lcom/applovin/impl/sdk/k$d;->O:F

    float-to-double v5, v3

    const-string v3, "da"

    invoke-virtual {v2, v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_1df
    iget v3, v1, Lcom/applovin/impl/sdk/k$d;->P:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1ed

    iget v1, v1, Lcom/applovin/impl/sdk/k$d;->P:F

    float-to-double v3, v1

    const-string v1, "dm"

    invoke-virtual {v2, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_1ed
    invoke-direct {p0, v2}, Lcom/applovin/impl/mediation/b/c;->g(Lorg/json/JSONObject;)V

    const-string v1, "device_info"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->d()Lcom/applovin/impl/sdk/k$b;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, v0, Lcom/applovin/impl/sdk/k$b;->c:Ljava/lang/String;

    const-string v3, "package_name"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, v0, Lcom/applovin/impl/sdk/k$b;->d:Ljava/lang/String;

    const-string v3, "installer_name"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, v0, Lcom/applovin/impl/sdk/k$b;->a:Ljava/lang/String;

    const-string v3, "app_name"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, v0, Lcom/applovin/impl/sdk/k$b;->b:Ljava/lang/String;

    const-string v3, "app_version"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v2, v0, Lcom/applovin/impl/sdk/k$b;->g:J

    const-string v4, "installed_at"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v2, v0, Lcom/applovin/impl/sdk/k$b;->e:Ljava/lang/String;

    const-string v3, "tg"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    sget-object v3, Lcom/applovin/impl/sdk/b/b;->Q:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "api_did"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    const-string v3, "sdk_version"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v2, 0x83

    const-string v3, "build"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/j;->J()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "first_install"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/j;->K()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "first_install_v2"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v2, v0, Lcom/applovin/impl/sdk/k$b;->h:Z

    const-string v3, "test_ads"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-boolean v0, v0, Lcom/applovin/impl/sdk/k$b;->f:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "debug"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    sget-object v3, Lcom/applovin/impl/sdk/b/b;->dF:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_296

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_296

    const-string v2, "cuid"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_296
    iget-object v0, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->dI:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2b1

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->j()Ljava/lang/String;

    move-result-object v0

    const-string v2, "compass_random_token"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2b1
    iget-object v0, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->dK:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2cc

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->k()Ljava/lang/String;

    move-result-object v0

    const-string v2, "applovin_random_token"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2cc
    iget-object v0, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->dM:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e1

    const-string v2, "plugin_version"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2e1
    const-string v0, "app_info"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->L()Lcom/applovin/impl/sdk/network/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/a;->a()Lcom/applovin/impl/sdk/network/a$b;

    move-result-object v0

    if-eqz v0, :cond_32c

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/a$b;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lrm_ts_ms"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/a$b;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lrm_url"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/a$b;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lrm_ct_ms"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/a$b;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "lrm_rs"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "connection_info"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_32c
    return-void
.end method

.method private g(Lorg/json/JSONObject;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->P()Lcom/applovin/impl/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->e()Lcom/applovin/impl/sdk/k$a;

    move-result-object v0

    iget-object v1, v0, Lcom/applovin/impl/sdk/k$a;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "idfa"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_17
    iget-boolean v0, v0, Lcom/applovin/impl/sdk/k$a;->a:Z

    const-string v1, "dnt"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-void
.end method

.method private h(Lorg/json/JSONObject;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->N()Lcom/applovin/impl/sdk/c/h;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/g;->b:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c/h;->b(Lcom/applovin/impl/sdk/c/g;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "li"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/applovin/impl/sdk/c/g;->d:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c/h;->b(Lcom/applovin/impl/sdk/c/g;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "si"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/applovin/impl/sdk/c/g;->h:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c/h;->b(Lcom/applovin/impl/sdk/c/g;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pf"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/applovin/impl/sdk/c/g;->o:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c/h;->b(Lcom/applovin/impl/sdk/c/g;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mpf"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/applovin/impl/sdk/c/g;->i:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c/h;->b(Lcom/applovin/impl/sdk/c/g;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gpf"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/applovin/impl/sdk/c/g;->m:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c/h;->b(Lcom/applovin/impl/sdk/c/g;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "asoac"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const-string v0, "dns"

    const-string v1, "aru"

    const-string v2, "huc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fetching next ad for ad unit id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/applovin/impl/mediation/b/c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/applovin/impl/mediation/b/c;->c:Lcom/applovin/mediation/MaxAdFormat;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/applovin/impl/mediation/b/c;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    sget-object v4, Lcom/applovin/impl/sdk/b/b;->dT:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v3, v4}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-static {}, Lcom/applovin/impl/sdk/utils/r;->d()Z

    move-result v3

    if-eqz v3, :cond_41

    const-string v3, "User is connected to a VPN"

    invoke-virtual {p0, v3}, Lcom/applovin/impl/mediation/b/c;->a(Ljava/lang/String;)V

    :cond_41
    iget-object v3, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/j;->N()Lcom/applovin/impl/sdk/c/h;

    move-result-object v3

    sget-object v4, Lcom/applovin/impl/sdk/c/g;->n:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {v3, v4}, Lcom/applovin/impl/sdk/c/h;->a(Lcom/applovin/impl/sdk/c/g;)J

    sget-object v4, Lcom/applovin/impl/sdk/c/g;->c:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {v3, v4}, Lcom/applovin/impl/sdk/c/h;->b(Lcom/applovin/impl/sdk/c/g;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_61

    sget-object v4, Lcom/applovin/impl/sdk/c/g;->c:Lcom/applovin/impl/sdk/c/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/applovin/impl/sdk/c/h;->b(Lcom/applovin/impl/sdk/c/g;J)V

    :cond_61
    :try_start_61
    invoke-direct {p0}, Lcom/applovin/impl/mediation/b/c;->c()Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "rid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_8f

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-object v8, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v4, v2, v6, v8}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/j;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8f
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a6

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v6, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v4, v1, v2, v6}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/j;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a6
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bd

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v4, v0, v1, v2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/j;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_bd
    iget-object v0, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->eA:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d8

    const-string v0, "sdk_key"

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->t()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d8
    iget-object v0, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->D()Lcom/applovin/impl/mediation/debugger/ui/testmode/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->D()Lcom/applovin/impl/mediation/debugger/ui/testmode/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->a()Z

    move-result v1

    if-eqz v1, :cond_100

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_100

    const-string v1, "filter_ad_network"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "test_mode"

    const-string v1, "1"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_100
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->dZ:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_123

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->ea:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/applovin/impl/adview/c;->a(J)Ljava/util/Map;

    move-result-object v0

    :cond_123
    invoke-direct {p0, v3}, Lcom/applovin/impl/mediation/b/c;->a(Lcom/applovin/impl/sdk/c/h;)V

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v1}, Lcom/applovin/impl/sdk/network/b;->a(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v1

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/network/b$a;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/network/b$a;->b(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    invoke-direct {p0}, Lcom/applovin/impl/mediation/b/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    invoke-direct {p0}, Lcom/applovin/impl/mediation/b/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/applovin/impl/sdk/network/b$a;->a(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/applovin/impl/sdk/network/b$a;->a(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->a(Ljava/lang/Object;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/a;->f:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->b(I)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->dn:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->a(I)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/a;->e:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->c(I)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->d(Z)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/b$a;->a()Lcom/applovin/impl/sdk/network/b;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/mediation/b/c$1;

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-direct {v1, p0, v0, v2}, Lcom/applovin/impl/mediation/b/c$1;-><init>(Lcom/applovin/impl/mediation/b/c;Lcom/applovin/impl/sdk/network/b;Lcom/applovin/impl/sdk/j;)V

    sget-object v0, Lcom/applovin/impl/sdk/b/a;->c:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/d/y;->a(Lcom/applovin/impl/sdk/b/b;)V

    sget-object v0, Lcom/applovin/impl/sdk/b/a;->d:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/d/y;->b(Lcom/applovin/impl/sdk/b/b;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;)V
    :try_end_1b0
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_1b0} :catch_1b1

    return-void

    :catch_1b1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to fetch ad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/mediation/b/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to fetch ad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
