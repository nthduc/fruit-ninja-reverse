.class public Lcom/chartboost/sdk/impl/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/chartboost/sdk/impl/s;

.field private b:Lcom/chartboost/sdk/impl/u;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/chartboost/sdk/impl/r;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/chartboost/sdk/impl/t;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/chartboost/sdk/impl/q;->a:Lcom/chartboost/sdk/impl/s;

    .line 3
    iput-object v0, p0, Lcom/chartboost/sdk/impl/q;->b:Lcom/chartboost/sdk/impl/u;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/q;->e:Z

    return-void
.end method

.method private m()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/chartboost/sdk/impl/q;->c:Ljava/lang/ref/WeakReference;

    :cond_a
    return-void
.end method

.method private n()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/chartboost/sdk/impl/q;->d:Ljava/lang/ref/WeakReference;

    :cond_a
    return-void
.end method

.method private o()Lcom/chartboost/sdk/Model/h$a;
    .registers 2

    .line 1
    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 3
    invoke-virtual {v0}, Lcom/chartboost/sdk/i;->g()Lcom/chartboost/sdk/Model/h;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 5
    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/h;->a()Lcom/chartboost/sdk/Model/h$a;

    move-result-object v0

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/ref/WeakReference;D)Lcom/chartboost/sdk/impl/s;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/chartboost/sdk/impl/r;",
            ">;D)",
            "Lcom/chartboost/sdk/impl/s;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/chartboost/sdk/impl/s;

    invoke-direct {v0, p1, p2, p3}, Lcom/chartboost/sdk/impl/s;-><init>(Ljava/lang/ref/WeakReference;D)V

    return-object v0
.end method

.method public a()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/q;->m()V

    .line 14
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/q;->n()V

    return-void
.end method

.method public a(Lcom/chartboost/sdk/impl/r;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/q;->m()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/q;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Lcom/chartboost/sdk/impl/t;)V
    .registers 3

    .line 3
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/q;->n()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/q;->d:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 6
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/q;->e:Z

    if-eqz p1, :cond_b

    .line 8
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/q;->j()V

    .line 9
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/q;->i()V

    goto :goto_11

    .line 11
    :cond_b
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/q;->f()V

    .line 12
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/q;->e()V

    :goto_11
    return-void
.end method

.method public b(Ljava/lang/ref/WeakReference;D)Lcom/chartboost/sdk/impl/u;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/chartboost/sdk/impl/t;",
            ">;D)",
            "Lcom/chartboost/sdk/impl/u;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/chartboost/sdk/impl/u;

    invoke-direct {v0, p1, p2, p3}, Lcom/chartboost/sdk/impl/u;-><init>(Ljava/lang/ref/WeakReference;D)V

    return-object v0
.end method

.method public b()Z
    .registers 2

    .line 2
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/q;->e:Z

    return v0
.end method

.method public c()D
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/q;->o()Lcom/chartboost/sdk/Model/h$a;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 3
    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/h$a;->a()D

    move-result-wide v0

    return-wide v0

    :cond_b
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    return-wide v0
.end method

.method public d()D
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/q;->o()Lcom/chartboost/sdk/Model/h$a;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 3
    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/h$a;->b()D

    move-result-wide v0

    return-wide v0

    :cond_b
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    return-wide v0
.end method

.method public e()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q;->a:Lcom/chartboost/sdk/impl/s;

    if-eqz v0, :cond_25

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auto-refreshed is paused at: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/q;->a:Lcom/chartboost/sdk/impl/s;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/s;->b()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BannerAutoRefreshManager"

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q;->a:Lcom/chartboost/sdk/impl/s;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/s;->d()V

    :cond_25
    return-void
.end method

.method public f()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q;->b:Lcom/chartboost/sdk/impl/u;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/u;->d()V

    :cond_7
    return-void
.end method

.method public g()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/q;->k()V

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q;->a:Lcom/chartboost/sdk/impl/s;

    if-nez v0, :cond_25

    .line 3
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/q;->e:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/chartboost/sdk/impl/q;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_25

    const-string v0, "BannerAutoRefreshManager"

    const-string v1, "Register auto refresh start"

    .line 4
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/q;->c()D

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/chartboost/sdk/impl/q;->a(Ljava/lang/ref/WeakReference;D)Lcom/chartboost/sdk/impl/s;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/q;->a:Lcom/chartboost/sdk/impl/s;

    .line 6
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/s;->f()V

    :cond_25
    return-void
.end method

.method public h()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/q;->l()V

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q;->b:Lcom/chartboost/sdk/impl/u;

    if-nez v0, :cond_25

    .line 3
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/q;->e:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/chartboost/sdk/impl/q;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_25

    const-string v0, "BannerAutoRefreshManager"

    const-string v1, "Register timeout start"

    .line 4
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/q;->d()D

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/chartboost/sdk/impl/q;->b(Ljava/lang/ref/WeakReference;D)Lcom/chartboost/sdk/impl/u;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/q;->b:Lcom/chartboost/sdk/impl/u;

    .line 6
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/u;->f()V

    :cond_25
    return-void
.end method

.method public i()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q;->a:Lcom/chartboost/sdk/impl/s;

    if-eqz v0, :cond_26

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auto-refreshed is resumed at: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/q;->a:Lcom/chartboost/sdk/impl/s;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/s;->b()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BannerAutoRefreshManager"

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q;->a:Lcom/chartboost/sdk/impl/s;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/s;->e()V

    goto :goto_29

    .line 5
    :cond_26
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/q;->g()V

    :goto_29
    return-void
.end method

.method public j()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q;->b:Lcom/chartboost/sdk/impl/u;

    if-eqz v0, :cond_25

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timeout banner is resumed at: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/q;->b:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/u;->b()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BannerAutoRefreshManager"

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q;->b:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/u;->e()V

    :cond_25
    return-void
.end method

.method public k()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q;->a:Lcom/chartboost/sdk/impl/s;

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/s;->g()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/chartboost/sdk/impl/q;->a:Lcom/chartboost/sdk/impl/s;

    :cond_a
    return-void
.end method

.method public l()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q;->b:Lcom/chartboost/sdk/impl/u;

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/u;->g()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/chartboost/sdk/impl/q;->b:Lcom/chartboost/sdk/impl/u;

    :cond_a
    return-void
.end method
