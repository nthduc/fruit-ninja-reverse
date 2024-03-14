.class public Lcom/applovin/impl/mediation/debugger/ui/a/b;
.super Lcom/applovin/impl/mediation/debugger/ui/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/debugger/ui/a/b$a;
    }
.end annotation


# instance fields
.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Lcom/applovin/impl/mediation/debugger/a/c;

.field private final e:Lcom/applovin/impl/mediation/debugger/a/c;

.field private final f:Lcom/applovin/impl/mediation/debugger/a/c;

.field private final g:Lcom/applovin/impl/mediation/debugger/a/c;

.field private final h:Lcom/applovin/impl/mediation/debugger/a/c;

.field private final i:Lcom/applovin/impl/mediation/debugger/a/c;

.field private j:Lcom/applovin/impl/mediation/debugger/ui/a/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/debugger/ui/a;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Lcom/applovin/impl/mediation/debugger/a/g;

    const-string v0, "MAX"

    invoke-direct {p1, v0}, Lcom/applovin/impl/mediation/debugger/a/g;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->d:Lcom/applovin/impl/mediation/debugger/a/c;

    new-instance p1, Lcom/applovin/impl/mediation/debugger/a/g;

    const-string v0, "PRIVACY"

    invoke-direct {p1, v0}, Lcom/applovin/impl/mediation/debugger/a/g;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->e:Lcom/applovin/impl/mediation/debugger/a/c;

    new-instance p1, Lcom/applovin/impl/mediation/debugger/a/g;

    const-string v0, "INCOMPLETE INTEGRATIONS"

    invoke-direct {p1, v0}, Lcom/applovin/impl/mediation/debugger/a/g;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->f:Lcom/applovin/impl/mediation/debugger/a/c;

    new-instance p1, Lcom/applovin/impl/mediation/debugger/a/g;

    const-string v0, "COMPLETED INTEGRATIONS"

    invoke-direct {p1, v0}, Lcom/applovin/impl/mediation/debugger/a/g;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->g:Lcom/applovin/impl/mediation/debugger/a/c;

    new-instance p1, Lcom/applovin/impl/mediation/debugger/a/g;

    const-string v0, "MISSING INTEGRATIONS"

    invoke-direct {p1, v0}, Lcom/applovin/impl/mediation/debugger/a/g;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->h:Lcom/applovin/impl/mediation/debugger/a/c;

    new-instance p1, Lcom/applovin/impl/mediation/debugger/a/g;

    const-string v0, ""

    invoke-direct {p1, v0}, Lcom/applovin/impl/mediation/debugger/a/g;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->i:Lcom/applovin/impl/mediation/debugger/a/c;

    return-void
.end method

