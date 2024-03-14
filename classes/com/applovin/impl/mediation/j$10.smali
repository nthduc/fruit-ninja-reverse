.class Lcom/applovin/impl/mediation/j$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/j;->a(Ljava/lang/String;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lcom/applovin/impl/mediation/a/a;Landroid/app/Activity;Lcom/applovin/impl/mediation/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/applovin/impl/mediation/a/a;

.field final synthetic c:Lcom/applovin/impl/mediation/j;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/j;Ljava/lang/Runnable;Lcom/applovin/impl/mediation/a/a;)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/impl/mediation/j$10;->c:Lcom/applovin/impl/mediation/j;

    iput-object p2, p0, Lcom/applovin/impl/mediation/j$10;->a:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/applovin/impl/mediation/j$10;->b:Lcom/applovin/impl/mediation/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const-string v0, "MediationAdapterWrapper"

    :try_start_2
    iget-object v1, p0, Lcom/applovin/impl/mediation/j$10;->a:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_7} :catch_8

    goto :goto_31

    :catch_8
    move-exception v1

    iget-object v2, p0, Lcom/applovin/impl/mediation/j$10;->c:Lcom/applovin/impl/mediation/j;

    invoke-static {v2}, Lcom/applovin/impl/mediation/j;->e(Lcom/applovin/impl/mediation/j;)Lcom/applovin/impl/sdk/q;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed start loading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/applovin/impl/mediation/j$10;->b:Lcom/applovin/impl/mediation/a/a;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/applovin/impl/mediation/j$10;->c:Lcom/applovin/impl/mediation/j;

    invoke-static {v1}, Lcom/applovin/impl/mediation/j;->d(Lcom/applovin/impl/mediation/j;)Lcom/applovin/impl/mediation/j$a;

    move-result-object v1

    const/4 v2, -0x1

    const-string v3, "loadAd"

    invoke-static {v1, v3, v2}, Lcom/applovin/impl/mediation/j$a;->a(Lcom/applovin/impl/mediation/j$a;Ljava/lang/String;I)V

    :goto_31
    iget-object v1, p0, Lcom/applovin/impl/mediation/j$10;->c:Lcom/applovin/impl/mediation/j;

    invoke-static {v1}, Lcom/applovin/impl/mediation/j;->f(Lcom/applovin/impl/mediation/j;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_aa

    iget-object v1, p0, Lcom/applovin/impl/mediation/j$10;->c:Lcom/applovin/impl/mediation/j;

    invoke-static {v1}, Lcom/applovin/impl/mediation/j;->a(Lcom/applovin/impl/mediation/j;)Lcom/applovin/impl/mediation/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/a/e;->J()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_89

    iget-object v3, p0, Lcom/applovin/impl/mediation/j$10;->c:Lcom/applovin/impl/mediation/j;

    invoke-static {v3}, Lcom/applovin/impl/mediation/j;->e(Lcom/applovin/impl/mediation/j;)Lcom/applovin/impl/sdk/q;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting timeout "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms. for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/applovin/impl/mediation/j$10;->b:Lcom/applovin/impl/mediation/a/a;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$10;->c:Lcom/applovin/impl/mediation/j;

    invoke-static {v0}, Lcom/applovin/impl/mediation/j;->b(Lcom/applovin/impl/mediation/j;)Lcom/applovin/impl/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object v0

    new-instance v3, Lcom/applovin/impl/mediation/j$c;

    iget-object v4, p0, Lcom/applovin/impl/mediation/j$10;->c:Lcom/applovin/impl/mediation/j;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/applovin/impl/mediation/j$c;-><init>(Lcom/applovin/impl/mediation/j;Lcom/applovin/impl/mediation/j$1;)V

    sget-object v4, Lcom/applovin/impl/sdk/d/s$a;->k:Lcom/applovin/impl/sdk/d/s$a;

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/s$a;J)V

    goto :goto_aa

    :cond_89
    iget-object v1, p0, Lcom/applovin/impl/mediation/j$10;->c:Lcom/applovin/impl/mediation/j;

    invoke-static {v1}, Lcom/applovin/impl/mediation/j;->e(Lcom/applovin/impl/mediation/j;)Lcom/applovin/impl/sdk/q;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Negative timeout set for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/impl/mediation/j$10;->b:Lcom/applovin/impl/mediation/a/a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", not scheduling a timeout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_aa
    :goto_aa
    return-void
.end method
