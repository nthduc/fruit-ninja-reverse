.class public Lcom/helpshift/websockets/StatusLine;
.super Ljava/lang/Object;
.source "StatusLine.java"


# instance fields
.field private final mHttpVersion:Ljava/lang/String;

.field private final mReasonPhrase:Ljava/lang/String;

.field private final mStatusCode:I

.field private final mString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 6

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    const-string v1, " +"

    .line 67
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 69
    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_28

    const/4 v2, 0x0

    .line 73
    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/helpshift/websockets/StatusLine;->mHttpVersion:Ljava/lang/String;

    const/4 v2, 0x1

    .line 74
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/helpshift/websockets/StatusLine;->mStatusCode:I

    .line 75
    array-length v2, v1

    if-ne v2, v0, :cond_22

    aget-object v0, v1, v3

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    iput-object v0, p0, Lcom/helpshift/websockets/StatusLine;->mReasonPhrase:Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/helpshift/websockets/StatusLine;->mString:Ljava/lang/String;

    return-void

    .line 70
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public getHttpVersion()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/helpshift/websockets/StatusLine;->mHttpVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/helpshift/websockets/StatusLine;->mReasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .registers 2

    .line 96
    iget v0, p0, Lcom/helpshift/websockets/StatusLine;->mStatusCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/helpshift/websockets/StatusLine;->mString:Ljava/lang/String;

    return-object v0
.end method
