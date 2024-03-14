.class public abstract Lcom/unity/purchasing/common/StoreDeserializer;
.super Ljava/lang/Object;
.source "StoreDeserializer.java"

# interfaces
.implements Lcom/unity/purchasing/common/INativeStore;
.implements Lcom/unity/purchasing/common/IStore;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DeserializeProducts(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/unity/purchasing/common/ProductDefinition;",
            ">;"
        }
    .end annotation

    .line 26
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 27
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 28
    :goto_b
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 29
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 30
    invoke-static {v2}, Lcom/unity/purchasing/common/StoreDeserializer;->GetProductDefinition(Lorg/json/JSONObject;)Lcom/unity/purchasing/common/ProductDefinition;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1c} :catch_20

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1f
    return-object p0

    :catch_20
    move-exception p0

    .line 35
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    return-void
.end method

.method public static GetProductDefinition(Ljava/lang/String;)Lcom/unity/purchasing/common/ProductDefinition;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 44
    :cond_4
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-static {v0}, Lcom/unity/purchasing/common/StoreDeserializer;->GetProductDefinition(Lorg/json/JSONObject;)Lcom/unity/purchasing/common/ProductDefinition;

    move-result-object p0
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p0

    .line 47
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static GetProductDefinition(Lorg/json/JSONObject;)Lcom/unity/purchasing/common/ProductDefinition;
    .registers 5

    .line 53
    :try_start_0
    new-instance v0, Lcom/unity/purchasing/common/ProductDefinition;

    const-string v1, "id"

    .line 54
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "storeSpecificId"

    .line 55
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    .line 56
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/unity/purchasing/common/ProductType;->valueOf(Ljava/lang/String;)Lcom/unity/purchasing/common/ProductType;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/unity/purchasing/common/ProductDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/unity/purchasing/common/ProductType;)V
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1b} :catch_1c

    return-object v0

    :catch_1c
    move-exception p0

    .line 58
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public FinishTransaction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 21
    invoke-static {p1}, Lcom/unity/purchasing/common/StoreDeserializer;->GetProductDefinition(Ljava/lang/String;)Lcom/unity/purchasing/common/ProductDefinition;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/unity/purchasing/common/StoreDeserializer;->FinishTransaction(Lcom/unity/purchasing/common/ProductDefinition;Ljava/lang/String;)V

    return-void
.end method

.method public Purchase(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 17
    invoke-static {p1}, Lcom/unity/purchasing/common/StoreDeserializer;->GetProductDefinition(Ljava/lang/String;)Lcom/unity/purchasing/common/ProductDefinition;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/unity/purchasing/common/StoreDeserializer;->Purchase(Lcom/unity/purchasing/common/ProductDefinition;Ljava/lang/String;)V

    return-void
.end method

.method public RetrieveProducts(Ljava/lang/String;)V
    .registers 2

    .line 13
    invoke-static {p1}, Lcom/unity/purchasing/common/StoreDeserializer;->DeserializeProducts(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unity/purchasing/common/StoreDeserializer;->RetrieveProducts(Ljava/util/List;)V

    return-void
.end method