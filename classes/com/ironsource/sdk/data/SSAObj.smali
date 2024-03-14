.class public Lcom/ironsource/sdk/data/SSAObj;
.super Ljava/lang/Object;
.source "SSAObj.java"


# instance fields
.field private mJsonObject:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/ironsource/sdk/data/SSAObj;->mJsonObject:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/data/SSAObj;->setJsonObject(Ljava/lang/String;)V

    return-void
.end method

.method private fromJson(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 144
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 146
    :cond_6
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_11

    .line 147
    check-cast p1, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/data/SSAObj;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 148
    :cond_11
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_1b

    .line 149
    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/data/SSAObj;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    :cond_1b
    return-object p1
.end method

.method private getMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 130
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/data/SSAObj;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public static isEmptyObject(Lorg/json/JSONObject;)Z
    .registers 1

    .line 95
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private setJsonObject(Ljava/lang/String;)V
    .registers 3

    .line 27
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ironsource/sdk/data/SSAObj;->mJsonObject:Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_f

    .line 29
    :catch_8
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/ironsource/sdk/data/SSAObj;->mJsonObject:Lorg/json/JSONObject;

    :goto_f
    return-void
.end method

.method public static toJSON(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 74
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_30

    .line 75
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 76
    check-cast p0, Ljava/util/Map;

    .line 77
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 79
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/ironsource/sdk/data/SSAObj;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_13

    :cond_2f
    return-object v0

    .line 83
    :cond_30
    instance-of v0, p0, Ljava/lang/Iterable;

    if-eqz v0, :cond_4e

    .line 84
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 85
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3f

    :cond_4d
    return-object v0

    :cond_4e
    return-object p0
.end method

.method private toMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 135
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 136
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 137
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 138
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ironsource/sdk/data/SSAObj;->fromJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_21
    return-object v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .registers 3

    .line 38
    invoke-virtual {p0}, Lcom/ironsource/sdk/data/SSAObj;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/sdk/data/SSAObj;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 3

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/data/SSAObj;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    :catch_7
    const/4 p1, 0x0

    return p1
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/ironsource/sdk/data/SSAObj;->mJsonObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/data/SSAObj;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    :catch_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 62
    iget-object v0, p0, Lcom/ironsource/sdk/data/SSAObj;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isNull(Ljava/lang/String;)Z
    .registers 3

    .line 42
    invoke-virtual {p0}, Lcom/ironsource/sdk/data/SSAObj;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/data/SSAObj;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/data/SSAObj;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public toList(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 100
    :goto_6
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 101
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ironsource/sdk/data/SSAObj;->fromJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1a
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/ironsource/sdk/data/SSAObj;->mJsonObject:Lorg/json/JSONObject;

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    .line 125
    :cond_7
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
