.class abstract Lcom/chartboost/sdk/impl/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/v;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:D

.field private c:D

.field private d:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(D)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/chartboost/sdk/impl/w;->b:D

    .line 67
    new-instance v0, Lcom/chartboost/sdk/impl/-$$Lambda$0vl_H0AjszkepNiV6I4L-yuFIMA;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/-$$Lambda$0vl_H0AjszkepNiV6I4L-yuFIMA;-><init>(Lcom/chartboost/sdk/impl/w;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/w;->d:Ljava/lang/Runnable;

    .line 68
    iput-wide p1, p0, Lcom/chartboost/sdk/impl/w;->c:D

    return-void
.end method

.method private h()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/w;->a:Landroid/os/Handler;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/w;->a:Landroid/os/Handler;

    :cond_b
    return-void
.end method

.method private i()V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/w;->h()V

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/w;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    .line 3
    iget-object v1, p0, Lcom/chartboost/sdk/impl/w;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_e
    return-void
.end method

.method private j()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/w;->a:Landroid/os/Handler;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/chartboost/sdk/impl/w;->d:Ljava/lang/Runnable;

    if-eqz v1, :cond_e

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/chartboost/sdk/impl/w;->a:Landroid/os/Handler;

    :cond_e
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Double;
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/chartboost/sdk/impl/w;->b:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .registers 6

    .line 1
    iget-wide v0, p0, Lcom/chartboost/sdk/impl/w;->b:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/chartboost/sdk/impl/w;->b:D

    .line 2
    iget-wide v2, p0, Lcom/chartboost/sdk/impl/w;->c:D

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_11

    .line 3
    invoke-interface {p0}, Lcom/chartboost/sdk/impl/v;->a()V

    goto :goto_14

    .line 5
    :cond_11
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/w;->i()V

    :goto_14
    return-void
.end method

.method public d()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/w;->j()V

    return-void
.end method

.method public e()V
    .registers 6

    .line 1
    iget-wide v0, p0, Lcom/chartboost/sdk/impl/w;->b:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_28

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resume timer at: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/chartboost/sdk/impl/w;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " sec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BannerTimer"

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/w;->f()V

    :cond_28
    return-void
.end method

.method public f()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/w;->i()V

    return-void
.end method

.method public g()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/w;->j()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/chartboost/sdk/impl/w;->b:D

    return-void
.end method
