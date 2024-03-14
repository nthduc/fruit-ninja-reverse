.class public Lcom/applovin/impl/sdk/p;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/j;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:J

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:J


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/j;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/p;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/p;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/p;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/applovin/impl/sdk/p;->a:Lcom/applovin/impl/sdk/j;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/p;)J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/impl/sdk/p;->f:J

    return-wide v0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/sdk/j;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/p;->a:Lcom/applovin/impl/sdk/j;

    return-object p0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/p;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/p;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/p;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/p;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic e(Lcom/applovin/impl/sdk/p;)J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/impl/sdk/p;->c:J

    return-wide v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 7

    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->ah()Lcom/applovin/impl/sdk/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/l;->a(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/applovin/impl/mediation/c/c;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    :cond_10
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/sdk/p;->c:J

    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting fullscreen ad displayed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/applovin/impl/sdk/p;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FullScreenAdTracker"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->ag()Lcom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object v0

    const-string v1, "com.applovin.fullscreen_ad_displayed"

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->sendBroadcastWithAdObject(Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->a:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->co:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_65

    new-instance v2, Lcom/applovin/impl/sdk/p$2;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/applovin/impl/sdk/p$2;-><init>(Lcom/applovin/impl/sdk/p;JLjava/lang/Object;)V

    invoke-static {v2, v0, v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    :cond_65
    return-void
.end method

.method public a(Z)V
    .registers 9

    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/p;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_4b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/applovin/impl/sdk/p;->f:J

    iget-object p1, p0, Lcom/applovin/impl/sdk/p;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object p1

    const-string v3, "FullScreenAdTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting fullscreen ad pending display: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/applovin/impl/sdk/p;->f:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/p;->a:Lcom/applovin/impl/sdk/j;

    sget-object v3, Lcom/applovin/impl/sdk/b/b;->cn:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p1, v3}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-ltz p1, :cond_6d

    new-instance p1, Lcom/applovin/impl/sdk/p$1;

    invoke-direct {p1, p0, v3, v4}, Lcom/applovin/impl/sdk/p$1;-><init>(Lcom/applovin/impl/sdk/p;J)V

    invoke-static {p1, v3, v4}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    goto :goto_6d

    :cond_4b
    iput-wide v1, p0, Lcom/applovin/impl/sdk/p;->f:J

    iget-object p1, p0, Lcom/applovin/impl/sdk/p;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object p1

    const-string v1, "FullScreenAdTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting fullscreen ad not pending display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6d
    :goto_6d
    monitor-exit v0

    return-void

    :catchall_6f
    move-exception p1

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_3 .. :try_end_71} :catchall_6f

    throw p1
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->ah()Lcom/applovin/impl/sdk/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/l;->b(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/applovin/impl/mediation/c/c;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    :cond_10
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting fullscreen ad hidden: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FullScreenAdTracker"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->ag()Lcom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object v0

    const-string v1, "com.applovin.fullscreen_ad_hidden"

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->sendBroadcastWithAdObject(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_45
    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
