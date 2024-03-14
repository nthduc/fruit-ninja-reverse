.class public Lcom/helpshift/common/domain/network/UploadNetwork;
.super Lcom/helpshift/common/domain/network/BaseNetwork;
.source "UploadNetwork.java"


# instance fields
.field platform:Lcom/helpshift/common/platform/Platform;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V
    .registers 4

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/helpshift/common/domain/network/BaseNetwork;-><init>(Ljava/lang/String;Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V

    .line 24
    iput-object p3, p0, Lcom/helpshift/common/domain/network/UploadNetwork;->platform:Lcom/helpshift/common/platform/Platform;

    return-void
.end method


# virtual methods
.method getHeaders(Ljava/lang/String;Lcom/helpshift/common/platform/network/RequestData;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/helpshift/common/platform/network/RequestData;",
            ")",
            "Ljava/util/List<",
            "Lcom/helpshift/common/platform/network/KeyValuePair;",
            ">;"
        }
    .end annotation

    .line 43
    invoke-super {p0, p1, p2}, Lcom/helpshift/common/domain/network/BaseNetwork;->getHeaders(Ljava/lang/String;Lcom/helpshift/common/platform/network/RequestData;)Ljava/util/List;

    move-result-object p1

    .line 44
    new-instance p2, Lcom/helpshift/common/platform/network/KeyValuePair;

    const-string v0, "Connection"

    const-string v1, "Keep-Alive"

    invoke-direct {p2, v0, v1}, Lcom/helpshift/common/platform/network/KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance p2, Lcom/helpshift/common/platform/network/KeyValuePair;

    const-string v0, "Content-Type"

    const-string v1, "multipart/form-data;boundary=*****"

    invoke-direct {p2, v0, v1}, Lcom/helpshift/common/platform/network/KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method getRequest(Lcom/helpshift/common/platform/network/RequestData;)Lcom/helpshift/common/platform/network/Request;
    .registers 11

    .line 29
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/helpshift/common/platform/network/RequestData;->body:Ljava/util/Map;

    const-string v2, "filePath"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/helpshift/common/domain/network/UploadNetwork;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/helpshift/common/platform/Platform;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 32
    new-instance v0, Lcom/helpshift/common/platform/network/UploadRequest;

    sget-object v3, Lcom/helpshift/common/platform/network/Method;->POST:Lcom/helpshift/common/platform/network/Method;

    .line 33
    invoke-virtual {p0}, Lcom/helpshift/common/domain/network/UploadNetwork;->getURL()Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lcom/helpshift/common/platform/network/Method;->POST:Lcom/helpshift/common/platform/network/Method;

    iget-object v2, p1, Lcom/helpshift/common/platform/network/RequestData;->body:Ljava/util/Map;

    .line 34
    invoke-static {v2}, Lcom/helpshift/common/domain/network/NetworkDataRequestUtil;->cleanData(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/helpshift/common/domain/network/UploadNetwork;->getAuthData(Lcom/helpshift/common/platform/network/Method;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    .line 36
    invoke-virtual {p1}, Lcom/helpshift/common/platform/network/RequestData;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/helpshift/common/domain/network/UploadNetwork;->getHeaders(Ljava/lang/String;Lcom/helpshift/common/platform/network/RequestData;)Ljava/util/List;

    move-result-object v7

    const/16 v8, 0x7530

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/helpshift/common/platform/network/UploadRequest;-><init>(Lcom/helpshift/common/platform/network/Method;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;I)V

    return-object v0
.end method

.method public bridge synthetic makeRequest(Lcom/helpshift/common/platform/network/RequestData;)Lcom/helpshift/common/platform/network/Response;
    .registers 2

    .line 18
    invoke-super {p0, p1}, Lcom/helpshift/common/domain/network/BaseNetwork;->makeRequest(Lcom/helpshift/common/platform/network/RequestData;)Lcom/helpshift/common/platform/network/Response;

    move-result-object p1

    return-object p1
.end method
