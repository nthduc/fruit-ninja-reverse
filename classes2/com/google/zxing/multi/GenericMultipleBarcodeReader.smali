.class public final Lcom/google/zxing/multi/GenericMultipleBarcodeReader;
.super Ljava/lang/Object;
.source "GenericMultipleBarcodeReader.java"

# interfaces
.implements Lcom/google/zxing/multi/MultipleBarcodeReader;


# static fields
.field private static final MAX_DEPTH:I = 0x4

.field private static final MIN_DIMENSION_TO_RECUR:I = 0x64


# instance fields
.field private final delegate:Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>(Lcom/google/zxing/Reader;)V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->delegate:Lcom/google/zxing/Reader;

    return-void
.end method

.method private doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;",
            "Ljava/util/List<",
            "Lcom/google/zxing/Result;",
            ">;III)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    const/4 v1, 0x4

    if-le v10, v1, :cond_c

    return-void

    :cond_c
    move-object/from16 v11, p0

    .line 84
    :try_start_e
    iget-object v1, v11, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->delegate:Lcom/google/zxing/Reader;

    move-object/from16 v12, p2

    invoke-interface {v1, v0, v12}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v1
    :try_end_16
    .catch Lcom/google/zxing/ReaderException; {:try_start_e .. :try_end_16} :catch_108

    .line 89
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/Result;

    .line 90
    invoke-virtual {v3}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v2, 0x1

    goto :goto_37

    :cond_36
    const/4 v2, 0x0

    :goto_37
    if-nez v2, :cond_43

    .line 96
    invoke-static {v1, v8, v9}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->translateResultPoints(Lcom/google/zxing/Result;II)Lcom/google/zxing/Result;

    move-result-object v2

    move-object/from16 v15, p3

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_45

    :cond_43
    move-object/from16 v15, p3

    .line 98
    :goto_45
    invoke-virtual {v1}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v1

    if-eqz v1, :cond_108

    .line 99
    array-length v2, v1

    if-nez v2, :cond_50

    goto/16 :goto_108

    .line 102
    :cond_50
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getWidth()I

    move-result v7

    .line 103
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v6

    int-to-float v2, v7

    int-to-float v3, v6

    .line 108
    array-length v4, v1

    const/4 v5, 0x0

    move v5, v3

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v3, v2

    const/4 v2, 0x0

    :goto_61
    if-ge v2, v4, :cond_8a

    aget-object v16, v1, v2

    if-eqz v16, :cond_87

    .line 112
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v17

    .line 113
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v16

    cmpg-float v18, v17, v3

    if-gez v18, :cond_75

    move/from16 v3, v17

    :cond_75
    cmpg-float v18, v16, v5

    if-gez v18, :cond_7b

    move/from16 v5, v16

    :cond_7b
    cmpl-float v18, v17, v13

    if-lez v18, :cond_81

    move/from16 v13, v17

    :cond_81
    cmpl-float v17, v16, v14

    if-lez v17, :cond_87

    move/from16 v14, v16

    :cond_87
    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    :cond_8a
    const/high16 v16, 0x42c80000    # 100.0f

    cmpl-float v1, v3, v16

    if-lez v1, :cond_ac

    float-to-int v1, v3

    const/4 v2, 0x0

    .line 130
    invoke-virtual {v0, v2, v2, v1, v6}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v3

    add-int/lit8 v17, v10, 0x1

    move-object/from16 v1, p0

    move-object v2, v3

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move v11, v5

    move/from16 v5, p4

    move v12, v6

    move/from16 v6, p5

    move v15, v7

    move/from16 v7, v17

    invoke-direct/range {v1 .. v7}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    goto :goto_af

    :cond_ac
    move v11, v5

    move v12, v6

    move v15, v7

    :goto_af
    cmpl-float v1, v11, v16

    if-lez v1, :cond_c9

    float-to-int v1, v11

    const/4 v2, 0x0

    .line 137
    invoke-virtual {v0, v2, v2, v15, v1}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v3

    add-int/lit8 v7, v10, 0x1

    move-object/from16 v1, p0

    move-object v2, v3

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    :cond_c9
    add-int/lit8 v7, v15, -0x64

    int-to-float v1, v7

    cmpg-float v1, v13, v1

    if-gez v1, :cond_e8

    float-to-int v1, v13

    sub-int v7, v15, v1

    const/4 v2, 0x0

    .line 144
    invoke-virtual {v0, v1, v2, v7, v12}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v3

    add-int v5, v8, v1

    add-int/lit8 v7, v10, 0x1

    move-object/from16 v1, p0

    move-object v2, v3

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    :cond_e8
    add-int/lit8 v6, v12, -0x64

    int-to-float v1, v6

    cmpg-float v1, v14, v1

    if-gez v1, :cond_108

    float-to-int v1, v14

    sub-int v6, v12, v1

    const/4 v2, 0x0

    .line 151
    invoke-virtual {v0, v2, v1, v15, v6}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v2

    add-int v5, v9, v1

    const/4 v0, 0x1

    add-int/lit8 v6, v10, 0x1

    move-object/from16 v0, p0

    move-object v1, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    :catch_108
    :cond_108
    :goto_108
    return-void
.end method

.method private static translateResultPoints(Lcom/google/zxing/Result;II)Lcom/google/zxing/Result;
    .registers 13

    .line 159
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    if-nez v0, :cond_7

    return-object p0

    .line 163
    :cond_7
    array-length v1, v0

    new-array v6, v1, [Lcom/google/zxing/ResultPoint;

    const/4 v1, 0x0

    .line 164
    :goto_b
    array-length v2, v0

    if-ge v1, v2, :cond_28

    .line 165
    aget-object v2, v0, v1

    if-eqz v2, :cond_25

    .line 167
    new-instance v3, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    int-to-float v5, p1

    add-float/2addr v4, v5

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    int-to-float v5, p2

    add-float/2addr v2, v5

    invoke-direct {v3, v4, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v3, v6, v1

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 170
    :cond_28
    new-instance p1, Lcom/google/zxing/Result;

    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v3

    .line 171
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v4

    .line 172
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getNumBits()I

    move-result v5

    .line 174
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v7

    .line 175
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getTimestamp()J

    move-result-wide v8

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[BI[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;J)V

    .line 176
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V

    return-object p1
.end method


# virtual methods
.method public decodeMultiple(Lcom/google/zxing/BinaryBitmap;)[Lcom/google/zxing/Result;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;

    move-result-object p1

    return-object p1
.end method

.method public decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)[",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 64
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v7

    .line 65
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    .line 66
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_22

    .line 69
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/zxing/Result;

    invoke-interface {v7, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/zxing/Result;

    return-object p1

    .line 67
    :cond_22
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method
