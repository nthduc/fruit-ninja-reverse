.class final Lcom/google/protobuf/Utf8$UnsafeProcessor;
.super Lcom/google/protobuf/Utf8$Processor;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnsafeProcessor"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 990
    invoke-direct {p0}, Lcom/google/protobuf/Utf8$Processor;-><init>()V

    return-void
.end method

.method static isAvailable()Z
    .registers 1

    .line 995
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->hasUnsafeArrayOperations()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->hasUnsafeByteBufferOperations()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static partialIsValidUtf8(JI)I
    .registers 11

    .line 1459
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->unsafeEstimateConsecutiveAscii(JI)I

    move-result v0

    int-to-long v1, v0

    add-long/2addr p0, v1

    sub-int/2addr p2, v0

    :goto_7
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_9
    const-wide/16 v2, 0x1

    if-lez p2, :cond_1a

    add-long v4, p0, v2

    .line 1468
    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    if-ltz v1, :cond_19

    add-int/lit8 p2, p2, -0x1

    move-wide p0, v4

    goto :goto_9

    :cond_19
    move-wide p0, v4

    :cond_1a
    if-nez p2, :cond_1d

    return v0

    :cond_1d
    add-int/lit8 p2, p2, -0x1

    const/16 v0, -0x20

    const/16 v4, -0x41

    const/4 v5, -0x1

    if-ge v1, v0, :cond_3a

    if-nez p2, :cond_29

    return v1

    :cond_29
    add-int/lit8 p2, p2, -0x1

    const/16 v0, -0x3e

    if-lt v1, v0, :cond_39

    add-long/2addr v2, p0

    .line 1486
    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    if-le p0, v4, :cond_37

    goto :goto_39

    :cond_37
    move-wide p0, v2

    goto :goto_7

    :cond_39
    :goto_39
    return v5

    :cond_3a
    const/16 v6, -0x10

    if-ge v1, v6, :cond_64

    const/4 v6, 0x2

    if-ge p2, v6, :cond_46

    .line 1494
    invoke-static {p0, p1, v1, p2}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor(JII)I

    move-result p0

    return p0

    :cond_46
    add-int/lit8 p2, p2, -0x2

    add-long v6, p0, v2

    .line 1498
    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    if-gt p0, v4, :cond_63

    const/16 p1, -0x60

    if-ne v1, v0, :cond_56

    if-lt p0, p1, :cond_63

    :cond_56
    const/16 v0, -0x13

    if-ne v1, v0, :cond_5c

    if-ge p0, p1, :cond_63

    :cond_5c
    add-long/2addr v2, v6

    .line 1505
    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    if-le p0, v4, :cond_37

    :cond_63
    return v5

    :cond_64
    const/4 v0, 0x3

    if-ge p2, v0, :cond_6c

    .line 1513
    invoke-static {p0, p1, v1, p2}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor(JII)I

    move-result p0

    return p0

    :cond_6c
    add-int/lit8 p2, p2, -0x3

    add-long v6, p0, v2

    .line 1517
    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    if-gt p0, v4, :cond_8e

    shl-int/lit8 p1, v1, 0x1c

    add-int/lit8 p0, p0, 0x70

    add-int/2addr p1, p0

    shr-int/lit8 p0, p1, 0x1e

    if-nez p0, :cond_8e

    add-long p0, v6, v2

    .line 1525
    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    if-gt v0, v4, :cond_8e

    add-long/2addr v2, p0

    .line 1527
    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    if-le p0, v4, :cond_37

    :cond_8e
    return v5
.end method

