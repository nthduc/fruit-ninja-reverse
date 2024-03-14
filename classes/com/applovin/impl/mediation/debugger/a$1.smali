.class Lcom/applovin/impl/mediation/debugger/a$1;
.super Lcom/applovin/impl/sdk/utils/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/debugger/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/mediation/debugger/a;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/debugger/a;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/a$1;->a:Lcom/applovin/impl/mediation/debugger/a;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    instance-of p1, p1, Lcom/applovin/mediation/MaxDebuggerActivity;

    if-eqz p1, :cond_1c

    const-string p1, "AppLovinSdk"

    const-string v0, "Mediation debugger destroyed"

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/q;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/a$1;->a:Lcom/applovin/impl/mediation/debugger/a;

    invoke-static {p1}, Lcom/applovin/impl/mediation/debugger/a;->c(Lcom/applovin/impl/mediation/debugger/a;)Lcom/applovin/impl/sdk/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->ab()Lcom/applovin/impl/sdk/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/applovin/impl/sdk/a;->b(Lcom/applovin/impl/sdk/utils/a;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/applovin/impl/mediation/debugger/a;->a(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    :cond_1c
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 4

    instance-of v0, p1, Lcom/applovin/mediation/MaxDebuggerActivity;

    if-eqz v0, :cond_42

    const-string v0, "AppLovinSdk"

    const-string v1, "Started mediation debugger"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/q;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a$1;->a:Lcom/applovin/impl/mediation/debugger/a;

    invoke-static {v0}, Lcom/applovin/impl/mediation/debugger/a;->a(Lcom/applovin/impl/mediation/debugger/a;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/applovin/impl/mediation/debugger/a;->c()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_3a

    :cond_1d
    check-cast p1, Lcom/applovin/mediation/MaxDebuggerActivity;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/applovin/impl/mediation/debugger/a;->a(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a$1;->a:Lcom/applovin/impl/mediation/debugger/a;

    invoke-static {v0}, Lcom/applovin/impl/mediation/debugger/a;->b(Lcom/applovin/impl/mediation/debugger/a;)Lcom/applovin/impl/mediation/debugger/ui/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/a$1;->a:Lcom/applovin/impl/mediation/debugger/a;

    invoke-static {v1}, Lcom/applovin/impl/mediation/debugger/a;->c(Lcom/applovin/impl/mediation/debugger/a;)Lcom/applovin/impl/sdk/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->ab()Lcom/applovin/impl/sdk/a;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/applovin/mediation/MaxDebuggerActivity;->setListAdapter(Lcom/applovin/impl/mediation/debugger/ui/a/b;Lcom/applovin/impl/sdk/a;)V

    :cond_3a
    invoke-static {}, Lcom/applovin/impl/mediation/debugger/a;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_42
    return-void
.end method
