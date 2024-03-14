.class Lcom/applovin/impl/sdk/y$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/y;-><init>(Lcom/applovin/mediation/ads/MaxAdView;Lcom/applovin/impl/sdk/j;Lcom/applovin/impl/sdk/y$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Lcom/applovin/impl/sdk/y;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/y;Ljava/lang/ref/WeakReference;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/impl/sdk/y$1;->b:Lcom/applovin/impl/sdk/y;

    iput-object p2, p0, Lcom/applovin/impl/sdk/y$1;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/y$1;->b:Lcom/applovin/impl/sdk/y;

    invoke-static {v0}, Lcom/applovin/impl/sdk/y;->a(Lcom/applovin/impl/sdk/y;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/mediation/ads/MaxAdView;

    iget-object v1, p0, Lcom/applovin/impl/sdk/y$1;->b:Lcom/applovin/impl/sdk/y;

    invoke-static {v1}, Lcom/applovin/impl/sdk/y;->b(Lcom/applovin/impl/sdk/y;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v0, :cond_4a

    if-nez v1, :cond_1d

    goto :goto_4a

    :cond_1d
    iget-object v2, p0, Lcom/applovin/impl/sdk/y$1;->b:Lcom/applovin/impl/sdk/y;

    invoke-static {v2, v0, v1}, Lcom/applovin/impl/sdk/y;->a(Lcom/applovin/impl/sdk/y;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/applovin/impl/sdk/y$1;->b:Lcom/applovin/impl/sdk/y;

    invoke-static {v0}, Lcom/applovin/impl/sdk/y;->c(Lcom/applovin/impl/sdk/y;)Lcom/applovin/impl/sdk/q;

    move-result-object v0

    const-string v1, "VisibilityTracker"

    const-string v2, "View met visibility requirements. Logging visibility impression.."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/y$1;->b:Lcom/applovin/impl/sdk/y;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/y;->a()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/y$1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/y$a;

    if-eqz v0, :cond_4a

    invoke-interface {v0}, Lcom/applovin/impl/sdk/y$a;->onLogVisibilityImpression()V

    goto :goto_4a

    :cond_45
    iget-object v0, p0, Lcom/applovin/impl/sdk/y$1;->b:Lcom/applovin/impl/sdk/y;

    invoke-static {v0}, Lcom/applovin/impl/sdk/y;->d(Lcom/applovin/impl/sdk/y;)V

    :cond_4a
    :goto_4a
    return-void
.end method
