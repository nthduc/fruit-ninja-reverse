.class Lcom/applovin/impl/sdk/p$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/p;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/applovin/impl/sdk/p;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/p;JLjava/lang/Object;)V
    .registers 5

    iput-object p1, p0, Lcom/applovin/impl/sdk/p$2;->c:Lcom/applovin/impl/sdk/p;

    iput-wide p2, p0, Lcom/applovin/impl/sdk/p$2;->a:J

    iput-object p4, p0, Lcom/applovin/impl/sdk/p$2;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/p$2;->c:Lcom/applovin/impl/sdk/p;

    invoke-static {v0}, Lcom/applovin/impl/sdk/p;->d(Lcom/applovin/impl/sdk/p;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/p$2;->c:Lcom/applovin/impl/sdk/p;

    invoke-static {v2}, Lcom/applovin/impl/sdk/p;->e(Lcom/applovin/impl/sdk/p;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/applovin/impl/sdk/p$2;->a:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_36

    iget-object v0, p0, Lcom/applovin/impl/sdk/p$2;->c:Lcom/applovin/impl/sdk/p;

    invoke-static {v0}, Lcom/applovin/impl/sdk/p;->b(Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    const-string v1, "FullScreenAdTracker"

    const-string v2, "Resetting \"display\" state..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/p$2;->c:Lcom/applovin/impl/sdk/p;

    iget-object v1, p0, Lcom/applovin/impl/sdk/p$2;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/Object;)V

    :cond_36
    return-void
.end method
