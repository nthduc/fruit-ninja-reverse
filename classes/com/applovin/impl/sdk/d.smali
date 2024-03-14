.class public Lcom/applovin/impl/sdk/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/d$a;
    }
.end annotation


# instance fields
.field private a:Lcom/applovin/impl/sdk/utils/p;

.field private final b:Ljava/lang/Object;

.field private final c:Lcom/applovin/impl/sdk/j;

.field private final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/applovin/impl/sdk/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:J


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/j;Lcom/applovin/impl/sdk/d$a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/d;->b:Ljava/lang/Object;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/d;->d:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/j;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/sdk/d;->h()V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/d;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/d;->d:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private h()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/d;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/utils/p;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/a;->u:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->ag()Lcom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->unregisterReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;)V

    :cond_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_21

    throw v1
.end method

.method private i()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/a;->t:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d;->d()V

    :cond_13
    return-void
.end method

.method private j()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/a;->t:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/applovin/impl/sdk/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_13
    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->Z()Lcom/applovin/impl/sdk/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v1

    const-string v2, "AdRefreshManager"

    const-string v3, "Waiting for the application to enter foreground to resume the timer."

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_2e
    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/utils/p;

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/utils/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/p;->c()V

    :cond_37
    monitor-exit v0

    goto :goto_3c

    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_13 .. :try_end_3b} :catchall_39

    throw v1

    :cond_3c
    :goto_3c
    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d;->c()V

    iput-wide p1, p0, Lcom/applovin/impl/sdk/d;->e:J

    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/j;

    new-instance v2, Lcom/applovin/impl/sdk/d$1;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/d$1;-><init>(Lcom/applovin/impl/sdk/d;)V

    invoke-static {p1, p2, v1, v2}, Lcom/applovin/impl/sdk/utils/p;->a(JLcom/applovin/impl/sdk/j;Ljava/lang/Runnable;)Lcom/applovin/impl/sdk/utils/p;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/utils/p;

    iget-object p1, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/j;

    sget-object p2, Lcom/applovin/impl/sdk/b/a;->u:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_65

    iget-object p1, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->ag()Lcom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object p1

    new-instance p2, Landroid/content/IntentFilter;

    const-string v1, "com.applovin.application_paused"

    invoke-direct {p2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, p2}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->ag()Lcom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object p1

    new-instance p2, Landroid/content/IntentFilter;

    const-string v1, "com.applovin.application_resumed"

    invoke-direct {p2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, p2}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->ag()Lcom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object p1

    new-instance p2, Landroid/content/IntentFilter;

    const-string v1, "com.applovin.fullscreen_ad_displayed"

    invoke-direct {p2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, p2}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->ag()Lcom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object p1

    new-instance p2, Landroid/content/IntentFilter;

    const-string v1, "com.applovin.fullscreen_ad_hidden"

    invoke-direct {p2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, p2}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    :cond_65
    iget-object p1, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/j;

    sget-object p2, Lcom/applovin/impl/sdk/b/a;->t:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_92

    iget-object p1, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->aa()Lcom/applovin/impl/sdk/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->b()Z

    move-result p1

    if-nez p1, :cond_8d

    iget-object p1, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->Z()Lcom/applovin/impl/sdk/w;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result p1

    if-eqz p1, :cond_92

    :cond_8d
    iget-object p1, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/utils/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/utils/p;->b()V

    :cond_92
    monitor-exit v0

    return-void

    :catchall_94
    move-exception p1

    monitor-exit v0
    :try_end_96
    .catchall {:try_start_3 .. :try_end_96} :catchall_94

    throw p1
.end method

.method public a()Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/utils/p;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public b()J
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/utils/p;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/utils/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/p;->a()J

    move-result-wide v1

    goto :goto_10

    :cond_e
    const-wide/16 v1, -0x1

    :goto_10
    monitor-exit v0

    return-wide v1

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/utils/p;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/utils/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/p;->d()V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/d;->h()V

    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public d()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/utils/p;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/utils/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/p;->b()V

    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public e()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/utils/p;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/utils/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/p;->c()V

    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public f()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/a;->s:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d;->d()V

    :cond_13
    return-void
.end method

.method public g()V
    .registers 10

    iget-object v0, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/a;->s:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/applovin/impl/sdk/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_13
    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->aa()Lcom/applovin/impl/sdk/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->b()Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v1

    const-string v2, "AdRefreshManager"

    const-string v3, "Waiting for the full screen ad to be dismissed to resume the timer."

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_2e
    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/utils/p;

    const/4 v2, 0x0

    if-eqz v1, :cond_5d

    iget-wide v3, p0, Lcom/applovin/impl/sdk/d;->e:J

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d;->b()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/j;

    sget-object v5, Lcom/applovin/impl/sdk/b/a;->r:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v5}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-ltz v1, :cond_58

    cmp-long v1, v3, v5

    if-lez v1, :cond_58

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d;->c()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    goto :goto_5d

    :cond_58
    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/utils/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/p;->c()V

    :cond_5d
    :goto_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_13 .. :try_end_5e} :catchall_6e

    if-eqz v2, :cond_71

    iget-object v0, p0, Lcom/applovin/impl/sdk/d;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/d$a;

    if-eqz v0, :cond_71

    invoke-interface {v0}, Lcom/applovin/impl/sdk/d$a;->onAdRefresh()V

    goto :goto_71

    :catchall_6e
    move-exception v1

    :try_start_6f
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v1

    :cond_71
    :goto_71
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Ljava/util/Map;)V
    .registers 4
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.applovin.application_paused"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d;->f()V

    goto :goto_33

    :cond_10
    const-string p2, "com.applovin.application_resumed"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d;->g()V

    goto :goto_33

    :cond_1c
    const-string p2, "com.applovin.fullscreen_ad_displayed"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_28

    invoke-direct {p0}, Lcom/applovin/impl/sdk/d;->i()V

    goto :goto_33

    :cond_28
    const-string p2, "com.applovin.fullscreen_ad_hidden"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    invoke-direct {p0}, Lcom/applovin/impl/sdk/d;->j()V

    :cond_33
    :goto_33
    return-void
.end method
