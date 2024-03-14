.class public Lcom/applovin/impl/sdk/d/ae;
.super Lcom/applovin/impl/sdk/d/af;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/ad/g;

.field private final c:Lcom/applovin/sdk/AppLovinAdRewardListener;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/impl/sdk/j;)V
    .registers 5

    const-string v0, "TaskValidateAppLovinReward"

    invoke-direct {p0, v0, p3}, Lcom/applovin/impl/sdk/d/af;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/ae;->a:Lcom/applovin/impl/sdk/ad/g;

    iput-object p2, p0, Lcom/applovin/impl/sdk/d/ae;->c:Lcom/applovin/sdk/AppLovinAdRewardListener;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "2.0/vr"

    return-object v0
.end method

.method protected a(I)V
    .registers 4

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/d/af;->a(I)V

    const/16 v0, 0x190

    if-lt p1, v0, :cond_19

    const/16 v0, 0x1f4

    if-ge p1, v0, :cond_19

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/ae;->c:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/ae;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/applovin/sdk/AppLovinAdRewardListener;->userRewardRejected(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    const-string p1, "rejected"

    goto :goto_22

    :cond_19
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/ae;->c:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/ae;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-interface {v0, v1, p1}, Lcom/applovin/sdk/AppLovinAdRewardListener;->validationRequestFailed(Lcom/applovin/sdk/AppLovinAd;I)V

    const-string p1, "network_timeout"

    :goto_22
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/ae;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-static {p1}, Lcom/applovin/impl/sdk/a/c;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/a/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/ad/g;->a(Lcom/applovin/impl/sdk/a/c;)V

    return-void
.end method

.method protected a(Lcom/applovin/impl/sdk/a/c;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/ae;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/ad/g;->a(Lcom/applovin/impl/sdk/a/c;)V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/a/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/a/c;->a()Ljava/util/Map;

    move-result-object p1

    const-string v1, "accepted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/ae;->c:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/ae;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-interface {v0, v1, p1}, Lcom/applovin/sdk/AppLovinAdRewardListener;->userRewardVerified(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    goto :goto_46

    :cond_1d
    const-string v1, "quota_exceeded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/ae;->c:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/ae;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-interface {v0, v1, p1}, Lcom/applovin/sdk/AppLovinAdRewardListener;->userOverQuota(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    goto :goto_46

    :cond_2d
    const-string v1, "rejected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/ae;->c:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/ae;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-interface {v0, v1, p1}, Lcom/applovin/sdk/AppLovinAdRewardListener;->userRewardRejected(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    goto :goto_46

    :cond_3d
    iget-object p1, p0, Lcom/applovin/impl/sdk/d/ae;->c:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/ae;->a:Lcom/applovin/impl/sdk/ad/g;

    const/16 v1, -0x190

    invoke-interface {p1, v0, v1}, Lcom/applovin/sdk/AppLovinAdRewardListener;->validationRequestFailed(Lcom/applovin/sdk/AppLovinAd;I)V

    :goto_46
    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/ae;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->getAdZone()Lcom/applovin/impl/sdk/ad/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/d;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/ae;->b:Lcom/applovin/impl/sdk/j;

    const-string v2, "zone_id"

    invoke-static {p1, v2, v0, v1}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/ae;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->getClCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_20

    :cond_1e
    const-string v0, "NO_CLCODE"

    :goto_20
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/ae;->b:Lcom/applovin/impl/sdk/j;

    const-string v2, "clcode"

    invoke-static {p1, v2, v0, v1}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    return-void
.end method

.method protected b()Z
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/ae;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->aF()Z

    move-result v0

    return v0
.end method
