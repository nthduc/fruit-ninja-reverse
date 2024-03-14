.class public Lcom/chartboost/sdk/Banner/a;
.super Lcom/chartboost/sdk/impl/g;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/Banner/b;


# instance fields
.field private E:Lcom/chartboost/sdk/impl/d;

.field private F:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/d;Ljava/util/concurrent/ScheduledExecutorService;Lcom/chartboost/sdk/impl/n;Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/Networking/g;Lcom/chartboost/sdk/Networking/h;Lcom/chartboost/sdk/Model/g;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Libraries/i;Lcom/chartboost/sdk/Tracking/a;Landroid/os/Handler;Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/Networking/i;Lcom/chartboost/sdk/e;Lcom/chartboost/sdk/Networking/j;Lcom/chartboost/sdk/impl/u0;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/d;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/chartboost/sdk/impl/n;",
            "Lcom/chartboost/sdk/Libraries/f;",
            "Lcom/chartboost/sdk/Networking/g;",
            "Lcom/chartboost/sdk/Networking/h;",
            "Lcom/chartboost/sdk/Model/g;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/chartboost/sdk/Model/h;",
            ">;",
            "Landroid/content/SharedPreferences;",
            "Lcom/chartboost/sdk/Libraries/i;",
            "Lcom/chartboost/sdk/Tracking/a;",
            "Landroid/os/Handler;",
            "Lcom/chartboost/sdk/d;",
            "Lcom/chartboost/sdk/Networking/i;",
            "Lcom/chartboost/sdk/e;",
            "Lcom/chartboost/sdk/Networking/j;",
            "Lcom/chartboost/sdk/impl/u0;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct/range {p0 .. p17}, Lcom/chartboost/sdk/impl/g;-><init>(Lcom/chartboost/sdk/impl/a;Ljava/util/concurrent/ScheduledExecutorService;Lcom/chartboost/sdk/impl/n;Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/Networking/g;Lcom/chartboost/sdk/Networking/h;Lcom/chartboost/sdk/Model/g;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Libraries/i;Lcom/chartboost/sdk/Tracking/a;Landroid/os/Handler;Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/Networking/i;Lcom/chartboost/sdk/e;Lcom/chartboost/sdk/Networking/j;Lcom/chartboost/sdk/impl/u0;)V

    move-object v1, p1

    .line 4
    iput-object v1, v0, Lcom/chartboost/sdk/Banner/a;->E:Lcom/chartboost/sdk/impl/d;

    move-object v1, p12

    .line 5
    iput-object v1, v0, Lcom/chartboost/sdk/Banner/a;->F:Landroid/os/Handler;

    return-void
.end method

.method private a(Lcom/chartboost/sdk/i;)Z
    .registers 2

    if-eqz p1, :cond_e

    .line 5
    invoke-static {}, Lcom/chartboost/sdk/c;->c()Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_e

    .line 8
    :cond_9
    invoke-static {}, Lcom/chartboost/sdk/i;->o()Z

    move-result p1

    return p1

    :cond_e
    :goto_e
    const/4 p1, 0x0

    return p1
.end method

.method private f(Ljava/lang/String;)Z
    .registers 10

    .line 1
    invoke-static {}, Lcom/chartboost/sdk/impl/x;->c()Lcom/chartboost/sdk/impl/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/x;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "AdUnitBannerManager"

    const-string v1, "Location cannot be empty"

    .line 2
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v7, Lcom/chartboost/sdk/Events/ChartboostCacheError;

    sget-object v0, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;->INTERNAL:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    invoke-direct {v7, v0}, Lcom/chartboost/sdk/Events/ChartboostCacheError;-><init>(Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;)V

    .line 4
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/a;->F:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/a$a;

    iget-object v3, p0, Lcom/chartboost/sdk/Banner/a;->E:Lcom/chartboost/sdk/impl/d;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x6

    const/4 v6, 0x0

    move-object v2, v1

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;Lcom/chartboost/sdk/Events/ChartboostError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    return p1

    :cond_2d
    const/4 p1, 0x1

    return p1
.end method

