.class Lcom/helpshift/websockets/Huffman;
.super Ljava/lang/Object;
.source "Huffman.java"


# instance fields
.field private final mMaxCodeLen:I

.field private final mMaxCodeValsFromCodeLen:[I

.field private final mMinCodeLen:I

.field private final mSymsFromCodeVal:[I


# direct methods
.method public constructor <init>([I)V
    .registers 6

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Lcom/helpshift/websockets/Misc;->min([I)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/helpshift/websockets/Huffman;->mMinCodeLen:I

    .line 39
    invoke-static {p1}, Lcom/helpshift/websockets/Misc;->max([I)I

    move-result v0

    iput v0, p0, Lcom/helpshift/websockets/Huffman;->mMaxCodeLen:I

    .line 42
    iget v0, p0, Lcom/helpshift/websockets/Huffman;->mMaxCodeLen:I

    invoke-static {p1, v0}, Lcom/helpshift/websockets/Huffman;->createCountsFromCodeLen([II)[I

    move-result-object v0

    const/4 v2, 0x2

    .line 45
    new-array v2, v2, [Ljava/lang/Object;

    .line 46
    iget v3, p0, Lcom/helpshift/websockets/Huffman;->mMaxCodeLen:I

    invoke-static {v0, v3, v2}, Lcom/helpshift/websockets/Huffman;->createMaxCodeValsFromCodeLen([II[Ljava/lang/Object;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/websockets/Huffman;->mMaxCodeValsFromCodeLen:[I

    const/4 v0, 0x0

    .line 49
    aget-object v0, v2, v0

    check-cast v0, [I

    check-cast v0, [I

    .line 50
    aget-object v1, v2, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 51
    invoke-static {p1, v0, v1}, Lcom/helpshift/websockets/Huffman;->createSymsFromCodeVal([I[II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/websockets/Huffman;->mSymsFromCodeVal:[I

    return-void
.end method

.method private static createCountsFromCodeLen([II)[I
    .registers 5

    add-int/lit8 p1, p1, 0x1

    .line 70
    new-array p1, p1, [I

    const/4 v0, 0x0

    .line 74
    :goto_5
    array-length v1, p0

    if-ge v0, v1, :cond_13

    .line 75
    aget v1, p0, v0

    .line 76
    aget v2, p1, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_13
    return-object p1
.end method

.method private static createIntArray(II)[I
    .registers 4

    .line 59
    new-array v0, p0, [I

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p0, :cond_a

    .line 62
    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    return-object v0
.end method

.method private static createMaxCodeValsFromCodeLen([II[Ljava/lang/Object;)[I
    .registers 10

    const/4 v0, 0x1

    add-int/2addr p1, v0

    const/4 v1, -0x1

    .line 87
    invoke-static {p1, v1}, Lcom/helpshift/websockets/Huffman;->createIntArray(II)[I

    move-result-object v1

    const/4 v2, 0x0

    .line 93
    aput v2, p0, v2

    .line 94
    new-array p1, p1, [I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 95
    :goto_f
    array-length v6, p0

    if-ge v3, v6, :cond_23

    add-int/lit8 v4, v3, -0x1

    .line 97
    aget v4, p0, v4

    add-int/2addr v5, v4

    shl-int/2addr v5, v0

    .line 99
    aput v5, p1, v3

    .line 102
    aget v4, p0, v3

    add-int/2addr v4, v5

    sub-int/2addr v4, v0

    .line 103
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 106
    :cond_23
    aput-object p1, p2, v2

    .line 107
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, v0

    return-object v1
.end method

.method private static createSymsFromCodeVal([I[II)[I
    .registers 7

    add-int/lit8 p2, p2, 0x1

    .line 114
    new-array p2, p2, [I

    const/4 v0, 0x0

    .line 119
    :goto_5
    array-length v1, p0

    if-ge v0, v1, :cond_18

    .line 120
    aget v1, p0, v0

    if-nez v1, :cond_d

    goto :goto_15

    .line 126
    :cond_d
    aget v2, p1, v1

    add-int/lit8 v3, v2, 0x1

    aput v3, p1, v1

    .line 127
    aput v0, p2, v2

    :goto_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_18
    return-object p2
.end method


# virtual methods
.method public readSym(Lcom/helpshift/websockets/ByteArray;[I)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/FormatException;
        }
    .end annotation

    .line 135
    iget v0, p0, Lcom/helpshift/websockets/Huffman;->mMinCodeLen:I

    :goto_2
    iget v1, p0, Lcom/helpshift/websockets/Huffman;->mMaxCodeLen:I

    const/4 v2, 0x0

    if-gt v0, v1, :cond_23

    .line 138
    iget-object v1, p0, Lcom/helpshift/websockets/Huffman;->mMaxCodeValsFromCodeLen:[I

    aget v1, v1, v0

    if-gez v1, :cond_e

    goto :goto_16

    .line 146
    :cond_e
    aget v3, p2, v2

    invoke-virtual {p1, v3, v0}, Lcom/helpshift/websockets/ByteArray;->getHuffmanBits(II)I

    move-result v3

    if-ge v1, v3, :cond_19

    :goto_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 167
    :cond_19
    iget-object p1, p0, Lcom/helpshift/websockets/Huffman;->mSymsFromCodeVal:[I

    aget p1, p1, v3

    .line 170
    aget v1, p2, v2

    add-int/2addr v1, v0

    aput v1, p2, v2

    return p1

    :cond_23
    const/4 p1, 0x2

    .line 176
    new-array p1, p1, [Ljava/lang/Object;

    .line 178
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    aget p2, p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, p1, v0

    const-string p2, "[%s] Bad code at the bit index \'%d\'."

    .line 176
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 180
    new-instance p2, Lcom/helpshift/websockets/FormatException;

    invoke-direct {p2, p1}, Lcom/helpshift/websockets/FormatException;-><init>(Ljava/lang/String;)V

    throw p2

    return-void
.end method
