.class public abstract Lcom/applovin/impl/sdk/AppLovinAdBase;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/ad/j;
.implements Lcom/applovin/sdk/AppLovinAd;


# instance fields
.field private final a:I

.field protected final adObject:Lorg/json/JSONObject;

.field protected final adObjectLock:Ljava/lang/Object;

.field private b:Lcom/applovin/impl/sdk/ad/d;

.field private final c:J

.field private d:Lcom/applovin/impl/sdk/ad/h;

.field protected final fullResponse:Lorg/json/JSONObject;

.field protected final fullResponseLock:Ljava/lang/Object;

.field protected final sdk:Lcom/applovin/impl/sdk/j;

.field protected final source:Lcom/applovin/impl/sdk/ad/b;


# direct methods
.method protected constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/sdk/j;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4c

    if-eqz p2, :cond_44

    if-eqz p4, :cond_3c

    iput-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->adObject:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->fullResponse:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->source:Lcom/applovin/impl/sdk/ad/b;

    iput-object p4, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->sdk:Lcom/applovin/impl/sdk/j;

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->adObjectLock:Ljava/lang/Object;

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->fullResponseLock:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->c:J

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->sort([C)V

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->a:I

    return-void

    :cond_3c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No sdk specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_44
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No response specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No ad object specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected containsKeyForAdObject(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->adObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Lcom/applovin/impl/sdk/ad/h;

    if-eqz v0, :cond_e

    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/sdk/ad/h;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/h;->b()Lcom/applovin/sdk/AppLovinAd;

    move-result-object v0

    if-eqz v0, :cond_e

    move-object p1, v0

    :cond_e
    const/4 v0, 0x1

    if-ne p0, p1, :cond_12

    return v0

    :cond_12
    const/4 v1, 0x0

    if-eqz p1, :cond_44

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_20

    goto :goto_44

    :cond_20
    check-cast p1, Lcom/applovin/impl/sdk/AppLovinAdBase;

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->b:Lcom/applovin/impl/sdk/ad/d;

    if-eqz v2, :cond_2f

    iget-object v3, p1, Lcom/applovin/impl/sdk/AppLovinAdBase;->b:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/ad/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    goto :goto_33

    :cond_2f
    iget-object v2, p1, Lcom/applovin/impl/sdk/AppLovinAdBase;->b:Lcom/applovin/impl/sdk/ad/d;

    if-eqz v2, :cond_34

    :goto_33
    return v1

    :cond_34
    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->source:Lcom/applovin/impl/sdk/ad/b;

    iget-object v3, p1, Lcom/applovin/impl/sdk/AppLovinAdBase;->source:Lcom/applovin/impl/sdk/ad/b;

    if-eq v2, v3, :cond_3b

    return v1

    :cond_3b
    iget v2, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->a:I

    iget p1, p1, Lcom/applovin/impl/sdk/AppLovinAdBase;->a:I

    if-ne v2, p1, :cond_42

    goto :goto_43

    :cond_42
    const/4 v0, 0x0

    :goto_43
    return v0

    :cond_44
    :goto_44
    return v1
.end method

.method public getAdIdNumber()J
    .registers 4

    const-string v0, "ad_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getLongFromAdObject(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAdValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    const-string v0, "ad_values"

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getJsonObjectFromAdObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_1d

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-static {v0, p1, v1, v2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1d
    return-object v1
.end method

.method public getAdZone()Lcom/applovin/impl/sdk/ad/d;
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->b:Lcom/applovin/impl/sdk/ad/d;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/d;->c()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->b:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/d;->d()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->b:Lcom/applovin/impl/sdk/ad/d;

    return-object v0

    :cond_15
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->b:Lcom/applovin/impl/sdk/ad/d;

    return-object v0

    :cond_24
    const/4 v0, 0x0

    const-string v1, "zone_id"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getStringFromFullResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v1

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, v2, v0, v3}, Lcom/applovin/impl/sdk/ad/d;->a(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/ad/d;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->b:Lcom/applovin/impl/sdk/ad/d;

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->b:Lcom/applovin/impl/sdk/ad/d;

    return-object v0
.end method

.method protected getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->adObject:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, p1, p2, v2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/j;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method protected getBooleanFromFullResponse(Ljava/lang/String;Z)Z
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->fullResponseLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->fullResponse:Lorg/json/JSONObject;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, p1, p2, v2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/j;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public getClCode()Ljava/lang/String;
    .registers 5

    const-string v0, ""

    const-string v1, "clcode"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    return-object v2

    :cond_f
    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getStringFromFullResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreatedAtMillis()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->c:J

    return-wide v0
.end method

.method public getDummyAd()Lcom/applovin/impl/sdk/ad/h;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->d:Lcom/applovin/impl/sdk/ad/h;

    return-object v0
.end method

.method public getFetchLatencyMillis()J
    .registers 4

    const-string v0, "ad_fetch_latency_millis"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getLongFromFullResponse(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFetchResponseSize()J
    .registers 4

    const-string v0, "ad_fetch_response_size"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getLongFromFullResponse(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getFloatFromAdObject(Ljava/lang/String;F)F
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->adObject:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, p1, p2, v2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;FLcom/applovin/impl/sdk/j;)F

    move-result p1

    monitor-exit v0

    return p1

    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method protected getFloatFromFullResponse(Ljava/lang/String;F)F
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->fullResponseLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->fullResponse:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, p1, p2, v2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;FLcom/applovin/impl/sdk/j;)F

    move-result p1

    monitor-exit v0

    return p1

    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method protected getIntFromAdObject(Ljava/lang/String;I)I
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->adObject:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, p1, p2, v2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;ILcom/applovin/impl/sdk/j;)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method protected getIntFromFullResponse(Ljava/lang/String;I)I
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->fullResponseLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->fullResponse:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, p1, p2, v2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;ILcom/applovin/impl/sdk/j;)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method protected getJsonObjectFromAdObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->adObject:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, p1, p2, v2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)Lorg/json/JSONObject;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method protected getJsonObjectFromFullResponse(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->fullResponseLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->fullResponse:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, p1, p2, v2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)Lorg/json/JSONObject;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method protected getLongFromAdObject(Ljava/lang/String;J)J
    .registers 7

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->adObject:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, p1, p2, p3, v2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;JLcom/applovin/impl/sdk/j;)J

    move-result-wide p1

    monitor-exit v0

    return-wide p1

    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method protected getLongFromFullResponse(Ljava/lang/String;J)J
    .registers 7

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->fullResponseLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->fullResponse:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, p1, p2, p3, v2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;JLcom/applovin/impl/sdk/j;)J

    move-result-wide p1

    monitor-exit v0

    return-wide p1

    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public getPrimaryKey()Ljava/lang/String;
    .registers 3

    const-string v0, "pk"

    const-string v1, "NA"

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawFullResponse()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->fullResponseLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->fullResponse:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getSdk()Lcom/applovin/impl/sdk/j;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->sdk:Lcom/applovin/impl/sdk/j;

    return-object v0
