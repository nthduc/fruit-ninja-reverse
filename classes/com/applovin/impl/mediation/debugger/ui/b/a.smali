.class public Lcom/applovin/impl/mediation/debugger/ui/b/a;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/applovin/mediation/MaxDebuggerMultiAdActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/debugger/ui/b/a;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/debugger/ui/b/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/mediation/debugger/ui/b/a;->a()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/applovin/sdk/R$layout;->mediation_debugger_detail_activity:I

    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/debugger/ui/b/a;->setContentView(I)V

    sget p1, Lcom/applovin/sdk/R$id;->listView:I

    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/debugger/ui/b/a;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a;->a:Landroid/widget/ListView;

    return-void
.end method

.method public setNetwork(Lcom/applovin/impl/mediation/debugger/a/d;)V
    .registers 4

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/a/d;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/debugger/ui/b/a;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/applovin/impl/mediation/debugger/ui/b/b;

    invoke-direct {v0, p1, p0}, Lcom/applovin/impl/mediation/debugger/ui/b/b;-><init>(Lcom/applovin/impl/mediation/debugger/a/d;Landroid/content/Context;)V

    new-instance v1, Lcom/applovin/impl/mediation/debugger/ui/b/a$1;

    invoke-direct {v1, p0, p1, p0}, Lcom/applovin/impl/mediation/debugger/ui/b/a$1;-><init>(Lcom/applovin/impl/mediation/debugger/ui/b/a;Lcom/applovin/impl/mediation/debugger/a/d;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/b/b;->a(Lcom/applovin/impl/mediation/debugger/ui/b/b$a;)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a;->a:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
