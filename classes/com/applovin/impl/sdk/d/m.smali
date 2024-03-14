.class public Lcom/applovin/impl/sdk/d/m;
.super Lcom/applovin/impl/sdk/d/a;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/ad/d;

.field private final c:Lcom/applovin/sdk/AppLovinAdLoadListener;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/j;)V
    .registers 5

    const-string v0, "TaskFetchNextAd"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/applovin/impl/sdk/d/m;-><init>(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/sdk/AppLovinAdLoadListener;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    return-void
.end method

.method constructor <init>(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/sdk/AppLovinAdLoadListener;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V
    .registers 5

    invoke-direct {p0, p3, p4}, Lcom/applovin/impl/sdk/d/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/applovin/impl/sdk/d/m;->d:Z

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/m;->a:Lcom/applovin/impl/sdk/ad/d;

    iput-object p2, p0, Lcom/applovin/impl/sdk/d/m;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

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

    iget-object v5, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

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

.method static synthetic a(Lcom/applovin/impl/sdk/d/m;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/d/m;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/d/m;Lorg/json/JSONObject;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/d/m;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method private b(I)V
    .registers 7

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/m;->d()Lcom/applovin/impl/sdk/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v1

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/m;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to fetch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/m;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ad: server returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/applovin/impl/sdk/q;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const/16 v0, -0x320

    if-ne p1, v0, :cond_44

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->N()Lcom/applovin/impl/sdk/c/h;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/g;->h:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c/h;->a(Lcom/applovin/impl/sdk/c/g;)J

    :cond_44
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->X()Lcom/applovin/impl/sdk/ad/e;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/m;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/d/m;->i()Z

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/applovin/impl/sdk/ad/e;->a(Lcom/applovin/impl/sdk/ad/d;ZI)V

    :try_start_53
    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/d/m;->a(I)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_61

    :catch_57
    move-exception p1

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/m;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable process a failure to receive an ad"

    invoke-static {v0, v1, p1}, Lcom/applovin/impl/sdk/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_61
    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/h;->d(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/h;->c(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/h;->g(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/h;->e(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/ad/d;->a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/d/m;->a(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/d/a;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;)V

    return-void
.end method

.method private i()Z
    .registers 2

    instance-of v0, p0, Lcom/applovin/impl/sdk/d/o;

    if-nez v0, :cond_b

    instance-of v0, p0, Lcom/applovin/impl/sdk/d/l;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/d/a;
    .registers 9

    new-instance v4, Lcom/applovin/impl/sdk/ad/f$a;

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->a:Lcom/applovin/impl/sdk/ad/d;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/m;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    invoke-direct {v4, v0, v1, v2}, Lcom/applovin/impl/sdk/ad/f$a;-><init>(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/j;)V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/d/m;->i()Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/applovin/impl/sdk/ad/f$a;->a(Z)V

    new-instance v6, Lcom/applovin/impl/sdk/d/t;

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/m;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/m;->b()Lcom/applovin/impl/sdk/ad/b;

    move-result-object v3

    iget-object v5, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/d/t;-><init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/j;)V

    return-object v6
.end method

.method a()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/m;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "zone_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/m;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/d;->c()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/m;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/d;->c()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinAdSize;->getLabel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "size"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/m;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/d;->d()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v1

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/m;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/d;->d()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinAdType;->getLabel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "require"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_43
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->ac()Lcom/applovin/impl/sdk/v;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/m;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "n"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected a(I)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/applovin/impl/sdk/n;

    if-eqz v1, :cond_10

    check-cast v0, Lcom/applovin/impl/sdk/n;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/m;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-interface {v0, v1, p1}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/ad/d;I)V

    goto :goto_13

    :cond_10
    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V

    :cond_13
    :goto_13
    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/d/m;->d:Z

    return-void
.end method

.method protected b()Lcom/applovin/impl/sdk/ad/b;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/d;->j()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/applovin/impl/sdk/ad/b;->b:Lcom/applovin/impl/sdk/ad/b;

    goto :goto_d

    :cond_b
    sget-object v0, Lcom/applovin/impl/sdk/ad/b;->c:Lcom/applovin/impl/sdk/ad/b;

    :goto_d
    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/h;->g(Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/h;->h(Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .registers 7

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/d/m;->d:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preloading next ad of zone: "

    goto :goto_13

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fetching next ad of zone: "

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/m;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->dT:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-static {}, Lcom/applovin/impl/sdk/utils/r;->d()Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string v0, "User is connected to a VPN"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/m;->a(Ljava/lang/String;)V

    :cond_3d
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->N()Lcom/applovin/impl/sdk/c/h;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/g;->a:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c/h;->a(Lcom/applovin/impl/sdk/c/g;)J

    sget-object v1, Lcom/applovin/impl/sdk/c/g;->c:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c/h;->b(Lcom/applovin/impl/sdk/c/g;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_5d

    sget-object v1, Lcom/applovin/impl/sdk/c/g;->c:Lcom/applovin/impl/sdk/c/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/c/h;->b(Lcom/applovin/impl/sdk/c/g;J)V

    :cond_5d
    const/4 v1, 0x0

    :try_start_5e
    iget-object v2, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/j;->P()Lcom/applovin/impl/sdk/k;

    move-result-object v2

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/m;->a()Ljava/util/Map;

    move-result-object v3

    iget-boolean v4, p0, Lcom/applovin/impl/sdk/d/m;->d:Z

    invoke-virtual {v2, v3, v4, v1}, Lcom/applovin/impl/sdk/k;->a(Ljava/util/Map;ZZ)Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    sget-object v5, Lcom/applovin/impl/sdk/b/b;->dZ:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v4, v5}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_91

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    sget-object v4, Lcom/applovin/impl/sdk/b/b;->ea:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v3, v4}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/applovin/impl/adview/c;->a(J)Ljava/util/Map;

    move-result-object v3

    :cond_91
    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/m;->a(Lcom/applovin/impl/sdk/c/h;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/network/b;->a(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/m;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/applovin/impl/sdk/network/b$a;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/network/b$a;->a(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/m;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/network/b$a;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    const-string v2, "GET"

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/network/b$a;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/network/b$a;->b(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/network/b$a;->a(Ljava/lang/Object;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    sget-object v3, Lcom/applovin/impl/sdk/b/b;->dn:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/network/b$a;->a(I)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    sget-object v3, Lcom/applovin/impl/sdk/b/b;->do:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/network/b$a;->a(Z)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    sget-object v3, Lcom/applovin/impl/sdk/b/b;->dp:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/network/b$a;->b(Z)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    sget-object v3, Lcom/applovin/impl/sdk/b/b;->dm:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/network/b$a;->b(I)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/network/b$a;->d(Z)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/b$a;->a()Lcom/applovin/impl/sdk/network/b;

    move-result-object v0

    new-instance v2, Lcom/applovin/impl/sdk/d/m$1;

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    invoke-direct {v2, p0, v0, v3}, Lcom/applovin/impl/sdk/d/m$1;-><init>(Lcom/applovin/impl/sdk/d/m;Lcom/applovin/impl/sdk/network/b;Lcom/applovin/impl/sdk/j;)V

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->aG:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v2, v0}, Lcom/applovin/impl/sdk/d/y;->a(Lcom/applovin/impl/sdk/b/b;)V

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->aH:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v2, v0}, Lcom/applovin/impl/sdk/d/y;->b(Lcom/applovin/impl/sdk/b/b;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;)V
    :try_end_12c
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_12c} :catch_12d

    goto :goto_147

    :catch_12d
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to fetch ad "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/m;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/applovin/impl/sdk/d/m;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/applovin/impl/sdk/d/m;->b(I)V

    :goto_147
    return-void
.end method
