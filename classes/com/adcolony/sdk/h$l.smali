.class Lcom/adcolony/sdk/h$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/h;->H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/h;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/h;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/adcolony/sdk/h$l;->a:Lcom/adcolony/sdk/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Lcom/adcolony/sdk/h$l;->a:Lcom/adcolony/sdk/h;

    invoke-static {p2}, Lcom/adcolony/sdk/h;->i(Lcom/adcolony/sdk/h;)Lcom/adcolony/sdk/f0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/adcolony/sdk/f0;->e()Z

    move-result p2

    if-nez p2, :cond_16

    .line 2
    iget-object p2, p0, Lcom/adcolony/sdk/h$l;->a:Lcom/adcolony/sdk/h;

    invoke-static {p2}, Lcom/adcolony/sdk/h;->i(Lcom/adcolony/sdk/h;)Lcom/adcolony/sdk/f0;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/adcolony/sdk/f0;->c(Z)V

    .line 4
    :cond_16
    invoke-static {p1}, Lcom/adcolony/sdk/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    .line 1
    sput-boolean p1, Lcom/adcolony/sdk/a;->d:Z

    .line 2
    iget-object v0, p0, Lcom/adcolony/sdk/h$l;->a:Lcom/adcolony/sdk/h;

    invoke-static {v0}, Lcom/adcolony/sdk/h;->i(Lcom/adcolony/sdk/h;)Lcom/adcolony/sdk/f0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/f0;->d(Z)V

    .line 3
    iget-object p1, p0, Lcom/adcolony/sdk/h$l;->a:Lcom/adcolony/sdk/h;

    invoke-static {p1}, Lcom/adcolony/sdk/h;->i(Lcom/adcolony/sdk/h;)Lcom/adcolony/sdk/f0;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/f0;->e(Z)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 6
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/adcolony/sdk/a;->d:Z

    .line 2
    invoke-static {p1}, Lcom/adcolony/sdk/a;->a(Landroid/content/Context;)V

    .line 4
    iget-object v1, p0, Lcom/adcolony/sdk/h$l;->a:Lcom/adcolony/sdk/h;

    invoke-virtual {v1}, Lcom/adcolony/sdk/h;->m()Lcom/adcolony/sdk/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/w;->a()Lcom/adcolony/sdk/e0;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_2d

    iget-object v3, p0, Lcom/adcolony/sdk/h$l;->a:Lcom/adcolony/sdk/h;

    invoke-static {v3}, Lcom/adcolony/sdk/h;->i(Lcom/adcolony/sdk/h;)Lcom/adcolony/sdk/f0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adcolony/sdk/f0;->d()Z

    move-result v3

    if-eqz v3, :cond_2d

    instance-of v3, v2, Lcom/adcolony/sdk/b;

    if-eqz v3, :cond_2d

    check-cast v2, Lcom/adcolony/sdk/b;

    iget-boolean v2, v2, Lcom/adcolony/sdk/b;->e:Z

    if-nez v2, :cond_2d

    return-void

    .line 10
    :cond_2d
    invoke-static {p1}, Lcom/adcolony/sdk/a;->a(Landroid/content/Context;)V

    .line 14
    iget-object v2, p0, Lcom/adcolony/sdk/h$l;->a:Lcom/adcolony/sdk/h;

    invoke-static {v2}, Lcom/adcolony/sdk/h;->j(Lcom/adcolony/sdk/h;)Lcom/adcolony/sdk/x;

    move-result-object v2

    if-eqz v2, :cond_55

    .line 15
    iget-object v2, p0, Lcom/adcolony/sdk/h$l;->a:Lcom/adcolony/sdk/h;

    invoke-static {v2}, Lcom/adcolony/sdk/h;->j(Lcom/adcolony/sdk/h;)Lcom/adcolony/sdk/x;

    move-result-object v2

    iget-object v3, p0, Lcom/adcolony/sdk/h$l;->a:Lcom/adcolony/sdk/h;

    invoke-static {v3}, Lcom/adcolony/sdk/h;->j(Lcom/adcolony/sdk/h;)Lcom/adcolony/sdk/x;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/x;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/x;->d()V

    .line 16
    iget-object v2, p0, Lcom/adcolony/sdk/h$l;->a:Lcom/adcolony/sdk/h;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/adcolony/sdk/h;->c(Lcom/adcolony/sdk/h;Lcom/adcolony/sdk/x;)Lcom/adcolony/sdk/x;

    .line 20
    :cond_55
    iget-object v2, p0, Lcom/adcolony/sdk/h$l;->a:Lcom/adcolony/sdk/h;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/adcolony/sdk/h;->c(Lcom/adcolony/sdk/h;Z)Z

    .line 21
    iget-object v2, p0, Lcom/adcolony/sdk/h$l;->a:Lcom/adcolony/sdk/h;

    invoke-static {v2}, Lcom/adcolony/sdk/h;->i(Lcom/adcolony/sdk/h;)Lcom/adcolony/sdk/f0;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/adcolony/sdk/f0;->d(Z)V

    .line 22
    iget-object v2, p0, Lcom/adcolony/sdk/h$l;->a:Lcom/adcolony/sdk/h;

    invoke-static {v2}, Lcom/adcolony/sdk/h;->i(Lcom/adcolony/sdk/h;)Lcom/adcolony/sdk/f0;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/adcolony/sdk/f0;->e(Z)V

    .line 23
    iget-object v2, p0, Lcom/adcolony/sdk/h$l;->a:Lcom/adcolony/sdk/h;

    invoke-static {v2}, Lcom/adcolony/sdk/h;->i(Lcom/adcolony/sdk/h;)Lcom/adcolony/sdk/f0;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/f0;->f(Z)V

    .line 26
    iget-object v2, p0, Lcom/adcolony/sdk/h$l;->a:Lcom/adcolony/sdk/h;

    iget-boolean v3, v2, Lcom/adcolony/sdk/h;->F:Z

    if-eqz v3, :cond_8f

    invoke-static {v2}, Lcom/adcolony/sdk/h;->i(Lcom/adcolony/sdk/h;)Lcom/adcolony/sdk/f0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/f0;->e()Z

    move-result v2

    if-nez v2, :cond_8f

    .line 30
    iget-object v2, p0, Lcom/adcolony/sdk/h$l;->a:Lcom/adcolony/sdk/h;

    invoke-static {v2}, Lcom/adcolony/sdk/h;->i(Lcom/adcolony/sdk/h;)Lcom/adcolony/sdk/f0;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/adcolony/sdk/f0;->c(Z)V

    .line 33
    :cond_8f
    iget-object v0, p0, Lcom/adcolony/sdk/h$l;->a:Lcom/adcolony/sdk/h;

    invoke-static {v0}, Lcom/adcolony/sdk/h;->k(Lcom/adcolony/sdk/h;)Lcom/adcolony/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/k;->c()V

    if-eqz v1, :cond_ac

    .line 34
    iget-object v0, v1, Lcom/adcolony/sdk/e0;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_ac

    .line 36
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_ac

    iget-object v0, v1, Lcom/adcolony/sdk/e0;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 37
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 39
    :cond_ac
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    invoke-static {v0}, Lcom/adcolony/sdk/h;->l(Lcom/adcolony/sdk/h;)Lcom/adcolony/sdk/AdColonyAppOptions;

    move-result-object v0

    .line 40
    invoke-static {p1, v0}, Lcom/adcolony/sdk/AdColony;->a(Landroid/content/Context;Lcom/adcolony/sdk/AdColonyAppOptions;)V

    :cond_b7
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
