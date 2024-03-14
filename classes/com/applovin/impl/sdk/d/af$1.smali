.class Lcom/applovin/impl/sdk/d/af$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/network/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/d/af;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/applovin/impl/sdk/network/a$c<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/d/af;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/d/af;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/af$1;->a:Lcom/applovin/impl/sdk/d/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/af$1;->a:Lcom/applovin/impl/sdk/d/af;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/d/af;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/af$1;->a:Lcom/applovin/impl/sdk/d/af;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/d/af;->a(I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .registers 3

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/sdk/d/af$1;->a(Lorg/json/JSONObject;I)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;I)V
    .registers 3

    iget-object p2, p0, Lcom/applovin/impl/sdk/d/af$1;->a:Lcom/applovin/impl/sdk/d/af;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/d/af;->b()Z

    move-result p2

    if-eqz p2, :cond_9

    return-void

    :cond_9
    iget-object p2, p0, Lcom/applovin/impl/sdk/d/af$1;->a:Lcom/applovin/impl/sdk/d/af;

    invoke-static {p2, p1}, Lcom/applovin/impl/sdk/d/af;->a(Lcom/applovin/impl/sdk/d/af;Lorg/json/JSONObject;)V

    return-void
.end method
