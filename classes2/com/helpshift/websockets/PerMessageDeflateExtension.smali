.class Lcom/helpshift/websockets/PerMessageDeflateExtension;
.super Lcom/helpshift/websockets/PerMessageCompressionExtension;
.source "PerMessageDeflateExtension.java"


# static fields
.field private static final CLIENT_MAX_WINDOW_BITS:Ljava/lang/String; = "client_max_window_bits"

.field private static final CLIENT_NO_CONTEXT_TAKEOVER:Ljava/lang/String; = "client_no_context_takeover"

.field private static final COMPRESSION_TERMINATOR:[B

.field private static final INCOMING_SLIDING_WINDOW_MARGIN:I = 0x400

.field private static final MAX_BITS:I = 0xf

.field private static final MAX_WINDOW_SIZE:I = 0x8000

.field private static final MIN_BITS:I = 0x8

.field private static final MIN_WINDOW_SIZE:I = 0x100

.field private static final SERVER_MAX_WINDOW_BITS:Ljava/lang/String; = "server_max_window_bits"

.field private static final SERVER_NO_CONTEXT_TAKEOVER:Ljava/lang/String; = "server_no_context_takeover"


# instance fields
.field private mClientNoContextTakeover:Z

.field private mClientWindowSize:I

.field private mIncomingSlidingWindow:Lcom/helpshift/websockets/ByteArray;

.field private mIncomingSlidingWindowBufferSize:I

.field private mServerNoContextTakeover:Z

.field private mServerWindowSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    .line 41
    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/helpshift/websockets/PerMessageDeflateExtension;->COMPRESSION_TERMINATOR:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x0t
        0x0t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    const-string v0, "permessage-deflate"

    .line 58
    invoke-direct {p0, v0}, Lcom/helpshift/websockets/PerMessageCompressionExtension;-><init>(Ljava/lang/String;)V

    const v0, 0x8000

    .line 51
    iput v0, p0, Lcom/helpshift/websockets/PerMessageDeflateExtension;->mServerWindowSize:I

    .line 52
    iput v0, p0, Lcom/helpshift/websockets/PerMessageDeflateExtension;->mClientWindowSize:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 63
    invoke-direct {p0, p1}, Lcom/helpshift/websockets/PerMessageCompressionExtension;-><init>(Ljava/lang/String;)V

    const p1, 0x8000

    .line 51
    iput p1, p0, Lcom/helpshift/websockets/PerMessageDeflateExtension;->mServerWindowSize:I

    .line 52
    iput p1, p0, Lcom/helpshift/websockets/PerMessageDeflateExtension;->mClientWindowSize:I

    return-void
.end method

.method private static adjustCompressedData([B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/FormatException;
        }
    .end annotation

    .line 69
    new-instance v0, Lcom/helpshift/websockets/ByteArray;

    array-length v1, p0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/helpshift/websockets/ByteArray;-><init>(I)V

    .line 70
    invoke-virtual {v0, p0}, Lcom/helpshift/websockets/ByteArray;->put([B)V

    .line 73
    new-array p0, v2, [I

    .line 77
    new-array v1, v2, [Z

    .line 81
    :goto_f
    invoke-static {v0, p0, v1}, Lcom/helpshift/websockets/PerMessageDeflateExtension;->skipBlock(Lcom/helpshift/websockets/ByteArray;[I[Z)Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_f

    :cond_16
    const/4 v3, 0x0

    .line 86
    aget-boolean v1, v1, v3

    if-eqz v1, :cond_28

    .line 89
    aget p0, p0, v3

    sub-int/2addr p0, v2

    div-int/lit8 p0, p0, 0x8

    add-int/2addr p0, v2

    add-int/lit8 p0, p0, -0x4

    invoke-virtual {v0, v3, p0}, Lcom/helpshift/websockets/ByteArray;->toBytes(II)[B

    move-result-object p0

    return-object p0

    .line 101
    :cond_28
    invoke-static {v0, p0}, Lcom/helpshift/websockets/PerMessageDeflateExtension;->appendEmptyBlock(Lcom/helpshift/websockets/ByteArray;[I)V

    .line 104
    aget p0, p0, v3

    sub-int/2addr p0, v2

    div-int/lit8 p0, p0, 0x8

    add-int/2addr p0, v2

    invoke-virtual {v0, v3, p0}, Lcom/helpshift/websockets/ByteArray;->toBytes(II)[B

    move-result-object p0

    return-object p0
.end method

.method private static appendEmptyBlock(Lcom/helpshift/websockets/ByteArray;[I)V
    .registers 5

    const/4 v0, 0x0

    .line 108
    aget v1, p1, v0

    rem-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_e

    const/4 v2, 0x6

    if-eq v1, v2, :cond_e

    const/4 v2, 0x7

    if-eq v1, v2, :cond_e

    goto :goto_11

    .line 127
    :cond_e
    invoke-virtual {p0, v0}, Lcom/helpshift/websockets/ByteArray;->put(I)V

    .line 131
    :goto_11
    aget p0, p1, v0

    add-int/lit8 p0, p0, 0x3

    aput p0, p1, v0

    return-void
.end method

.method private canCompress([B)Z
    .registers 5

    .line 507
    iget v0, p0, Lcom/helpshift/websockets/PerMessageDeflateExtension;->mClientWindowSize:I

    const/4 v1, 0x1

    const v2, 0x8000

    if-ne v0, v2, :cond_9

    return v1

    .line 518
    :cond_9
    array-length p1, p1

    if-ge p1, v0, :cond_d

    return v1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method private computeWindowSize(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/WebSocketException;
        }
    .end annotation

    .line 337
    invoke-direct {p0, p1, p2}, Lcom/helpshift/websockets/PerMessageDeflateExtension;->extractMaxWindowBits(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/16 p2, 0x100

    const/16 v0, 0x8

    :goto_8
    if-ge v0, p1, :cond_f

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_f
    return p2
.end method

.method private extractMaxWindowBits(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/WebSocketException;
        }
    .end annotation

    .line 348
    invoke-direct {p0, p2}, Lcom/helpshift/websockets/PerMessageDeflateExtension;->parseMaxWindowBits(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_7

    return v0

    :cond_7
    const/4 v0, 0x2

    .line 351
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "The value of %s parameter of permessage-deflate extension is invalid: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 355
    new-instance p2, Lcom/helpshift/websockets/WebSocketException;

    sget-object v0, Lcom/helpshift/websockets/WebSocketError;->PERMESSAGE_DEFLATE_INVALID_MAX_WINDOW_BITS:Lcom/helpshift/websockets/WebSocketError;

    invoke-direct {p2, v0, p1}, Lcom/helpshift/websockets/WebSocketException;-><init>(Lcom/helpshift/websockets/WebSocketError;Ljava/lang/String;)V

    throw p2
.end method

.method private parseMaxWindowBits(Ljava/lang/String;)I
    .registers 4

    const/4 v0, -0x1

    if-nez p1, :cond_4

    return v0

    .line 370
    :cond_4
    :try_start_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_8} :catch_12

    const/16 v1, 0x8

    if-lt p1, v1, :cond_12

    const/16 v1, 0xf

    if-ge v1, p1, :cond_11

    goto :goto_12

    :cond_11
    return p1

    :catch_12
    :cond_12
    :goto_12
    return v0
.end method

.method private static skipBlock(Lcom/helpshift/websockets/ByteArray;[I[Z)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/FormatException;
        }
    .end annotation

    .line 140
    invoke-virtual {p0, p1}, Lcom/helpshift/websockets/ByteArray;->readBit([I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    .line 145
    aget v3, p1, v2

    sub-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lcom/helpshift/websockets/ByteArray;->clearBit(I)V

    :cond_e
    const/4 v3, 0x2

    .line 156
    invoke-virtual {p0, p1, v3}, Lcom/helpshift/websockets/ByteArray;->readBits([II)I

    move-result v4

    if-eqz v4, :cond_40

    if-eq v4, v1, :cond_3b

    if-ne v4, v3, :cond_1d

    .line 175
    invoke-static {p0, p1}, Lcom/helpshift/websockets/PerMessageDeflateExtension;->skipDynamicBlock(Lcom/helpshift/websockets/ByteArray;[I)V

    goto :goto_3e

    .line 181
    :cond_1d
    new-array p0, v3, [Ljava/lang/Object;

    const-class p2, Lcom/helpshift/websockets/PerMessageDeflateExtension;

    .line 183
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, v2

    aget p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v1

    const-string p1, "[%s] Bad compression type \'11\' at the bit index \'%d\'."

    .line 181
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 185
    new-instance p1, Lcom/helpshift/websockets/FormatException;

    invoke-direct {p1, p0}, Lcom/helpshift/websockets/FormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 170
    :cond_3b
    invoke-static {p0, p1}, Lcom/helpshift/websockets/PerMessageDeflateExtension;->skipFixedBlock(Lcom/helpshift/websockets/ByteArray;[I)V

    :cond_3e
    :goto_3e
    const/4 v3, 0x0

    goto :goto_47

    .line 165
    :cond_40
    invoke-static {p0, p1}, Lcom/helpshift/websockets/PerMessageDeflateExtension;->skipPlainBlock(Lcom/helpshift/websockets/ByteArray;[I)I

    move-result v3

    if-nez v3, :cond_3e

    const/4 v3, 0x1

    .line 189
    :goto_47
    invoke-virtual {p0}, Lcom/helpshift/websockets/ByteArray;->length()I

    move-result p0

    aget p1, p1, v2

    div-int/lit8 p1, p1, 0x8

    if-gt p0, p1, :cond_52

    const/4 v0, 0x1

    :cond_52
    if-eqz v0, :cond_58

    if-eqz v3, :cond_58

    .line 196
    aput-boolean v1, p2, v2

    :cond_58
    if-nez v0, :cond_5b

    goto :goto_5c

    :cond_5b
    const/4 v1, 0x0

    :goto_5c
    return v1
.end method

.method private static skipData(Lcom/helpshift/websockets/ByteArray;[ILcom/helpshift/websockets/Huffman;Lcom/helpshift/websockets/Huffman;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/FormatException;
        }
    .end annotation

    .line 265
    :goto_0
    invoke-virtual {p2, p0, p1}, Lcom/helpshift/websockets/Huffman;->readSym(Lcom/helpshift/websockets/ByteArray;[I)I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    if-ltz v0, :cond_10

    const/16 v1, 0xff

    if-gt v0, v1, :cond_10

    goto :goto_0

    .line 282
    :cond_10
    invoke-static {p0, p1, v0}, Lcom/helpshift/websockets/DeflateUtil;->readLength(Lcom/helpshift/websockets/ByteArray;[II)I

    .line 285
    invoke-static {p0, p1, p3}, Lcom/helpshift/websockets/DeflateUtil;->readDistance(Lcom/helpshift/websockets/ByteArray;[ILcom/helpshift/websockets/Huffman;)I

    goto :goto_0
.end method

.method private static skipDynamicBlock(Lcom/helpshift/websockets/ByteArray;[I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/FormatException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 252
    new-array v0, v0, [Lcom/helpshift/websockets/Huffman;

    .line 253
    invoke-static {p0, p1, v0}, Lcom/helpshift/websockets/DeflateUtil;->readDynamicTables(Lcom/helpshift/websockets/ByteArray;[I[Lcom/helpshift/websockets/Huffman;)V

    const/4 v1, 0x0

    .line 255
    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {p0, p1, v1, v0}, Lcom/helpshift/websockets/PerMessageDeflateExtension;->skipData(Lcom/helpshift/websockets/ByteArray;[ILcom/helpshift/websockets/Huffman;Lcom/helpshift/websockets/Huffman;)V

    return-void
.end method

.method private static skipFixedBlock(Lcom/helpshift/websockets/ByteArray;[I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/FormatException;
        }
    .end annotation

    .line 242
    invoke-static {}, Lcom/helpshift/websockets/FixedLiteralLengthHuffman;->getInstance()Lcom/helpshift/websockets/FixedLiteralLengthHuffman;

    move-result-object v0

    .line 243
    invoke-static {}, Lcom/helpshift/websockets/FixedDistanceHuffman;->getInstance()Lcom/helpshift/websockets/FixedDistanceHuffman;

    move-result-object v1

    .line 241
    invoke-static {p0, p1, v0, v1}, Lcom/helpshift/websockets/PerMessageDeflateExtension;->skipData(Lcom/helpshift/websockets/ByteArray;[ILcom/helpshift/websockets/Huffman;Lcom/helpshift/websockets/Huffman;)V

    return-void
.end method

.method private static skipPlainBlock(Lcom/helpshift/websockets/ByteArray;[I)I
    .registers 6

    const/4 v0, 0x0

    .line 207
    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x7

    and-int/lit8 v1, v1, -0x8

    .line 211
    div-int/lit8 v1, v1, 0x8

    .line 214
    invoke-virtual {p0, v1}, Lcom/helpshift/websockets/ByteArray;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Lcom/helpshift/websockets/ByteArray;->get(I)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    mul-int/lit16 p0, p0, 0x100

    add-int/2addr v2, p0

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x8

    .line 223
    aput v1, p1, v0

    return v2
.end method

.method private validateParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/WebSocketException;
        }
    .end annotation

    const-string v0, "server_no_context_takeover"

    .line 316
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 317
    iput-boolean v1, p0, Lcom/helpshift/websockets/PerMessageDeflateExtension;->mServerNoContextTakeover:Z

    goto :goto_34

    :cond_c
    const-string v0, "client_no_context_takeover"

    .line 319
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 320
    iput-boolean v1, p0, Lcom/helpshift/websockets/PerMessageDeflateExtension;->mClientNoContextTakeover:Z

    goto :goto_34

    :cond_17
    const-string v0, "server_max_window_bits"

    .line 322
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 323
    invoke-direct {p0, p1, p2}, Lcom/helpshift/websockets/PerMessageDeflateExtension;->computeWindowSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/helpshift/websockets/PerMessageDeflateExtension;->mServerWindowSize:I

    goto :goto_34

    :cond_26
    const-string v0, "client_max_window_bits"

    .line 325
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 326
    invoke-direct {p0, p1, p2}, Lcom/helpshift/websockets/PerMessageDeflateExtension;->computeWindowSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/helpshift/websockets/PerMessageDeflateExtension;->mClientWindowSize:I

    :goto_34
    return-void

    .line 330
    :cond_35
    new-instance p2, Lcom/helpshift/websockets/WebSocketException;

    sget-object v0, Lcom/helpshift/websockets/WebSocketError;->PERMESSAGE_DEFLATE_UNSUPPORTED_PARAMETER:Lcom/helpshift/websockets/WebSocketError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "permessage-deflate extension contains an unsupported parameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/helpshift/websockets/WebSocketException;-><init>(Lcom/helpshift/websockets/WebSocketError;Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method protected compress([B)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/WebSocketException;
        }
    .end annotation

    .line 450
    invoke-direct {p0, p1}, Lcom/helpshift/websockets/PerMessageDeflateExtension;->canCompress([B)Z

    move-result v0

    if-nez v0, :cond_7

    return-object p1

    .line 473
    :cond_7
    :try_start_7
    invoke-static {p1}, Lcom/helpshift/websockets/DeflateCompressor;->compress([B)[B

    move-result-object p1

    .line 476
    invoke-static {p1}, Lcom/helpshift/websockets/PerMessageDeflateExtension;->adjustCompressedData([B)[B

    move-result-object p1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10

    return-object p1

    :catch_10
    move-exception p1

    .line 480
    new-instance v0, Lcom/helpshift/websockets/WebSocketException;

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->COMPRESSION_ERROR:Lcom/helpshift/websockets/WebSocketError;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 482
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Failed to compress the message: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/helpshift/websockets/WebSocketException;-><init>(Lcom/helpshift/websockets/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected decompress([B)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/WebSocketException;
        }
    .end annotation

    .line 410
    array-length v0, p1

    sget-object v1, Lcom/helpshift/websockets/PerMessageDeflateExtension;->COMPRESSION_TERMINATOR:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 413
    new-instance v1, Lcom/helpshift/websockets/ByteArray;

    invoke-direct {v1, v0}, Lcom/helpshift/websockets/ByteArray;-><init>(I)V

    .line 414
    invoke-virtual {v1, p1}, Lcom/helpshift/websockets/ByteArray;->put([B)V

    .line 415
    sget-object p1, Lcom/helpshift/websockets/PerMessageDeflateExtension;->COMPRESSION_TERMINATOR:[B

    invoke-virtual {v1, p1}, Lcom/helpshift/websockets/ByteArray;->put([B)V

    .line 417
    iget-object p1, p0, Lcom/helpshift/websockets/PerMessageDeflateExtension;->mIncomingSlidingWindow:Lcom/helpshift/websockets/ByteArray;

    if-nez p1, :cond_1f

    .line 418
    new-instance p1, Lcom/helpshift/websockets/ByteArray;

    iget v0, p0, Lcom/helpshift/websockets/PerMessageDeflateExtension;->mIncomingSlidingWindowBufferSize:I

    invoke-direct {p1, v0}, Lcom/helpshift/websockets/ByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/helpshift/websockets/PerMessageDeflateExtension;->mIncomingSlidingWindow:Lcom/helpshift/websockets/ByteArray;

    .line 422
    :cond_1f
    iget-object p1, p0, Lcom/helpshift/websockets/PerMessageDeflateExtension;->mIncomingSlidingWindow:Lcom/helpshift/websockets/ByteArray;

    invoke-virtual {p1}, Lcom/helpshift/websockets/ByteArray;->length()I

    move-result p1

    .line 426
    :try_start_25
    iget-object v0, p0, Lcom/helpshift/websockets/PerMessageDeflateExtension;->mIncomingSlidingWindow:Lcom/helpshift/websockets/ByteArray;

    invoke-static {v1, v0}, Lcom/helpshift/websockets/DeflateDecompressor;->decompress(Lcom/helpshift/websockets/ByteArray;Lcom/helpshift/websockets/ByteArray;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2a} :catch_41

    .line 435
    iget-object v0, p0, Lcom/helpshift/websockets/PerMessageDeflateExtension;->mIncomingSlidingWindow:Lcom/helpshift/websockets/ByteArray;

    invoke-virtual {v0, p1}, Lcom/helpshift/websockets/ByteArray;->toBytes(I)[B

    move-result-object p1

    .line 438
    iget-object v0, p0, Lcom/helpshift/websockets/PerMessageDeflateExtension;->mIncomingSlidingWindow:Lcom/helpshift/websockets/ByteArray;

    iget v1, p0, Lcom/helpshift/websockets/PerMessageDeflateExtension;->mIncomingSlidingWindowBufferSize:I

    invoke-virtual {v0, v1}, Lcom/helpshift/websockets/ByteArray;->shrink(I)V

    .line 440
    iget-boolean v0, p0, Lcom/helpshift/websockets/PerMessageDeflateExtension;->mServerNoContextTakeover:Z

    if-eqz v0, :cond_40

    .line 442
    iget-object v0, p0, Lcom/helpshift/websockets/PerMessageDeflateExtension;->mIncomingSlidingWindow:Lcom/helpshift/websockets/ByteArray;

    invoke-virtual {v0}, Lcom/helpshift/websockets/ByteArray;->clear()V

    :cond_40
    return-object p1

    :catch_41
    move-exception p1

    .line 430
    new-instance v0, Lcom/helpshift/websockets/WebSocketException;

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->DECOMPRESSION_ERROR:Lcom/helpshift/websockets/WebSocketError;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 432
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Failed to decompress the message: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/helpshift/websockets/WebSocketException;-><init>(Lcom/helpshift/websockets/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getClientWindowSize()I
    .registers 2

    .line 312
    iget v0, p0, Lcom/helpshift/websockets/PerMessageDeflateExtension;->mClientWindowSize:I

    return v0
.end method

.method public getServerWindowSize()I
    .registers 2

    .line 308
    iget v0, p0, Lcom/helpshift/websockets/PerMessageDeflateExtension;->mServerWindowSize:I

    return v0
.end method

.method public isClientNoContextTakeover()Z
    .registers 2

    .line 304
    iget-boolean v0, p0, Lcom/helpshift/websockets/PerMessageDeflateExtension;->mClientNoContextTakeover:Z

    return v0
.end method

.method public isServerNoContextTakeover()Z
    .registers 2

    .line 300
    iget-boolean v0, p0, Lcom/helpshift/websockets/PerMessageDeflateExtension;->mServerNoContextTakeover:Z

    return v0
.end method

.method validate()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/WebSocketException;
        }
    .end annotation

    .line 292
    invoke-virtual {p0}, Lcom/helpshift/websockets/PerMessageDeflateExtension;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 293
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/helpshift/websockets/PerMessageDeflateExtension;->validateParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 296
    :cond_28
    iget v0, p0, Lcom/helpshift/websockets/PerMessageDeflateExtension;->mServerWindowSize:I

    add-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/helpshift/websockets/PerMessageDeflateExtension;->mIncomingSlidingWindowBufferSize:I

    return-void
.end method
