.class public Lcom/helpshift/common/domain/network/AuthenticationFailureNetwork;
.super Ljava/lang/Object;
.source "AuthenticationFailureNetwork.java"

# interfaces
.implements Lcom/helpshift/common/domain/network/Network;


# static fields
.field private static final REASON_AUTH_TOKEN_NOT_PROVIDED:Ljava/lang/String; = "missing user auth token"

.field private static final REASON_INVALID_AUTH_TOKEN:Ljava/lang/String; = "invalid user auth token"


# instance fields
.field private final network:Lcom/helpshift/common/domain/network/Network;


# direct methods
.method public constructor <init>(Lcom/helpshift/common/domain/network/Network;)V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/helpshift/common/domain/network/AuthenticationFailureNetwork;->network:Lcom/helpshift/common/domain/network/Network;

    return-void
.end method


# virtual methods
.method public makeRequest(Lcom/helpshift/common/platform/network/RequestData;)Lcom/helpshift/common/platform/network/Response;
    .registers 5

    .line 22
    iget-object v0, p0, Lcom/helpshift/common/domain/network/AuthenticationFailureNetwork;->network:Lcom/helpshift/common/domain/network/Network;

    invoke-interface {v0, p1}, Lcom/helpshift/common/domain/network/Network;->makeRequest(Lcom/helpshift/common/platform/network/RequestData;)Lcom/helpshift/common/platform/network/Response;

    move-result-object p1

    .line 23
    iget v0, p1, Lcom/helpshift/common/platform/network/Response;->status:I

    .line 31
    sget-object v1, Lcom/helpshift/common/domain/network/NetworkErrorCodes;->UNAUTHORIZED_ACCESS:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_4c

    iget-object v0, p1, Lcom/helpshift/common/platform/network/Response;->responseString:Ljava/lang/String;

    .line 32
    invoke-static {v0}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 33
    iget-object v0, p1, Lcom/helpshift/common/platform/network/Response;->responseString:Ljava/lang/String;

    const-string v1, "missing user auth token"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3d

    .line 38
    iget-object v0, p1, Lcom/helpshift/common/platform/network/Response;->responseString:Ljava/lang/String;

    const-string v2, "invalid user auth token"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_4c

    .line 39
    :cond_2e
    sget-object p1, Lcom/helpshift/common/exception/NetworkException;->INVALID_AUTH_TOKEN:Lcom/helpshift/common/exception/NetworkException;

    .line 40
    sget-object v0, Lcom/helpshift/common/domain/network/NetworkErrorCodes;->INVALID_AUTH_TOKEN:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/helpshift/common/exception/NetworkException;->serverStatusCode:I

    .line 41
    invoke-static {v1, p1}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object p1

    throw p1

    .line 34
    :cond_3d
    sget-object p1, Lcom/helpshift/common/exception/NetworkException;->AUTH_TOKEN_NOT_PROVIDED:Lcom/helpshift/common/exception/NetworkException;

    .line 35
    sget-object v0, Lcom/helpshift/common/domain/network/NetworkErrorCodes;->AUTH_TOKEN_NOT_PROVIDED:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/helpshift/common/exception/NetworkException;->serverStatusCode:I

    .line 36
    invoke-static {v1, p1}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object p1

    throw p1

    :cond_4c
    :goto_4c
    return-object p1
.end method