.end method

.method public getSecondaryKey1()Ljava/lang/String;
    .registers 3

    const-string v0, "sk1"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryKey2()Ljava/lang/String;
    .registers 3

    const-string v0, "sk2"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()Lcom/applovin/sdk/AppLovinAdSize;
    .registers 3

    const-string v0, "ad_size"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getStringFromFullResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinAdSize;->fromString(Ljava/lang/String;)Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Lcom/applovin/impl/sdk/ad/b;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->source:Lcom/applovin/impl/sdk/ad/b;

    return-object v0
.end method

.method protected getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->adObject:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, p1, p2, v2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method protected getStringFromFullResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->fullResponseLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->fullResponse:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, p1, p2, v2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public getType()Lcom/applovin/sdk/AppLovinAdType;
    .registers 3

    const-string v0, "ad_type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getStringFromFullResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinAdType;->fromString(Ljava/lang/String;)Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v0

    return-object v0
.end method

.method public getZoneId()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getAdZone()Lcom/applovin/impl/sdk/ad/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/d;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    goto :goto_12

    :cond_c
    const-string v0, "zone_id"

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getStringFromFullResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_12
    return-object v1
.end method

.method public hasShown()Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "shown"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public hasVideoUrl()Z
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    const-string v1, "AppLovinAdBase"

    const-string v2, "Attempting to invoke hasVideoUrl() from base ad class"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->a:I

    return v0
.end method

.method public isVideoAd()Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->adObject:Lorg/json/JSONObject;

    const-string v1, "is_video_ad"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0

    :cond_14
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->hasVideoUrl()Z

    move-result v0

    return v0
.end method

.method public setDummyAd(Lcom/applovin/impl/sdk/ad/h;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->d:Lcom/applovin/impl/sdk/ad/h;

    return-void
.end method

.method public setHasShown(Z)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_f

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->adObject:Lorg/json/JSONObject;

    const-string v2, "shown"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    monitor-exit v0

    goto :goto_f

    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    :try_start_e
    throw p1
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_f} :catch_f

    :catch_f
    :goto_f
    return-void
.end method

.method public shouldCancelHtmlCachingIfShown()Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "chcis"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppLovinAd{adIdNumber"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getAdIdNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getSource()Lcom/applovin/impl/sdk/ad/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", zoneId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getZoneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
