.class Lcom/applovin/impl/sdk/d/ab$1;
.super Lcom/applovin/impl/sdk/d/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/d/ab;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/applovin/impl/sdk/d/y<",
        "Lcom/applovin/impl/sdk/utils/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/d/ab;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/d/ab;Lcom/applovin/impl/sdk/network/b;Lcom/applovin/impl/sdk/j;)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/ab$1;->a:Lcom/applovin/impl/sdk/d/ab;

    invoke-direct {p0, p2, p3}, Lcom/applovin/impl/sdk/d/y;-><init>(Lcom/applovin/impl/sdk/network/b;Lcom/applovin/impl/sdk/j;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to resolve VAST wrapper. Server returned "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/ab$1;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/ab$1;->a:Lcom/applovin/impl/sdk/d/ab;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/d/ab;->a(Lcom/applovin/impl/sdk/d/ab;I)V

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/utils/t;I)V
    .registers 5

    iget-object p2, p0, Lcom/applovin/impl/sdk/d/ab$1;->a:Lcom/applovin/impl/sdk/d/ab;

    invoke-static {p2}, Lcom/applovin/impl/sdk/d/ab;->a(Lcom/applovin/impl/sdk/d/ab;)Lcom/applovin/impl/a/c;

    move-result-object p2

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/ab$1;->a:Lcom/applovin/impl/sdk/d/ab;

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/ab;->b(Lcom/applovin/impl/sdk/d/ab;)Lcom/applovin/sdk/AppLovinAdLoadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/ab$1;->a:Lcom/applovin/impl/sdk/d/ab;

    iget-object v1, v1, Lcom/applovin/impl/sdk/d/ab;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, p2, v0, v1}, Lcom/applovin/impl/sdk/d/u;->a(Lcom/applovin/impl/sdk/utils/t;Lcom/applovin/impl/a/c;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/d/u;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/impl/sdk/d/ab$1;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .registers 3

    check-cast p1, Lcom/applovin/impl/sdk/utils/t;

    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/sdk/d/ab$1;->a(Lcom/applovin/impl/sdk/utils/t;I)V

    return-void
.end method
