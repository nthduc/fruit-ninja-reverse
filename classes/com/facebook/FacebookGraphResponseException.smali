.class public Lcom/facebook/FacebookGraphResponseException;
.super Lcom/facebook/FacebookException;
.source "FacebookGraphResponseException.java"


# instance fields
.field private final graphResponse:Lcom/facebook/GraphResponse;


# direct methods
.method public constructor <init>(Lcom/facebook/GraphResponse;Ljava/lang/String;)V
    .registers 3

    .line 35
    invoke-direct {p0, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/facebook/FacebookGraphResponseException;->graphResponse:Lcom/facebook/GraphResponse;

    return-void
.end method


# virtual methods
.method public final getGraphResponse()Lcom/facebook/GraphResponse;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/facebook/FacebookGraphResponseException;->graphResponse:Lcom/facebook/GraphResponse;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 50
    iget-object v0, p0, Lcom/facebook/FacebookGraphResponseException;->graphResponse:Lcom/facebook/GraphResponse;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 51
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{FacebookGraphResponseException: "

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p0}, Lcom/facebook/FacebookGraphResponseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    if-eqz v0, :cond_59

    const-string v2, "httpResponseCode: "

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getRequestStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", facebookErrorCode: "

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", facebookErrorType: "

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", message: "

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
