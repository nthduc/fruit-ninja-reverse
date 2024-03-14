.class public Lcom/applovin/impl/sdk/d/z;
.super Lcom/applovin/impl/sdk/d/aa;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/ad/g;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/impl/sdk/j;)V
    .registers 4

    const-string v0, "TaskReportAppLovinReward"

    invoke-direct {p0, v0, p2}, Lcom/applovin/impl/sdk/d/aa;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/z;->a:Lcom/applovin/impl/sdk/ad/g;

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    const-string v0, "2.0/cr"

    return-object v0
.end method

.method protected a(I)V
    .registers 4

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/d/aa;->a(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to report reward for ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/z;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/d/z;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/z;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->getAdZone()Lcom/applovin/impl/sdk/ad/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/d;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/z;->b:Lcom/applovin/impl/sdk/j;

    const-string v2, "zone_id"

    invoke-static {p1, v2, v0, v1}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/z;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->ad()I

    move-result v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/z;->b:Lcom/applovin/impl/sdk/j;

    const-string v2, "fire_percent"

    invoke-static {p1, v2, v0, v1}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;ILcom/applovin/impl/sdk/j;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/z;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->getClCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    goto :goto_2d

    :cond_2b
    const-string v0, "NO_CLCODE"

    :goto_2d
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/z;->b:Lcom/applovin/impl/sdk/j;

    const-string v2, "clcode"

    invoke-static {p1, v2, v0, v1}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    return-void
.end method

.method protected b()Lcom/applovin/impl/sdk/a/c;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/z;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->aH()Lcom/applovin/impl/sdk/a/c;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lorg/json/JSONObject;)V
    .registers 3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Reported reward successfully for ad: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/z;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/d/z;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected c()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No reward result was found for ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/z;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/z;->d(Ljava/lang/String;)V

    return-void
.end method
