.class Lcom/applovin/impl/sdk/u;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/applovin/impl/sdk/ad/j;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/u;->a(I)V

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/u;->b:Ljava/util/Queue;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/u;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method a()I
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/u;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/u;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method a(I)V
    .registers 3

    const/16 v0, 0x19

    if-gt p1, v0, :cond_5

    goto :goto_7

    :cond_5
    const/16 p1, 0x19

    :goto_7
    iput p1, p0, Lcom/applovin/impl/sdk/u;->a:I

    return-void
.end method

.method a(Lcom/applovin/impl/sdk/ad/j;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/u;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/u;->a()I

    move-result v1

    const/16 v2, 0x19

    if-gt v1, v2, :cond_11

    iget-object v1, p0, Lcom/applovin/impl/sdk/u;->b:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_11
    const-string p1, "AppLovinSdk"

    const-string v1, "Maximum queue capacity reached - discarding ad..."

    invoke-static {p1, v1}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method b()I
    .registers 2

    iget v0, p0, Lcom/applovin/impl/sdk/u;->a:I

    return v0
.end method

.method c()Z
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/u;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/u;->a()I

    move-result v1

    iget v2, p0, Lcom/applovin/impl/sdk/u;->a:I

    if-lt v1, v2, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method d()Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/u;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/u;->a()I

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    monitor-exit v0

    return v1

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method e()Lcom/applovin/impl/sdk/ad/j;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/applovin/impl/sdk/u;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_19

    :try_start_4
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/u;->d()Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, p0, Lcom/applovin/impl/sdk/u;->b:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/sdk/ad/j;

    goto :goto_14

    :cond_13
    move-object v2, v0

    :goto_14
    monitor-exit v1

    return-object v2

    :catchall_16
    move-exception v2

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_16

    :try_start_18
    throw v2
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_19} :catch_19

    :catch_19
    return-object v0
.end method

.method f()Lcom/applovin/impl/sdk/ad/j;
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/u;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/u;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/sdk/ad/j;

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method
