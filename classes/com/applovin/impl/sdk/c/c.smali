.class public Lcom/applovin/impl/sdk/c/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/c/c$a;,
        Lcom/applovin/impl/sdk/c/c$c;,
        Lcom/applovin/impl/sdk/c/c$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/j;

.field private final b:Lcom/applovin/impl/sdk/q;

.field private final c:Ljava/lang/Object;

.field private final d:Lcom/applovin/impl/sdk/c/c$c;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/j;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/c/c;->c:Ljava/lang/Object;

    new-instance v0, Lcom/applovin/impl/sdk/c/c$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/sdk/c/c$c;-><init>(Lcom/applovin/impl/sdk/c/c;Lcom/applovin/impl/sdk/c/c$1;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/c/c;->d:Lcom/applovin/impl/sdk/c/c$c;

    if-eqz p1, :cond_1d

    iput-object p1, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/c/c;->b:Lcom/applovin/impl/sdk/q;

    return-void

    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No sdk specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/c/c;)Lcom/applovin/impl/sdk/q;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/c/c;->b:Lcom/applovin/impl/sdk/q;

    return-object p0
.end method

.method private a(Lcom/applovin/impl/sdk/c/b;JLcom/applovin/impl/sdk/AppLovinAdBase;)V
    .registers 8

    if-eqz p4, :cond_45

    if-eqz p1, :cond_3d

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->ei:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_17
    iget-object v1, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->em:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/c/b;->b()Ljava/lang/String;

    move-result-object p1

    goto :goto_30

    :cond_2c
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/c/b;->a()Ljava/lang/String;

    move-result-object p1

    :goto_30
    invoke-direct {p0, p4}, Lcom/applovin/impl/sdk/c/c;->b(Lcom/applovin/impl/sdk/AppLovinAdBase;)Lcom/applovin/impl/sdk/c/c$a;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3}, Lcom/applovin/impl/sdk/c/c$a;->a(Ljava/lang/String;J)V

    monitor-exit v0

    goto :goto_3c

    :catchall_39
    move-exception p1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_17 .. :try_end_3b} :catchall_39

    throw p1

    :cond_3c
    :goto_3c
    return-void

    :cond_3d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No key specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_45
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No ad specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/applovin/impl/sdk/c/b;Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinAdBase;)V
    .registers 7

    if-eqz p3, :cond_45

    if-eqz p1, :cond_3d

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->ei:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/c;->d:Lcom/applovin/impl/sdk/c/c$c;

    monitor-enter v0

    :try_start_17
    iget-object v1, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->em:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/c/b;->b()Ljava/lang/String;

    move-result-object p1

    goto :goto_30

    :cond_2c
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/c/b;->a()Ljava/lang/String;

    move-result-object p1

    :goto_30
    invoke-direct {p0, p3}, Lcom/applovin/impl/sdk/c/c;->b(Lcom/applovin/impl/sdk/AppLovinAdBase;)Lcom/applovin/impl/sdk/c/c$a;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/applovin/impl/sdk/c/c$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    goto :goto_3c

    :catchall_39
    move-exception p1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_17 .. :try_end_3b} :catchall_39

    throw p1

    :cond_3c
    :goto_3c
    return-void

    :cond_3d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No key specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_45
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No ad specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/c/c;Lcom/applovin/impl/sdk/c/b;JLcom/applovin/impl/sdk/AppLovinAdBase;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/impl/sdk/c/c;->a(Lcom/applovin/impl/sdk/c/b;JLcom/applovin/impl/sdk/AppLovinAdBase;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/c/c;Lcom/applovin/impl/sdk/c/b;Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinAdBase;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/sdk/c/c;->a(Lcom/applovin/impl/sdk/c/b;Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinAdBase;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/network/b;->a(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    invoke-direct {p0}, Lcom/applovin/impl/sdk/c/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    invoke-direct {p0}, Lcom/applovin/impl/sdk/c/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/h;->e(Lcom/applovin/impl/sdk/j;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->a(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/network/b$a;->a(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->ej:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/network/b$a;->b(I)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->ek:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/network/b$a;->a(I)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/b$a;->a()Lcom/applovin/impl/sdk/network/b;

    move-result-object p1

    new-instance v0, Lcom/applovin/impl/sdk/c/c$1;

    iget-object v1, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/j;

    invoke-direct {v0, p0, p1, v1}, Lcom/applovin/impl/sdk/c/c$1;-><init>(Lcom/applovin/impl/sdk/c/c;Lcom/applovin/impl/sdk/network/b;Lcom/applovin/impl/sdk/j;)V

    sget-object p1, Lcom/applovin/impl/sdk/b/b;->aI:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/d/y;->a(Lcom/applovin/impl/sdk/b/b;)V

    sget-object p1, Lcom/applovin/impl/sdk/b/b;->aJ:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/d/y;->b(Lcom/applovin/impl/sdk/b/b;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object p1

    sget-object v1, Lcom/applovin/impl/sdk/d/s$a;->c:Lcom/applovin/impl/sdk/d/s$a;

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/s$a;)V

    return-void
.end method

.method private b(Lcom/applovin/impl/sdk/AppLovinAdBase;)Lcom/applovin/impl/sdk/c/c$a;
    .registers 11

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getPrimaryKey()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/applovin/impl/sdk/c/c;->d:Lcom/applovin/impl/sdk/c/c$c;

    invoke-virtual {v1, v7}, Lcom/applovin/impl/sdk/c/c$c;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/sdk/c/c$a;

    if-nez v1, :cond_29

    new-instance v8, Lcom/applovin/impl/sdk/c/c$a;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getSecondaryKey1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getSecondaryKey2()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/j;

    const/4 v6, 0x0

    move-object v1, v8

    move-object v2, v7

    invoke-direct/range {v1 .. v6}, Lcom/applovin/impl/sdk/c/c$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;Lcom/applovin/impl/sdk/c/c$1;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/c/c;->d:Lcom/applovin/impl/sdk/c/c$c;

    invoke-virtual {p1, v7, v8}, Lcom/applovin/impl/sdk/c/c$c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v8

    :cond_29
    monitor-exit v0

    return-object v1

    :catchall_2b
    move-exception p1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/c/c;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/c/c;->c:Ljava/lang/Object;

    return-object p0
.end method

.method private b(Lcom/applovin/impl/sdk/c/b;JLcom/applovin/impl/sdk/AppLovinAdBase;)V
    .registers 8

    if-eqz p4, :cond_45

    if-eqz p1, :cond_3d

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->ei:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_17
    iget-object v1, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->em:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/c/b;->b()Ljava/lang/String;

    move-result-object p1

    goto :goto_30

    :cond_2c
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/c/b;->a()Ljava/lang/String;

    move-result-object p1

    :goto_30
    invoke-direct {p0, p4}, Lcom/applovin/impl/sdk/c/c;->b(Lcom/applovin/impl/sdk/AppLovinAdBase;)Lcom/applovin/impl/sdk/c/c$a;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3}, Lcom/applovin/impl/sdk/c/c$a;->b(Ljava/lang/String;J)V

    monitor-exit v0

    goto :goto_3c

    :catchall_39
    move-exception p1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_17 .. :try_end_3b} :catchall_39

    throw p1

    :cond_3c
    :goto_3c
    return-void

    :cond_3d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No key specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_45
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No ad specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/c/c;Lcom/applovin/impl/sdk/c/b;JLcom/applovin/impl/sdk/AppLovinAdBase;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/impl/sdk/c/c;->b(Lcom/applovin/impl/sdk/c/b;JLcom/applovin/impl/sdk/AppLovinAdBase;)V

    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/c/c;)Lcom/applovin/impl/sdk/c/c$c;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/c/c;->d:Lcom/applovin/impl/sdk/c/c$c;

    return-object p0
.end method

.method private c()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/j;

    const-string v1, "2.0/s"

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/utils/h;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/c/c;)Lcom/applovin/impl/sdk/j;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/j;

    return-object p0
.end method

.method private d()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/j;

    const-string v1, "2.0/s"

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/utils/h;->b(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->ei:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    iget-object v0, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/d/s;->b()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/c/c$2;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/c/c$2;-><init>(Lcom/applovin/impl/sdk/c/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic e(Lcom/applovin/impl/sdk/c/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/sdk/c/c;->e()V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/sdk/AppLovinAdBase;)Lcom/applovin/impl/sdk/c/c$b;
    .registers 3

    new-instance v0, Lcom/applovin/impl/sdk/c/c$b;

    invoke-direct {v0, p0, p1, p0}, Lcom/applovin/impl/sdk/c/c$b;-><init>(Lcom/applovin/impl/sdk/c/c;Lcom/applovin/impl/sdk/AppLovinAdBase;Lcom/applovin/impl/sdk/c/c;)V

    return-object v0
.end method

.method public a()V
    .registers 9

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->ei:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a4

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/d;->t:Lcom/applovin/impl/sdk/b/d;

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iget-object v1, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/d;->t:Lcom/applovin/impl/sdk/b/d;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/sdk/b/d;)V

    const-string v1, "AdEventStatsManager"

    if-eqz v0, :cond_9d

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9d

    iget-object v2, p0, Lcom/applovin/impl/sdk/c/c;->b:Lcom/applovin/impl/sdk/q;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "De-serializing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " stat ad events"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_59
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_86

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :try_start_65
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_6d
    .catch Lorg/json/JSONException; {:try_start_65 .. :try_end_6d} :catch_6e

    goto :goto_59

    :catch_6e
    move-exception v4

    iget-object v5, p0, Lcom/applovin/impl/sdk/c/c;->b:Lcom/applovin/impl/sdk/q;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to parse: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v1, v3, v4}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_59

    :cond_86
    :try_start_86
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "stats"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/c/c;->a(Lorg/json/JSONObject;)V
    :try_end_93
    .catch Lorg/json/JSONException; {:try_start_86 .. :try_end_93} :catch_94

    goto :goto_a4

    :catch_94
    move-exception v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/c/c;->b:Lcom/applovin/impl/sdk/q;

    const-string v3, "Failed to create stats to submit"

    invoke-virtual {v2, v1, v3, v0}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a4

    :cond_9d
    iget-object v0, p0, Lcom/applovin/impl/sdk/c/c;->b:Lcom/applovin/impl/sdk/q;

    const-string v2, "No serialized ad events found"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a4
    :goto_a4
    return-void
.end method

.method public b()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/c/c;->b:Lcom/applovin/impl/sdk/q;

    const-string v2, "AdEventStatsManager"

    const-string v3, "Clearing ad stats..."

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/c/c;->d:Lcom/applovin/impl/sdk/c/c$c;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/c/c$c;->clear()V

    monitor-exit v0

    return-void

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method
