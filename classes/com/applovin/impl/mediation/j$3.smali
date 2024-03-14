.class Lcom/applovin/impl/mediation/j$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/j;->a(Lcom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;Lcom/applovin/impl/mediation/a/g;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/mediation/adapter/MaxSignalProvider;

.field final synthetic b:Lcom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/applovin/impl/mediation/j$b;

.field final synthetic e:Lcom/applovin/impl/mediation/a/g;

.field final synthetic f:Lcom/applovin/impl/mediation/j;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/j;Lcom/applovin/mediation/adapter/MaxSignalProvider;Lcom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;Landroid/app/Activity;Lcom/applovin/impl/mediation/j$b;Lcom/applovin/impl/mediation/a/g;)V
    .registers 7

    iput-object p1, p0, Lcom/applovin/impl/mediation/j$3;->f:Lcom/applovin/impl/mediation/j;

    iput-object p2, p0, Lcom/applovin/impl/mediation/j$3;->a:Lcom/applovin/mediation/adapter/MaxSignalProvider;

    iput-object p3, p0, Lcom/applovin/impl/mediation/j$3;->b:Lcom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;

    iput-object p4, p0, Lcom/applovin/impl/mediation/j$3;->c:Landroid/app/Activity;

    iput-object p5, p0, Lcom/applovin/impl/mediation/j$3;->d:Lcom/applovin/impl/mediation/j$b;

    iput-object p6, p0, Lcom/applovin/impl/mediation/j$3;->e:Lcom/applovin/impl/mediation/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$3;->a:Lcom/applovin/mediation/adapter/MaxSignalProvider;

    iget-object v1, p0, Lcom/applovin/impl/mediation/j$3;->b:Lcom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;

    iget-object v2, p0, Lcom/applovin/impl/mediation/j$3;->c:Landroid/app/Activity;

    new-instance v3, Lcom/applovin/impl/mediation/j$3$1;

    invoke-direct {v3, p0}, Lcom/applovin/impl/mediation/j$3$1;-><init>(Lcom/applovin/impl/mediation/j$3;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/applovin/mediation/adapter/MaxSignalProvider;->collectSignal(Lcom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$3;->d:Lcom/applovin/impl/mediation/j$b;

    invoke-static {v0}, Lcom/applovin/impl/mediation/j$b;->a(Lcom/applovin/impl/mediation/j$b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_e2

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$3;->e:Lcom/applovin/impl/mediation/a/g;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/g;->J()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const-string v4, "MediationAdapterWrapper"

    cmp-long v5, v0, v2

    if-nez v5, :cond_6d

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$3;->f:Lcom/applovin/impl/mediation/j;

    invoke-static {v0}, Lcom/applovin/impl/mediation/j;->e(Lcom/applovin/impl/mediation/j;)Lcom/applovin/impl/sdk/q;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failing signal collection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/mediation/j$3;->e:Lcom/applovin/impl/mediation/a/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " since it has 0 timeout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$3;->f:Lcom/applovin/impl/mediation/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The adapter ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/mediation/j$3;->f:Lcom/applovin/impl/mediation/j;

    invoke-static {v2}, Lcom/applovin/impl/mediation/j;->h(Lcom/applovin/impl/mediation/j;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") has 0 timeout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/mediation/j$3;->d:Lcom/applovin/impl/mediation/j$b;

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/mediation/j;->b(Lcom/applovin/impl/mediation/j;Ljava/lang/String;Lcom/applovin/impl/mediation/j$b;)V

    goto :goto_e2

    :cond_6d
    iget-object v0, p0, Lcom/applovin/impl/mediation/j$3;->e:Lcom/applovin/impl/mediation/a/g;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/g;->J()J

    move-result-wide v0

    cmp-long v5, v0, v2

    if-lez v5, :cond_c1

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$3;->f:Lcom/applovin/impl/mediation/j;

    invoke-static {v0}, Lcom/applovin/impl/mediation/j;->e(Lcom/applovin/impl/mediation/j;)Lcom/applovin/impl/sdk/q;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting timeout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/mediation/j$3;->e:Lcom/applovin/impl/mediation/a/g;

    invoke-virtual {v2}, Lcom/applovin/impl/mediation/a/g;->J()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms. for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/mediation/j$3;->e:Lcom/applovin/impl/mediation/a/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$3;->e:Lcom/applovin/impl/mediation/a/g;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/g;->J()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/mediation/j$3;->f:Lcom/applovin/impl/mediation/j;

    invoke-static {v2}, Lcom/applovin/impl/mediation/j;->b(Lcom/applovin/impl/mediation/j;)Lcom/applovin/impl/sdk/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object v2

    new-instance v3, Lcom/applovin/impl/mediation/j$d;

    iget-object v4, p0, Lcom/applovin/impl/mediation/j$3;->f:Lcom/applovin/impl/mediation/j;

    iget-object v5, p0, Lcom/applovin/impl/mediation/j$3;->d:Lcom/applovin/impl/mediation/j$b;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/applovin/impl/mediation/j$d;-><init>(Lcom/applovin/impl/mediation/j;Lcom/applovin/impl/mediation/j$b;Lcom/applovin/impl/mediation/j$1;)V

    sget-object v4, Lcom/applovin/impl/sdk/d/s$a;->k:Lcom/applovin/impl/sdk/d/s$a;

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/s$a;J)V

    goto :goto_e2

    :cond_c1
    iget-object v0, p0, Lcom/applovin/impl/mediation/j$3;->f:Lcom/applovin/impl/mediation/j;

    invoke-static {v0}, Lcom/applovin/impl/mediation/j;->e(Lcom/applovin/impl/mediation/j;)Lcom/applovin/impl/sdk/q;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative timeout set for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/mediation/j$3;->e:Lcom/applovin/impl/mediation/a/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", not scheduling a timeout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e2
    :goto_e2
    return-void
.end method
