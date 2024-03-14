.class Lcom/applovin/impl/sdk/t$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/t;->b(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/ad/d;

.field final synthetic b:I

.field final synthetic c:Lcom/applovin/impl/sdk/t;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/t;Lcom/applovin/impl/sdk/ad/d;I)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/impl/sdk/t$1;->c:Lcom/applovin/impl/sdk/t;

    iput-object p2, p0, Lcom/applovin/impl/sdk/t$1;->a:Lcom/applovin/impl/sdk/ad/d;

    iput p3, p0, Lcom/applovin/impl/sdk/t$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/applovin/impl/sdk/t$1;->c:Lcom/applovin/impl/sdk/t;

    invoke-static {v0}, Lcom/applovin/impl/sdk/t;->a(Lcom/applovin/impl/sdk/t;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/applovin/impl/sdk/t$1;->c:Lcom/applovin/impl/sdk/t;

    invoke-static {v1}, Lcom/applovin/impl/sdk/t;->b(Lcom/applovin/impl/sdk/t;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/t$1;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_54

    iget-object v2, p0, Lcom/applovin/impl/sdk/t$1;->c:Lcom/applovin/impl/sdk/t;

    invoke-static {v2}, Lcom/applovin/impl/sdk/t;->b(Lcom/applovin/impl/sdk/t;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/t$1;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/applovin/impl/sdk/t$1;->c:Lcom/applovin/impl/sdk/t;

    iget-object v2, v2, Lcom/applovin/impl/sdk/t;->b:Lcom/applovin/impl/sdk/q;

    const-string v3, "PreloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Load callback for zone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/applovin/impl/sdk/t$1;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " timed out after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/applovin/impl/sdk/t$1;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/t$1;->c:Lcom/applovin/impl/sdk/t;

    iget-object v3, p0, Lcom/applovin/impl/sdk/t$1;->a:Lcom/applovin/impl/sdk/ad/d;

    const/16 v4, -0x66

    invoke-virtual {v2, v1, v3, v4}, Lcom/applovin/impl/sdk/t;->a(Ljava/lang/Object;Lcom/applovin/impl/sdk/ad/d;I)V

    :cond_54
    monitor-exit v0

    return-void

    :catchall_56
    move-exception v1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_7 .. :try_end_58} :catchall_56

    throw v1
.end method
