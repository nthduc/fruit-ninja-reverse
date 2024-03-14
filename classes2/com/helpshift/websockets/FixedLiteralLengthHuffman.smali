.class Lcom/helpshift/websockets/FixedLiteralLengthHuffman;
.super Lcom/helpshift/websockets/Huffman;
.source "FixedLiteralLengthHuffman.java"


# static fields
.field private static final INSTANCE:Lcom/helpshift/websockets/FixedLiteralLengthHuffman;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Lcom/helpshift/websockets/FixedLiteralLengthHuffman;

    invoke-direct {v0}, Lcom/helpshift/websockets/FixedLiteralLengthHuffman;-><init>()V

    sput-object v0, Lcom/helpshift/websockets/FixedLiteralLengthHuffman;->INSTANCE:Lcom/helpshift/websockets/FixedLiteralLengthHuffman;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 30
    invoke-static {}, Lcom/helpshift/websockets/FixedLiteralLengthHuffman;->buildCodeLensFromSym()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/helpshift/websockets/Huffman;-><init>([I)V

    return-void
.end method

.method private static buildCodeLensFromSym()[I
    .registers 5

    const/16 v0, 0x120

    .line 44
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_5
    const/16 v3, 0x90

    const/16 v4, 0x8

    if-ge v2, v3, :cond_10

    .line 50
    aput v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_10
    :goto_10
    const/16 v3, 0x100

    if-ge v2, v3, :cond_1b

    const/16 v3, 0x9

    .line 55
    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1b
    :goto_1b
    const/16 v3, 0x118

    if-ge v2, v3, :cond_25

    const/4 v3, 0x7

    .line 60
    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_25
    :goto_25
    if-ge v2, v0, :cond_2c

    .line 65
    aput v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_2c
    return-object v1
.end method

.method public static getInstance()Lcom/helpshift/websockets/FixedLiteralLengthHuffman;
    .registers 1

    .line 76
    sget-object v0, Lcom/helpshift/websockets/FixedLiteralLengthHuffman;->INSTANCE:Lcom/helpshift/websockets/FixedLiteralLengthHuffman;

    return-object v0
.end method
