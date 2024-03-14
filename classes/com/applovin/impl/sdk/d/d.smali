.class public Lcom/applovin/impl/sdk/d/d;
.super Lcom/applovin/impl/sdk/d/c;


# instance fields
.field private final c:Lcom/applovin/impl/sdk/ad/a;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/ad/a;Lcom/applovin/impl/sdk/j;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .registers 5

    const-string v0, "TaskCacheAppLovinAd"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/applovin/impl/sdk/d/c;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/impl/sdk/j;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/d;->c:Lcom/applovin/impl/sdk/ad/a;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/d/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/sdk/d/d;->j()V

    return-void
.end method

.method private j()V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/d;->c:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->d()Z

    move-result v0

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/d/d;->e:Z

    const-string v2, "..."

    if-nez v0, :cond_39

    if-eqz v1, :cond_f

    goto :goto_39

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Begin processing for non-streaming ad #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/d;->c:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/a;->getAdIdNumber()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/d;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/d;->c()V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/d/d;->k()V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/d/d;->l()V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/d;->i()V

    goto :goto_76

    :cond_39
    :goto_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Begin caching for streaming ad #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/d;->c:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/ad/a;->getAdIdNumber()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/d/d;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/d;->c()V

    if-eqz v0, :cond_70

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/d/d;->d:Z

    if-eqz v0, :cond_62

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/d;->i()V

    :cond_62
    invoke-direct {p0}, Lcom/applovin/impl/sdk/d/d;->k()V

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/d/d;->d:Z

    if-nez v0, :cond_6c

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/d;->i()V

    :cond_6c
    invoke-direct {p0}, Lcom/applovin/impl/sdk/d/d;->l()V

    goto :goto_76

    :cond_70
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/d;->i()V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/d/d;->k()V

    :goto_76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/d;->c:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/a;->getCreatedAtMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/d;->c:Lcom/applovin/impl/sdk/ad/a;

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/d;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v2, v3}, Lcom/applovin/impl/sdk/c/d;->a(Lcom/applovin/impl/sdk/AppLovinAdBase;Lcom/applovin/impl/sdk/j;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/d;->c:Lcom/applovin/impl/sdk/ad/a;

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/d;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/c/d;->a(JLcom/applovin/impl/sdk/AppLovinAdBase;Lcom/applovin/impl/sdk/j;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/d;->c:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/d;->a(Lcom/applovin/impl/sdk/AppLovinAdBase;)V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/d;->a()V

    return-void
.end method

.method private k()V
    .registers 5

    const-string v0, "Caching HTML resources..."

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/d;->c:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/d;->c:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/a;->H()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/d;->c:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/sdk/d/d;->a(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/ad/g;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/d;->c:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/ad/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/d;->c:Lcom/applovin/impl/sdk/ad/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ad/a;->a(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finish caching non-video resources for ad #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/d;->c:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/a;->getAdIdNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/d;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/d;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad updated with cachedHTML = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/d;->c:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/ad/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private l()V
    .registers 3

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/d;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/d;->c:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/d;->e(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/d;->c:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/a;->e()V

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/d;->c:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/ad/a;->a(Landroid/net/Uri;)V

    :cond_1d
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/applovin/impl/mediation/a/a;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/d/c;->a(Lcom/applovin/impl/mediation/a/a;)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/d/d;->d:Z

    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/d/d;->e:Z

    return-void
.end method

.method public run()V
    .registers 3

    invoke-super {p0}, Lcom/applovin/impl/sdk/d/c;->run()V

    new-instance v0, Lcom/applovin/impl/sdk/d/d$1;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/d/d$1;-><init>(Lcom/applovin/impl/sdk/d/d;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/d;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/g;->K()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/d;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/d/s;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_21

    :cond_1e
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_21
    return-void
.end method
