.class public Lcom/helpshift/common/domain/network/AuthDataProvider;
.super Ljava/lang/Object;
.source "AuthDataProvider.java"


# instance fields
.field final apiKey:Ljava/lang/String;

.field final appId:Ljava/lang/String;

.field final cryptoDM:Lcom/helpshift/crypto/CryptoDM;

.field final jsonifier:Lcom/helpshift/common/platform/Jsonifier;

.field final networkRequestDAO:Lcom/helpshift/common/platform/network/NetworkRequestDAO;

.field final route:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;Ljava/lang/String;)V
    .registers 5

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-interface {p2}, Lcom/helpshift/common/platform/Platform;->getAPIKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/common/domain/network/AuthDataProvider;->apiKey:Ljava/lang/String;

    .line 36
    invoke-interface {p2}, Lcom/helpshift/common/platform/Platform;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/common/domain/network/AuthDataProvider;->appId:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/helpshift/common/domain/network/AuthDataProvider;->route:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/helpshift/common/domain/Domain;->getCryptoDM()Lcom/helpshift/crypto/CryptoDM;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/common/domain/network/AuthDataProvider;->cryptoDM:Lcom/helpshift/crypto/CryptoDM;

    .line 39
    invoke-interface {p2}, Lcom/helpshift/common/platform/Platform;->getNetworkRequestDAO()Lcom/helpshift/common/platform/network/NetworkRequestDAO;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/common/domain/network/AuthDataProvider;->networkRequestDAO:Lcom/helpshift/common/platform/network/NetworkRequestDAO;

    .line 40
    invoke-interface {p2}, Lcom/helpshift/common/platform/Platform;->getJsonifier()Lcom/helpshift/common/platform/Jsonifier;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/common/domain/network/AuthDataProvider;->jsonifier:Lcom/helpshift/common/platform/Jsonifier;

    return-void
.end method


# virtual methods
.method public getAuthData(Lcom/helpshift/common/platform/network/Method;Ljava/util/Map;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/common/platform/network/Method;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p2, :cond_ab

    const-string v0, "uri"

    .line 45
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_ab

    .line 49
    iget-object v1, p0, Lcom/helpshift/common/domain/network/AuthDataProvider;->appId:Ljava/lang/String;

    const-string v2, "platform-id"

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-virtual {p1}, Lcom/helpshift/common/platform/network/Method;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "method"

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object p1, p0, Lcom/helpshift/common/domain/network/AuthDataProvider;->networkRequestDAO:Lcom/helpshift/common/platform/network/NetworkRequestDAO;

    invoke-static {p1}, Lcom/helpshift/common/domain/network/NetworkDataRequestUtil;->getAdjustedTimestamp(Lcom/helpshift/common/platform/network/NetworkRequestDAO;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "timestamp"

    invoke-interface {p2, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object p1, p0, Lcom/helpshift/common/domain/network/AuthDataProvider;->jsonifier:Lcom/helpshift/common/platform/Jsonifier;

    invoke-static {}, Lcom/helpshift/common/domain/network/NetworkDataRequestUtil;->getSdkMeta()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/helpshift/common/platform/Jsonifier;->jsonify(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "sm"

    invoke-interface {p2, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 55
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4f
    :goto_4f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_91

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "filePath"

    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    const-string v4, "meta"

    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    const-string v4, "originalFileName"

    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 65
    :cond_91
    iget-object p1, p0, Lcom/helpshift/common/domain/network/AuthDataProvider;->cryptoDM:Lcom/helpshift/crypto/CryptoDM;

    const-string v3, "&"

    invoke-static {v3, v2}, Lcom/helpshift/util/StringUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/helpshift/common/domain/network/AuthDataProvider;->apiKey:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/helpshift/crypto/CryptoDM;->getSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "signature"

    invoke-interface {p2, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-interface {p2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    .line 46
    :cond_ab
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No value for uri in auth data."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    return-void
.end method