.method private i()V
    .registers 8

    .line 1
    new-instance v5, Lcom/chartboost/sdk/Events/ChartboostCacheError;

    sget-object v0, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;->SESSION_NOT_STARTED:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    invoke-direct {v5, v0}, Lcom/chartboost/sdk/Events/ChartboostCacheError;-><init>(Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;)V

    .line 2
    new-instance v6, Lcom/chartboost/sdk/impl/a$a;

    iget-object v1, p0, Lcom/chartboost/sdk/Banner/a;->E:Lcom/chartboost/sdk/impl/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/g;->q:Lcom/chartboost/sdk/ChartboostBanner;

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartboostBanner;->getLocation()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x6

    const/4 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;Lcom/chartboost/sdk/Events/ChartboostError;)V

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/a;->F:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private j()V
    .registers 8

    .line 1
    new-instance v5, Lcom/chartboost/sdk/Events/ChartboostShowError;

    sget-object v0, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;->SESSION_NOT_STARTED:Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    const/4 v1, 0x0

    invoke-direct {v5, v0, v1}, Lcom/chartboost/sdk/Events/ChartboostShowError;-><init>(Lcom/chartboost/sdk/Events/ChartboostShowError$Code;Z)V

    .line 2
    new-instance v6, Lcom/chartboost/sdk/impl/a$a;

    iget-object v1, p0, Lcom/chartboost/sdk/Banner/a;->E:Lcom/chartboost/sdk/impl/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/g;->q:Lcom/chartboost/sdk/ChartboostBanner;

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartboostBanner;->getLocation()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x7

    const/4 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;Lcom/chartboost/sdk/Events/ChartboostError;)V

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/a;->F:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/ChartboostBanner;)V
    .registers 2

    .line 10
    iput-object p1, p0, Lcom/chartboost/sdk/impl/g;->q:Lcom/chartboost/sdk/ChartboostBanner;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/Banner/a;->h()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g;->q:Lcom/chartboost/sdk/ChartboostBanner;

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartboostBanner;->getLocation()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, p1, v1}, Lcom/chartboost/sdk/impl/z;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_14

    .line 4
    :cond_11
    invoke-direct {p0}, Lcom/chartboost/sdk/Banner/a;->j()V

    :goto_14
    return-void
.end method

.method public a()Z
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g;->q:Lcom/chartboost/sdk/ChartboostBanner;

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartboostBanner;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/g;->d(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public b()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/Banner/a;->h()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g;->q:Lcom/chartboost/sdk/ChartboostBanner;

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartboostBanner;->getLocation()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/ChartboostBanner;->didClickBanner(Ljava/lang/String;Lcom/chartboost/sdk/Events/ChartboostClickError;)V

    :cond_10
    return-void
.end method

.method public c()V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/Banner/a;->h()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2
    new-instance v0, Lcom/chartboost/sdk/impl/g$b;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/g;->q:Lcom/chartboost/sdk/ChartboostBanner;

    invoke-virtual {v1}, Lcom/chartboost/sdk/ChartboostBanner;->getLocation()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/chartboost/sdk/impl/g$b;-><init>(Lcom/chartboost/sdk/impl/g;ILjava/lang/String;Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 3
    iget-object v1, p0, Lcom/chartboost/sdk/impl/g;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1f

    .line 5
    :cond_1c
    invoke-direct {p0}, Lcom/chartboost/sdk/Banner/a;->i()V

    :goto_1f
    return-void
.end method

.method public d()V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/Banner/a;->h()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2
    new-instance v0, Lcom/chartboost/sdk/impl/g$b;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/g;->q:Lcom/chartboost/sdk/ChartboostBanner;

    invoke-virtual {v1}, Lcom/chartboost/sdk/ChartboostBanner;->getLocation()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/chartboost/sdk/impl/g$b;-><init>(Lcom/chartboost/sdk/impl/g;ILjava/lang/String;Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 3
    iget-object v1, p0, Lcom/chartboost/sdk/impl/g;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1f

    .line 5
    :cond_1c
    invoke-direct {p0}, Lcom/chartboost/sdk/Banner/a;->j()V

    :goto_1f
    return-void
.end method

.method public g()Lcom/chartboost/sdk/impl/d;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/a;->E:Lcom/chartboost/sdk/impl/d;

    return-object v0
.end method

.method h()Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Banner/a;->a(Lcom/chartboost/sdk/i;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g;->q:Lcom/chartboost/sdk/ChartboostBanner;

    if-eqz v0, :cond_17

    .line 4
    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartboostBanner;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Banner/a;->f(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_17
    const/4 v0, 0x0

    return v0
.end method
