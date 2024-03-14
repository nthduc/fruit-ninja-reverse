.class public Lcom/chartboost/sdk/impl/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Ljava/lang/String;)Lcom/chartboost/sdk/Model/b;
    .registers 4

    if-eqz p0, :cond_1c

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1c

    const/16 v0, 0x2f

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/chartboost/sdk/Model/b;

    const-string v2, "html"

    invoke-direct {v1, v2, v0, p0}, Lcom/chartboost/sdk/Model/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lorg/json/JSONObject;Lcom/chartboost/sdk/impl/d0;)Lcom/chartboost/sdk/impl/c0;
    .registers 11
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/chartboost/sdk/impl/d0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 14
    new-instance v8, Lcom/chartboost/sdk/impl/c0;

    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "impid"

    .line 15
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "price"

    .line 16
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v0, ""

    const-string v4, "burl"

    .line 17
    invoke-virtual {p0, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "crid"

    .line 18
    invoke-virtual {p0, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "adm"

    .line 19
    invoke-virtual {p0, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v8

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/impl/c0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/d0;)V

    return-object v8
.end method

.method private static a(Lorg/json/JSONObject;)Lcom/chartboost/sdk/impl/d0;
    .registers 8
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "imptrackers"

    .line 5
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_20

    const/4 v2, 0x0

    .line 6
    :goto_10
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_20

    .line 7
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 10
    :cond_20
    new-instance v6, Lcom/chartboost/sdk/impl/d0;

    const-string v0, "crtype"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "adId"

    .line 11
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "cgn"

    .line 12
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "template"

    .line 13
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v0, v6

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/d0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v6
.end method

.method private static a(Lorg/json/JSONObject;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/chartboost/sdk/impl/e0;
    .registers 11
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/ArrayList<",
            "Lcom/chartboost/sdk/impl/f0;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/chartboost/sdk/Model/b;",
            ">;)",
            "Lcom/chartboost/sdk/impl/e0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 20
    new-instance v7, Lcom/chartboost/sdk/impl/e0;

    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    const-string v2, "nbr"

    .line 21
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cur"

    const-string v4, "USD"

    .line 22
    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "bidid"

    .line 23
    invoke-virtual {p0, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v7

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/chartboost/sdk/impl/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v7
.end method

.method public static b(Lorg/json/JSONObject;)Lcom/chartboost/sdk/impl/e0;
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    if-nez v0, :cond_a

    .line 1
    new-instance v0, Lcom/chartboost/sdk/impl/e0;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/e0;-><init>()V

    return-object v0

    .line 4
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "seatbid"

    .line 5
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 6
    new-instance v3, Lcom/chartboost/sdk/impl/d0;

    invoke-direct {v3}, Lcom/chartboost/sdk/impl/d0;-><init>()V

    .line 7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_98

    .line 10
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_98

    .line 11
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    move-object v8, v3

    const/4 v3, 0x0

    :goto_32
    if-ge v3, v6, :cond_98

    .line 13
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_95

    const-string v10, "seat"

    .line 15
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "bid"

    .line 16
    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    if-eqz v9, :cond_8d

    .line 17
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_8d

    .line 18
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    move-object v12, v8

    const/4 v8, 0x0

    :goto_54
    if-ge v8, v11, :cond_8c

    .line 20
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    if-eqz v13, :cond_89

    const-string v14, "ext"

    .line 22
    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    const-string v7, "bidder"

    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-nez v7, :cond_6e

    .line 24
    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    :cond_6e
    if-eqz v7, :cond_82

    .line 28
    invoke-static {v7}, Lcom/chartboost/sdk/impl/b0;->a(Lorg/json/JSONObject;)Lcom/chartboost/sdk/impl/d0;

    move-result-object v7

    .line 29
    invoke-virtual {v7}, Lcom/chartboost/sdk/impl/d0;->e()Ljava/lang/String;

    move-result-object v12

    .line 30
    invoke-static {v12}, Lcom/chartboost/sdk/impl/b0;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Model/b;

    move-result-object v12

    if-eqz v12, :cond_81

    .line 32
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_81
    move-object v12, v7

    .line 35
    :cond_82
    invoke-static {v13, v12}, Lcom/chartboost/sdk/impl/b0;->a(Lorg/json/JSONObject;Lcom/chartboost/sdk/impl/d0;)Lcom/chartboost/sdk/impl/c0;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_89
    add-int/lit8 v8, v8, 0x1

    goto :goto_54

    :cond_8c
    move-object v8, v12

    .line 39
    :cond_8d
    new-instance v7, Lcom/chartboost/sdk/impl/f0;

    invoke-direct {v7, v10, v4}, Lcom/chartboost/sdk/impl/f0;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_95
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 43
    :cond_98
    invoke-static {v0, v5, v1}, Lcom/chartboost/sdk/impl/b0;->a(Lorg/json/JSONObject;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/chartboost/sdk/impl/e0;

    move-result-object v0

    return-object v0
.end method
