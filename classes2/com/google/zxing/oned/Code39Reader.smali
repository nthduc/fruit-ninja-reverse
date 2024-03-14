.class public final Lcom/google/zxing/oned/Code39Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "Code39Reader.java"


# static fields
.field static final ALPHABET_STRING:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

.field static final ASTERISK_ENCODING:I = 0x94

.field static final CHARACTER_ENCODINGS:[I


# instance fields
.field private final counters:[I

.field private final decodeRowResult:Ljava/lang/StringBuilder;

.field private final extendedMode:Z

.field private final usingCheckDigit:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x2b

    .line 46
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    return-void

    :array_a
    .array-data 4
        0x34
        0x121
        0x61
        0x160
        0x31
        0x130
        0x70
        0x25
        0x124
        0x64
        0x109
        0x49
        0x148
        0x19
        0x118
        0x58
        0xd
        0x10c
        0x4c
        0x1c
        0x103
        0x43
        0x142
        0x13
        0x112
        0x52
        0x7
        0x106
        0x46
        0x16
        0x181
        0xc1
        0x1c0
        0x91
        0x190
        0xd0
        0x85
        0x184
        0xc4
        0xa8
        0xa2
        0x8a
        0x2a
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, v0}, Lcom/google/zxing/oned/Code39Reader;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, v0}, Lcom/google/zxing/oned/Code39Reader;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 3

    .line 90
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 91
    iput-boolean p1, p0, Lcom/google/zxing/oned/Code39Reader;->usingCheckDigit:Z

    .line 92
    iput-boolean p2, p0, Lcom/google/zxing/oned/Code39Reader;->extendedMode:Z

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p2, 0x14

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p1, p0, Lcom/google/zxing/oned/Code39Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    const/16 p1, 0x9

    .line 94
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/zxing/oned/Code39Reader;->counters:[I

    return-void
.end method

.method private static decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 270
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v0, :cond_be

    .line 273
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    const/16 v6, 0x25

    const/16 v7, 0x24

    const/16 v8, 0x2b

    if-eq v4, v8, :cond_27

    if-eq v4, v7, :cond_27

    if-eq v4, v6, :cond_27

    if-ne v4, v5, :cond_22

    goto :goto_27

    .line 331
    :cond_22
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_b5

    :cond_27
    :goto_27
    add-int/lit8 v3, v3, 0x1

    .line 275
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x5a

    const/16 v11, 0x41

    if-eq v4, v7, :cond_ab

    const/16 v7, 0x4f

    if-eq v4, v6, :cond_5d

    if-eq v4, v8, :cond_51

    if-eq v4, v5, :cond_3e

    :goto_3b
    const/4 v4, 0x0

    goto/16 :goto_b2

    :cond_3e
    if-lt v9, v11, :cond_46

    if-gt v9, v7, :cond_46

    add-int/lit8 v9, v9, -0x20

    goto/16 :goto_b1

    :cond_46
    if-ne v9, v10, :cond_4c

    const/16 v4, 0x3a

    goto/16 :goto_b2

    .line 323
    :cond_4c
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_51
    if-lt v9, v11, :cond_58

    if-gt v9, v10, :cond_58

    add-int/lit8 v9, v9, 0x20

    goto :goto_b1

    .line 283
    :cond_58
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_5d
    if-lt v9, v11, :cond_66

    const/16 v4, 0x45

    if-gt v9, v4, :cond_66

    add-int/lit8 v9, v9, -0x26

    goto :goto_b1

    :cond_66
    const/16 v4, 0x46

    if-lt v9, v4, :cond_71

    const/16 v4, 0x4a

    if-gt v9, v4, :cond_71

    add-int/lit8 v9, v9, -0xb

    goto :goto_b1

    :cond_71
    const/16 v4, 0x4b

    if-lt v9, v4, :cond_7a

    if-gt v9, v7, :cond_7a

    add-int/lit8 v9, v9, 0x10

    goto :goto_b1

    :cond_7a
    const/16 v4, 0x50

    if-lt v9, v4, :cond_85

    const/16 v4, 0x54

    if-gt v9, v4, :cond_85

    add-int/lit8 v9, v9, 0x2b

    goto :goto_b1

    :cond_85
    const/16 v4, 0x55

    if-ne v9, v4, :cond_8a

    goto :goto_3b

    :cond_8a
    const/16 v4, 0x56

    if-ne v9, v4, :cond_91

    const/16 v4, 0x40

    goto :goto_b2

    :cond_91
    const/16 v4, 0x57

    if-ne v9, v4, :cond_98

    const/16 v4, 0x60

    goto :goto_b2

    :cond_98
    const/16 v4, 0x58

    if-eq v9, v4, :cond_a8

    const/16 v4, 0x59

    if-eq v9, v4, :cond_a8

    if-ne v9, v10, :cond_a3

    goto :goto_a8

    .line 313
    :cond_a3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_a8
    :goto_a8
    const/16 v4, 0x7f

    goto :goto_b2

    :cond_ab
    if-lt v9, v11, :cond_b9

    if-gt v9, v10, :cond_b9

    add-int/lit8 v9, v9, -0x40

    :goto_b1
    int-to-char v4, v9

    .line 327
    :goto_b2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_b5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_b

    .line 291
    :cond_b9
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 334
    :cond_be
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static findAsteriskPattern(Lcom/google/zxing/common/BitArray;[I)[I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 179
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    const/4 v1, 0x0

    .line 180
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v2

    .line 185
    array-length v3, p1

    move v6, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_d
    if-ge v2, v0, :cond_5a

    .line 188
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v4, :cond_1c

    .line 189
    aget v7, p1, v5

    add-int/2addr v7, v8

    aput v7, p1, v5

    goto :goto_57

    :cond_1c
    add-int/lit8 v7, v3, -0x1

    if-ne v5, v7, :cond_51

    .line 193
    invoke-static {p1}, Lcom/google/zxing/oned/Code39Reader;->toNarrowWidePattern([I)I

    move-result v7

    const/16 v9, 0x94

    const/4 v10, 0x2

    if-ne v7, v9, :cond_3f

    sub-int v7, v2, v6

    div-int/2addr v7, v10

    sub-int v7, v6, v7

    .line 194
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7, v6, v1}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 195
    new-array p0, v10, [I

    aput v6, p0, v1

    aput v2, p0, v8

    return-object p0

    .line 197
    :cond_3f
    aget v7, p1, v1

    aget v9, p1, v8

    add-int/2addr v7, v9

    add-int/2addr v6, v7

    add-int/lit8 v7, v5, -0x1

    .line 198
    invoke-static {p1, v10, p1, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    aput v1, p1, v7

    .line 200
    aput v1, p1, v5

    add-int/lit8 v5, v5, -0x1

    goto :goto_53

    :cond_51
    add-int/lit8 v5, v5, 0x1

    .line 205
    :goto_53
    aput v8, p1, v5

    xor-int/lit8 v4, v4, 0x1

    :goto_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 209
    :cond_5a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    return-void
.end method

.method private static patternToChar(I)C
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 258
    :goto_1
    sget-object v1, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    array-length v2, v1

    if-ge v0, v2, :cond_14

    .line 259
    aget v1, v1, v0

    if-ne v1, p0, :cond_11

    const-string p0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

    .line 260
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    const/16 v0, 0x94

    if-ne p0, v0, :cond_1b

    const/16 p0, 0x2a

    return p0

    .line 266
    :cond_1b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    return-void
.end method

.method private static toNarrowWidePattern([I)I
    .registers 11

    .line 215
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    const v3, 0x7fffffff

    .line 220
    array-length v4, p0

    const/4 v3, 0x0

    const v5, 0x7fffffff

    :goto_b
    if-ge v3, v4, :cond_17

    aget v6, p0, v3

    if-ge v6, v5, :cond_14

    if-le v6, v2, :cond_14

    move v5, v6

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_17
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_1b
    if-ge v2, v0, :cond_2e

    .line 230
    aget v7, p0, v2

    if-le v7, v5, :cond_2b

    add-int/lit8 v8, v0, -0x1

    sub-int/2addr v8, v2

    const/4 v9, 0x1

    shl-int v8, v9, v8

    or-int/2addr v4, v8

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v6, v7

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_2e
    const/4 v2, 0x3

    const/4 v7, -0x1

    if-ne v3, v2, :cond_45

    :goto_32
    if-ge v1, v0, :cond_44

    if-lez v3, :cond_44

    .line 242
    aget v2, p0, v1

    if-le v2, v5, :cond_41

    add-int/lit8 v3, v3, -0x1

    shl-int/lit8 v2, v2, 0x1

    if-lt v2, v6, :cond_41

    return v7

    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_44
    return v4

    :cond_45
    if-gt v3, v2, :cond_48

    return v7

    :cond_48
    move v2, v5

    goto :goto_3
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 101
    iget-object p3, p0, Lcom/google/zxing/oned/Code39Reader;->counters:[I

    const/4 v0, 0x0

    .line 102
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([II)V

    .line 103
    iget-object v1, p0, Lcom/google/zxing/oned/Code39Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 106
    invoke-static {p2, p3}, Lcom/google/zxing/oned/Code39Reader;->findAsteriskPattern(Lcom/google/zxing/common/BitArray;[I)[I

    move-result-object v2

    const/4 v3, 0x1

    .line 108
    aget v4, v2, v3

    invoke-virtual {p2, v4}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v4

    .line 109
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    .line 114
    :goto_1a
    invoke-static {p2, v4, p3}, Lcom/google/zxing/oned/Code39Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 115
    invoke-static {p3}, Lcom/google/zxing/oned/Code39Reader;->toNarrowWidePattern([I)I

    move-result v6

    if-ltz v6, :cond_d3

    .line 119
    invoke-static {v6}, Lcom/google/zxing/oned/Code39Reader;->patternToChar(I)C

    move-result v6

    .line 120
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    array-length v7, p3

    move v9, v4

    const/4 v8, 0x0

    :goto_2d
    if-ge v8, v7, :cond_35

    aget v10, p3, v8

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_2d

    .line 126
    :cond_35
    invoke-virtual {p2, v9}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v7

    const/16 v8, 0x2a

    if-ne v6, v8, :cond_d0

    .line 128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 132
    array-length p2, p3

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_48
    if-ge v6, p2, :cond_50

    aget v9, p3, v6

    add-int/2addr v8, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_48

    :cond_50
    sub-int p2, v7, v4

    sub-int/2addr p2, v8

    if-eq v7, v5, :cond_5e

    shl-int/2addr p2, v3

    if-lt p2, v8, :cond_59

    goto :goto_5e

    .line 139
    :cond_59
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 142
    :cond_5e
    :goto_5e
    iget-boolean p2, p0, Lcom/google/zxing/oned/Code39Reader;->usingCheckDigit:Z

    if-eqz p2, :cond_90

    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    sub-int/2addr p2, v3

    const/4 p3, 0x0

    const/4 v5, 0x0

    :goto_69
    const-string v6, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

    if-ge p3, p2, :cond_7b

    .line 146
    iget-object v7, p0, Lcom/google/zxing/oned/Code39Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 p3, p3, 0x1

    goto :goto_69

    .line 148
    :cond_7b
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p3

    rem-int/lit8 v5, v5, 0x2b

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne p3, v5, :cond_8b

    .line 151
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_90

    .line 149
    :cond_8b
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object p1

    throw p1

    .line 154
    :cond_90
    :goto_90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-eqz p2, :cond_cb

    .line 160
    iget-boolean p2, p0, Lcom/google/zxing/oned/Code39Reader;->extendedMode:Z

    if-eqz p2, :cond_9f

    .line 161
    invoke-static {v1}, Lcom/google/zxing/oned/Code39Reader;->decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    goto :goto_a3

    .line 163
    :cond_9f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 166
    :goto_a3
    aget p3, v2, v3

    aget v1, v2, v0

    add-int/2addr p3, v1

    int-to-float p3, p3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p3, v1

    int-to-float v2, v4

    int-to-float v4, v8

    div-float/2addr v4, v1

    add-float/2addr v2, v4

    .line 168
    new-instance v1, Lcom/google/zxing/Result;

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/ResultPoint;

    new-instance v6, Lcom/google/zxing/ResultPoint;

    int-to-float p1, p1

    invoke-direct {v6, p3, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v6, v5, v0

    new-instance p3, Lcom/google/zxing/ResultPoint;

    invoke-direct {p3, v2, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p3, v5, v3

    sget-object p1, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v1, p2, v4, v5, p1}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v1

    .line 156
    :cond_cb
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    :cond_d0
    move v4, v7

    goto/16 :goto_1a

    .line 117
    :cond_d3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    return-void
.end method