.class Lcom/applovin/impl/mediation/b/c$1;
.super Lcom/applovin/impl/sdk/d/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/b/c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/applovin/impl/sdk/d/y<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/mediation/b/c;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/b/c;Lcom/applovin/impl/sdk/network/b;Lcom/applovin/impl/sdk/j;)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/impl/mediation/b/c$1;->a:Lcom/applovin/impl/mediation/b/c;

    invoke-direct {p0, p2, p3}, Lcom/applovin/impl/sdk/d/y;-><init>(Lcom/applovin/impl/sdk/network/b;Lcom/applovin/impl/sdk/j;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/c$1;->a:Lcom/applovin/impl/mediation/b/c;

    invoke-static {v0, p1}, Lcom/applovin/impl/mediation/b/c;->a(Lcom/applovin/impl/mediation/b/c;I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .registers 3

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/mediation/b/c$1;->a(Lorg/json/JSONObject;I)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;I)V
    .registers 6

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_24

    iget-object p2, p0, Lcom/applovin/impl/mediation/b/c$1;->d:Lcom/applovin/impl/sdk/network/a$a;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/network/a$a;->a()J

    move-result-wide v0

    iget-object p2, p0, Lcom/applovin/impl/mediation/b/c$1;->b:Lcom/applovin/impl/sdk/j;

    const-string v2, "ad_fetch_latency_millis"

    invoke-static {p1, v2, v0, v1, p2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;JLcom/applovin/impl/sdk/j;)V

    iget-object p2, p0, Lcom/applovin/impl/mediation/b/c$1;->d:Lcom/applovin/impl/sdk/network/a$a;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/network/a$a;->b()J

    move-result-wide v0

    iget-object p2, p0, Lcom/applovin/impl/mediation/b/c$1;->b:Lcom/applovin/impl/sdk/j;

    const-string v2, "ad_fetch_response_size"

    invoke-static {p1, v2, v0, v1, p2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;JLcom/applovin/impl/sdk/j;)V

    iget-object p2, p0, Lcom/applovin/impl/mediation/b/c$1;->a:Lcom/applovin/impl/mediation/b/c;

    invoke-static {p2, p1}, Lcom/applovin/impl/mediation/b/c;->a(Lcom/applovin/impl/mediation/b/c;Lorg/json/JSONObject;)V

    goto :goto_29

    :cond_24
    iget-object p1, p0, Lcom/applovin/impl/mediation/b/c$1;->a:Lcom/applovin/impl/mediation/b/c;

    invoke-static {p1, p2}, Lcom/applovin/impl/mediation/b/c;->a(Lcom/applovin/impl/mediation/b/c;I)V

    :goto_29
    return-void
.end method