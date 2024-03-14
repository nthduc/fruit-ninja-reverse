.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final AL:I = 0x1c

.field private static final AS:I = 0x1b

.field private static final BEGIN_MACRO_PDF417_CONTROL_BLOCK:I = 0x3a0

.field private static final BEGIN_MACRO_PDF417_OPTIONAL_FIELD:I = 0x39b

.field private static final BYTE_COMPACTION_MODE_LATCH:I = 0x385

.field private static final BYTE_COMPACTION_MODE_LATCH_6:I = 0x39c

.field private static final ECI_CHARSET:I = 0x39f

.field private static final ECI_GENERAL_PURPOSE:I = 0x39e

.field private static final ECI_USER_DEFINED:I = 0x39d

.field private static final EXP900:[Ljava/math/BigInteger;

.field private static final LL:I = 0x1b

.field private static final MACRO_PDF417_OPTIONAL_FIELD_ADDRESSEE:I = 0x4

.field private static final MACRO_PDF417_OPTIONAL_FIELD_CHECKSUM:I = 0x6

.field private static final MACRO_PDF417_OPTIONAL_FIELD_FILE_NAME:I = 0x0

.field private static final MACRO_PDF417_OPTIONAL_FIELD_FILE_SIZE:I = 0x5

.field private static final MACRO_PDF417_OPTIONAL_FIELD_SEGMENT_COUNT:I = 0x1

.field private static final MACRO_PDF417_OPTIONAL_FIELD_SENDER:I = 0x3

.field private static final MACRO_PDF417_OPTIONAL_FIELD_TIME_STAMP:I = 0x2

.field private static final MACRO_PDF417_TERMINATOR:I = 0x39a

.field private static final MAX_NUMERIC_CODEWORDS:I = 0xf

.field private static final MIXED_CHARS:[C

.field private static final ML:I = 0x1c

.field private static final MODE_SHIFT_TO_BYTE_COMPACTION_MODE:I = 0x391

.field private static final NUMBER_OF_SEQUENCE_CODEWORDS:I = 0x2

.field private static final NUMERIC_COMPACTION_MODE_LATCH:I = 0x386

.field private static final PAL:I = 0x1d

.field private static final PL:I = 0x19

.field private static final PS:I = 0x1d

.field private static final PUNCT_CHARS:[C

.field private static final TEXT_COMPACTION_MODE_LATCH:I = 0x384


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}\'"

    .line 77
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    const-string v0, "0123456789&\r\t,:#-.$/+%*=^"

    .line 80
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    const/16 v0, 0x10

    .line 89
    new-array v0, v0, [Ljava/math/BigInteger;

    .line 90
    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-wide/16 v0, 0x384

    .line 91
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 92
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v1, 0x2

    .line 93
    :goto_27
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    array-length v3, v2

    if-ge v1, v3, :cond_39

    add-int/lit8 v3, v1, -0x1

    .line 94
    aget-object v3, v2, v3

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_39
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I
    .registers 21

    move/from16 v0, p0

    .line 524
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x385

    const-wide/16 v3, 0x384

    const/16 v5, 0x3a0

    const/16 v6, 0x384

    const/4 v7, 0x6

    const/4 v10, 0x0

    if-eq v0, v2, :cond_59

    const/16 v2, 0x39c

    if-eq v0, v2, :cond_1b

    move/from16 v0, p3

    goto/16 :goto_c9

    :cond_1b
    move/from16 v0, p3

    const/4 v2, 0x0

    :cond_1e
    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    .line 584
    :cond_21
    aget v15, p1, v10

    if-ge v0, v15, :cond_c9

    if-nez v2, :cond_c9

    add-int/lit8 v15, v0, 0x1

    .line 585
    aget v0, p1, v0

    if-ge v0, v6, :cond_34

    add-int/lit8 v12, v12, 0x1

    mul-long v13, v13, v3

    int-to-long v8, v0

    add-long/2addr v13, v8

    goto :goto_3c

    :cond_34
    if-eq v0, v5, :cond_3e

    packed-switch v0, :pswitch_data_da

    packed-switch v0, :pswitch_data_e4

    :goto_3c
    move v0, v15

    goto :goto_42

    :cond_3e
    :pswitch_3e
    add-int/lit8 v15, v15, -0x1

    move v0, v15

    const/4 v2, 0x1

    .line 604
    :goto_42
    rem-int/lit8 v8, v12, 0x5

    if-nez v8, :cond_21

    if-lez v12, :cond_21

    const/4 v8, 0x0

    :goto_49
    if-ge v8, v7, :cond_1e

    rsub-int/lit8 v9, v8, 0x5

    mul-int/lit8 v9, v9, 0x8

    shr-long v11, v13, v9

    long-to-int v9, v11

    int-to-byte v9, v9

    .line 608
    invoke-virtual {v1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_49

    .line 534
    :cond_59
    new-array v0, v7, [I

    add-int/lit8 v2, p3, 0x1

    .line 535
    aget v8, p1, p3

    move v9, v8

    const/4 v8, 0x0

    :goto_61
    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    .line 536
    :goto_64
    aget v14, p1, v10

    if-ge v2, v14, :cond_b2

    if-nez v8, :cond_b2

    add-int/lit8 v14, v11, 0x1

    .line 537
    aput v9, v0, v11

    mul-long v12, v12, v3

    int-to-long v3, v9

    add-long/2addr v12, v3

    add-int/lit8 v3, v2, 0x1

    .line 540
    aget v9, p1, v2

    if-eq v9, v5, :cond_aa

    packed-switch v9, :pswitch_data_ee

    packed-switch v9, :pswitch_data_f8

    .line 554
    rem-int/lit8 v2, v14, 0x5

    if-nez v2, :cond_a0

    if-lez v14, :cond_a0

    const/4 v2, 0x0

    :goto_85
    if-ge v2, v7, :cond_9a

    rsub-int/lit8 v4, v2, 0x5

    mul-int/lit8 v4, v4, 0x8

    move/from16 p0, v8

    shr-long v7, v12, v4

    long-to-int v4, v7

    int-to-byte v4, v4

    .line 558
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    const/4 v7, 0x6

    move/from16 v8, p0

    goto :goto_85

    :cond_9a
    move/from16 p0, v8

    move v2, v3

    const-wide/16 v3, 0x384

    goto :goto_61

    :cond_a0
    move/from16 p0, v8

    move/from16 v8, p0

    move v2, v3

    move v11, v14

    const-wide/16 v3, 0x384

    const/4 v7, 0x6

    goto :goto_64

    :cond_aa
    :pswitch_aa
    add-int/lit8 v2, v3, -0x1

    move v11, v14

    const-wide/16 v3, 0x384

    const/4 v7, 0x6

    const/4 v8, 0x1

    goto :goto_64

    .line 568
    :cond_b2
    aget v3, p1, v10

    if-ne v2, v3, :cond_bd

    if-ge v9, v6, :cond_bd

    add-int/lit8 v3, v11, 0x1

    .line 569
    aput v9, v0, v11

    move v11, v3

    :cond_bd
    :goto_bd
    if-ge v10, v11, :cond_c8

    .line 576
    aget v3, v0, v10

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_bd

    :cond_c8
    move v0, v2

    .line 616
    :cond_c9
    :goto_c9
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    move-object/from16 v3, p2

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object/from16 v1, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v0

    :pswitch_data_da
    .packed-switch 0x384
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
    .end packed-switch

    :pswitch_data_e4
    .packed-switch 0x39a
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
    .end packed-switch

    :pswitch_data_ee
    .packed-switch 0x384
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
    .end packed-switch

    :pswitch_data_f8
    .packed-switch 0x39a
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
    .end packed-switch
.end method

.method static decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 105
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 108
    aget v2, p0, v2

    .line 109
    new-instance v3, Lcom/google/zxing/pdf417/PDF417ResultMetadata;

    invoke-direct {v3}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;-><init>()V

    const/4 v4, 0x2

    :goto_12
    const/4 v5, 0x0

    .line 110
    aget v5, p0, v5

    if-ge v4, v5, :cond_6d

    const/16 v5, 0x391

    if-eq v2, v5, :cond_58

    packed-switch v2, :pswitch_data_88

    packed-switch v2, :pswitch_data_92

    add-int/lit8 v4, v4, -0x1

    .line 150
    invoke-static {p0, v4, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_60

    .line 139
    :pswitch_28
    invoke-static {p0, v4, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I

    move-result v2

    goto :goto_60

    :pswitch_2d
    add-int/lit8 v2, v4, 0x1

    .line 126
    aget v1, p0, v4

    .line 127
    invoke-static {v1}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v1

    .line 128
    invoke-virtual {v1}, Lcom/google/zxing/common/CharacterSetECI;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    goto :goto_60

    :pswitch_3e
    add-int/lit8 v2, v4, 0x2

    goto :goto_60

    :pswitch_41
    add-int/lit8 v2, v4, 0x1

    goto :goto_60

    .line 144
    :pswitch_44
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 123
    :pswitch_49
    invoke-static {p0, v4, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_60

    .line 117
    :pswitch_4e
    invoke-static {v2, p0, v1, v4, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_60

    .line 113
    :pswitch_53
    invoke-static {p0, v4, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_60

    :cond_58
    add-int/lit8 v2, v4, 0x1

    .line 120
    aget v4, p0, v4

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    :goto_60
    array-length v4, p0

    if-ge v2, v4, :cond_68

    add-int/lit8 v4, v2, 0x1

    .line 154
    aget v2, p0, v2

    goto :goto_12

    .line 156
    :cond_68
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 159
    :cond_6d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-eqz p0, :cond_81

    .line 162
    new-instance p0, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1, p1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0, v3}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V

    return-object p0

    .line 160
    :cond_81
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    return-void

    nop

    :pswitch_data_88
    .packed-switch 0x384
        :pswitch_53
        :pswitch_4e
        :pswitch_49
    .end packed-switch

    :pswitch_data_92
    .packed-switch 0x39a
        :pswitch_44
        :pswitch_44
        :pswitch_4e
        :pswitch_41
        :pswitch_3e
        :pswitch_2d
        :pswitch_28
    .end packed-switch
.end method

.method private static decodeBase900toBase10([II)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 711
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v1, 0x0

    move-object v2, v0

    const/4 v0, 0x0

    :goto_5
    const/4 v3, 0x1

    if-ge v0, p1, :cond_21

    .line 713
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sub-int v5, p1, v0

    sub-int/2addr v5, v3

    aget-object v3, v4, v5

    aget v4, p0, v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 715
    :cond_21
    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    .line 716
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x31

    if-ne p1, v0, :cond_32

    .line 719
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 717
    :cond_32
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    return-void
.end method

.method static decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    .line 169
    aget v2, p0, v1

    if-gt v0, v2, :cond_10f

    const/4 v0, 0x2

    .line 173
    new-array v2, v0, [I

    move v3, p1

    const/4 p1, 0x0

    :goto_c
    if-ge p1, v0, :cond_17

    .line 175
    aget v4, p0, v3

    aput v4, v2, p1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 177
    :cond_17
    invoke-static {v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentIndex(I)V

    .line 180
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    invoke-static {p0, v3, p1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v0

    .line 182
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileId(Ljava/lang/String;)V

    .line 185
    aget p1, p0, v0

    const/16 v2, 0x39b

    const/4 v3, -0x1

    if-ne p1, v2, :cond_3c

    add-int/lit8 p1, v0, 0x1

    goto :goto_3d

    :cond_3c
    const/4 p1, -0x1

    .line 189
    :goto_3d
    aget v4, p0, v1

    if-ge v0, v4, :cond_fa

    .line 190
    aget v4, p0, v0

    const/16 v5, 0x39a

    if-eq v4, v5, :cond_f2

    if-ne v4, v2, :cond_ed

    add-int/lit8 v0, v0, 0x1

    .line 193
    aget v4, p0, v0

    packed-switch v4, :pswitch_data_116

    .line 230
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 220
    :pswitch_55
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    .line 221
    invoke-static {p0, v0, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result v0

    .line 222
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setChecksum(I)V

    goto :goto_3d

    .line 225
    :pswitch_6c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    .line 226
    invoke-static {p0, v0, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result v0

    .line 227
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileSize(J)V

    goto :goto_3d

    .line 205
    :pswitch_83
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    .line 206
    invoke-static {p0, v0, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v0

    .line 207
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setAddressee(Ljava/lang/String;)V

    goto :goto_3d

    .line 200
    :pswitch_96
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    .line 201
    invoke-static {p0, v0, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v0

    .line 202
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSender(Ljava/lang/String;)V

    goto :goto_3d

    .line 215
    :pswitch_a9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    .line 216
    invoke-static {p0, v0, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result v0

    .line 217
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setTimestamp(J)V

    goto/16 :goto_3d

    .line 210
    :pswitch_c1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    .line 211
    invoke-static {p0, v0, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result v0

    .line 212
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentCount(I)V

    goto/16 :goto_3d

    .line 195
    :pswitch_d9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    .line 196
    invoke-static {p0, v0, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v0

    .line 197
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileName(Ljava/lang/String;)V

    goto/16 :goto_3d

    .line 238
    :cond_ed
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_f2
    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x1

    .line 235
    invoke-virtual {p2, v4}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    goto/16 :goto_3d

    :cond_fa
    if-eq p1, v3, :cond_10e

    sub-int v1, v0, p1

    .line 245
    invoke-virtual {p2}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->isLastSegment()Z

    move-result v2

    if-eqz v2, :cond_106

    add-int/lit8 v1, v1, -0x1

    :cond_106
    add-int/2addr v1, p1

    .line 249
    invoke-static {p0, p1, v1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setOptionalData([I)V

    :cond_10e
    return v0

    .line 171
    :cond_10f
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    return-void

    nop

    :pswitch_data_116
    .packed-switch 0x0
        :pswitch_d9
        :pswitch_c1
        :pswitch_a9
        :pswitch_96
        :pswitch_83
        :pswitch_6c
        :pswitch_55
    .end packed-switch
.end method

.method private static decodeTextCompaction([I[IILjava/lang/StringBuilder;)V
    .registers 16

    .line 337
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 338
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    const/4 v2, 0x0

    move-object v3, v1

    move-object v1, v0

    const/4 v0, 0x0

    :goto_8
    if-ge v0, p2, :cond_f4

    .line 341
    aget v4, p0, v0

    .line 343
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/16 v6, 0x20

    const/16 v7, 0x1d

    const/16 v8, 0x1a

    const/16 v9, 0x391

    const/16 v10, 0x384

    packed-switch v5, :pswitch_data_f6

    goto/16 :goto_ea

    :pswitch_23
    if-ge v4, v7, :cond_2a

    .line 481
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v1, v1, v4

    goto :goto_47

    :cond_2a
    if-eq v4, v7, :cond_3e

    if-eq v4, v10, :cond_3a

    if-eq v4, v9, :cond_31

    goto :goto_37

    .line 490
    :cond_31
    aget v1, p1, v0

    int-to-char v1, v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_37
    move-object v1, v3

    goto/16 :goto_ea

    .line 493
    :cond_3a
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_ea

    .line 485
    :cond_3e
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_ea

    :pswitch_42
    if-ge v4, v8, :cond_4b

    add-int/lit8 v4, v4, 0x41

    int-to-char v1, v4

    :goto_47
    move v4, v1

    move-object v1, v3

    goto/16 :goto_eb

    :cond_4b
    if-eq v4, v8, :cond_54

    if-eq v4, v10, :cond_50

    goto :goto_37

    .line 471
    :cond_50
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_ea

    :cond_54
    move-object v1, v3

    goto/16 :goto_de

    :pswitch_57
    if-ge v4, v7, :cond_5f

    .line 444
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v4, v5, v4

    goto/16 :goto_eb

    :cond_5f
    if-eq v4, v7, :cond_73

    if-eq v4, v10, :cond_6f

    if-eq v4, v9, :cond_67

    goto/16 :goto_ea

    .line 451
    :cond_67
    aget v4, p1, v0

    int-to-char v4, v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_ea

    .line 454
    :cond_6f
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_ea

    .line 448
    :cond_73
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_ea

    :pswitch_77
    const/16 v5, 0x19

    if-ge v4, v5, :cond_81

    .line 411
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    aget-char v4, v5, v4

    goto/16 :goto_eb

    :cond_81
    if-eq v4, v10, :cond_a0

    if-eq v4, v9, :cond_99

    packed-switch v4, :pswitch_data_106

    goto/16 :goto_ea

    .line 429
    :pswitch_8a
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_d3

    .line 424
    :pswitch_8d
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_ea

    .line 421
    :pswitch_91
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_ea

    .line 415
    :pswitch_95
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_ea

    .line 432
    :cond_99
    aget v4, p1, v0

    int-to-char v4, v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_ea

    .line 435
    :cond_a0
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_ea

    :pswitch_a3
    if-ge v4, v8, :cond_a8

    add-int/lit8 v4, v4, 0x61

    goto :goto_c7

    :cond_a8
    if-eq v4, v10, :cond_c0

    if-eq v4, v9, :cond_b9

    packed-switch v4, :pswitch_data_114

    goto :goto_ea

    .line 395
    :pswitch_b0
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_d3

    .line 390
    :pswitch_b3
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_ea

    .line 387
    :pswitch_b6
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_d3

    .line 399
    :cond_b9
    aget v4, p1, v0

    int-to-char v4, v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_ea

    .line 402
    :cond_c0
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_ea

    :pswitch_c3
    if-ge v4, v8, :cond_c9

    add-int/lit8 v4, v4, 0x41

    :goto_c7
    int-to-char v4, v4

    goto :goto_eb

    :cond_c9
    if-eq v4, v10, :cond_e8

    if-eq v4, v9, :cond_e1

    packed-switch v4, :pswitch_data_120

    goto :goto_ea

    .line 363
    :pswitch_d1
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    :goto_d3
    const/4 v4, 0x0

    move-object v11, v3

    move-object v3, v1

    move-object v1, v11

    goto :goto_eb

    .line 358
    :pswitch_d8
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_ea

    .line 355
    :pswitch_db
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_ea

    :goto_de
    :pswitch_de
    const/16 v4, 0x20

    goto :goto_eb

    .line 366
    :cond_e1
    aget v4, p1, v0

    int-to-char v4, v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_ea

    .line 369
    :cond_e8
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    :goto_ea
    const/4 v4, 0x0

    :goto_eb
    if-eqz v4, :cond_f0

    .line 501
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_f0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    :cond_f4
    return-void

    nop

    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_c3
        :pswitch_a3
        :pswitch_77
        :pswitch_57
        :pswitch_42
        :pswitch_23
    .end packed-switch

    :pswitch_data_106
    .packed-switch 0x19
        :pswitch_95
        :pswitch_de
        :pswitch_91
        :pswitch_8d
        :pswitch_8a
    .end packed-switch

    :pswitch_data_114
    .packed-switch 0x1a
        :pswitch_de
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
    .end packed-switch

    :pswitch_data_120
    .packed-switch 0x1a
        :pswitch_de
        :pswitch_db
        :pswitch_d8
        :pswitch_d1
    .end packed-switch
.end method

.method private static numericCompaction([IILjava/lang/StringBuilder;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/16 v0, 0xf

    .line 632
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 634
    :goto_7
    aget v4, p0, v1

    if-ge p1, v4, :cond_47

    if-nez v2, :cond_47

    add-int/lit8 v4, p1, 0x1

    .line 635
    aget p1, p0, p1

    .line 636
    aget v5, p0, v1

    const/4 v6, 0x1

    if-ne v4, v5, :cond_17

    const/4 v2, 0x1

    :cond_17
    const/16 v5, 0x384

    if-ge p1, v5, :cond_20

    .line 640
    aput p1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :cond_20
    if-eq p1, v5, :cond_2e

    const/16 v5, 0x385

    if-eq p1, v5, :cond_2e

    const/16 v5, 0x3a0

    if-eq p1, v5, :cond_2e

    packed-switch p1, :pswitch_data_48

    goto :goto_31

    :cond_2e
    :pswitch_2e
    add-int/lit8 v4, v4, -0x1

    const/4 v2, 0x1

    .line 655
    :goto_31
    rem-int/lit8 v5, v3, 0xf

    if-eqz v5, :cond_3b

    const/16 v5, 0x386

    if-eq p1, v5, :cond_3b

    if-eqz v2, :cond_45

    :cond_3b
    if-lez v3, :cond_45

    .line 660
    invoke-static {v0, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :cond_45
    move p1, v4

    goto :goto_7

    :cond_47
    return p1

    :pswitch_data_48
    .packed-switch 0x39a
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
    .end packed-switch
.end method

.method private static textCompaction([IILjava/lang/StringBuilder;)I
    .registers 12

    const/4 v0, 0x0

    .line 267
    aget v1, p0, v0

    sub-int/2addr v1, p1

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    new-array v1, v1, [I

    .line 269
    aget v3, p0, v0

    sub-int/2addr v3, p1

    shl-int/2addr v3, v2

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 273
    :goto_10
    aget v6, p0, v0

    if-ge p1, v6, :cond_50

    if-nez v4, :cond_50

    add-int/lit8 v6, p1, 0x1

    .line 274
    aget p1, p0, p1

    const/16 v7, 0x384

    if-ge p1, v7, :cond_2c

    .line 276
    div-int/lit8 v7, p1, 0x1e

    aput v7, v1, v5

    add-int/lit8 v7, v5, 0x1

    .line 277
    rem-int/lit8 p1, p1, 0x1e

    aput p1, v1, v7

    add-int/lit8 v5, v5, 0x2

    :goto_2a
    move p1, v6

    goto :goto_10

    :cond_2c
    const/16 v8, 0x391

    if-eq p1, v8, :cond_45

    const/16 v8, 0x3a0

    if-eq p1, v8, :cond_41

    packed-switch p1, :pswitch_data_54

    packed-switch p1, :pswitch_data_5e

    goto :goto_2a

    :pswitch_3b
    add-int/lit8 p1, v5, 0x1

    .line 283
    aput v7, v1, v5

    move v5, p1

    goto :goto_2a

    :cond_41
    :pswitch_41
    add-int/lit8 p1, v6, -0x1

    const/4 v4, 0x1

    goto :goto_10

    .line 301
    :cond_45
    aput v8, v1, v5

    add-int/lit8 p1, v6, 0x1

    .line 302
    aget v6, p0, v6

    .line 303
    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 309
    :cond_50
    invoke-static {v1, v3, v5, p2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILjava/lang/StringBuilder;)V

    return p1

    :pswitch_data_54
    .packed-switch 0x384
        :pswitch_3b
        :pswitch_41
        :pswitch_41
    .end packed-switch

    :pswitch_data_5e
    .packed-switch 0x39a
        :pswitch_41
        :pswitch_41
        :pswitch_41
    .end packed-switch
.end method
