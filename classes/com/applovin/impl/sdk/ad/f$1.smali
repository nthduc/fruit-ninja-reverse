.class Lcom/applovin/impl/sdk/ad/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/ad/f;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/ad/f;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/ad/f;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/f$1;->a:Lcom/applovin/impl/sdk/ad/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    iget-object p1, p0, Lcom/applovin/impl/sdk/ad/f$1;->a:Lcom/applovin/impl/sdk/ad/f;

    sget-object p2, Lcom/applovin/impl/sdk/ad/f$b;->c:Lcom/applovin/impl/sdk/ad/f$b;

    invoke-static {p1, p2}, Lcom/applovin/impl/sdk/ad/f;->a(Lcom/applovin/impl/sdk/ad/f;Lcom/applovin/impl/sdk/ad/f$b;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/ad/f$1;->a:Lcom/applovin/impl/sdk/ad/f;

    invoke-static {p1}, Lcom/applovin/impl/sdk/ad/f;->a(Lcom/applovin/impl/sdk/ad/f;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_e
    iget-object p2, p0, Lcom/applovin/impl/sdk/ad/f$1;->a:Lcom/applovin/impl/sdk/ad/f;

    invoke-static {p2}, Lcom/applovin/impl/sdk/ad/f;->b(Lcom/applovin/impl/sdk/ad/f;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    monitor-exit p1

    return-void

    :catchall_19
    move-exception p2

    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_19

    throw p2
.end method
