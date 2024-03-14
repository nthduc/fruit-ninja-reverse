.class public Lcom/helpshift/auth/domainmodel/WebSocketAuthDM;
.super Ljava/lang/Object;
.source "WebSocketAuthDM.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Helpshift_WebSocketAuthDM"

.field public static final WEBSOCKET_AUTH_DATA:Ljava/lang/String; = "websocket_auth_data"


# instance fields
.field private cachedAuthData:Lcom/helpshift/auth/dto/WebSocketAuthData;

.field private domain:Lcom/helpshift/common/domain/Domain;

.field private final fetchSyncObject:Ljava/lang/Object;

.field private kvStore:Lcom/helpshift/common/platform/KVStore;

.field private platform:Lcom/helpshift/common/platform/Platform;

.field private responseParser:Lcom/helpshift/common/platform/network/ResponseParser;


# direct methods
.method public constructor <init>(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V
    .registers 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/helpshift/auth/domainmodel/WebSocketAuthDM;->fetchSyncObject:Ljava/lang/Object;

    .line 31
    iput-object p1, p0, Lcom/helpshift/auth/domainmodel/WebSocketAuthDM;->domain:Lcom/helpshift/common/domain/Domain;

    .line 32
    iput-object p2, p0, Lcom/helpshift/auth/domainmodel/WebSocketAuthDM;->platform:Lcom/helpshift/common/platform/Platform;

    .line 33
    invoke-interface {p2}, Lcom/helpshift/common/platform/Platform;->getResponseParser()Lcom/helpshift/common/platform/network/ResponseParser;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/auth/domainmodel/WebSocketAuthDM;->responseParser:Lcom/helpshift/common/platform/network/ResponseParser;

    .line 34
    invoke-interface {p2}, Lcom/helpshift/common/platform/Platform;->getKVStore()Lcom/helpshift/common/platform/KVStore;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/auth/domainmodel/WebSocketAuthDM;->kvStore:Lcom/helpshift/common/platform/KVStore;

    return-void
.end method

.method private fetchNewTokenInternal()Lcom/helpshift/auth/dto/WebSocketAuthData;
    .registers 6

    .line 74
    iget-object v0, p0, Lcom/helpshift/auth/domainmodel/WebSocketAuthDM;->fetchSyncObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "Helpshift_WebSocketAuthDM"

    const-string v2, "Fetching auth token"

    .line 75
    invoke-static {v1, v2}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v1, Lcom/helpshift/common/domain/network/GETNetwork;

    const-string v2, "/ws-config/"

    iget-object v3, p0, Lcom/helpshift/auth/domainmodel/WebSocketAuthDM;->domain:Lcom/helpshift/common/domain/Domain;

    iget-object v4, p0, Lcom/helpshift/auth/domainmodel/WebSocketAuthDM;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-direct {v1, v2, v3, v4}, Lcom/helpshift/common/domain/network/GETNetwork;-><init>(Ljava/lang/String;Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V

    .line 77
    new-instance v2, Lcom/helpshift/common/domain/network/GuardOKNetwork;

    invoke-direct {v2, v1}, Lcom/helpshift/common/domain/network/GuardOKNetwork;-><init>(Lcom/helpshift/common/domain/network/Network;)V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_3d

    const/4 v1, 0x0

    .line 80
    :try_start_1b
    invoke-direct {p0}, Lcom/helpshift/auth/domainmodel/WebSocketAuthDM;->getRequestData()Lcom/helpshift/common/platform/network/RequestData;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/helpshift/common/domain/network/Network;->makeRequest(Lcom/helpshift/common/platform/network/RequestData;)Lcom/helpshift/common/platform/network/Response;

    move-result-object v2

    .line 81
    iget-object v3, p0, Lcom/helpshift/auth/domainmodel/WebSocketAuthDM;->responseParser:Lcom/helpshift/common/platform/network/ResponseParser;

    iget-object v2, v2, Lcom/helpshift/common/platform/network/Response;->responseString:Ljava/lang/String;

    invoke-interface {v3, v2}, Lcom/helpshift/common/platform/network/ResponseParser;->parseAuthToken(Ljava/lang/String;)Lcom/helpshift/auth/dto/WebSocketAuthData;

    move-result-object v1

    const-string v2, "Helpshift_WebSocketAuthDM"

    const-string v3, "Auth token fetch successful"

    .line 82
    invoke-static {v2, v3}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Lcom/helpshift/common/exception/RootAPIException; {:try_start_1b .. :try_end_32} :catch_33
    .catchall {:try_start_1b .. :try_end_32} :catchall_3d

    goto :goto_3b

    :catch_33
    move-exception v2

    :try_start_34
    const-string v3, "Helpshift_WebSocketAuthDM"

    const-string v4, "Exception in fetching auth token"

    .line 85
    invoke-static {v3, v4, v2}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    :goto_3b
    monitor-exit v0

    return-object v1

    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_34 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method private getRequestData()Lcom/helpshift/common/platform/network/RequestData;
    .registers 4

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 93
    iget-object v1, p0, Lcom/helpshift/auth/domainmodel/WebSocketAuthDM;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-interface {v1}, Lcom/helpshift/common/platform/Platform;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "platform-id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v1, Lcom/helpshift/common/platform/network/RequestData;

    invoke-direct {v1, v0}, Lcom/helpshift/common/platform/network/RequestData;-><init>(Ljava/util/Map;)V

    return-object v1
.end method


# virtual methods
.method public getAuthToken()Lcom/helpshift/auth/dto/WebSocketAuthData;
    .registers 4

    .line 45
    iget-object v0, p0, Lcom/helpshift/auth/domainmodel/WebSocketAuthDM;->cachedAuthData:Lcom/helpshift/auth/dto/WebSocketAuthData;

    const-string v1, "websocket_auth_data"

    if-nez v0, :cond_14

    .line 47
    iget-object v0, p0, Lcom/helpshift/auth/domainmodel/WebSocketAuthDM;->kvStore:Lcom/helpshift/common/platform/KVStore;

    invoke-interface {v0, v1}, Lcom/helpshift/common/platform/KVStore;->getSerializable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 48
    instance-of v2, v0, Lcom/helpshift/auth/dto/WebSocketAuthData;

    if-eqz v2, :cond_14

    .line 49
    check-cast v0, Lcom/helpshift/auth/dto/WebSocketAuthData;

    iput-object v0, p0, Lcom/helpshift/auth/domainmodel/WebSocketAuthDM;->cachedAuthData:Lcom/helpshift/auth/dto/WebSocketAuthData;

    .line 54
    :cond_14
    iget-object v0, p0, Lcom/helpshift/auth/domainmodel/WebSocketAuthDM;->cachedAuthData:Lcom/helpshift/auth/dto/WebSocketAuthData;

    if-nez v0, :cond_25

    .line 55
    invoke-direct {p0}, Lcom/helpshift/auth/domainmodel/WebSocketAuthDM;->fetchNewTokenInternal()Lcom/helpshift/auth/dto/WebSocketAuthData;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/auth/domainmodel/WebSocketAuthDM;->cachedAuthData:Lcom/helpshift/auth/dto/WebSocketAuthData;

    .line 56
    iget-object v0, p0, Lcom/helpshift/auth/domainmodel/WebSocketAuthDM;->kvStore:Lcom/helpshift/common/platform/KVStore;

    iget-object v2, p0, Lcom/helpshift/auth/domainmodel/WebSocketAuthDM;->cachedAuthData:Lcom/helpshift/auth/dto/WebSocketAuthData;

    invoke-interface {v0, v1, v2}, Lcom/helpshift/common/platform/KVStore;->setSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 58
    :cond_25
    iget-object v0, p0, Lcom/helpshift/auth/domainmodel/WebSocketAuthDM;->cachedAuthData:Lcom/helpshift/auth/dto/WebSocketAuthData;

    return-object v0
.end method

.method public refreshAuthToken()Lcom/helpshift/auth/dto/WebSocketAuthData;
    .registers 4

    .line 67
    invoke-direct {p0}, Lcom/helpshift/auth/domainmodel/WebSocketAuthDM;->fetchNewTokenInternal()Lcom/helpshift/auth/dto/WebSocketAuthData;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/auth/domainmodel/WebSocketAuthDM;->cachedAuthData:Lcom/helpshift/auth/dto/WebSocketAuthData;

    .line 68
    iget-object v0, p0, Lcom/helpshift/auth/domainmodel/WebSocketAuthDM;->kvStore:Lcom/helpshift/common/platform/KVStore;

    iget-object v1, p0, Lcom/helpshift/auth/domainmodel/WebSocketAuthDM;->cachedAuthData:Lcom/helpshift/auth/dto/WebSocketAuthData;

    const-string v2, "websocket_auth_data"

    invoke-interface {v0, v2, v1}, Lcom/helpshift/common/platform/KVStore;->setSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 69
    iget-object v0, p0, Lcom/helpshift/auth/domainmodel/WebSocketAuthDM;->cachedAuthData:Lcom/helpshift/auth/dto/WebSocketAuthData;

    return-object v0
.end method
