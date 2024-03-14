.class public final Lcom/facebook/internal/FileLruCache$Limits;
.super Ljava/lang/Object;
.source "FileLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/FileLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Limits"
.end annotation


# instance fields
.field private byteCount:I

.field private fileCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    .line 611
    iput v0, p0, Lcom/facebook/internal/FileLruCache$Limits;->fileCount:I

    const/high16 v0, 0x100000

    .line 612
    iput v0, p0, Lcom/facebook/internal/FileLruCache$Limits;->byteCount:I

    return-void
.end method


# virtual methods
.method getByteCount()I
    .registers 2

    .line 616
    iget v0, p0, Lcom/facebook/internal/FileLruCache$Limits;->byteCount:I

    return v0
.end method

.method getFileCount()I
    .registers 2

    .line 620
    iget v0, p0, Lcom/facebook/internal/FileLruCache$Limits;->fileCount:I

    return v0
.end method

.method setByteCount(I)V
    .registers 3

    if-ltz p1, :cond_5

    .line 627
    iput p1, p0, Lcom/facebook/internal/FileLruCache$Limits;->byteCount:I

    return-void

    .line 625
    :cond_5
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string v0, "Cache byte-count limit must be >= 0"

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setFileCount(I)V
    .registers 3

    if-ltz p1, :cond_5

    .line 634
    iput p1, p0, Lcom/facebook/internal/FileLruCache$Limits;->fileCount:I

    return-void

    .line 632
    :cond_5
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string v0, "Cache file count limit must be >= 0"

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
