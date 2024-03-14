.class public final Lcom/applovin/impl/sdk/ad/h;
.super Lcom/applovin/impl/sdk/AppLovinAdBase;


# instance fields
.field private a:Lcom/applovin/sdk/AppLovinAd;

.field private final b:Lcom/applovin/impl/sdk/ad/d;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/impl/sdk/j;)V
    .registers 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sget-object v2, Lcom/applovin/impl/sdk/ad/b;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/applovin/impl/sdk/AppLovinAdBase;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/sdk/j;)V

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/h;->b:Lcom/applovin/impl/sdk/ad/d;

    return-void
.end method

.method private c()Lcom/applovin/sdk/AppLovinAd;
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/h;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->U()Lcom/applovin/impl/sdk/c;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/h;->b:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c;->c(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/ad/j;

    move-result-object v0

    check-cast v0, Lcom/applovin/sdk/AppLovinAd;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/h;->getAdZone()Lcom/applovin/impl/sdk/ad/d;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/d;->j()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/d;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return-object v0
.end method


# virtual methods
.method public a()Lcom/applovin/sdk/AppLovinAd;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/h;->a:Lcom/applovin/sdk/AppLovinAd;

    return-object v0
.end method

.method public a(Lcom/applovin/sdk/AppLovinAd;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/h;->a:Lcom/applovin/sdk/AppLovinAd;

    return-void
.end method

.method public b()Lcom/applovin/sdk/AppLovinAd;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/h;->a:Lcom/applovin/sdk/AppLovinAd;

    if-eqz v0, :cond_5

    goto :goto_9

    :cond_5
    invoke-direct {p0}, Lcom/applovin/impl/sdk/ad/h;->c()Lcom/applovin/sdk/AppLovinAd;

    move-result-object v0

    :goto_9
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_21

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_21

    :cond_11
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/h;->b()Lcom/applovin/sdk/AppLovinAd;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1c
    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/AppLovinAdBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_21
    :goto_21
    const/4 p1, 0x0

    return p1
.end method

.method public getAdIdNumber()J
    .registers 3

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/h;->b()Lcom/applovin/sdk/AppLovinAd;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/applovin/sdk/AppLovinAd;->getAdIdNumber()J

    move-result-wide v0

    goto :goto_d

    :cond_b
    const-wide/16 v0, 0x0

    :goto_d
    return-wide v0
.end method

.method public getAdZone()Lcom/applovin/impl/sdk/ad/d;
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/h;->b()Lcom/applovin/sdk/AppLovinAd;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/AppLovinAdBase;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getAdZone()Lcom/applovin/impl/sdk/ad/d;

    move-result-object v0

    goto :goto_f

    :cond_d
    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/h;->b:Lcom/applovin/impl/sdk/ad/d;

    :goto_f
    return-object v0
.end method

.method public getCreatedAtMillis()J
    .registers 3

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/h;->b()Lcom/applovin/sdk/AppLovinAd;

    move-result-object v0

    instance-of v1, v0, Lcom/applovin/impl/sdk/AppLovinAdBase;

    if-eqz v1, :cond_f

    check-cast v0, Lcom/applovin/impl/sdk/AppLovinAdBase;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getCreatedAtMillis()J

    move-result-wide v0

    goto :goto_11

    :cond_f
    const-wide/16 v0, 0x0

    :goto_11
    return-wide v0
.end method

.method public getSize()Lcom/applovin/sdk/AppLovinAdSize;
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/h;->getAdZone()Lcom/applovin/impl/sdk/ad/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/d;->c()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Lcom/applovin/impl/sdk/ad/b;
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/h;->b()Lcom/applovin/sdk/AppLovinAd;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/AppLovinAdBase;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getSource()Lcom/applovin/impl/sdk/ad/b;

    move-result-object v0

    goto :goto_f

    :cond_d
    sget-object v0, Lcom/applovin/impl/sdk/ad/b;->a:Lcom/applovin/impl/sdk/ad/b;

    :goto_f
    return-object v0
.end method

.method public getType()Lcom/applovin/sdk/AppLovinAdType;
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/h;->getAdZone()Lcom/applovin/impl/sdk/ad/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/d;->d()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v0

    return-object v0
.end method

.method public getZoneId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/h;->b:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/d;->j()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_10

    :cond_a
    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/h;->b:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/d;->a()Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/h;->b()Lcom/applovin/sdk/AppLovinAd;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_b
    invoke-super {p0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->hashCode()I

    move-result v0

    return v0
.end method

.method public isVideoAd()Z
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/h;->b()Lcom/applovin/sdk/AppLovinAd;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/applovin/sdk/AppLovinAd;->isVideoAd()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppLovinAd{ #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/h;->getAdIdNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", adType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/h;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/h;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", zoneId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/ad/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
