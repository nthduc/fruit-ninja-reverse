.class public Lcom/applovin/impl/mediation/a/d;
.super Lcom/applovin/impl/mediation/a/a;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/mediation/a/d;Lcom/applovin/impl/mediation/j;)V
    .registers 5

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/d;->C()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/d;->B()Lorg/json/JSONObject;

    move-result-object v1

    iget-object p1, p1, Lcom/applovin/impl/mediation/a/d;->b:Lcom/applovin/impl/sdk/j;

    invoke-direct {p0, v0, v1, p2, p1}, Lcom/applovin/impl/mediation/a/a;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/mediation/j;Lcom/applovin/impl/sdk/j;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/applovin/impl/mediation/a/a;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/mediation/j;Lcom/applovin/impl/sdk/j;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/mediation/j;)Lcom/applovin/impl/mediation/a/a;
    .registers 3

    new-instance v0, Lcom/applovin/impl/mediation/a/d;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/mediation/a/d;-><init>(Lcom/applovin/impl/mediation/a/d;Lcom/applovin/impl/mediation/j;)V

    return-object v0
.end method
