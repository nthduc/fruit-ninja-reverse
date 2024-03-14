.class public Lcom/google/firebase/storage/network/ResumableUploadByteRequest;
.super Lcom/google/firebase/storage/network/ResumableNetworkRequest;
.source "com.google.firebase:firebase-storage@@19.1.1"


# instance fields
.field private final bytesToWrite:I

.field private final chunk:[B

.field private final isFinal:Z

.field private final offset:J

.field private final uploadURL:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/firebase/FirebaseApp;Landroid/net/Uri;[BJIZ)V
    .registers 10
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/storage/network/ResumableNetworkRequest;-><init>(Landroid/net/Uri;Lcom/google/firebase/FirebaseApp;)V

    if-nez p4, :cond_11

    const/4 p1, -0x1

    if-eq p7, p1, :cond_11

    .line 40
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "contentType is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/firebase/storage/network/ResumableNetworkRequest;->mException:Ljava/lang/Exception;

    :cond_11
    const-wide/16 p1, 0x0

    cmp-long v0, p5, p1

    if-gez v0, :cond_20

    .line 43
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "offset cannot be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/firebase/storage/network/ResumableNetworkRequest;->mException:Ljava/lang/Exception;

    .line 45
    :cond_20
    iput p7, p0, Lcom/google/firebase/storage/network/ResumableUploadByteRequest;->bytesToWrite:I

    .line 46
    iput-object p3, p0, Lcom/google/firebase/storage/network/ResumableUploadByteRequest;->uploadURL:Landroid/net/Uri;

    if-gtz p7, :cond_27

    const/4 p4, 0x0

    .line 47
    :cond_27
    iput-object p4, p0, Lcom/google/firebase/storage/network/ResumableUploadByteRequest;->chunk:[B

    .line 48
    iput-wide p5, p0, Lcom/google/firebase/storage/network/ResumableUploadByteRequest;->offset:J

    .line 49
    iput-boolean p8, p0, Lcom/google/firebase/storage/network/ResumableUploadByteRequest;->isFinal:Z

    const-string p1, "X-Goog-Upload-Protocol"

    const-string p2, "resumable"

    .line 51
    invoke-super {p0, p1, p2}, Lcom/google/firebase/storage/network/ResumableNetworkRequest;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-boolean p1, p0, Lcom/google/firebase/storage/network/ResumableUploadByteRequest;->isFinal:Z

    const-string p2, "X-Goog-Upload-Command"

    if-eqz p1, :cond_44

    iget p1, p0, Lcom/google/firebase/storage/network/ResumableUploadByteRequest;->bytesToWrite:I

    if-lez p1, :cond_44

    const-string p1, "upload, finalize"

    .line 53
    invoke-super {p0, p2, p1}, Lcom/google/firebase/storage/network/ResumableNetworkRequest;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_53

    .line 54
    :cond_44
    iget-boolean p1, p0, Lcom/google/firebase/storage/network/ResumableUploadByteRequest;->isFinal:Z

    if-eqz p1, :cond_4e

    const-string p1, "finalize"

    .line 55
    invoke-super {p0, p2, p1}, Lcom/google/firebase/storage/network/ResumableNetworkRequest;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_53

    :cond_4e
    const-string p1, "upload"

    .line 57
    invoke-super {p0, p2, p1}, Lcom/google/firebase/storage/network/ResumableNetworkRequest;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_53
    iget-wide p1, p0, Lcom/google/firebase/storage/network/ResumableUploadByteRequest;->offset:J

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "X-Goog-Upload-Offset"

    invoke-super {p0, p2, p1}, Lcom/google/firebase/storage/network/ResumableNetworkRequest;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getAction()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "POST"

    return-object v0
.end method

.method protected getOutputRaw()[B
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/google/firebase/storage/network/ResumableUploadByteRequest;->chunk:[B

    return-object v0
.end method

.method protected getOutputRawSize()I
    .registers 2

    .line 82
    iget v0, p0, Lcom/google/firebase/storage/network/ResumableUploadByteRequest;->bytesToWrite:I

    if-lez v0, :cond_5

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method protected getURL()Landroid/net/Uri;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/google/firebase/storage/network/ResumableUploadByteRequest;->uploadURL:Landroid/net/Uri;

    return-object v0
.end method
