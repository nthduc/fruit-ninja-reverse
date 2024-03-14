.class public Lcom/applovin/impl/mediation/debugger/ui/a/a;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/applovin/impl/mediation/debugger/ui/a/b;

.field private b:Landroid/database/DataSetObserver;

.field private c:Landroid/widget/FrameLayout;

.field private d:Landroid/widget/ListView;

.field private e:Lcom/applovin/impl/adview/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/applovin/mediation/MaxDebuggerDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/debugger/ui/a/a;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/debugger/ui/a/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/mediation/debugger/ui/a/a;->c()V

    return-void
.end method

.method private b()V
    .registers 4

    invoke-direct {p0}, Lcom/applovin/impl/mediation/debugger/ui/a/a;->c()V

    new-instance v0, Lcom/applovin/impl/adview/a;

    const/16 v1, 0x32

    const v2, 0x101007a

    invoke-direct {v0, p0, v1, v2}, Lcom/applovin/impl/adview/a;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a;->e:Lcom/applovin/impl/adview/a;

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a;->e:Lcom/applovin/impl/adview/a;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/a;->setColor(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a;->c:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a;->e:Lcom/applovin/impl/adview/a;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a;->c:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a;->e:Lcom/applovin/impl/adview/a;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a;->e:Lcom/applovin/impl/adview/a;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/a;->a()V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/mediation/debugger/ui/a/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/mediation/debugger/ui/a/a;->a()V

    return-void
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a;->e:Lcom/applovin/impl/adview/a;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/applovin/impl/adview/a;->b()V

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a;->c:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a;->e:Lcom/applovin/impl/adview/a;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a;->e:Lcom/applovin/impl/adview/a;

    :cond_11
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "MAX Mediation Debugger"

    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/debugger/ui/a/a;->setTitle(Ljava/lang/CharSequence;)V

    sget p1, Lcom/applovin/sdk/R$layout;->mediation_debugger_activity:I

    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/debugger/ui/a/a;->setContentView(I)V

    const p1, 0x1020002

    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/debugger/ui/a/a;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a;->c:Landroid/widget/FrameLayout;

    sget p1, Lcom/applovin/sdk/R$id;->listView:I

    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/debugger/ui/a/a;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a;->d:Landroid/widget/ListView;

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a;->a:Lcom/applovin/impl/mediation/debugger/ui/a/b;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a;->b:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/a/b;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method protected onStart()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a;->a:Lcom/applovin/impl/mediation/debugger/ui/a/b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a;->a:Lcom/applovin/impl/mediation/debugger/ui/a/b;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-direct {p0}, Lcom/applovin/impl/mediation/debugger/ui/a/a;->b()V

    :cond_15
    return-void
.end method

.method public setListAdapter(Lcom/applovin/impl/mediation/debugger/ui/a/b;Lcom/applovin/impl/sdk/a;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a;->a:Lcom/applovin/impl/mediation/debugger/ui/a/b;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a;->b:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_b

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/a/b;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_b
    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a;->a:Lcom/applovin/impl/mediation/debugger/ui/a/b;

    new-instance p1, Lcom/applovin/impl/mediation/debugger/ui/a/a$1;

    invoke-direct {p1, p0}, Lcom/applovin/impl/mediation/debugger/ui/a/a$1;-><init>(Lcom/applovin/impl/mediation/debugger/ui/a/a;)V

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a;->b:Landroid/database/DataSetObserver;

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a;->a:Lcom/applovin/impl/mediation/debugger/ui/a/b;

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a;->b:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/mediation/debugger/ui/a/b;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a;->a:Lcom/applovin/impl/mediation/debugger/ui/a/b;

    new-instance v0, Lcom/applovin/impl/mediation/debugger/ui/a/a$2;

    invoke-direct {v0, p0, p2}, Lcom/applovin/impl/mediation/debugger/ui/a/a$2;-><init>(Lcom/applovin/impl/mediation/debugger/ui/a/a;Lcom/applovin/impl/sdk/a;)V

    invoke-virtual {p1, v0}, Lcom/applovin/impl/mediation/debugger/ui/a/b;->a(Lcom/applovin/impl/mediation/debugger/ui/a/b$a;)V

    return-void
.end method
