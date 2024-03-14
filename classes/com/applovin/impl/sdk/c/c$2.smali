.class Lcom/applovin/impl/sdk/c/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/c/c;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/c/c;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/c/c;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/c/c$2;->a:Lcom/applovin/impl/sdk/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/c$2;->a:Lcom/applovin/impl/sdk/c/c;

    invoke-static {v0}, Lcom/applovin/impl/sdk/c/c;->b(Lcom/applovin/impl/sdk/c/c;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/applovin/impl/sdk/c/c$2;->a:Lcom/applovin/impl/sdk/c/c;

    invoke-static {v2}, Lcom/applovin/impl/sdk/c/c;->c(Lcom/applovin/impl/sdk/c/c;)Lcom/applovin/impl/sdk/c/c$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/c/c$c;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/c/c$2;->a:Lcom/applovin/impl/sdk/c/c;

    invoke-static {v2}, Lcom/applovin/impl/sdk/c/c;->c(Lcom/applovin/impl/sdk/c/c;)Lcom/applovin/impl/sdk/c/c$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/c/c$c;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/impl/sdk/c/c$a;
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_6d

    :try_start_30
    invoke-static {v3}, Lcom/applovin/impl/sdk/c/c$a;->a(Lcom/applovin/impl/sdk/c/c$a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catch Ljava/lang/OutOfMemoryError; {:try_start_30 .. :try_end_37} :catch_38
    .catchall {:try_start_30 .. :try_end_37} :catchall_6d

    goto :goto_24

    :catch_38
    move-exception v4

    :try_start_39
    iget-object v5, p0, Lcom/applovin/impl/sdk/c/c$2;->a:Lcom/applovin/impl/sdk/c/c;

    invoke-static {v5}, Lcom/applovin/impl/sdk/c/c;->a(Lcom/applovin/impl/sdk/c/c;)Lcom/applovin/impl/sdk/q;

    move-result-object v5

    const-string v6, "AdEventStatsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to serialize "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " due to OOM error"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v6, v3, v4}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v3, p0, Lcom/applovin/impl/sdk/c/c$2;->a:Lcom/applovin/impl/sdk/c/c;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/c/c;->b()V

    goto :goto_24

    :cond_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_39 .. :try_end_61} :catchall_6d

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/c$2;->a:Lcom/applovin/impl/sdk/c/c;

    invoke-static {v0}, Lcom/applovin/impl/sdk/c/c;->d(Lcom/applovin/impl/sdk/c/c;)Lcom/applovin/impl/sdk/j;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/b/d;->t:Lcom/applovin/impl/sdk/b/d;

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Object;)V

    return-void

    :catchall_6d
    move-exception v1

    :try_start_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw v1

    return-void
.end method
