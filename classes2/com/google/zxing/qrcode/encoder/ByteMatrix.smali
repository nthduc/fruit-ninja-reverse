.class public final Lcom/google/zxing/qrcode/encoder/ByteMatrix;
.super Ljava/lang/Object;
.source "ByteMatrix.java"


# instance fields
.field private final bytes:[[B

.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(II)V
    .registers 5

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    filled-new-array {p2, p1}, [I

    move-result-object v0

    const-class v1, B

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    .line 35
    iput p1, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    .line 36
    iput p2, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    return-void
.end method


# virtual methods
.method public clear(B)V
    .registers 6

    .line 71
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 72
    invoke-static {v3, p1}, Ljava/util/Arrays;->fill([BB)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public get(II)B
    .registers 4

    .line 48
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    aget-object p2, v0, p2

    aget-byte p1, p2, p1

    return p1
.end method

.method public getArray()[[B
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 40
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 44
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    return v0
.end method

.method public set(IIB)V
    .registers 5

    .line 59
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    aget-object p2, v0, p2

    aput-byte p3, p2, p1

    return-void
.end method

.method public set(III)V
    .registers 5

    .line 63
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    aget-object p2, v0, p2

    int-to-byte p3, p3

    aput-byte p3, p2, p1

    return-void
.end method

.method public set(IIZ)V
    .registers 5

    .line 67
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    aget-object p2, v0, p2

    int-to-byte p3, p3

    aput-byte p3, p2, p1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    mul-int v1, v1, v2

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 79
    :goto_11
    iget v3, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    if-ge v2, v3, :cond_41

    .line 80
    iget-object v3, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    aget-object v3, v3, v2

    const/4 v4, 0x0

    .line 81
    :goto_1a
    iget v5, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    if-ge v4, v5, :cond_39

    .line 82
    aget-byte v5, v3, v4

    if-eqz v5, :cond_31

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2b

    const-string v5, "  "

    .line 90
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36

    :cond_2b
    const-string v5, " 1"

    .line 87
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36

    :cond_31
    const-string v5, " 0"

    .line 84
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_39
    const/16 v3, 0xa

    .line 94
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 96
    :cond_41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
