.class public Lcom/helpshift/common/platform/AndroidNetworkRequestDAO;
.super Ljava/lang/Object;
.source "AndroidNetworkRequestDAO.java"

# interfaces
.implements Lcom/helpshift/common/platform/network/NetworkRequestDAO;


# static fields
.field private static final KEY_IDEMPOTENT_REQUEST_ID_PREFIX:Ljava/lang/String; = "idempotent_"

.field private static final KEY_ROUTE_ETAG_MAP:Ljava/lang/String; = "route_etag_map"

.field public static final KEY_SERVER_TIME_DELTA:Ljava/lang/String; = "server_time_delta"


# instance fields
.field private kvStore:Lcom/helpshift/common/platform/KVStore;

.field private successfulRequestIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/helpshift/common/platform/KVStore;)V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/helpshift/common/platform/AndroidNetworkRequestDAO;->kvStore:Lcom/helpshift/common/platform/KVStore;

    .line 21
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/helpshift/common/platform/AndroidNetworkRequestDAO;->successfulRequestIds:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public clearSuccessfulRequestIds()V
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidNetworkRequestDAO;->successfulRequestIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public deletePendingRequestId(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "idempotent_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 96
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidNetworkRequestDAO;->kvStore:Lcom/helpshift/common/platform/KVStore;

    invoke-interface {v0, p1}, Lcom/helpshift/common/platform/KVStore;->getSerializable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 97
    instance-of v1, v0, Ljava/util/HashMap;

    if-eqz v1, :cond_25

    .line 98
    check-cast v0, Ljava/util/HashMap;

    .line 99
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object p2, p0, Lcom/helpshift/common/platform/AndroidNetworkRequestDAO;->kvStore:Lcom/helpshift/common/platform/KVStore;

    invoke-interface {p2, p1, v0}, Lcom/helpshift/common/platform/KVStore;->setSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_25
    return-void
.end method

.method public getAllSuccessfulRequestIds()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidNetworkRequestDAO;->successfulRequestIds:Ljava/util/Set;

    return-object v0
.end method

.method public getETag(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 70
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidNetworkRequestDAO;->kvStore:Lcom/helpshift/common/platform/KVStore;

    const-string v1, "route_etag_map"

    invoke-interface {v0, v1}, Lcom/helpshift/common/platform/KVStore;->getSerializable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 p1, 0x0

    return-object p1

    .line 74
    :cond_c
    check-cast v0, Ljava/util/HashMap;

    .line 75
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getPendingRequestId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 106
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidNetworkRequestDAO;->kvStore:Lcom/helpshift/common/platform/KVStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "idempotent_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/helpshift/common/platform/KVStore;->getSerializable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1b

    const/4 p1, 0x0

    return-object p1

    .line 111
    :cond_1b
    check-cast p1, Ljava/util/HashMap;

    .line 112
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getPendingRequestIdMapForRoute(Ljava/lang/String;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidNetworkRequestDAO;->kvStore:Lcom/helpshift/common/platform/KVStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "idempotent_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/helpshift/common/platform/KVStore;->getSerializable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1b

    const/4 p1, 0x0

    return-object p1

    .line 122
    :cond_1b
    check-cast p1, Ljava/util/HashMap;

    return-object p1
.end method

.method public getServerTimeDelta()F
    .registers 4

    .line 34
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidNetworkRequestDAO;->kvStore:Lcom/helpshift/common/platform/KVStore;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "server_time_delta"

    invoke-interface {v0, v2, v1}, Lcom/helpshift/common/platform/KVStore;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public removeETag(Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 57
    :cond_3
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidNetworkRequestDAO;->kvStore:Lcom/helpshift/common/platform/KVStore;

    const-string v1, "route_etag_map"

    invoke-interface {v0, v1}, Lcom/helpshift/common/platform/KVStore;->getSerializable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 60
    check-cast v0, Ljava/util/HashMap;

    .line 61
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 62
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object p1, p0, Lcom/helpshift/common/platform/AndroidNetworkRequestDAO;->kvStore:Lcom/helpshift/common/platform/KVStore;

    invoke-interface {p1, v1, v0}, Lcom/helpshift/common/platform/KVStore;->setSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_1d
    return-void
.end method

.method public storeETag(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 39
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidNetworkRequestDAO;->kvStore:Lcom/helpshift/common/platform/KVStore;

    const-string v1, "route_etag_map"

    invoke-interface {v0, v1}, Lcom/helpshift/common/platform/KVStore;->getSerializable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_12

    .line 45
    :cond_10
    check-cast v0, Ljava/util/HashMap;

    .line 47
    :goto_12
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object p1, p0, Lcom/helpshift/common/platform/AndroidNetworkRequestDAO;->kvStore:Lcom/helpshift/common/platform/KVStore;

    invoke-interface {p1, v1, v0}, Lcom/helpshift/common/platform/KVStore;->setSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public storePendingRequestId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "idempotent_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 81
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidNetworkRequestDAO;->kvStore:Lcom/helpshift/common/platform/KVStore;

    invoke-interface {v0, p1}, Lcom/helpshift/common/platform/KVStore;->getSerializable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_21

    .line 87
    :cond_1f
    check-cast v0, Ljava/util/HashMap;

    .line 89
    :goto_21
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object p2, p0, Lcom/helpshift/common/platform/AndroidNetworkRequestDAO;->kvStore:Lcom/helpshift/common/platform/KVStore;

    invoke-interface {p2, p1, v0}, Lcom/helpshift/common/platform/KVStore;->setSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public storeServerTimeDelta(F)V
    .registers 5

    .line 26
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidNetworkRequestDAO;->kvStore:Lcom/helpshift/common/platform/KVStore;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "server_time_delta"

    invoke-interface {v0, v2, v1}, Lcom/helpshift/common/platform/KVStore;->setFloat(Ljava/lang/String;Ljava/lang/Float;)V

    .line 29
    invoke-static {p1}, Lcom/helpshift/util/HSLogger;->updateTimeStampDelta(F)V

    return-void
.end method

.method public storeSuccessfulRequestId(Ljava/lang/String;)V
    .registers 3

    .line 127
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidNetworkRequestDAO;->successfulRequestIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
