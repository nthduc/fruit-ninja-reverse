.class public Lcom/chartboost/sdk/impl/d;
.super Lcom/chartboost/sdk/impl/a;
.source "SourceFile"


# instance fields
.field private i:Lcom/chartboost/sdk/impl/c;


# direct methods
.method private constructor <init>(Lcom/chartboost/sdk/impl/c;Lcom/chartboost/sdk/impl/b;)V
    .registers 12

    .line 1
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/e;->a()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/e;->d()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/e;->b()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/e;->e()Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/e;->c()Ljava/lang/String;

    move-result-object v6

    .line 6
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/e;->g()Z

    move-result v7

    .line 7
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/e;->f()Z

    move-result v8

    const/4 v1, 0x3

    move-object v0, p0

    .line 8
    invoke-direct/range {v0 .. v8}, Lcom/chartboost/sdk/impl/a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 16
    iput-object p1, p0, Lcom/chartboost/sdk/impl/d;->i:Lcom/chartboost/sdk/impl/c;

    return-void
.end method

.method public static a(Lcom/chartboost/sdk/impl/c;)Lcom/chartboost/sdk/impl/d;
    .registers 3

    .line 1
    new-instance v0, Lcom/chartboost/sdk/impl/d;

    new-instance v1, Lcom/chartboost/sdk/impl/b;

    invoke-direct {v1}, Lcom/chartboost/sdk/impl/b;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/chartboost/sdk/impl/d;-><init>(Lcom/chartboost/sdk/impl/c;Lcom/chartboost/sdk/impl/b;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/d;->i:Lcom/chartboost/sdk/impl/c;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/chartboost/sdk/impl/c;->didCacheBanner(Ljava/lang/String;Lcom/chartboost/sdk/Events/ChartboostCacheError;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/chartboost/sdk/Events/ChartboostCacheError;)V
    .registers 4

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/d;->i:Lcom/chartboost/sdk/impl/c;

    invoke-interface {v0, p1, p2}, Lcom/chartboost/sdk/impl/c;->onBannerCacheFail(Ljava/lang/String;Lcom/chartboost/sdk/Events/ChartboostCacheError;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/chartboost/sdk/Events/ChartboostShowError;)V
    .registers 4

    .line 4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/d;->i:Lcom/chartboost/sdk/impl/c;

    invoke-interface {v0, p1, p2}, Lcom/chartboost/sdk/impl/c;->onBannerShowFail(Ljava/lang/String;Lcom/chartboost/sdk/Events/ChartboostShowError;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .registers 3

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/d;->i:Lcom/chartboost/sdk/impl/c;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/chartboost/sdk/impl/c;->didClickBanner(Ljava/lang/String;Lcom/chartboost/sdk/Events/ChartboostClickError;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/d;->i:Lcom/chartboost/sdk/impl/c;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/chartboost/sdk/impl/c;->didShowBanner(Ljava/lang/String;Lcom/chartboost/sdk/Events/ChartboostShowError;)V

    return-void
.end method
