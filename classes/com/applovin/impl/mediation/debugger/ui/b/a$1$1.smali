.class Lcom/applovin/impl/mediation/debugger/ui/b/a$1$1;
.super Lcom/applovin/impl/sdk/utils/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/debugger/ui/b/a$1;->a(Lcom/applovin/impl/mediation/debugger/ui/b/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/j;

.field final synthetic b:Lcom/applovin/impl/mediation/debugger/ui/b/a$1;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/debugger/ui/b/a$1;Lcom/applovin/impl/sdk/j;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$1$1;->b:Lcom/applovin/impl/mediation/debugger/ui/b/a$1;

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$1$1;->a:Lcom/applovin/impl/sdk/j;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    instance-of p1, p1, Lcom/applovin/impl/mediation/debugger/ui/testmode/a;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$1$1;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->ab()Lcom/applovin/impl/sdk/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/applovin/impl/sdk/a;->b(Lcom/applovin/impl/sdk/utils/a;)V

    :cond_d
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    instance-of v0, p1, Lcom/applovin/impl/mediation/debugger/ui/testmode/a;

    if-eqz v0, :cond_d

    check-cast p1, Lcom/applovin/impl/mediation/debugger/ui/testmode/a;

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$1$1;->b:Lcom/applovin/impl/mediation/debugger/ui/b/a$1;

    iget-object v0, v0, Lcom/applovin/impl/mediation/debugger/ui/b/a$1;->a:Lcom/applovin/impl/mediation/debugger/a/d;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/mediation/debugger/ui/testmode/a;->setNetwork(Lcom/applovin/impl/mediation/debugger/a/d;)V

    :cond_d
    return-void
.end method
