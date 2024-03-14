.class public Lcom/applovin/impl/sdk/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/a/b$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/j;

.field private final b:Landroid/app/Activity;

.field private c:Landroid/app/AlertDialog;

.field private d:Lcom/applovin/impl/sdk/a/b$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/applovin/impl/sdk/j;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/applovin/impl/sdk/a/b;->a:Lcom/applovin/impl/sdk/j;

    iput-object p1, p0, Lcom/applovin/impl/sdk/a/b;->b:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/a/b;)Landroid/app/AlertDialog;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/a/b;->c:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/a/b;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/a/b;->c:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/a/b;)Lcom/applovin/impl/sdk/j;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/a/b;->a:Lcom/applovin/impl/sdk/j;

    return-object p0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/a/b;)Lcom/applovin/impl/sdk/a/b$a;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/a/b;->d:Lcom/applovin/impl/sdk/a/b$a;

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/a/b;)Landroid/app/Activity;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/a/b;->b:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/b;->b:Landroid/app/Activity;

    new-instance v1, Lcom/applovin/impl/sdk/a/b$1;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/a/b$1;-><init>(Lcom/applovin/impl/sdk/a/b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/a/b$a;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/a/b;->d:Lcom/applovin/impl/sdk/a/b$a;

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/ad/g;Ljava/lang/Runnable;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/b;->b:Landroid/app/Activity;

    new-instance v1, Lcom/applovin/impl/sdk/a/b$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/applovin/impl/sdk/a/b$4;-><init>(Lcom/applovin/impl/sdk/a/b;Lcom/applovin/impl/sdk/ad/g;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/b;->b:Landroid/app/Activity;

    new-instance v1, Lcom/applovin/impl/sdk/a/b$2;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/a/b$2;-><init>(Lcom/applovin/impl/sdk/a/b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/b;->b:Landroid/app/Activity;

    new-instance v1, Lcom/applovin/impl/sdk/a/b$3;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/a/b$3;-><init>(Lcom/applovin/impl/sdk/a/b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/b;->c:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method
