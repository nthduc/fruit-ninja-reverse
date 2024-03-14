.class Lcom/helpshift/websockets/DeflateDecompressor;
.super Ljava/lang/Object;
.source "DeflateDecompressor.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decompress(Lcom/helpshift/websockets/ByteArray;Lcom/helpshift/websockets/ByteArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/FormatException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 33
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 38
    :goto_6
    invoke-static {p0, v0, p1}, Lcom/helpshift/websockets/DeflateDecompressor;->inflateBlock(Lcom/helpshift/websockets/ByteArray;[ILcom/helpshift/websockets/ByteArray;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_6

    :cond_d
    return-void
.end method

.method private static duplicate(IILcom/helpshift/websockets/ByteArray;)V
    .registers 8

    .line 199
    invoke-virtual {p2}, Lcom/helpshift/websockets/ByteArray;->length()I

    move-result v0

    .line 202
    new-array v1, p0, [B

    sub-int p1, v0, p1

    const/4 v2, 0x0

    move v3, p1

    :goto_a
    if-ge v2, p0, :cond_1a

    if-gt v0, v3, :cond_f

    move v3, p1

    .line 224
    :cond_f
    invoke-virtual {p2, v3}, Lcom/helpshift/websockets/ByteArray;->get(I)B

    move-result v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 228
    :cond_1a
    invoke-virtual {p2, v1}, Lcom/helpshift/websockets/ByteArray;->put([B)V

    return-void
.end method

.method private static inflateBlock(Lcom/helpshift/websockets/ByteArray;[ILcom/helpshift/websockets/ByteArray;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/FormatException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lcom/helpshift/websockets/ByteArray;->readBit([I)Z

    move-result v0

    const/4 v1, 0x2

    .line 59
    invoke-virtual {p0, p1, v1}, Lcom/helpshift/websockets/ByteArray;->readBits([II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_37

    if-eq v2, v4, :cond_33

    if-ne v2, v1, :cond_15

    .line 74
    invoke-static {p0, p1, p2}, Lcom/helpshift/websockets/DeflateDecompressor;->inflateDynamicBlock(Lcom/helpshift/websockets/ByteArray;[ILcom/helpshift/websockets/ByteArray;)V

    goto :goto_3a

    .line 80
    :cond_15
    new-array p0, v1, [Ljava/lang/Object;

    const-class p2, Lcom/helpshift/websockets/DeflateDecompressor;

    .line 82
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, v3

    aget p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v4

    const-string p1, "[%s] Bad compression type \'11\' at the bit index \'%d\'."

    .line 80
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 84
    new-instance p1, Lcom/helpshift/websockets/FormatException;

    invoke-direct {p1, p0}, Lcom/helpshift/websockets/FormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_33
    invoke-static {p0, p1, p2}, Lcom/helpshift/websockets/DeflateDecompressor;->inflateFixedBlock(Lcom/helpshift/websockets/ByteArray;[ILcom/helpshift/websockets/ByteArray;)V

    goto :goto_3a

    .line 64
    :cond_37
    invoke-static {p0, p1, p2}, Lcom/helpshift/websockets/DeflateDecompressor;->inflatePlainBlock(Lcom/helpshift/websockets/ByteArray;[ILcom/helpshift/websockets/ByteArray;)V

    .line 88
    :goto_3a
    invoke-virtual {p0}, Lcom/helpshift/websockets/ByteArray;->length()I

    move-result p0

    aget p1, p1, v3

    div-int/lit8 p1, p1, 0x8

    if-gt p0, p1, :cond_45

    const/4 v0, 0x1

    :cond_45
    if-nez v0, :cond_48

    const/4 v3, 0x1

    :cond_48
    return v3
.end method

.method private static inflateData(Lcom/helpshift/websockets/ByteArray;[ILcom/helpshift/websockets/ByteArray;Lcom/helpshift/websockets/Huffman;Lcom/helpshift/websockets/Huffman;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/FormatException;
        }
    .end annotation

    .line 168
    :goto_0
    invoke-virtual {p3, p0, p1}, Lcom/helpshift/websockets/Huffman;->readSym(Lcom/helpshift/websockets/ByteArray;[I)I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    if-ltz v0, :cond_13

    const/16 v1, 0xff

    if-gt v0, v1, :cond_13

    .line 179
    invoke-virtual {p2, v0}, Lcom/helpshift/websockets/ByteArray;->put(I)V

    goto :goto_0

    .line 186
    :cond_13
    invoke-static {p0, p1, v0}, Lcom/helpshift/websockets/DeflateUtil;->readLength(Lcom/helpshift/websockets/ByteArray;[II)I

    move-result v0

    .line 189
    invoke-static {p0, p1, p4}, Lcom/helpshift/websockets/DeflateUtil;->readDistance(Lcom/helpshift/websockets/ByteArray;[ILcom/helpshift/websockets/Huffman;)I

    move-result v1

    .line 192
    invoke-static {v0, v1, p2}, Lcom/helpshift/websockets/DeflateDecompressor;->duplicate(IILcom/helpshift/websockets/ByteArray;)V

    goto :goto_0
.end method

.method private static inflateDynamicBlock(Lcom/helpshift/websockets/ByteArray;[ILcom/helpshift/websockets/ByteArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/FormatException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 152
    new-array v0, v0, [Lcom/helpshift/websockets/Huffman;

    .line 153
    invoke-static {p0, p1, v0}, Lcom/helpshift/websockets/DeflateUtil;->readDynamicTables(Lcom/helpshift/websockets/ByteArray;[I[Lcom/helpshift/websockets/Huffman;)V

    const/4 v1, 0x0

    .line 157
    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {p0, p1, p2, v1, v0}, Lcom/helpshift/websockets/DeflateDecompressor;->inflateData(Lcom/helpshift/websockets/ByteArray;[ILcom/helpshift/websockets/ByteArray;Lcom/helpshift/websockets/Huffman;Lcom/helpshift/websockets/Huffman;)V

    return-void
.end method

.method private static inflateFixedBlock(Lcom/helpshift/websockets/ByteArray;[ILcom/helpshift/websockets/ByteArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/FormatException;
        }
    .end annotation

    .line 140
    invoke-static {}, Lcom/helpshift/websockets/FixedLiteralLengthHuffman;->getInstance()Lcom/helpshift/websockets/FixedLiteralLengthHuffman;

    move-result-object v0

    .line 141
    invoke-static {}, Lcom/helpshift/websockets/FixedDistanceHuffman;->getInstance()Lcom/helpshift/websockets/FixedDistanceHuffman;

    move-result-object v1

    .line 139
    invoke-static {p0, p1, p2, v0, v1}, Lcom/helpshift/websockets/DeflateDecompressor;->inflateData(Lcom/helpshift/websockets/ByteArray;[ILcom/helpshift/websockets/ByteArray;Lcom/helpshift/websockets/Huffman;Lcom/helpshift/websockets/Huffman;)V

    return-void
.end method

.method private static inflatePlainBlock(Lcom/helpshift/websockets/ByteArray;[ILcom/helpshift/websockets/ByteArray;)V
    .registers 7

    const/4 v0, 0x0

    .line 102
    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x7

    and-int/lit8 v1, v1, -0x8

    .line 106
    div-int/lit8 v1, v1, 0x8

    .line 109
    invoke-virtual {p0, v1}, Lcom/helpshift/websockets/ByteArray;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Lcom/helpshift/websockets/ByteArray;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    mul-int/lit16 v3, v3, 0x100

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x4

    .line 117
    invoke-virtual {p2, p0, v1, v2}, Lcom/helpshift/websockets/ByteArray;->put(Lcom/helpshift/websockets/ByteArray;II)V

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x8

    .line 121
    aput v1, p1, v0

    return-void
.end method
