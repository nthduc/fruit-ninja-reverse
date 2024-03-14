.class public Lcom/applovin/impl/mediation/b/g;
.super Lcom/applovin/impl/sdk/d/aa;


# instance fields
.field private final a:Lcom/applovin/impl/mediation/a/c;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/mediation/a/c;Lcom/applovin/impl/sdk/j;)V
    .registers 4

    const-string v0, "TaskReportMaxReward"

    invoke-direct {p0, v0, p2}, Lcom/applovin/impl/sdk/d/aa;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    iput-object p1, p0, Lcom/applovin/impl/mediation/b/g;->a:Lcom/applovin/impl/mediation/a/c;

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    const-string v0, "2.0/mcr"

    return-object v0
.end method

.method protected a(I)V
    .registers 4

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/d/aa;->a(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to report reward for mediated ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/g;->a:Lcom/applovin/impl/mediation/a/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/b/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/g;->a:Lcom/applovin/impl/mediation/a/c;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/c;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/g;->b:Lcom/applovin/impl/sdk/j;

    const-string v2, "ad_unit_id"

    invoke-static {p1, v2, v0, v1}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/g;->a:Lcom/applovin/impl/mediation/a/c;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/c;->L()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/g;->b:Lcom/applovin/impl/sdk/j;

    const-string v2, "placement"

    invoke-static {p1, v2, v0, v1}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/g;->a:Lcom/applovin/impl/mediation/a/c;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/c;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    goto :goto_29

    :cond_27
    const-string v0, "NO_MCODE"

    :goto_29
    iget-object v1, p0, Lcom/applovin/impl/mediation/b/g;->b:Lcom/applovin/impl/sdk/j;

    const-string v2, "mcode"

    invoke-static {p1, v2, v0, v1}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/g;->a:Lcom/applovin/impl/mediation/a/c;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/c;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    goto :goto_3f

    :cond_3d
    const-string v0, "NO_BCODE"

    :goto_3f
    iget-object v1, p0, Lcom/applovin/impl/mediation/b/g;->b:Lcom/applovin/impl/sdk/j;

    const-string v2, "bcode"

    invoke-static {p1, v2, v0, v1}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    return-void
.end method

.method protected b()Lcom/applovin/impl/sdk/a/c;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/g;->a:Lcom/applovin/impl/mediation/a/c;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/c;->w()Lcom/applovin/impl/sdk/a/c;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lorg/json/JSONObject;)V
    .registers 3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Reported reward successfully for mediated ad: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/g;->a:Lcom/applovin/impl/mediation/a/c;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/b/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected c()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No reward result was found for mediated ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/g;->a:Lcom/applovin/impl/mediation/a/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/b/g;->d(Ljava/lang/String;)V

    return-void
.end method
