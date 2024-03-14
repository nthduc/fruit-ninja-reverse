.class public abstract Lcom/applovin/impl/sdk/d/aa;
.super Lcom/applovin/impl/sdk/d/ac;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/d/ac;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/a/c;)Lorg/json/JSONObject;
    .registers 6

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/aa;->i()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/a/c;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/aa;->b:Lcom/applovin/impl/sdk/j;

    const-string v3, "result"

    invoke-static {v0, v3, v1, v2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/a/c;->a()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_21

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/aa;->b:Lcom/applovin/impl/sdk/j;

    const-string v2, "params"

    invoke-static {v0, v2, v1, p1}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    :cond_21
    return-object v0
.end method


# virtual methods
.method protected abstract b()Lcom/applovin/impl/sdk/a/c;
.end method

.method protected abstract b(Lorg/json/JSONObject;)V
.end method

.method protected abstract c()V
.end method

.method protected h()I
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/aa;->b:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->bH:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public run()V
    .registers 3

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/aa;->b()Lcom/applovin/impl/sdk/a/c;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/aa;->a(Lcom/applovin/impl/sdk/a/c;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/d/aa$1;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/d/aa$1;-><init>(Lcom/applovin/impl/sdk/d/aa;)V

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/d/aa;->a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/network/a$c;)V

    goto :goto_16

    :cond_13
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/aa;->c()V

    :goto_16
    return-void
.end method
