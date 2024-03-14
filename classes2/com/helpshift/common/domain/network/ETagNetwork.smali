.class public Lcom/helpshift/common/domain/network/ETagNetwork;
.super Ljava/lang/Object;
.source "ETagNetwork.java"

# interfaces
.implements Lcom/helpshift/common/domain/network/Network;


# instance fields
.field private final key:Ljava/lang/String;

.field private final network:Lcom/helpshift/common/domain/network/Network;

.field private final networkRequestDAO:Lcom/helpshift/common/platform/network/NetworkRequestDAO;


# direct methods
.method public constructor <init>(Lcom/helpshift/common/domain/network/Network;Lcom/helpshift/common/platform/Platform;Ljava/lang/String;)V
    .registers 4

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/helpshift/common/domain/network/ETagNetwork;->network:Lcom/helpshift/common/domain/network/Network;

    .line 21
    invoke-interface {p2}, Lcom/helpshift/common/platform/Platform;->getNetworkRequestDAO()Lcom/helpshift/common/platform/network/NetworkRequestDAO;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/common/domain/network/ETagNetwork;->networkRequestDAO:Lcom/helpshift/common/platform/network/NetworkRequestDAO;

    .line 22
    iput-object p3, p0, Lcom/helpshift/common/domain/network/ETagNetwork;->key:Ljava/lang/String;

    return-void
.end method

.method private getHeaderValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/common/platform/network/KeyValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 52
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/common/platform/network/KeyValuePair;

    .line 53
    iget-object v1, v0, Lcom/helpshift/common/platform/network/KeyValuePair;->key:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/helpshift/common/platform/network/KeyValuePair;->key:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 54
    iget-object p1, v0, Lcom/helpshift/common/platform/network/KeyValuePair;->value:Ljava/lang/String;

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    return-object p1
.end method


# virtual methods
.method public makeRequest(Lcom/helpshift/common/platform/network/RequestData;)Lcom/helpshift/common/platform/network/Response;
    .registers 5

    .line 28
    iget-object v0, p0, Lcom/helpshift/common/domain/network/ETagNetwork;->networkRequestDAO:Lcom/helpshift/common/platform/network/NetworkRequestDAO;

    iget-object v1, p0, Lcom/helpshift/common/domain/network/ETagNetwork;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/helpshift/common/platform/network/NetworkRequestDAO;->getETag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 30
    invoke-virtual {p1}, Lcom/helpshift/common/platform/network/RequestData;->getCustomHeaders()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_15

    .line 32
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :cond_15
    const-string v2, "If-None-Match"

    .line 34
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-virtual {p1, v1}, Lcom/helpshift/common/platform/network/RequestData;->setCustomHeaders(Ljava/util/Map;)V

    .line 39
    :cond_1d
    iget-object v0, p0, Lcom/helpshift/common/domain/network/ETagNetwork;->network:Lcom/helpshift/common/domain/network/Network;

    invoke-interface {v0, p1}, Lcom/helpshift/common/domain/network/Network;->makeRequest(Lcom/helpshift/common/platform/network/RequestData;)Lcom/helpshift/common/platform/network/Response;

    move-result-object p1

    .line 40
    iget v0, p1, Lcom/helpshift/common/platform/network/Response;->status:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_3e

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_3e

    .line 42
    iget-object v0, p1, Lcom/helpshift/common/platform/network/Response;->headers:Ljava/util/List;

    const-string v1, "ETag"

    invoke-direct {p0, v0, v1}, Lcom/helpshift/common/domain/network/ETagNetwork;->getHeaderValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 44
    iget-object v1, p0, Lcom/helpshift/common/domain/network/ETagNetwork;->networkRequestDAO:Lcom/helpshift/common/platform/network/NetworkRequestDAO;

    iget-object v2, p0, Lcom/helpshift/common/domain/network/ETagNetwork;->key:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/helpshift/common/platform/network/NetworkRequestDAO;->storeETag(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3e
    return-object p1
.end method
