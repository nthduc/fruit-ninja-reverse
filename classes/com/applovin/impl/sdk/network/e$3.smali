.class Lcom/applovin/impl/sdk/network/e$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/network/e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/network/e;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/network/e;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/e$3;->a:Lcom/applovin/impl/sdk/network/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/e$3;->a:Lcom/applovin/impl/sdk/network/e;

    invoke-static {v0}, Lcom/applovin/impl/sdk/network/e;->a(Lcom/applovin/impl/sdk/network/e;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/e$3;->a:Lcom/applovin/impl/sdk/network/e;

    invoke-static {v1}, Lcom/applovin/impl/sdk/network/e;->d(Lcom/applovin/impl/sdk/network/e;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_30

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/applovin/impl/sdk/network/e$3;->a:Lcom/applovin/impl/sdk/network/e;

    invoke-static {v2}, Lcom/applovin/impl/sdk/network/e;->d(Lcom/applovin/impl/sdk/network/e;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/sdk/network/f;

    iget-object v3, p0, Lcom/applovin/impl/sdk/network/e$3;->a:Lcom/applovin/impl/sdk/network/e;

    invoke-static {v3, v2}, Lcom/applovin/impl/sdk/network/e;->d(Lcom/applovin/impl/sdk/network/e;Lcom/applovin/impl/sdk/network/f;)V

    goto :goto_1e

    :cond_30
    monitor-exit v0

    return-void

    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_32

    throw v1

    return-void
.end method
