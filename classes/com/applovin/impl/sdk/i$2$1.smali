.class Lcom/applovin/impl/sdk/i$2$1;
.super Lcom/applovin/impl/sdk/utils/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/i$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/i$2;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/i$2;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/i$2$1;->a:Lcom/applovin/impl/sdk/i$2;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 4

    instance-of v0, p1, Lcom/applovin/sdk/AppLovinWebViewActivity;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/applovin/impl/sdk/i$2$1;->a:Lcom/applovin/impl/sdk/i$2;

    iget-object v0, v0, Lcom/applovin/impl/sdk/i$2;->c:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->c()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/applovin/impl/sdk/i;->e()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_39

    :cond_18
    check-cast p1, Lcom/applovin/sdk/AppLovinWebViewActivity;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/applovin/impl/sdk/i;->a(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/applovin/impl/sdk/i$2$1;->a:Lcom/applovin/impl/sdk/i$2;

    iget-object v0, v0, Lcom/applovin/impl/sdk/i$2;->c:Lcom/applovin/impl/sdk/i;

    invoke-static {v0}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/i;)Lcom/applovin/impl/sdk/j;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->ai:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/applovin/impl/sdk/i$2$1;->a:Lcom/applovin/impl/sdk/i$2;

    iget-object v1, v1, Lcom/applovin/impl/sdk/i$2;->c:Lcom/applovin/impl/sdk/i;

    invoke-virtual {p1, v0, v1}, Lcom/applovin/sdk/AppLovinWebViewActivity;->loadUrl(Ljava/lang/String;Lcom/applovin/sdk/AppLovinWebViewActivity$EventListener;)V

    :cond_39
    invoke-static {}, Lcom/applovin/impl/sdk/i;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_41
    return-void
.end method
