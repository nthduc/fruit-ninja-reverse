.class Lcom/applovin/impl/mediation/debugger/ui/b/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/mediation/debugger/ui/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/debugger/ui/b/a;->setNetwork(Lcom/applovin/impl/mediation/debugger/a/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/mediation/debugger/a/d;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/applovin/impl/mediation/debugger/ui/b/a;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/debugger/ui/b/a;Lcom/applovin/impl/mediation/debugger/a/d;Landroid/app/Activity;)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$1;->c:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$1;->a:Lcom/applovin/impl/mediation/debugger/a/d;

    iput-object p3, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$1;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/mediation/debugger/ui/b/a/a;)V
    .registers 6

    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/b/b$b;->e:Lcom/applovin/impl/mediation/debugger/ui/b/b$b;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a;->m()Lcom/applovin/impl/mediation/debugger/ui/b/b$b;

    move-result-object v1

    const-string v2, "Instructions"

    if-ne v0, v1, :cond_43

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$1;->a:Lcom/applovin/impl/mediation/debugger/a/d;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/a/d;->q()Lcom/applovin/impl/sdk/j;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$1;->a:Lcom/applovin/impl/mediation/debugger/a/d;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/a/d;->c()Lcom/applovin/impl/mediation/debugger/a/d$b;

    move-result-object v1

    sget-object v3, Lcom/applovin/impl/mediation/debugger/a/d$b;->d:Lcom/applovin/impl/mediation/debugger/a/d$b;

    if-ne v3, v1, :cond_2c

    new-instance p1, Lcom/applovin/impl/mediation/debugger/ui/b/a$1$1;

    invoke-direct {p1, p0, v0}, Lcom/applovin/impl/mediation/debugger/ui/b/a$1$1;-><init>(Lcom/applovin/impl/mediation/debugger/ui/b/a$1;Lcom/applovin/impl/sdk/j;)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->ab()Lcom/applovin/impl/sdk/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/a;->a(Lcom/applovin/impl/sdk/utils/a;)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$1;->c:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    invoke-static {p1}, Lcom/applovin/impl/mediation/debugger/ui/b/a;->a(Lcom/applovin/impl/mediation/debugger/ui/b/a;)V

    goto :goto_4c

    :cond_2c
    sget-object v3, Lcom/applovin/impl/mediation/debugger/a/d$b;->c:Lcom/applovin/impl/mediation/debugger/a/d$b;

    if-ne v3, v1, :cond_43

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->D()Lcom/applovin/impl/mediation/debugger/ui/testmode/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->c()V

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a;->n()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$1;->b:Landroid/app/Activity;

    const-string v1, "Restart Required"

    invoke-static {v1, p1, v0}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_4c

    :cond_43
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a;->n()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$1;->b:Landroid/app/Activity;

    invoke-static {v2, p1, v0}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :goto_4c
    return-void
.end method