.method private static partialIsValidUtf8([BJI)I
    .registers 12

    .line 1383
    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->unsafeEstimateConsecutiveAscii([BJI)I

    move-result v0

    sub-int/2addr p3, v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    :goto_7
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_9
    const-wide/16 v2, 0x1

    if-lez p3, :cond_1a

    add-long v4, p1, v2

    .line 1392
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v1

    if-ltz v1, :cond_19

    add-int/lit8 p3, p3, -0x1

    move-wide p1, v4

    goto :goto_9

    :cond_19
    move-wide p1, v4

    :cond_1a
    if-nez p3, :cond_1d

    return v0

    :cond_1d
    add-int/lit8 p3, p3, -0x1

    const/16 v0, -0x20

    const/16 v4, -0x41

    const/4 v5, -0x1

    if-ge v1, v0, :cond_3a

    if-nez p3, :cond_29

    return v1

    :cond_29
    add-int/lit8 p3, p3, -0x1

    const/16 v0, -0x3e

    if-lt v1, v0, :cond_39

    add-long/2addr v2, p1

    .line 1411
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v4, :cond_37

    goto :goto_39

    :cond_37
    move-wide p1, v2

    goto :goto_7

    :cond_39
    :goto_39
    return v5

    :cond_3a
    const/16 v6, -0x10

    if-ge v1, v6, :cond_64

    const/4 v6, 0x2

    if-ge p3, v6, :cond_46

    .line 1418
    invoke-static {p0, v1, p1, p2, p3}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor([BIJI)I

    move-result p0

    return p0

    :cond_46
    add-int/lit8 p3, p3, -0x2

    add-long v6, p1, v2

    .line 1423
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-gt p1, v4, :cond_63

    const/16 p2, -0x60

    if-ne v1, v0, :cond_56

    if-lt p1, p2, :cond_63

    :cond_56
    const/16 v0, -0x13

    if-ne v1, v0, :cond_5c

    if-ge p1, p2, :cond_63

    :cond_5c
    add-long/2addr v2, v6

    .line 1429
    invoke-static {p0, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v4, :cond_37

    :cond_63
    return v5

    :cond_64
    const/4 v0, 0x3

    if-ge p3, v0, :cond_6c

    .line 1436
    invoke-static {p0, v1, p1, p2, p3}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor([BIJI)I

    move-result p0

    return p0

    :cond_6c
    add-int/lit8 p3, p3, -0x3

    add-long v6, p1, v2

    .line 1441
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-gt p1, v4, :cond_8e

    shl-int/lit8 p2, v1, 0x1c

    add-int/lit8 p1, p1, 0x70

    add-int/2addr p2, p1

    shr-int/lit8 p1, p2, 0x1e

    if-nez p1, :cond_8e

    add-long p1, v6, v2

    .line 1448
    invoke-static {p0, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v0

    if-gt v0, v4, :cond_8e

    add-long/2addr v2, p1

    .line 1450
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v4, :cond_37

    :cond_8e
    return v5
.end method

.method private static unsafeEstimateConsecutiveAscii(JI)I
    .registers 10

    const/16 v0, 0x10

    if-ge p2, v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    long-to-int v0, p0

    and-int/lit8 v0, v0, 0x7

    move-wide v1, p0

    move p0, v0

    :goto_b
    if-lez p0, :cond_1c

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    .line 1367
    invoke-static {v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p1

    if-gez p1, :cond_18

    sub-int/2addr v0, p0

    return v0

    :cond_18
    add-int/lit8 p0, p0, -0x1

    move-wide v1, v3

    goto :goto_b

    :cond_1c
    sub-int p0, p2, v0

    :goto_1e
    const/16 p1, 0x8

    if-lt p0, p1, :cond_38

    .line 1376
    invoke-static {v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getLong(J)J

    move-result-wide v3

    const-wide v5, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-nez p1, :cond_38

    const-wide/16 v3, 0x8

    add-long/2addr v1, v3

    add-int/lit8 p0, p0, -0x8

    goto :goto_1e

    :cond_38
    sub-int/2addr p2, p0

    return p2
.end method

.method private static unsafeEstimateConsecutiveAscii([BJI)I
    .registers 11

    const/16 v0, 0x10

    if-ge p3, v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7

    move-wide v1, p1

    move p1, v0

    :goto_b
    if-lez p1, :cond_1c

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    .line 1337
    invoke-static {p0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p2

    if-gez p2, :cond_18

    sub-int/2addr v0, p1

    return v0

    :cond_18
    add-int/lit8 p1, p1, -0x1

    move-wide v1, v3

    goto :goto_b

    :cond_1c
    sub-int p1, p3, v0

    :goto_1e
    const/16 p2, 0x8

    if-lt p1, p2, :cond_38

    .line 1346
    invoke-static {p0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getLong([BJ)J

    move-result-wide v3

    const-wide v5, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-nez p2, :cond_38

    const-wide/16 v3, 0x8

    add-long/2addr v1, v3

    add-int/lit8 p1, p1, -0x8

    goto :goto_1e

    :cond_38
    sub-int/2addr p3, p1

    return p3
.end method

.method private static unsafeIncompleteStateFor(JII)I
    .registers 6

    if-eqz p3, :cond_27

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1e

    const/4 v0, 0x2

    if-ne p3, v0, :cond_18

    .line 1562
    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p3

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    .line 1563
    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    .line 1562
    # invokes: Lcom/google/protobuf/Utf8;->incompleteStateFor(III)I
    invoke-static {p2, p3, p0}, Lcom/google/protobuf/Utf8;->access$100(III)I

    move-result p0

    return p0

    .line 1566
    :cond_18
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1559
    :cond_1e
    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    # invokes: Lcom/google/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {p2, p0}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result p0

    return p0

    .line 1556
    :cond_27
    # invokes: Lcom/google/protobuf/Utf8;->incompleteStateFor(I)I
    invoke-static {p2}, Lcom/google/protobuf/Utf8;->access$500(I)I

    move-result p0

    return p0
.end method

.method private static unsafeIncompleteStateFor([BIJI)I
    .registers 7

    if-eqz p4, :cond_27

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1e

    const/4 v0, 0x2

    if-ne p4, v0, :cond_18

    .line 1544
    invoke-static {p0, p2, p3}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p4

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    .line 1545
    invoke-static {p0, p2, p3}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p0

    .line 1544
    # invokes: Lcom/google/protobuf/Utf8;->incompleteStateFor(III)I
    invoke-static {p1, p4, p0}, Lcom/google/protobuf/Utf8;->access$100(III)I

    move-result p0

    return p0

    .line 1548
    :cond_18
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1541
    :cond_1e
    invoke-static {p0, p2, p3}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p0

    # invokes: Lcom/google/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {p1, p0}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result p0

    return p0

    .line 1538
    :cond_27
    # invokes: Lcom/google/protobuf/Utf8;->incompleteStateFor(I)I
    invoke-static {p1}, Lcom/google/protobuf/Utf8;->access$500(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method encodeUtf8(Ljava/lang/CharSequence;[BII)I
    .registers 27

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    .line 1190
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->getArrayBaseOffset()J

    move-result-wide v4

    int-to-long v6, v2

    add-long/2addr v4, v6

    int-to-long v6, v3

    add-long/2addr v6, v4

    .line 1192
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const-string v9, " at index "

    const-string v10, "Failed writing "

    if-gt v8, v3, :cond_152

    .line 1193
    array-length v11, v1

    sub-int/2addr v11, v3

    if-lt v11, v2, :cond_152

    const/4 v2, 0x0

    :goto_1f
    const/16 v3, 0x80

    const-wide/16 v11, 0x1

    if-ge v2, v8, :cond_34

    .line 1202
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_34

    add-long/2addr v11, v4

    int-to-byte v3, v13

    .line 1203
    invoke-static {v1, v4, v5, v3}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    add-int/lit8 v2, v2, 0x1

    move-wide v4, v11

    goto :goto_1f

    :cond_34
    if-ne v2, v8, :cond_3d

    .line 1207
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->getArrayBaseOffset()J

    move-result-wide v0

    :goto_3a
    sub-long/2addr v4, v0

    long-to-int v0, v4

    return v0

    :cond_3d
    :goto_3d
    if-ge v2, v8, :cond_14c

    .line 1211
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_55

    cmp-long v14, v4, v6

    if-gez v14, :cond_55

    add-long v14, v4, v11

    int-to-byte v13, v13

    .line 1213
    invoke-static {v1, v4, v5, v13}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    move-wide v4, v11

    move-wide v12, v14

    :goto_51
    const/16 v11, 0x80

    goto/16 :goto_105

    :cond_55
    const/16 v14, 0x800

    if-ge v13, v14, :cond_7f

    const-wide/16 v14, 0x2

    sub-long v14, v6, v14

    cmp-long v16, v4, v14

    if-gtz v16, :cond_7f

    add-long v14, v4, v11

    ushr-int/lit8 v3, v13, 0x6

    or-int/lit16 v3, v3, 0x3c0

    int-to-byte v3, v3

    .line 1215
    invoke-static {v1, v4, v5, v3}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    add-long v3, v14, v11

    and-int/lit8 v5, v13, 0x3f

    const/16 v13, 0x80

    or-int/2addr v5, v13

    int-to-byte v5, v5

    .line 1216
    invoke-static {v1, v14, v15, v5}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    move-wide/from16 v20, v11

    const/16 v11, 0x80

    move-wide v12, v3

    move-wide/from16 v4, v20

    goto/16 :goto_105

    :cond_7f
    const v3, 0xdfff

    const v14, 0xd800

    if-lt v13, v14, :cond_89

    if-ge v3, v13, :cond_b8

    :cond_89
    const-wide/16 v15, 0x3

    sub-long v15, v6, v15

    cmp-long v17, v4, v15

    if-gtz v17, :cond_b8

    add-long v14, v4, v11

    ushr-int/lit8 v3, v13, 0xc

    or-int/lit16 v3, v3, 0x1e0

    int-to-byte v3, v3

    .line 1219
    invoke-static {v1, v4, v5, v3}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    add-long v3, v14, v11

    ushr-int/lit8 v5, v13, 0x6

    and-int/lit8 v5, v5, 0x3f

    const/16 v11, 0x80

    or-int/2addr v5, v11

    int-to-byte v5, v5

    .line 1220
    invoke-static {v1, v14, v15, v5}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    const-wide/16 v14, 0x1

    add-long v18, v3, v14

    and-int/lit8 v5, v13, 0x3f

    or-int/2addr v5, v11

    int-to-byte v5, v5

    .line 1221
    invoke-static {v1, v3, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    move-wide/from16 v12, v18

    const-wide/16 v4, 0x1

    goto :goto_51

    :cond_b8
    const-wide/16 v11, 0x4

    sub-long v11, v6, v11

    cmp-long v15, v4, v11

    if-gtz v15, :cond_119

    add-int/lit8 v3, v2, 0x1

    if-eq v3, v8, :cond_111

    .line 1226
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v11

    if-eqz v11, :cond_110

    .line 1229
    invoke-static {v13, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    const-wide/16 v11, 0x1

    add-long v13, v4, v11

    ushr-int/lit8 v15, v2, 0x12

    or-int/lit16 v15, v15, 0xf0

    int-to-byte v15, v15

    .line 1230
    invoke-static {v1, v4, v5, v15}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    add-long v4, v13, v11

    ushr-int/lit8 v15, v2, 0xc

    and-int/lit8 v15, v15, 0x3f

    const/16 v11, 0x80

    or-int/lit16 v12, v15, 0x80

    int-to-byte v12, v12

    .line 1231
    invoke-static {v1, v13, v14, v12}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    const-wide/16 v12, 0x1

    add-long v14, v4, v12

    ushr-int/lit8 v16, v2, 0x6

    and-int/lit8 v12, v16, 0x3f

    or-int/2addr v12, v11

    int-to-byte v12, v12

    .line 1232
    invoke-static {v1, v4, v5, v12}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    const-wide/16 v4, 0x1

    add-long v12, v14, v4

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v11

    int-to-byte v2, v2

    .line 1233
    invoke-static {v1, v14, v15, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    move v2, v3

    :goto_105
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x80

    move-wide/from16 v20, v4

    move-wide v4, v12

    move-wide/from16 v11, v20

    goto/16 :goto_3d

    :cond_110
    move v2, v3

    .line 1227
    :cond_111
    new-instance v0, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v2, v8}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v0

    :cond_119
    if-gt v14, v13, :cond_131

    if-gt v13, v3, :cond_131

    add-int/lit8 v1, v2, 0x1

    if-eq v1, v8, :cond_12b

    .line 1236
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_131

    .line 1238
    :cond_12b
    new-instance v0, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v0, v2, v8}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v0

    .line 1241
    :cond_131
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1246
    :cond_14c
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->getArrayBaseOffset()J

    move-result-wide v0

    goto/16 :goto_3a

    .line 1195
    :cond_152
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, -0x1

    .line 1196
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v0, v2, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    return-void
.end method

.method encodeUtf8Direct(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 24

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1251
    invoke-static/range {p2 .. p2}, Lcom/google/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 1252
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v2

    .line 1253
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v2

    .line 1254
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    int-to-long v9, v8

    sub-long v11, v6, v4

    const-string v13, " at index "

    const-string v14, "Failed writing "

    cmp-long v15, v9, v11

    if-gtz v15, :cond_151

    const/4 v9, 0x0

    :goto_24
    const/16 v10, 0x80

    const-wide/16 v11, 0x1

    if-ge v9, v8, :cond_39

    .line 1264
    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    if-ge v15, v10, :cond_39

    add-long/2addr v11, v4

    int-to-byte v10, v15

    .line 1265
    invoke-static {v4, v5, v10}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    add-int/lit8 v9, v9, 0x1

    move-wide v4, v11

    goto :goto_24

    :cond_39
    if-ne v9, v8, :cond_41

    sub-long/2addr v4, v2

    long-to-int v0, v4

    .line 1269
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_41
    :goto_41
    if-ge v9, v8, :cond_146

    .line 1274
    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    if-ge v15, v10, :cond_5b

    cmp-long v16, v4, v6

    if-gez v16, :cond_5b

    add-long v16, v4, v11

    int-to-byte v15, v15

    .line 1276
    invoke-static {v4, v5, v15}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    move-wide/from16 v4, v16

    const/16 v15, 0x80

    move-wide/from16 v17, v2

    goto/16 :goto_100

    :cond_5b
    const/16 v10, 0x800

    if-ge v15, v10, :cond_83

    const-wide/16 v17, 0x2

    sub-long v17, v6, v17

    cmp-long v10, v4, v17

    if-gtz v10, :cond_83

    move-wide/from16 v17, v2

    add-long v1, v4, v11

    ushr-int/lit8 v3, v15, 0x6

    or-int/lit16 v3, v3, 0x3c0

    int-to-byte v3, v3

    .line 1278
    invoke-static {v4, v5, v3}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    add-long v3, v1, v11

    and-int/lit8 v5, v15, 0x3f

    const/16 v10, 0x80

    or-int/2addr v5, v10

    int-to-byte v5, v5

    .line 1279
    invoke-static {v1, v2, v5}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    move-wide v4, v3

    :goto_7f
    const/16 v15, 0x80

    goto/16 :goto_100

    :cond_83
    move-wide/from16 v17, v2

    const v1, 0xdfff

    const v2, 0xd800

    if-lt v15, v2, :cond_8f

    if-ge v1, v15, :cond_b9

    :cond_8f
    const-wide/16 v19, 0x3

    sub-long v19, v6, v19

    cmp-long v3, v4, v19

    if-gtz v3, :cond_b9

    add-long v1, v4, v11

    ushr-int/lit8 v3, v15, 0xc

    or-int/lit16 v3, v3, 0x1e0

    int-to-byte v3, v3

    .line 1282
    invoke-static {v4, v5, v3}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    add-long v3, v1, v11

    ushr-int/lit8 v5, v15, 0x6

    and-int/lit8 v5, v5, 0x3f

    const/16 v10, 0x80

    or-int/2addr v5, v10

    int-to-byte v5, v5

    .line 1283
    invoke-static {v1, v2, v5}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    add-long v1, v3, v11

    and-int/lit8 v5, v15, 0x3f

    or-int/2addr v5, v10

    int-to-byte v5, v5

    .line 1284
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    move-wide v4, v1

    goto :goto_7f

    :cond_b9
    const-wide/16 v19, 0x4

    sub-long v19, v6, v19

    cmp-long v3, v4, v19

    if-gtz v3, :cond_113

    add-int/lit8 v1, v9, 0x1

    if-eq v1, v8, :cond_10a

    .line 1289
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v15, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v3

    if-eqz v3, :cond_10b

    .line 1292
    invoke-static {v15, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    add-long v9, v4, v11

    ushr-int/lit8 v3, v2, 0x12

    or-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    .line 1293
    invoke-static {v4, v5, v3}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    add-long v3, v9, v11

    ushr-int/lit8 v5, v2, 0xc

    and-int/lit8 v5, v5, 0x3f

    const/16 v15, 0x80

    or-int/2addr v5, v15

    int-to-byte v5, v5

    .line 1294
    invoke-static {v9, v10, v5}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    add-long v9, v3, v11

    ushr-int/lit8 v5, v2, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v15

    int-to-byte v5, v5

    .line 1295
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    add-long v3, v9, v11

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v15

    int-to-byte v2, v2

    .line 1296
    invoke-static {v9, v10, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    move v9, v1

    move-wide v4, v3

    :goto_100
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p2

    move-wide/from16 v2, v17

    const/16 v10, 0x80

    goto/16 :goto_41

    :cond_10a
    move v1, v9

    .line 1290
    :cond_10b
    new-instance v0, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v1, v8}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v0

    :cond_113
    if-gt v2, v15, :cond_12b

    if-gt v15, v1, :cond_12b

    add-int/lit8 v1, v9, 0x1

    if-eq v1, v8, :cond_125

    .line 1299
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v15, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_12b

    .line 1301
    :cond_125
    new-instance v0, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v0, v9, v8}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v0

    .line 1304
    :cond_12b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_146
    move-wide/from16 v17, v2

    sub-long v4, v4, v17

    long-to-int v0, v4

    move-object/from16 v1, p2

    .line 1309
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 1257
    :cond_151
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, -0x1

    .line 1258
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    return-void
.end method

.method partialIsValidUtf8(I[BII)I
    .registers 16

    or-int v0, p3, p4

    .line 1000
    array-length v1, p2

    sub-int/2addr v1, p4

    or-int/2addr v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_ad

    .line 1004
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->getArrayBaseOffset()J

    move-result-wide v2

    int-to-long v4, p3

    add-long/2addr v2, v4

    .line 1005
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->getArrayBaseOffset()J

    move-result-wide v4

    int-to-long p3, p4

    add-long/2addr v4, p3

    if-eqz p1, :cond_a5

    cmp-long p3, v2, v4

    if-ltz p3, :cond_1b

    return p1

    :cond_1b
    int-to-byte p3, p1

    const/16 p4, -0x20

    const/4 v0, -0x1

    const/16 v6, -0x41

    const-wide/16 v7, 0x1

    if-ge p3, p4, :cond_32

    const/16 p1, -0x3e

    if-lt p3, p1, :cond_31

    add-long p3, v2, v7

    .line 1026
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v6, :cond_a6

    :cond_31
    return v0

    :cond_32
    const/16 v9, -0x10

    if-ge p3, v9, :cond_63

    shr-int/lit8 p1, p1, 0x8

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    if-nez p1, :cond_4c

    add-long v9, v2, v7

    .line 1035
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    cmp-long v1, v9, v4

    if-ltz v1, :cond_4b

    .line 1037
    # invokes: Lcom/google/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {p3, p1}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result p1

    return p1

    :cond_4b
    move-wide v2, v9

    :cond_4c
    if-gt p1, v6, :cond_62

    const/16 v1, -0x60

    if-ne p3, p4, :cond_54

    if-lt p1, v1, :cond_62

    :cond_54
    const/16 p4, -0x13

    if-ne p3, p4, :cond_5a

    if-ge p1, v1, :cond_62

    :cond_5a
    add-long p3, v2, v7

    .line 1046
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v6, :cond_a6

    :cond_62
    return v0

    :cond_63
    shr-int/lit8 p4, p1, 0x8

    xor-int/2addr p4, v0

    int-to-byte p4, p4

    if-nez p4, :cond_7a

    add-long v9, v2, v7

    .line 1056
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p4

    cmp-long p1, v9, v4

    if-ltz p1, :cond_78

    .line 1058
    # invokes: Lcom/google/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {p3, p4}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result p1

    return p1

    :cond_78
    move-wide v2, v9

    goto :goto_7d

    :cond_7a
    shr-int/lit8 p1, p1, 0x10

    int-to-byte v1, p1

    :goto_7d
    if-nez v1, :cond_8f

    add-long v9, v2, v7

    .line 1064
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v1

    cmp-long p1, v9, v4

    if-ltz p1, :cond_8e

    .line 1066
    # invokes: Lcom/google/protobuf/Utf8;->incompleteStateFor(III)I
    invoke-static {p3, p4, v1}, Lcom/google/protobuf/Utf8;->access$100(III)I

    move-result p1

    return p1

    :cond_8e
    move-wide v2, v9

    :cond_8f
    if-gt p4, v6, :cond_a4

    shl-int/lit8 p1, p3, 0x1c

    add-int/lit8 p4, p4, 0x70

    add-int/2addr p1, p4

    shr-int/lit8 p1, p1, 0x1e

    if-nez p1, :cond_a4

    if-gt v1, v6, :cond_a4

    add-long p3, v2, v7

    .line 1083
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v6, :cond_a6

    :cond_a4
    return v0

    :cond_a5
    move-wide p3, v2

    :cond_a6
    sub-long/2addr v4, p3

    long-to-int p1, v4

    .line 1089
    invoke-static {p2, p3, p4, p1}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->partialIsValidUtf8([BJI)I

    move-result p1

    return p1

    .line 1001
    :cond_ad
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    array-length p2, p2

    .line 1002
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    const/4 p2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    const-string p2, "Array length=%d, index=%d, limit=%d"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method partialIsValidUtf8Direct(ILjava/nio/ByteBuffer;II)I
    .registers 15

    or-int v0, p3, p4

    .line 1095
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int/2addr v1, p4

    or-int/2addr v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_ad

    .line 1099
    invoke-static {p2}, Lcom/google/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    int-to-long v4, p3

    add-long/2addr v2, v4

    sub-int/2addr p4, p3

    int-to-long p2, p4

    add-long/2addr p2, v2

    if-eqz p1, :cond_a5

    cmp-long p4, v2, p2

    if-ltz p4, :cond_1b

    return p1

    :cond_1b
    int-to-byte p4, p1

    const/16 v0, -0x20

    const/4 v4, -0x1

    const/16 v5, -0x41

    const-wide/16 v6, 0x1

    if-ge p4, v0, :cond_32

    const/16 p1, -0x3e

    if-lt p4, p1, :cond_31

    add-long v0, v2, v6

    .line 1122
    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p1

    if-le p1, v5, :cond_a6

    :cond_31
    return v4

    :cond_32
    const/16 v8, -0x10

    if-ge p4, v8, :cond_63

    shr-int/lit8 p1, p1, 0x8

    xor-int/2addr p1, v4

    int-to-byte p1, p1

    if-nez p1, :cond_4c

    add-long v8, v2, v6

    .line 1131
    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p1

    cmp-long v1, v8, p2

    if-ltz v1, :cond_4b

    .line 1133
    # invokes: Lcom/google/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {p4, p1}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result p1

    return p1

    :cond_4b
    move-wide v2, v8

    :cond_4c
    if-gt p1, v5, :cond_62

    const/16 v1, -0x60

    if-ne p4, v0, :cond_54

    if-lt p1, v1, :cond_62

    :cond_54
    const/16 v0, -0x13

    if-ne p4, v0, :cond_5a

    if-ge p1, v1, :cond_62

    :cond_5a
    add-long v0, v2, v6

    .line 1142
    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p1

    if-le p1, v5, :cond_a6

    :cond_62
    return v4

    :cond_63
    shr-int/lit8 v0, p1, 0x8

    xor-int/2addr v0, v4

    int-to-byte v0, v0

    if-nez v0, :cond_7a

    add-long v8, v2, v6

    .line 1152
    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    cmp-long p1, v8, p2

    if-ltz p1, :cond_78

    .line 1154
    # invokes: Lcom/google/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {p4, v0}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result p1

    return p1

    :cond_78
    move-wide v2, v8

    goto :goto_7d

    :cond_7a
    shr-int/lit8 p1, p1, 0x10

    int-to-byte v1, p1

    :goto_7d
    if-nez v1, :cond_8f

    add-long v8, v2, v6

    .line 1160
    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    cmp-long p1, v8, p2

    if-ltz p1, :cond_8e

    .line 1162
    # invokes: Lcom/google/protobuf/Utf8;->incompleteStateFor(III)I
    invoke-static {p4, v0, v1}, Lcom/google/protobuf/Utf8;->access$100(III)I

    move-result p1

    return p1

    :cond_8e
    move-wide v2, v8

    :cond_8f
    if-gt v0, v5, :cond_a4

    shl-int/lit8 p1, p4, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x1e

    if-nez p1, :cond_a4

    if-gt v1, v5, :cond_a4

    add-long v0, v2, v6

    .line 1179
    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p1

    if-le p1, v5, :cond_a6

    :cond_a4
    return v4

    :cond_a5
    move-wide v0, v2

    :cond_a6
    sub-long/2addr p2, v0

    long-to-int p1, p2

    .line 1185
    invoke-static {v0, v1, p1}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->partialIsValidUtf8(JI)I

    move-result p1

    return p1

    .line 1096
    :cond_ad
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1097
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    const/4 p2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    const-string p2, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