.method private b()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/a/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->d:Lcom/applovin/impl/mediation/debugger/a/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/applovin/impl/sdk/utils/r;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/applovin/impl/mediation/debugger/a/c$a;

    sget-object v3, Lcom/applovin/impl/mediation/debugger/a/c$b;->d:Lcom/applovin/impl/mediation/debugger/a/c$b;

    invoke-direct {v2, v3}, Lcom/applovin/impl/mediation/debugger/a/c$a;-><init>(Lcom/applovin/impl/mediation/debugger/a/c$b;)V

    const-string v3, "Ad Review"

    invoke-virtual {v2, v3}, Lcom/applovin/impl/mediation/debugger/a/c$a;->a(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/a/c$a;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_23

    goto :goto_25

    :cond_23
    const-string v1, "DISABLED"

    :goto_25
    invoke-virtual {v2, v1}, Lcom/applovin/impl/mediation/debugger/a/c$a;->b(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/a/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/a/c$a;->a()Lcom/applovin/impl/mediation/debugger/a/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private b(Ljava/util/List;Lcom/applovin/impl/sdk/j;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/a/d;",
            ">;",
            "Lcom/applovin/impl/sdk/j;",
            ")",
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/a/c;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object p2

    const-string v0, "MediationDebuggerListAdapter"

    const-string v1, "Updating networks..."

    invoke-virtual {p2, v0, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_27
    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/impl/mediation/debugger/a/d;

    new-instance v4, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;

    iget-object v5, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->a:Landroid/content/Context;

    invoke-direct {v4, v3, v5}, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;-><init>(Lcom/applovin/impl/mediation/debugger/a/d;Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/applovin/impl/mediation/debugger/a/d;->a()Lcom/applovin/impl/mediation/debugger/a/d$a;

    move-result-object v5

    sget-object v6, Lcom/applovin/impl/mediation/debugger/a/d$a;->b:Lcom/applovin/impl/mediation/debugger/a/d$a;

    if-eq v5, v6, :cond_63

    invoke-virtual {v3}, Lcom/applovin/impl/mediation/debugger/a/d;->a()Lcom/applovin/impl/mediation/debugger/a/d$a;

    move-result-object v5

    sget-object v6, Lcom/applovin/impl/mediation/debugger/a/d$a;->c:Lcom/applovin/impl/mediation/debugger/a/d$a;

    if-ne v5, v6, :cond_4b

    goto :goto_63

    :cond_4b
    invoke-virtual {v3}, Lcom/applovin/impl/mediation/debugger/a/d;->a()Lcom/applovin/impl/mediation/debugger/a/d$a;

    move-result-object v5

    sget-object v6, Lcom/applovin/impl/mediation/debugger/a/d$a;->d:Lcom/applovin/impl/mediation/debugger/a/d$a;

    if-ne v5, v6, :cond_57

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_57
    invoke-virtual {v3}, Lcom/applovin/impl/mediation/debugger/a/d;->a()Lcom/applovin/impl/mediation/debugger/a/d$a;

    move-result-object v3

    sget-object v5, Lcom/applovin/impl/mediation/debugger/a/d$a;->a:Lcom/applovin/impl/mediation/debugger/a/d$a;

    if-ne v3, v5, :cond_27

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_63
    :goto_63
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_67
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_75

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->f:Lcom/applovin/impl/mediation/debugger/a/c;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_75
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_83

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->g:Lcom/applovin/impl/mediation/debugger/a/c;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_83
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_91

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->h:Lcom/applovin/impl/mediation/debugger/a/c;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_91
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->i:Lcom/applovin/impl/mediation/debugger/a/c;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method private c()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/a/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->e:Lcom/applovin/impl/mediation/debugger/a/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/applovin/impl/mediation/debugger/ui/a/a/b;

    invoke-static {}, Lcom/applovin/impl/sdk/g;->a()Lcom/applovin/impl/sdk/g$a;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/applovin/impl/mediation/debugger/ui/a/a/b;-><init>(Lcom/applovin/impl/sdk/g$a;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/applovin/impl/mediation/debugger/ui/a/a/b;

    invoke-static {}, Lcom/applovin/impl/sdk/g;->b()Lcom/applovin/impl/sdk/g$a;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/applovin/impl/mediation/debugger/ui/a/a/b;-><init>(Lcom/applovin/impl/sdk/g$a;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/applovin/impl/mediation/debugger/ui/a/a/b;

    invoke-static {}, Lcom/applovin/impl/sdk/g;->c()Lcom/applovin/impl/sdk/g$a;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/applovin/impl/mediation/debugger/ui/a/a/b;-><init>(Lcom/applovin/impl/sdk/g$a;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/applovin/impl/mediation/debugger/a/c;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->j:Lcom/applovin/impl/mediation/debugger/ui/a/b$a;

    if-eqz v0, :cond_13

    instance-of v0, p1, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;

    if-eqz v0, :cond_13

    check-cast p1, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->m()Lcom/applovin/impl/mediation/debugger/a/d;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->j:Lcom/applovin/impl/mediation/debugger/ui/a/b$a;

    invoke-interface {v0, p1}, Lcom/applovin/impl/mediation/debugger/ui/a/b$a;->a(Lcom/applovin/impl/mediation/debugger/a/d;)V

    :cond_13
    return-void
.end method

.method public a(Lcom/applovin/impl/mediation/debugger/ui/a/b$a;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->j:Lcom/applovin/impl/mediation/debugger/ui/a/b$a;

    return-void
.end method

.method public a(Ljava/util/List;Lcom/applovin/impl/sdk/j;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/a/d;",
            ">;",
            "Lcom/applovin/impl/sdk/j;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_27

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->b:Ljava/util/List;

    invoke-direct {p0}, Lcom/applovin/impl/mediation/debugger/ui/a/b;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->b:Ljava/util/List;

    invoke-direct {p0}, Lcom/applovin/impl/mediation/debugger/ui/a/b;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->b:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/mediation/debugger/ui/a/b;->b(Ljava/util/List;Lcom/applovin/impl/sdk/j;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_27
    new-instance p1, Lcom/applovin/impl/mediation/debugger/ui/a/b$1;

    invoke-direct {p1, p0}, Lcom/applovin/impl/mediation/debugger/ui/a/b$1;-><init>(Lcom/applovin/impl/mediation/debugger/ui/a/b;)V

    invoke-static {p1}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediationDebuggerListAdapter{isInitialized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", listItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
