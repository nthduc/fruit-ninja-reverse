.class Lcom/applovin/impl/sdk/p$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/p;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/applovin/impl/sdk/p;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/p;J)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/impl/sdk/p$1;->b:Lcom/applovin/impl/sdk/p;

    iput-wide p2, p0, Lcom/applovin/impl/sdk/p$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/p$1;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/p$1;->b:Lcom/applovin/impl/sdk/p;

    invoke-static {v2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/p;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/applovin/impl/sdk/p$1;->a:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_35

    iget-object v0, p0, Lcom/applovin/impl/sdk/p$1;->b:Lcom/applovin/impl/sdk/p;

    invoke-static {v0}, Lcom/applovin/impl/sdk/p;->b(Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    const-string v1, "FullScreenAdTracker"

    const-string v2, "Resetting \"pending display\" state..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/p$1;->b:Lcom/applovin/impl/sdk/p;

    invoke-static {v0}, Lcom/applovin/impl/sdk/p;->c(Lcom/applovin/impl/sdk/p;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_35
    return-void
.end method
