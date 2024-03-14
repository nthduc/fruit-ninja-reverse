.class Lcom/chartboost/sdk/impl/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lcom/chartboost/sdk/i;Lcom/chartboost/sdk/impl/a$a;)V
    .registers 2

    .line 16
    invoke-virtual {p0}, Lcom/chartboost/sdk/i;->h()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static a(Lcom/chartboost/sdk/i;Ljava/lang/String;)V
    .registers 10

    .line 11
    iget-object v0, p0, Lcom/chartboost/sdk/i;->h:Lcom/chartboost/sdk/b;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/b;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Banner/a;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 13
    new-instance v7, Lcom/chartboost/sdk/impl/a$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Banner/a;->g()Lcom/chartboost/sdk/impl/d;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/chartboost/sdk/Events/ChartboostCacheError;

    sget-object v0, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;->ASSET_DOWNLOAD_FAILURE:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    invoke-direct {v6, v0}, Lcom/chartboost/sdk/Events/ChartboostCacheError;-><init>(Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;)V

    const/4 v3, 0x4

    const/4 v5, 0x0

    move-object v1, v7

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;Lcom/chartboost/sdk/Events/ChartboostError;)V

    .line 15
    invoke-static {p0, v7}, Lcom/chartboost/sdk/impl/a0;->a(Lcom/chartboost/sdk/i;Lcom/chartboost/sdk/impl/a$a;)V

    :cond_22
    return-void
.end method

.method static a(Lcom/chartboost/sdk/i;Ljava/lang/String;I)V
    .registers 4

    if-eqz p2, :cond_11

    const/4 v0, 0x1

    if-eq p2, v0, :cond_d

    const/4 v0, 0x3

    if-eq p2, v0, :cond_9

    goto :goto_14

    .line 1
    :cond_9
    invoke-static {p0, p1}, Lcom/chartboost/sdk/impl/a0;->a(Lcom/chartboost/sdk/i;Ljava/lang/String;)V

    goto :goto_14

    .line 9
    :cond_d
    invoke-static {p0, p1}, Lcom/chartboost/sdk/impl/a0;->c(Lcom/chartboost/sdk/i;Ljava/lang/String;)V

    goto :goto_14

    .line 10
    :cond_11
    invoke-static {p0, p1}, Lcom/chartboost/sdk/impl/a0;->b(Lcom/chartboost/sdk/i;Ljava/lang/String;)V

    :goto_14
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 1

    .line 18
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    .line 17
    invoke-static {p0}, Lcom/chartboost/sdk/impl/a0;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-static {p1}, Lcom/chartboost/sdk/impl/a0;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private static b(Lcom/chartboost/sdk/i;Ljava/lang/String;)V
    .registers 9

    .line 1
    new-instance v6, Lcom/chartboost/sdk/impl/a$a;

    iget-object v1, p0, Lcom/chartboost/sdk/i;->r:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ASSETS_DOWNLOAD_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/4 v2, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;Lcom/chartboost/sdk/Events/ChartboostError;)V

    .line 3
    invoke-static {p0, v6}, Lcom/chartboost/sdk/impl/a0;->a(Lcom/chartboost/sdk/i;Lcom/chartboost/sdk/impl/a$a;)V

    return-void
.end method

.method static b(Lcom/chartboost/sdk/i;Ljava/lang/String;I)V
    .registers 4

    if-eqz p2, :cond_11

    const/4 v0, 0x1

    if-eq p2, v0, :cond_d

    const/4 v0, 0x3

    if-eq p2, v0, :cond_9

    goto :goto_14

    .line 4
    :cond_9
    invoke-static {p0, p1}, Lcom/chartboost/sdk/impl/a0;->d(Lcom/chartboost/sdk/i;Ljava/lang/String;)V

    goto :goto_14

    .line 12
    :cond_d
    invoke-static {p0, p1}, Lcom/chartboost/sdk/impl/a0;->f(Lcom/chartboost/sdk/i;Ljava/lang/String;)V

    goto :goto_14

    .line 13
    :cond_11
    invoke-static {p0, p1}, Lcom/chartboost/sdk/impl/a0;->e(Lcom/chartboost/sdk/i;Ljava/lang/String;)V

    :goto_14
    return-void
.end method

.method private static c(Lcom/chartboost/sdk/i;Ljava/lang/String;)V
    .registers 9

    .line 1
    new-instance v6, Lcom/chartboost/sdk/impl/a$a;

    iget-object v1, p0, Lcom/chartboost/sdk/i;->v:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ASSETS_DOWNLOAD_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/4 v2, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;Lcom/chartboost/sdk/Events/ChartboostError;)V

    .line 3
    invoke-static {p0, v6}, Lcom/chartboost/sdk/impl/a0;->a(Lcom/chartboost/sdk/i;Lcom/chartboost/sdk/impl/a$a;)V

    return-void
.end method

.method static d(Lcom/chartboost/sdk/i;Ljava/lang/String;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/i;->h:Lcom/chartboost/sdk/b;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/b;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Banner/a;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 3
    invoke-virtual {v0}, Lcom/chartboost/sdk/Banner/a;->g()Lcom/chartboost/sdk/impl/d;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 5
    new-instance v0, Lcom/chartboost/sdk/impl/a$a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/chartboost/sdk/Events/ChartboostCacheError;

    sget-object v1, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;->INTERNAL:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    invoke-direct {v6, v1}, Lcom/chartboost/sdk/Events/ChartboostCacheError;-><init>(Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;)V

    const/4 v3, 0x6

    const/4 v5, 0x0

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;Lcom/chartboost/sdk/Events/ChartboostError;)V

    .line 7
    invoke-static {p0, v0}, Lcom/chartboost/sdk/impl/a0;->a(Lcom/chartboost/sdk/i;Lcom/chartboost/sdk/impl/a$a;)V

    goto :goto_2c

    :cond_25
    const-string p0, "OpenRTBErrorsHelper"

    const-string p1, "Banner trait is null"

    .line 9
    invoke-static {p0, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method private static e(Lcom/chartboost/sdk/i;Ljava/lang/String;)V
    .registers 9

    .line 1
    new-instance v6, Lcom/chartboost/sdk/impl/a$a;

    invoke-virtual {p0}, Lcom/chartboost/sdk/i;->d()Lcom/chartboost/sdk/impl/a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/4 v2, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;Lcom/chartboost/sdk/Events/ChartboostError;)V

    .line 3
    invoke-static {p0, v6}, Lcom/chartboost/sdk/impl/a0;->a(Lcom/chartboost/sdk/i;Lcom/chartboost/sdk/impl/a$a;)V

    return-void
.end method

.method private static f(Lcom/chartboost/sdk/i;Ljava/lang/String;)V
    .registers 9

    .line 1
    new-instance v6, Lcom/chartboost/sdk/impl/a$a;

    invoke-virtual {p0}, Lcom/chartboost/sdk/i;->f()Lcom/chartboost/sdk/impl/a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/4 v2, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;Lcom/chartboost/sdk/Events/ChartboostError;)V

    .line 3
    invoke-static {p0, v6}, Lcom/chartboost/sdk/impl/a0;->a(Lcom/chartboost/sdk/i;Lcom/chartboost/sdk/impl/a$a;)V

    return-void
.end method
