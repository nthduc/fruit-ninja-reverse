.class Lcom/moat/analytics/mobile/vng/w$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/vng/w$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/vng/w$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/vng/w$1;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/vng/w$1;)V
    .registers 2

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/w$1$1;->a:Lcom/moat/analytics/mobile/vng/w$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/moat/analytics/mobile/vng/m;)V
    .registers 6

    invoke-static {}, Lcom/moat/analytics/mobile/vng/w;->c()Ljava/util/Queue;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/moat/analytics/mobile/vng/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/vng/MoatAnalytics;

    move-result-object v1

    check-cast v1, Lcom/moat/analytics/mobile/vng/k;

    iget-boolean v1, v1, Lcom/moat/analytics/mobile/vng/k;->a:Z

    iget-object v2, p0, Lcom/moat/analytics/mobile/vng/w$1$1;->a:Lcom/moat/analytics/mobile/vng/w$1;

    iget-object v2, v2, Lcom/moat/analytics/mobile/vng/w$1;->b:Lcom/moat/analytics/mobile/vng/w;

    iget-object v2, v2, Lcom/moat/analytics/mobile/vng/w;->a:Lcom/moat/analytics/mobile/vng/w$d;

    invoke-virtual {p1}, Lcom/moat/analytics/mobile/vng/m;->e()Lcom/moat/analytics/mobile/vng/w$d;

    move-result-object v3

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Lcom/moat/analytics/mobile/vng/w$1$1;->a:Lcom/moat/analytics/mobile/vng/w$1;

    iget-object v2, v2, Lcom/moat/analytics/mobile/vng/w$1;->b:Lcom/moat/analytics/mobile/vng/w;

    iget-object v2, v2, Lcom/moat/analytics/mobile/vng/w;->a:Lcom/moat/analytics/mobile/vng/w$d;

    sget-object v3, Lcom/moat/analytics/mobile/vng/w$d;->a:Lcom/moat/analytics/mobile/vng/w$d;

    if-ne v2, v3, :cond_9b

    if-eqz v1, :cond_9b

    :cond_25
    iget-object v2, p0, Lcom/moat/analytics/mobile/vng/w$1$1;->a:Lcom/moat/analytics/mobile/vng/w$1;

    iget-object v2, v2, Lcom/moat/analytics/mobile/vng/w$1;->b:Lcom/moat/analytics/mobile/vng/w;

    invoke-virtual {p1}, Lcom/moat/analytics/mobile/vng/m;->e()Lcom/moat/analytics/mobile/vng/w$d;

    move-result-object p1

    iput-object p1, v2, Lcom/moat/analytics/mobile/vng/w;->a:Lcom/moat/analytics/mobile/vng/w$d;

    iget-object p1, p0, Lcom/moat/analytics/mobile/vng/w$1$1;->a:Lcom/moat/analytics/mobile/vng/w$1;

    iget-object p1, p1, Lcom/moat/analytics/mobile/vng/w$1;->b:Lcom/moat/analytics/mobile/vng/w;

    iget-object p1, p1, Lcom/moat/analytics/mobile/vng/w;->a:Lcom/moat/analytics/mobile/vng/w$d;

    sget-object v2, Lcom/moat/analytics/mobile/vng/w$d;->a:Lcom/moat/analytics/mobile/vng/w$d;

    if-ne p1, v2, :cond_43

    if-eqz v1, :cond_43

    iget-object p1, p0, Lcom/moat/analytics/mobile/vng/w$1$1;->a:Lcom/moat/analytics/mobile/vng/w$1;

    iget-object p1, p1, Lcom/moat/analytics/mobile/vng/w$1;->b:Lcom/moat/analytics/mobile/vng/w;

    sget-object v1, Lcom/moat/analytics/mobile/vng/w$d;->b:Lcom/moat/analytics/mobile/vng/w$d;

    iput-object v1, p1, Lcom/moat/analytics/mobile/vng/w;->a:Lcom/moat/analytics/mobile/vng/w$d;

    :cond_43
    iget-object p1, p0, Lcom/moat/analytics/mobile/vng/w$1$1;->a:Lcom/moat/analytics/mobile/vng/w$1;

    iget-object p1, p1, Lcom/moat/analytics/mobile/vng/w$1;->b:Lcom/moat/analytics/mobile/vng/w;

    iget-object p1, p1, Lcom/moat/analytics/mobile/vng/w;->a:Lcom/moat/analytics/mobile/vng/w$d;

    sget-object v1, Lcom/moat/analytics/mobile/vng/w$d;->b:Lcom/moat/analytics/mobile/vng/w$d;

    if-ne p1, v1, :cond_5f

    invoke-static {}, Lcom/moat/analytics/mobile/vng/i;->a()Lcom/moat/analytics/mobile/vng/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/moat/analytics/mobile/vng/i;->b()Z

    move-result p1

    if-nez p1, :cond_5f

    iget-object p1, p0, Lcom/moat/analytics/mobile/vng/w$1$1;->a:Lcom/moat/analytics/mobile/vng/w$1;

    iget-object p1, p1, Lcom/moat/analytics/mobile/vng/w$1;->b:Lcom/moat/analytics/mobile/vng/w;

    sget-object v1, Lcom/moat/analytics/mobile/vng/w$d;->a:Lcom/moat/analytics/mobile/vng/w$d;

    iput-object v1, p1, Lcom/moat/analytics/mobile/vng/w;->a:Lcom/moat/analytics/mobile/vng/w$d;

    :cond_5f
    iget-object p1, p0, Lcom/moat/analytics/mobile/vng/w$1$1;->a:Lcom/moat/analytics/mobile/vng/w$1;

    iget-object p1, p1, Lcom/moat/analytics/mobile/vng/w$1;->b:Lcom/moat/analytics/mobile/vng/w;

    iget-object p1, p1, Lcom/moat/analytics/mobile/vng/w;->a:Lcom/moat/analytics/mobile/vng/w$d;

    sget-object v1, Lcom/moat/analytics/mobile/vng/w$d;->b:Lcom/moat/analytics/mobile/vng/w$d;

    if-ne p1, v1, :cond_71

    const/4 p1, 0x3

    const-string v1, "OnOff"

    const-string v2, "Moat enabled - Version 2.6.3"

    invoke-static {p1, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_71
    invoke-static {}, Lcom/moat/analytics/mobile/vng/w;->c()Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_79
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/moat/analytics/mobile/vng/w$c;

    iget-object v2, p0, Lcom/moat/analytics/mobile/vng/w$1$1;->a:Lcom/moat/analytics/mobile/vng/w$1;

    iget-object v2, v2, Lcom/moat/analytics/mobile/vng/w$1;->b:Lcom/moat/analytics/mobile/vng/w;

    iget-object v2, v2, Lcom/moat/analytics/mobile/vng/w;->a:Lcom/moat/analytics/mobile/vng/w$d;

    sget-object v3, Lcom/moat/analytics/mobile/vng/w$d;->b:Lcom/moat/analytics/mobile/vng/w$d;

    if-ne v2, v3, :cond_95

    iget-object v1, v1, Lcom/moat/analytics/mobile/vng/w$c;->b:Lcom/moat/analytics/mobile/vng/w$b;

    invoke-interface {v1}, Lcom/moat/analytics/mobile/vng/w$b;->b()V

    goto :goto_79

    :cond_95
    iget-object v1, v1, Lcom/moat/analytics/mobile/vng/w$c;->b:Lcom/moat/analytics/mobile/vng/w$b;

    invoke-interface {v1}, Lcom/moat/analytics/mobile/vng/w$b;->c()V

    goto :goto_79

    :cond_9b
    :goto_9b
    invoke-static {}, Lcom/moat/analytics/mobile/vng/w;->c()Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_ad

    invoke-static {}, Lcom/moat/analytics/mobile/vng/w;->c()Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    goto :goto_9b

    :cond_ad
    monitor-exit v0

    return-void

    :catchall_af
    move-exception p1

    monitor-exit v0
    :try_end_b1
    .catchall {:try_start_5 .. :try_end_b1} :catchall_af

    throw p1

    return-void
.end method
