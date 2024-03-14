.class public final Lcom/google/zxing/common/HybridBinarizer;
.super Lcom/google/zxing/common/GlobalHistogramBinarizer;
.source "HybridBinarizer.java"


# static fields
.field private static final BLOCK_SIZE:I = 0x8

.field private static final BLOCK_SIZE_MASK:I = 0x7

.field private static final BLOCK_SIZE_POWER:I = 0x3

.field private static final MINIMUM_DIMENSION:I = 0x28

.field private static final MIN_DYNAMIC_RANGE:I = 0x18


# instance fields
.field private matrix:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method public constructor <init>(Lcom/google/zxing/LuminanceSource;)V
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lcom/google/zxing/common/GlobalHistogramBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    return-void
.end method

.method private static calculateBlackPoints([BIIII)[[I
    .registers 23

    move/from16 v0, p1

    move/from16 v1, p2

    const/16 v2, 0x8

    add-int/lit8 v3, p4, -0x8

    add-int/lit8 v4, p3, -0x8

    .line 168
    filled-new-array {v1, v0}, [I

    move-result-object v5

    const-class v6, I

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    const/4 v7, 0x0

    :goto_17
    if-ge v7, v1, :cond_a2

    shl-int/lit8 v8, v7, 0x3

    if-le v8, v3, :cond_1e

    move v8, v3

    :cond_1e
    const/4 v9, 0x0

    :goto_1f
    if-ge v9, v0, :cond_9e

    shl-int/lit8 v10, v9, 0x3

    if-le v10, v4, :cond_26

    move v10, v4

    :cond_26
    mul-int v11, v8, p3

    add-int/2addr v11, v10

    const/16 v10, 0xff

    move v15, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xff

    :goto_31
    const/16 v6, 0x18

    if-ge v11, v2, :cond_73

    move/from16 v16, v12

    const/4 v12, 0x0

    :goto_38
    if-ge v12, v2, :cond_4c

    add-int v17, v15, v12

    .line 184
    aget-byte v2, p0, v17

    and-int/2addr v2, v10

    add-int v16, v16, v2

    if-ge v2, v14, :cond_44

    move v14, v2

    :cond_44
    if-le v2, v13, :cond_47

    move v13, v2

    :cond_47
    add-int/lit8 v12, v12, 0x1

    const/16 v2, 0x8

    goto :goto_38

    :cond_4c
    sub-int v2, v13, v14

    if-le v2, v6, :cond_6a

    add-int/lit8 v11, v11, 0x1

    add-int v15, v15, p3

    const/16 v2, 0x8

    :goto_56
    if-ge v11, v2, :cond_6c

    const/4 v6, 0x0

    :goto_59
    if-ge v6, v2, :cond_65

    add-int v12, v15, v6

    .line 199
    aget-byte v12, p0, v12

    and-int/2addr v12, v10

    add-int v16, v16, v12

    add-int/lit8 v6, v6, 0x1

    goto :goto_59

    :cond_65
    add-int/lit8 v11, v11, 0x1

    add-int v15, v15, p3

    goto :goto_56

    :cond_6a
    const/16 v2, 0x8

    :cond_6c
    move/from16 v12, v16

    add-int/lit8 v11, v11, 0x1

    add-int v15, v15, p3

    goto :goto_31

    :cond_73
    shr-int/lit8 v10, v12, 0x6

    sub-int/2addr v13, v14

    if-gt v13, v6, :cond_97

    .line 214
    div-int/lit8 v10, v14, 0x2

    if-lez v7, :cond_97

    if-lez v9, :cond_97

    add-int/lit8 v6, v7, -0x1

    .line 224
    aget-object v11, v5, v6

    aget v11, v11, v9

    aget-object v12, v5, v7

    add-int/lit8 v13, v9, -0x1

    aget v12, v12, v13

    mul-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    aget-object v6, v5, v6

    aget v6, v6, v13

    add-int/2addr v11, v6

    div-int/lit8 v6, v11, 0x4

    if-ge v14, v6, :cond_97

    move v10, v6

    .line 231
    :cond_97
    aget-object v6, v5, v7

    aput v10, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1f

    :cond_9e
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_17

    :cond_a2
    return-object v5
.end method

.method private static calculateThresholdForBlock([BIIII[[ILcom/google/zxing/common/BitMatrix;)V
    .registers 24

    move/from16 v0, p1

    move/from16 v1, p2

    add-int/lit8 v2, p4, -0x8

    add-int/lit8 v9, p3, -0x8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_a
    if-ge v11, v1, :cond_61

    shl-int/lit8 v3, v11, 0x3

    if-le v3, v2, :cond_12

    move v12, v2

    goto :goto_13

    :cond_12
    move v12, v3

    :goto_13
    add-int/lit8 v3, v1, -0x3

    const/4 v13, 0x2

    .line 115
    invoke-static {v11, v13, v3}, Lcom/google/zxing/common/HybridBinarizer;->cap(III)I

    move-result v14

    const/4 v15, 0x0

    :goto_1b
    if-ge v15, v0, :cond_5e

    shl-int/lit8 v3, v15, 0x3

    if-le v3, v9, :cond_23

    move v4, v9

    goto :goto_24

    :cond_23
    move v4, v3

    :goto_24
    add-int/lit8 v3, v0, -0x3

    .line 121
    invoke-static {v15, v13, v3}, Lcom/google/zxing/common/HybridBinarizer;->cap(III)I

    move-result v3

    const/4 v5, -0x2

    const/4 v6, 0x0

    :goto_2c
    if-gt v5, v13, :cond_4f

    add-int v7, v14, v5

    .line 124
    aget-object v7, p5, v7

    add-int/lit8 v8, v3, -0x2

    .line 125
    aget v8, v7, v8

    add-int/lit8 v16, v3, -0x1

    aget v16, v7, v16

    add-int v8, v8, v16

    aget v16, v7, v3

    add-int v8, v8, v16

    add-int/lit8 v16, v3, 0x1

    aget v16, v7, v16

    add-int v8, v8, v16

    add-int/lit8 v16, v3, 0x2

    aget v7, v7, v16

    add-int/2addr v8, v7

    add-int/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    .line 127
    :cond_4f
    div-int/lit8 v6, v6, 0x19

    move-object/from16 v3, p0

    move v5, v12

    move/from16 v7, p3

    move-object/from16 v8, p6

    .line 128
    invoke-static/range {v3 .. v8}, Lcom/google/zxing/common/HybridBinarizer;->thresholdBlock([BIIIILcom/google/zxing/common/BitMatrix;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_1b

    :cond_5e
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_61
    return-void
.end method

.method private static cap(III)I
    .registers 3

    if-ge p0, p1, :cond_3

    return p1

    :cond_3
    if-le p0, p2, :cond_6

    return p2

    :cond_6
    return p0
.end method

.method private static thresholdBlock([BIIIILcom/google/zxing/common/BitMatrix;)V
    .registers 13

    mul-int v0, p2, p4

    add-int/2addr v0, p1

    const/4 v1, 0x0

    move v2, v0

    const/4 v0, 0x0

    :goto_6
    const/16 v3, 0x8

    if-ge v0, v3, :cond_23

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v3, :cond_1f

    add-int v5, v2, v4

    .line 149
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    if-gt v5, p3, :cond_1c

    add-int v5, p1, v4

    add-int v6, p2, v0

    .line 150
    invoke-virtual {p5, v5, v6}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    add-int/2addr v2, p4

    goto :goto_6

    :cond_23
    return-void
.end method


# virtual methods
.method public createBinarizer(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Binarizer;
    .registers 3

    .line 93
    new-instance v0, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v0, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    return-object v0
.end method

.method public getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    if-eqz v0, :cond_5

    return-object v0

    .line 66
    :cond_5
    invoke-virtual {p0}, Lcom/google/zxing/common/HybridBinarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v4

    .line 68
    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v5

    const/16 v1, 0x28

    if-lt v4, v1, :cond_3d

    if-lt v5, v1, :cond_3d

    .line 70
    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getMatrix()[B

    move-result-object v1

    shr-int/lit8 v0, v4, 0x3

    and-int/lit8 v2, v4, 0x7

    if-eqz v2, :cond_23

    add-int/lit8 v0, v0, 0x1

    :cond_23
    move v2, v0

    shr-int/lit8 v0, v5, 0x3

    and-int/lit8 v3, v5, 0x7

    if-eqz v3, :cond_2c

    add-int/lit8 v0, v0, 0x1

    :cond_2c
    move v3, v0

    .line 79
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/zxing/common/HybridBinarizer;->calculateBlackPoints([BIIII)[[I

    move-result-object v6

    .line 81
    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v0, v4, v5}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    move-object v7, v0

    .line 82
    invoke-static/range {v1 .. v7}, Lcom/google/zxing/common/HybridBinarizer;->calculateThresholdForBlock([BIIII[[ILcom/google/zxing/common/BitMatrix;)V

    .line 83
    iput-object v0, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    goto :goto_43

    .line 86
    :cond_3d
    invoke-super {p0}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    .line 88
    :goto_43
    iget-object v0, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    return-object v0
.end method
