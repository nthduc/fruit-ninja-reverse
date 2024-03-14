.class Lcom/helpshift/websockets/DeflateUtil;
.super Ljava/lang/Object;
.source "DeflateUtil.java"


# static fields
.field private static INDICES_FROM_CODE_LENGTH_ORDER:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x13

    .line 29
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/helpshift/websockets/DeflateUtil;->INDICES_FROM_CODE_LENGTH_ORDER:[I

    return-void

    :array_a
    .array-data 4
        0x10
        0x11
        0x12
        0x0
        0x8
        0x7
        0x9
        0x6
        0xa
        0x5
        0xb
        0x4
        0xc
        0x3
        0xd
        0x2
        0xe
        0x1
        0xf
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static readCodeLengths(Lcom/helpshift/websockets/ByteArray;[I[ILcom/helpshift/websockets/Huffman;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 97
    :goto_2
    array-length v2, p2

    if-ge v1, v2, :cond_5e

    .line 99
    invoke-virtual {p3, p0, p1}, Lcom/helpshift/websockets/Huffman;->readSym(Lcom/helpshift/websockets/ByteArray;[I)I

    move-result v2

    const/4 v3, 0x1

    if-ltz v2, :cond_13

    const/16 v4, 0xf

    if-gt v2, v4, :cond_13

    .line 105
    aput v2, p2, v1

    goto :goto_5c

    :cond_13
    const/4 v4, 0x2

    const/4 v5, 0x3

    packed-switch v2, :pswitch_data_60

    .line 135
    new-array p0, v5, [Ljava/lang/Object;

    const-class p2, Lcom/helpshift/websockets/DeflateUtil;

    .line 137
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, v3

    aput-object p1, p0, v4

    const-string p1, "[%s] Bad code length \'%d\' at the bit index \'%d\'."

    .line 135
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 139
    new-instance p1, Lcom/helpshift/websockets/FormatException;

    invoke-direct {p1, p0}, Lcom/helpshift/websockets/FormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_36
    const/4 v2, 0x7

    .line 130
    invoke-virtual {p0, p1, v2}, Lcom/helpshift/websockets/ByteArray;->readBits([II)I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    goto :goto_43

    .line 123
    :pswitch_3e
    invoke-virtual {p0, p1, v5}, Lcom/helpshift/websockets/ByteArray;->readBits([II)I

    move-result v2

    add-int/2addr v2, v5

    :goto_43
    move v4, v2

    const/4 v2, 0x0

    goto :goto_4f

    :pswitch_46
    add-int/lit8 v2, v1, -0x1

    .line 115
    aget v2, p2, v2

    .line 116
    invoke-virtual {p0, p1, v4}, Lcom/helpshift/websockets/ByteArray;->readBits([II)I

    move-result v4

    add-int/2addr v4, v5

    :goto_4f
    const/4 v5, 0x0

    :goto_50
    if-ge v5, v4, :cond_59

    add-int v6, v1, v5

    .line 144
    aput v2, p2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_50

    :cond_59
    add-int/lit8 v4, v4, -0x1

    add-int/2addr v1, v4

    :goto_5c
    add-int/2addr v1, v3

    goto :goto_2

    :cond_5e
    return-void

    nop

    :pswitch_data_60
    .packed-switch 0x10
        :pswitch_46
        :pswitch_3e
        :pswitch_36
    .end packed-switch
.end method

.method public static readDistance(Lcom/helpshift/websockets/ByteArray;[ILcom/helpshift/websockets/Huffman;)I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/FormatException;
        }
    .end annotation

    .line 275
    invoke-virtual {p2, p0, p1}, Lcom/helpshift/websockets/Huffman;->readSym(Lcom/helpshift/websockets/ByteArray;[I)I

    move-result p2

    const/16 v0, 0xc

    const/16 v1, 0xb

    const/16 v2, 0xa

    const/16 v3, 0x8

    const/4 v4, 0x6

    const/4 v5, 0x4

    const/16 v6, 0xd

    const/16 v7, 0x9

    const/4 v8, 0x7

    const/4 v9, 0x5

    const/4 v10, 0x2

    const/4 v11, 0x3

    const/4 v12, 0x1

    packed-switch p2, :pswitch_data_ac

    .line 396
    new-array p0, v11, [Ljava/lang/Object;

    const-class v0, Lcom/helpshift/websockets/DeflateUtil;

    .line 398
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, v12

    aget p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v10

    const-string p1, "[%s] Bad distance code \'%d\' at the bit index \'%d\'."

    .line 396
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 400
    new-instance p1, Lcom/helpshift/websockets/FormatException;

    invoke-direct {p1, p0}, Lcom/helpshift/websockets/FormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3f
    const/16 p2, 0x6001

    const/16 v0, 0xd

    const/16 v6, 0x6001

    goto/16 :goto_a4

    :pswitch_47
    const/16 p2, 0x4001

    const/16 v0, 0xd

    const/16 v6, 0x4001

    goto/16 :goto_a4

    :pswitch_4f
    const/16 v6, 0x3001

    goto/16 :goto_a4

    :pswitch_53
    const/16 v6, 0x2001

    goto :goto_a4

    :pswitch_56
    const/16 v6, 0x1801

    goto :goto_5b

    :pswitch_59
    const/16 v6, 0x1001

    :goto_5b
    const/16 v0, 0xb

    goto :goto_a4

    :pswitch_5e
    const/16 v6, 0xc01

    goto :goto_63

    :pswitch_61
    const/16 v6, 0x801

    :goto_63
    const/16 v0, 0xa

    goto :goto_a4

    :pswitch_66
    const/16 v6, 0x601

    goto :goto_6b

    :pswitch_69
    const/16 v6, 0x401

    :goto_6b
    const/16 v0, 0x9

    goto :goto_a4

    :pswitch_6e
    const/16 v6, 0x301

    goto :goto_73

    :pswitch_71
    const/16 v6, 0x201

    :goto_73
    const/16 v0, 0x8

    goto :goto_a4

    :pswitch_76
    const/16 v6, 0x181

    goto :goto_7b

    :pswitch_79
    const/16 v6, 0x101

    :goto_7b
    const/4 v0, 0x7

    goto :goto_a4

    :pswitch_7d
    const/16 v6, 0xc1

    goto :goto_82

    :pswitch_80
    const/16 v6, 0x81

    :goto_82
    const/4 v0, 0x6

    goto :goto_a4

    :pswitch_84
    const/16 v6, 0x61

    goto :goto_89

    :pswitch_87
    const/16 v6, 0x41

    :goto_89
    const/4 v0, 0x5

    goto :goto_a4

    :pswitch_8b
    const/16 v6, 0x31

    goto :goto_90

    :pswitch_8e
    const/16 v6, 0x21

    :goto_90
    const/4 v0, 0x4

    goto :goto_a4

    :pswitch_92
    const/16 v6, 0x19

    goto :goto_97

    :pswitch_95
    const/16 v6, 0x11

    :goto_97
    const/4 v0, 0x3

    goto :goto_a4

    :pswitch_99
    const/4 v0, 0x2

    goto :goto_a4

    :pswitch_9b
    const/4 v0, 0x2

    const/16 v6, 0x9

    goto :goto_a4

    :pswitch_9f
    const/4 v0, 0x1

    const/4 v6, 0x7

    goto :goto_a4

    :pswitch_a2
    const/4 v0, 0x1

    const/4 v6, 0x5

    .line 404
    :goto_a4
    invoke-virtual {p0, p1, v0}, Lcom/helpshift/websockets/ByteArray;->readBits([II)I

    move-result p0

    add-int/2addr v6, p0

    return v6

    :pswitch_aa
    add-int/2addr p2, v12

    return p2

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
        :pswitch_a2
        :pswitch_9f
        :pswitch_9b
        :pswitch_99
        :pswitch_95
        :pswitch_92
        :pswitch_8e
        :pswitch_8b
        :pswitch_87
        :pswitch_84
        :pswitch_80
        :pswitch_7d
        :pswitch_79
        :pswitch_76
        :pswitch_71
        :pswitch_6e
        :pswitch_69
        :pswitch_66
        :pswitch_61
        :pswitch_5e
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_4f
        :pswitch_47
        :pswitch_3f
    .end packed-switch
.end method

.method public static readDynamicTables(Lcom/helpshift/websockets/ByteArray;[I[Lcom/helpshift/websockets/Huffman;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/FormatException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 38
    invoke-virtual {p0, p1, v0}, Lcom/helpshift/websockets/ByteArray;->readBits([II)I

    move-result v1

    add-int/lit16 v1, v1, 0x101

    .line 41
    invoke-virtual {p0, p1, v0}, Lcom/helpshift/websockets/ByteArray;->readBits([II)I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    const/4 v3, 0x4

    .line 44
    invoke-virtual {p0, p1, v3}, Lcom/helpshift/websockets/ByteArray;->readBits([II)I

    move-result v4

    add-int/2addr v4, v3

    const/16 v3, 0x13

    .line 51
    new-array v3, v3, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_19
    if-ge v6, v4, :cond_2a

    const/4 v7, 0x3

    .line 53
    invoke-virtual {p0, p1, v7}, Lcom/helpshift/websockets/ByteArray;->readBits([II)I

    move-result v7

    int-to-byte v7, v7

    .line 60
    sget-object v8, Lcom/helpshift/websockets/DeflateUtil;->INDICES_FROM_CODE_LENGTH_ORDER:[I

    aget v8, v8, v6

    .line 62
    aput v7, v3, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    .line 67
    :cond_2a
    new-instance v4, Lcom/helpshift/websockets/Huffman;

    invoke-direct {v4, v3}, Lcom/helpshift/websockets/Huffman;-><init>([I)V

    .line 71
    new-array v1, v1, [I

    .line 72
    invoke-static {p0, p1, v1, v4}, Lcom/helpshift/websockets/DeflateUtil;->readCodeLengths(Lcom/helpshift/websockets/ByteArray;[I[ILcom/helpshift/websockets/Huffman;)V

    .line 76
    new-instance v3, Lcom/helpshift/websockets/Huffman;

    invoke-direct {v3, v1}, Lcom/helpshift/websockets/Huffman;-><init>([I)V

    .line 80
    new-array v0, v0, [I

    .line 81
    invoke-static {p0, p1, v0, v4}, Lcom/helpshift/websockets/DeflateUtil;->readCodeLengths(Lcom/helpshift/websockets/ByteArray;[I[ILcom/helpshift/websockets/Huffman;)V

    .line 85
    new-instance p0, Lcom/helpshift/websockets/Huffman;

    invoke-direct {p0, v0}, Lcom/helpshift/websockets/Huffman;-><init>([I)V

    .line 87
    aput-object v3, p2, v5

    .line 88
    aput-object p0, p2, v2

    return-void
.end method

.method public static readLength(Lcom/helpshift/websockets/ByteArray;[II)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/FormatException;
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    packed-switch p2, :pswitch_data_78

    .line 255
    new-array p0, v4, [Ljava/lang/Object;

    const-class v0, Lcom/helpshift/websockets/DeflateUtil;

    .line 257
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, v3

    aget p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v2

    const-string p1, "[%s] Bad literal/length code \'%d\' at the bit index \'%d\'."

    .line 255
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 259
    new-instance p1, Lcom/helpshift/websockets/FormatException;

    invoke-direct {p1, p0}, Lcom/helpshift/websockets/FormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2d
    const/16 p0, 0x102

    return p0

    :pswitch_30
    const/16 p2, 0xe3

    goto :goto_6f

    :pswitch_33
    const/16 p2, 0xc3

    goto :goto_6f

    :pswitch_36
    const/16 p2, 0xa3

    goto :goto_6f

    :pswitch_39
    const/16 p2, 0x83

    goto :goto_6f

    :pswitch_3c
    const/16 p2, 0x73

    goto :goto_47

    :pswitch_3f
    const/16 p2, 0x63

    goto :goto_47

    :pswitch_42
    const/16 p2, 0x53

    goto :goto_47

    :pswitch_45
    const/16 p2, 0x43

    :goto_47
    const/4 v0, 0x4

    goto :goto_6f

    :pswitch_49
    const/16 p2, 0x3b

    goto :goto_54

    :pswitch_4c
    const/16 p2, 0x33

    goto :goto_54

    :pswitch_4f
    const/16 p2, 0x2b

    goto :goto_54

    :pswitch_52
    const/16 p2, 0x23

    :goto_54
    const/4 v0, 0x3

    goto :goto_6f

    :pswitch_56
    const/16 p2, 0x1f

    goto :goto_61

    :pswitch_59
    const/16 p2, 0x1b

    goto :goto_61

    :pswitch_5c
    const/16 p2, 0x17

    goto :goto_61

    :pswitch_5f
    const/16 p2, 0x13

    :goto_61
    const/4 v0, 0x2

    goto :goto_6f

    :pswitch_63
    const/16 p2, 0x11

    goto :goto_6e

    :pswitch_66
    const/16 p2, 0xf

    goto :goto_6e

    :pswitch_69
    const/16 p2, 0xd

    goto :goto_6e

    :pswitch_6c
    const/16 p2, 0xb

    :goto_6e
    const/4 v0, 0x1

    .line 263
    :goto_6f
    invoke-virtual {p0, p1, v0}, Lcom/helpshift/websockets/ByteArray;->readBits([II)I

    move-result p0

    add-int/2addr p2, p0

    return p2

    :pswitch_75
    add-int/lit16 p2, p2, -0xfe

    return p2

    :pswitch_data_78
    .packed-switch 0x101
        :pswitch_75
        :pswitch_75
        :pswitch_75
        :pswitch_75
        :pswitch_75
        :pswitch_75
        :pswitch_75
        :pswitch_75
        :pswitch_6c
        :pswitch_69
        :pswitch_66
        :pswitch_63
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
    .end packed-switch
.end method
