.class public Lcom/unity/purchasing/googleplay/IabResult;
.super Ljava/lang/Object;
.source "IabResult.java"


# instance fields
.field mMessage:Ljava/lang/String;

.field mResponse:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/unity/purchasing/googleplay/IabResult;->mResponse:I

    if-eqz p2, :cond_32

    .line 32
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_12

    goto :goto_32

    .line 36
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (response: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/unity/purchasing/googleplay/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unity/purchasing/googleplay/IabResult;->mMessage:Ljava/lang/String;

    goto :goto_38

    .line 33
    :cond_32
    :goto_32
    invoke-static {p1}, Lcom/unity/purchasing/googleplay/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unity/purchasing/googleplay/IabResult;->mMessage:Ljava/lang/String;

    :goto_38
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/IabResult;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getResponse()I
    .registers 2

    .line 39
    iget v0, p0, Lcom/unity/purchasing/googleplay/IabResult;->mResponse:I

    return v0
.end method

.method public isFailure()Z
    .registers 2

    .line 42
    invoke-virtual {p0}, Lcom/unity/purchasing/googleplay/IabResult;->isSuccess()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSuccess()Z
    .registers 2

    .line 41
    iget v0, p0, Lcom/unity/purchasing/googleplay/IabResult;->mResponse:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ IabResult: message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/unity/purchasing/googleplay/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", response = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/unity/purchasing/googleplay/IabResult;->getResponse()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
