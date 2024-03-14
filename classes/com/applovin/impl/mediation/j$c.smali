.class Lcom/applovin/impl/mediation/j$c;
.super Lcom/applovin/impl/sdk/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/mediation/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/mediation/j;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/mediation/j;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/impl/mediation/j$c;->a:Lcom/applovin/impl/mediation/j;

    invoke-static {p1}, Lcom/applovin/impl/mediation/j;->b(Lcom/applovin/impl/mediation/j;)Lcom/applovin/impl/sdk/j;

    move-result-object p1

    const-string v0, "TaskTimeoutMediatedAd"

    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/sdk/d/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/mediation/j;Lcom/applovin/impl/mediation/j$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/j$c;-><init>(Lcom/applovin/impl/mediation/j;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$c;->a:Lcom/applovin/impl/mediation/j;

    invoke-static {v0}, Lcom/applovin/impl/mediation/j;->f(Lcom/applovin/impl/mediation/j;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_52

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/applovin/impl/mediation/j$c;->a:Lcom/applovin/impl/mediation/j;

    invoke-static {v1}, Lcom/applovin/impl/mediation/j;->h(Lcom/applovin/impl/mediation/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is timing out "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/j$c;->a:Lcom/applovin/impl/mediation/j;

    invoke-static {v1}, Lcom/applovin/impl/mediation/j;->i(Lcom/applovin/impl/mediation/j;)Lcom/applovin/impl/mediation/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/j$c;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$c;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->B()Lcom/applovin/impl/mediation/k;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/j$c;->a:Lcom/applovin/impl/mediation/j;

    invoke-static {v1}, Lcom/applovin/impl/mediation/j;->i(Lcom/applovin/impl/mediation/j;)Lcom/applovin/impl/mediation/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/k;->a(Lcom/applovin/impl/mediation/a/a;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$c;->a:Lcom/applovin/impl/mediation/j;

    invoke-static {v0}, Lcom/applovin/impl/mediation/j;->d(Lcom/applovin/impl/mediation/j;)Lcom/applovin/impl/mediation/j$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/j$c;->e()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x13ed

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/mediation/j$a;->a(Lcom/applovin/impl/mediation/j$a;Ljava/lang/String;I)V

    :cond_52
    return-void
.end method
