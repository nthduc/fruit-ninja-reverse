.class Lcom/applovin/impl/sdk/d/s$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/d/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/d/s;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/applovin/impl/sdk/d/a;

.field private final d:Lcom/applovin/impl/sdk/d/s$a;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/d/s;Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/s$a;)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/s$c;->a:Lcom/applovin/impl/sdk/d/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/d/a;->e()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/s$c;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/sdk/d/s$c;->c:Lcom/applovin/impl/sdk/d/a;

    iput-object p3, p0, Lcom/applovin/impl/sdk/d/s$c;->d:Lcom/applovin/impl/sdk/d/s$a;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/d/s$c;)Lcom/applovin/impl/sdk/d/a;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/d/s$c;->c:Lcom/applovin/impl/sdk/d/a;

    return-object p0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/d/s$c;)Lcom/applovin/impl/sdk/d/s$a;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/d/s$c;->d:Lcom/applovin/impl/sdk/d/s$a;

    return-object p0
.end method


# virtual methods
.method public run()V
    .registers 11

    const-string v0, " with queue size "

    const-string v1, " queue finished task "

    const-string v2, "TaskManager"

    const-wide/16 v3, 0x1

    :try_start_8
    invoke-static {}, Lcom/applovin/impl/sdk/utils/g;->a()V

    iget-object v5, p0, Lcom/applovin/impl/sdk/d/s$c;->a:Lcom/applovin/impl/sdk/d/s;

    invoke-static {v5}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/s;)Lcom/applovin/impl/sdk/j;

    move-result-object v5

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/j;->c()Z

    move-result v5

    if-eqz v5, :cond_39

    iget-object v5, p0, Lcom/applovin/impl/sdk/d/s$c;->c:Lcom/applovin/impl/sdk/d/a;

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/d/a;->g()Z

    move-result v5

    if-eqz v5, :cond_20

    goto :goto_39

    :cond_20
    iget-object v5, p0, Lcom/applovin/impl/sdk/d/s$c;->a:Lcom/applovin/impl/sdk/d/s;

    invoke-static {v5}, Lcom/applovin/impl/sdk/d/s;->b(Lcom/applovin/impl/sdk/d/s;)Lcom/applovin/impl/sdk/q;

    move-result-object v5

    iget-object v6, p0, Lcom/applovin/impl/sdk/d/s$c;->b:Ljava/lang/String;

    const-string v7, "Task re-scheduled..."

    invoke-virtual {v5, v6, v7}, Lcom/applovin/impl/sdk/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/applovin/impl/sdk/d/s$c;->a:Lcom/applovin/impl/sdk/d/s;

    iget-object v6, p0, Lcom/applovin/impl/sdk/d/s$c;->c:Lcom/applovin/impl/sdk/d/a;

    iget-object v7, p0, Lcom/applovin/impl/sdk/d/s$c;->d:Lcom/applovin/impl/sdk/d/s$a;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/s$a;J)V

    goto :goto_3e

    :cond_39
    :goto_39
    iget-object v5, p0, Lcom/applovin/impl/sdk/d/s$c;->c:Lcom/applovin/impl/sdk/d/a;

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/d/a;->run()V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_3e} :catch_55
    .catchall {:try_start_8 .. :try_end_3e} :catchall_53

    :goto_3e
    iget-object v5, p0, Lcom/applovin/impl/sdk/d/s$c;->a:Lcom/applovin/impl/sdk/d/s;

    iget-object v6, p0, Lcom/applovin/impl/sdk/d/s$c;->d:Lcom/applovin/impl/sdk/d/s$a;

    invoke-static {v5, v6}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/s;Lcom/applovin/impl/sdk/d/s$a;)J

    move-result-wide v5

    sub-long/2addr v5, v3

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/s$c;->a:Lcom/applovin/impl/sdk/d/s;

    invoke-static {v3}, Lcom/applovin/impl/sdk/d/s;->b(Lcom/applovin/impl/sdk/d/s;)Lcom/applovin/impl/sdk/q;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_7b

    :catchall_53
    move-exception v5

    goto :goto_9a

    :catch_55
    move-exception v5

    :try_start_56
    iget-object v6, p0, Lcom/applovin/impl/sdk/d/s$c;->a:Lcom/applovin/impl/sdk/d/s;

    invoke-static {v6}, Lcom/applovin/impl/sdk/d/s;->b(Lcom/applovin/impl/sdk/d/s;)Lcom/applovin/impl/sdk/q;

    move-result-object v6

    iget-object v7, p0, Lcom/applovin/impl/sdk/d/s$c;->c:Lcom/applovin/impl/sdk/d/a;

    invoke-virtual {v7}, Lcom/applovin/impl/sdk/d/a;->e()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Task failed execution"

    invoke-virtual {v6, v7, v8, v5}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_67
    .catchall {:try_start_56 .. :try_end_67} :catchall_53

    iget-object v5, p0, Lcom/applovin/impl/sdk/d/s$c;->a:Lcom/applovin/impl/sdk/d/s;

    iget-object v6, p0, Lcom/applovin/impl/sdk/d/s$c;->d:Lcom/applovin/impl/sdk/d/s$a;

    invoke-static {v5, v6}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/s;Lcom/applovin/impl/sdk/d/s$a;)J

    move-result-wide v5

    sub-long/2addr v5, v3

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/s$c;->a:Lcom/applovin/impl/sdk/d/s;

    invoke-static {v3}, Lcom/applovin/impl/sdk/d/s;->b(Lcom/applovin/impl/sdk/d/s;)Lcom/applovin/impl/sdk/q;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_7b
    iget-object v7, p0, Lcom/applovin/impl/sdk/d/s$c;->d:Lcom/applovin/impl/sdk/d/s$a;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/s$c;->c:Lcom/applovin/impl/sdk/d/a;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/d/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/applovin/impl/sdk/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_9a
    iget-object v6, p0, Lcom/applovin/impl/sdk/d/s$c;->a:Lcom/applovin/impl/sdk/d/s;

    iget-object v7, p0, Lcom/applovin/impl/sdk/d/s$c;->d:Lcom/applovin/impl/sdk/d/s$a;

    invoke-static {v6, v7}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/s;Lcom/applovin/impl/sdk/d/s$a;)J

    move-result-wide v6

    sub-long/2addr v6, v3

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/s$c;->a:Lcom/applovin/impl/sdk/d/s;

    invoke-static {v3}, Lcom/applovin/impl/sdk/d/s;->b(Lcom/applovin/impl/sdk/d/s;)Lcom/applovin/impl/sdk/q;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/applovin/impl/sdk/d/s$c;->d:Lcom/applovin/impl/sdk/d/s$a;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/s$c;->c:Lcom/applovin/impl/sdk/d/a;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/d/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/applovin/impl/sdk/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    throw v5
.end method
