.class public abstract Lcom/applovin/impl/mediation/a/a;
.super Lcom/applovin/impl/mediation/a/e;

# interfaces
.implements Lcom/applovin/mediation/MaxAd;


# instance fields
.field protected a:Lcom/applovin/impl/mediation/j;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method protected constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/mediation/j;Lcom/applovin/impl/sdk/j;)V
    .registers 5

    invoke-direct {p0, p1, p2, p4}, Lcom/applovin/impl/mediation/a/e;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/a/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/applovin/impl/mediation/a/a;->a:Lcom/applovin/impl/mediation/j;

    return-void
.end method

.method private l()J
    .registers 4

    const-string v0, "load_started_time_ms"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/mediation/a/a;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public abstract a(Lcom/applovin/impl/mediation/j;)Lcom/applovin/impl/mediation/a/a;
.end method

.method public a()Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/a;->a:Lcom/applovin/impl/mediation/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/j;->d()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/a;->a:Lcom/applovin/impl/mediation/j;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/j;->e()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method public b()Ljava/lang/String;
    .registers 3

    const-string v0, "event_id"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/applovin/impl/mediation/j;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/a;->a:Lcom/applovin/impl/mediation/j;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 3

    const-string v0, "bid_response"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 3

    const-string v0, "third_party_ad_placement_id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()J
    .registers 6

    invoke-direct {p0}, Lcom/applovin/impl/mediation/a/a;->l()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_14

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/a;->h()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/applovin/impl/mediation/a/a;->l()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    :cond_14
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public g()V
    .registers 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string v2, "load_started_time_ms"

    invoke-virtual {p0, v2, v0, v1}, Lcom/applovin/impl/mediation/a/a;->c(Ljava/lang/String;J)V

    return-void
.end method

.method public getAdUnitId()Ljava/lang/String;
    .registers 3

    const-string v0, "ad_unit_id"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Lcom/applovin/mediation/MaxAdFormat;
    .registers 3

    const-string v0, "ad_format"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/r;->c(Ljava/lang/String;)Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 3

    const-string v0, "network_name"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()J
    .registers 4

    const-string v0, "load_completed_time_ms"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/mediation/a/a;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public i()V
    .registers 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string v2, "load_completed_time_ms"

    invoke-virtual {p0, v2, v0, v1}, Lcom/applovin/impl/mediation/a/a;->c(Ljava/lang/String;J)V

    return-void
.end method

.method public j()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public k()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/mediation/a/a;->a:Lcom/applovin/impl/mediation/j;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediatedAd{thirdPartyAdPlacementId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adUnitId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/a;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/a;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", networkName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/a;->getNetworkName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
