.class Lcom/applovin/impl/sdk/utils/p$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/utils/p;->e()Ljava/util/TimerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/utils/p;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/utils/p;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/utils/p$1;->a:Lcom/applovin/impl/sdk/utils/p;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/applovin/impl/sdk/utils/p$1;->a:Lcom/applovin/impl/sdk/utils/p;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/p;->a(Lcom/applovin/impl/sdk/utils/p;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a} :catch_1d
    .catchall {:try_start_1 .. :try_end_a} :catchall_1b

    iget-object v1, p0, Lcom/applovin/impl/sdk/utils/p$1;->a:Lcom/applovin/impl/sdk/utils/p;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/p;->c(Lcom/applovin/impl/sdk/utils/p;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_11
    iget-object v2, p0, Lcom/applovin/impl/sdk/utils/p$1;->a:Lcom/applovin/impl/sdk/utils/p;

    invoke-static {v2, v0}, Lcom/applovin/impl/sdk/utils/p;->a(Lcom/applovin/impl/sdk/utils/p;Ljava/util/Timer;)Ljava/util/Timer;

    monitor-exit v1

    goto :goto_44

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_18

    throw v0

    :catchall_1b
    move-exception v1

    goto :goto_48

    :catch_1d
    move-exception v1

    :try_start_1e
    iget-object v2, p0, Lcom/applovin/impl/sdk/utils/p$1;->a:Lcom/applovin/impl/sdk/utils/p;

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/p;->b(Lcom/applovin/impl/sdk/utils/p;)Lcom/applovin/impl/sdk/j;

    move-result-object v2

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/applovin/impl/sdk/utils/p$1;->a:Lcom/applovin/impl/sdk/utils/p;

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/p;->b(Lcom/applovin/impl/sdk/utils/p;)Lcom/applovin/impl/sdk/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v2

    const-string v3, "Timer"

    const-string v4, "Encountered error while executing timed task"

    invoke-virtual {v2, v3, v4, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_37
    .catchall {:try_start_1e .. :try_end_37} :catchall_1b

    :cond_37
    iget-object v1, p0, Lcom/applovin/impl/sdk/utils/p$1;->a:Lcom/applovin/impl/sdk/utils/p;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/p;->c(Lcom/applovin/impl/sdk/utils/p;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_3e
    iget-object v2, p0, Lcom/applovin/impl/sdk/utils/p$1;->a:Lcom/applovin/impl/sdk/utils/p;

    invoke-static {v2, v0}, Lcom/applovin/impl/sdk/utils/p;->a(Lcom/applovin/impl/sdk/utils/p;Ljava/util/Timer;)Ljava/util/Timer;

    monitor-exit v1

    :goto_44
    return-void

    :catchall_45
    move-exception v0

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_3e .. :try_end_47} :catchall_45

    throw v0

    :goto_48
    iget-object v2, p0, Lcom/applovin/impl/sdk/utils/p$1;->a:Lcom/applovin/impl/sdk/utils/p;

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/p;->c(Lcom/applovin/impl/sdk/utils/p;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_4f
    iget-object v3, p0, Lcom/applovin/impl/sdk/utils/p$1;->a:Lcom/applovin/impl/sdk/utils/p;

    invoke-static {v3, v0}, Lcom/applovin/impl/sdk/utils/p;->a(Lcom/applovin/impl/sdk/utils/p;Ljava/util/Timer;)Ljava/util/Timer;

    monitor-exit v2
    :try_end_55
    .catchall {:try_start_4f .. :try_end_55} :catchall_56

    throw v1

    :catchall_56
    move-exception v0

    :try_start_57
    monitor-exit v2
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v0
.end method
