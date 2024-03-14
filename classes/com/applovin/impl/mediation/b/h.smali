.class public Lcom/applovin/impl/mediation/b/h;
.super Lcom/applovin/impl/sdk/d/af;


# instance fields
.field private final a:Lcom/applovin/impl/mediation/a/c;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/mediation/a/c;Lcom/applovin/impl/sdk/j;)V
    .registers 4

    const-string v0, "TaskValidateMaxReward"

    invoke-direct {p0, v0, p2}, Lcom/applovin/impl/sdk/d/af;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    iput-object p1, p0, Lcom/applovin/impl/mediation/b/h;->a:Lcom/applovin/impl/mediation/a/c;

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    const-string v0, "2.0/mvr"

    return-object v0
.end method

.method protected a(I)V
    .registers 3

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/d/af;->a(I)V

    const/16 v0, 0x190

    if-lt p1, v0, :cond_e

    const/16 v0, 0x1f4

    if-ge p1, v0, :cond_e

    const-string p1, "rejected"

    goto :goto_10

    :cond_e
    const-string p1, "network_timeout"

    :goto_10
    iget-object v0, p0, Lcom/applovin/impl/mediation/b/h;->a:Lcom/applovin/impl/mediation/a/c;

    invoke-static {p1}, Lcom/applovin/impl/sdk/a/c;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/a/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/applovin/impl/mediation/a/c;->a(Lcom/applovin/impl/sdk/a/c;)V

    return-void
.end method

.method protected a(Lcom/applovin/impl/sdk/a/c;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/h;->a:Lcom/applovin/impl/mediation/a/c;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/mediation/a/c;->a(Lcom/applovin/impl/sdk/a/c;)V

    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/h;->a:Lcom/applovin/impl/mediation/a/c;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/c;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/h;->b:Lcom/applovin/impl/sdk/j;

    const-string v2, "ad_unit_id"

    invoke-static {p1, v2, v0, v1}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/h;->a:Lcom/applovin/impl/mediation/a/c;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/c;->L()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/h;->b:Lcom/applovin/impl/sdk/j;

    const-string v2, "placement"

    invoke-static {p1, v2, v0, v1}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/h;->a:Lcom/applovin/impl/mediation/a/c;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/c;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/mediation/c/c;->b(Lcom/applovin/mediation/MaxAdFormat;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/h;->b:Lcom/applovin/impl/sdk/j;

    const-string v2, "ad_format"

    invoke-static {p1, v2, v0, v1}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/h;->a:Lcom/applovin/impl/mediation/a/c;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/c;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    goto :goto_3a

    :cond_38
    const-string v0, "NO_MCODE"

    :goto_3a
    iget-object v1, p0, Lcom/applovin/impl/mediation/b/h;->b:Lcom/applovin/impl/sdk/j;

    const-string v2, "mcode"

    invoke-static {p1, v2, v0, v1}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/h;->a:Lcom/applovin/impl/mediation/a/c;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/c;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    goto :goto_50

    :cond_4e
    const-string v0, "NO_BCODE"

    :goto_50
    iget-object v1, p0, Lcom/applovin/impl/mediation/b/h;->b:Lcom/applovin/impl/sdk/j;

    const-string v2, "bcode"

    invoke-static {p1, v2, v0, v1}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    return-void
.end method

.method protected b()Z
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/h;->a:Lcom/applovin/impl/mediation/a/c;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/c;->u()Z

    move-result v0

    return v0
.end method
