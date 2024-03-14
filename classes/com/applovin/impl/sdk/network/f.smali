.class public Lcom/applovin/impl/sdk/network/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/network/f$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:I


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/network/f$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/f;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/applovin/impl/sdk/network/f$a;->a(Lcom/applovin/impl/sdk/network/f$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/f;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/applovin/impl/sdk/network/f$a;->b(Lcom/applovin/impl/sdk/network/f$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/f;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/applovin/impl/sdk/network/f$a;->c(Lcom/applovin/impl/sdk/network/f$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/f;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/applovin/impl/sdk/network/f$a;->d(Lcom/applovin/impl/sdk/network/f$a;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/f;->e:Ljava/util/Map;

    invoke-static {p1}, Lcom/applovin/impl/sdk/network/f$a;->e(Lcom/applovin/impl/sdk/network/f$a;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/f;->f:Ljava/util/Map;

    invoke-static {p1}, Lcom/applovin/impl/sdk/network/f$a;->f(Lcom/applovin/impl/sdk/network/f$a;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/f;->g:Ljava/util/Map;

    invoke-static {p1}, Lcom/applovin/impl/sdk/network/f$a;->g(Lcom/applovin/impl/sdk/network/f$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/network/f;->h:Z

    invoke-static {p1}, Lcom/applovin/impl/sdk/network/f$a;->h(Lcom/applovin/impl/sdk/network/f$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/network/f;->i:Z

    invoke-static {p1}, Lcom/applovin/impl/sdk/network/f$a;->i(Lcom/applovin/impl/sdk/network/f$a;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/f;->j:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/applovin/impl/sdk/network/f;->k:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/sdk/network/f$a;Lcom/applovin/impl/sdk/network/f$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/network/f;-><init>(Lcom/applovin/impl/sdk/network/f$a;)V

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uniqueId"

    invoke-static {p1, v1, v0, p2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const-string v2, "communicatorRequestId"

    invoke-static {p1, v2, v1, p2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "httpMethod"

    invoke-static {p1, v3, v1, p2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    const-string v3, "targetUrl"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "backupUrl"

    invoke-static {p1, v4, v1, p2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "attemptNumber"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v4, "parameters"

    invoke-static {p1, v4}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    goto :goto_49

    :cond_45
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    :goto_49
    const-string v5, "httpHeaders"

    invoke-static {p1, v5}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5e

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    goto :goto_62

    :cond_5e
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    :goto_62
    const-string v6, "requestBody"

    invoke-static {p1, v6}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_77

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    goto :goto_7b

    :cond_77
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    :goto_7b
    iput-object v0, p0, Lcom/applovin/impl/sdk/network/f;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/applovin/impl/sdk/network/f;->j:Ljava/lang/String;

    iput-object v3, p0, Lcom/applovin/impl/sdk/network/f;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/sdk/network/f;->d:Ljava/lang/String;

    iput-object v4, p0, Lcom/applovin/impl/sdk/network/f;->e:Ljava/util/Map;

    iput-object v5, p0, Lcom/applovin/impl/sdk/network/f;->f:Ljava/util/Map;

    iput-object v6, p0, Lcom/applovin/impl/sdk/network/f;->g:Ljava/util/Map;

    const/4 p2, 0x0

    const-string v0, "isEncodingEnabled"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/network/f;->h:Z

    const-string v0, "shouldFireInWebView"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/network/f;->i:Z

    iput v1, p0, Lcom/applovin/impl/sdk/network/f;->k:I

    return-void
.end method

.method public static n()Lcom/applovin/impl/sdk/network/f$a;
    .registers 1

    new-instance v0, Lcom/applovin/impl/sdk/network/f$a;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/network/f$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method d()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/f;->e:Ljava/util/Map;

    return-object v0
.end method

.method e()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/f;->f:Ljava/util/Map;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    :cond_11
    check-cast p1, Lcom/applovin/impl/sdk/network/f;

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/f;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/applovin/impl/sdk/network/f;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method f()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/f;->g:Ljava/util/Map;

    return-object v0
.end method

.method g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/network/f;->h:Z

    return v0
.end method

.method h()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/network/f;->i:Z

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/f;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/f;->j:Ljava/lang/String;

    return-object v0
.end method

.method j()I
    .registers 2

    iget v0, p0, Lcom/applovin/impl/sdk/network/f;->k:I

    return v0
.end method

.method k()V
    .registers 2

    iget v0, p0, Lcom/applovin/impl/sdk/network/f;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/applovin/impl/sdk/network/f;->k:I

    return-void
.end method

.method l()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/f;->e:Ljava/util/Map;

    if-eqz v1, :cond_c

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "postback_ts"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/f;->e:Ljava/util/Map;

    return-void
.end method

.method m()Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/f;->a:Ljava/lang/String;

    const-string v2, "uniqueId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/f;->j:Ljava/lang/String;

    const-string v2, "communicatorRequestId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/f;->b:Ljava/lang/String;

    const-string v2, "httpMethod"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/f;->c:Ljava/lang/String;

    const-string v2, "targetUrl"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/f;->d:Ljava/lang/String;

    const-string v2, "backupUrl"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/network/f;->h:Z

    const-string v2, "isEncodingEnabled"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget v1, p0, Lcom/applovin/impl/sdk/network/f;->k:I

    const-string v2, "attemptNumber"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/f;->e:Ljava/util/Map;

    if-eqz v1, :cond_44

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v1, "parameters"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_44
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/f;->f:Ljava/util/Map;

    if-eqz v1, :cond_52

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v1, "httpHeaders"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_52
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/f;->g:Ljava/util/Map;

    if-eqz v1, :cond_60

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v1, "requestBody"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_60
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PostbackRequest{uniqueId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", communicatorRequestId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/sdk/network/f;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", httpMethod=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/sdk/network/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", targetUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/sdk/network/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", backupUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/sdk/network/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", attemptNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applovin/impl/sdk/network/f;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isEncodingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/network/f;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
