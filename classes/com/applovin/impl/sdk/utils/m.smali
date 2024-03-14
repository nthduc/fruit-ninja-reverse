.class public Lcom/applovin/impl/sdk/utils/m;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    invoke-static {p0, p1, v0}, Lcom/applovin/impl/sdk/utils/m;->a(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :array_c
    .array-data 1
        -0x53t
        -0x62t
        -0x35t
        -0x70t
        -0x1dt
        -0x76t
        0x37t
        0x75t
        0x3bt
        0x8t
        -0xct
        -0xft
        0x49t
        0x6et
        -0x43t
        0x39t
        0x75t
        0x4t
        -0x1at
        0x61t
        0x42t
        -0xct
        0x7dt
        0x5bt
        -0x77t
        -0x67t
        -0x1et
        0x72t
        0x7bt
        0x36t
        0x33t
        -0x4dt
    .end array-data
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .registers 5

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    invoke-static {p0, p1, p2, p3, v0}, Lcom/applovin/impl/sdk/utils/m;->a(Ljava/lang/String;Ljava/lang/String;J[B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :array_c
    .array-data 1
        -0x53t
        -0x62t
        -0x35t
        -0x70t
        -0x1dt
        -0x76t
        0x37t
        0x75t
        0x3bt
        0x8t
        -0xct
        -0xft
        0x49t
        0x6et
        -0x43t
        0x39t
        0x75t
        0x4t
        -0x1at
        0x61t
        0x42t
        -0xct
        0x7dt
        0x5bt
        -0x77t
        -0x67t
        -0x1et
        0x72t
        0x7bt
        0x36t
        0x33t
        -0x4dt
    .end array-data
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;J[B)Ljava/lang/String;
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    if-eqz v1, :cond_1fd

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x50

    if-lt v3, v4, :cond_1f5

    if-eqz v2, :cond_1ed

    array-length v3, v2

    const/16 v4, 0x20

    if-lt v3, v4, :cond_1e5

    if-eqz v0, :cond_1e4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_21

    goto/16 :goto_1e4

    :cond_21
    :try_start_21
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v6, "UTF-8"

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/utils/m;->a(Ljava/lang/String;[B)[B

    move-result-object v1

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    shr-long v7, p2, v5

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    long-to-int v8, v7

    int-to-byte v7, v8

    aget-byte v8, v1, v5

    xor-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v7, 0x8

    shr-long v11, p2, v7

    and-long/2addr v11, v9

    long-to-int v8, v11

    int-to-byte v8, v8

    const/4 v11, 0x1

    aget-byte v11, v1, v11

    xor-int/2addr v8, v11

    invoke-virtual {v6, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v8, 0x10

    shr-long v11, p2, v8

    and-long/2addr v11, v9

    long-to-int v12, v11

    int-to-byte v11, v12

    const/4 v12, 0x2

    aget-byte v12, v1, v12

    xor-int/2addr v11, v12

    invoke-virtual {v6, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v11, 0x18

    shr-long v12, p2, v11

    and-long/2addr v12, v9

    long-to-int v13, v12

    int-to-byte v12, v13

    const/4 v13, 0x3

    aget-byte v13, v1, v13

    xor-int/2addr v12, v13

    invoke-virtual {v6, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-long v12, p2, v4

    and-long/2addr v12, v9

    long-to-int v13, v12

    int-to-byte v12, v13

    const/4 v13, 0x4

    aget-byte v13, v1, v13

    xor-int/2addr v12, v13

    invoke-virtual {v6, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v12, 0x28

    shr-long v13, p2, v12

    and-long/2addr v13, v9

    long-to-int v14, v13

    int-to-byte v13, v14

    const/4 v14, 0x5

    aget-byte v14, v1, v14

    xor-int/2addr v13, v14

    invoke-virtual {v6, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v13, 0x30

    shr-long v14, p2, v13

    and-long/2addr v14, v9

    long-to-int v15, v14

    int-to-byte v14, v15

    const/4 v15, 0x6

    aget-byte v15, v1, v15

    xor-int/2addr v14, v15

    invoke-virtual {v6, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v14, 0x38

    shr-long v15, p2, v14

    and-long v12, v15, v9

    long-to-int v13, v12

    int-to-byte v12, v13

    const/4 v13, 0x7

    aget-byte v13, v1, v13

    xor-int/2addr v12, v13

    invoke-virtual {v6, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v12, 0x0

    :goto_a8
    array-length v13, v0

    if-ge v12, v13, :cond_1b5

    int-to-long v14, v12

    add-long v14, p2, v14

    const/16 v16, 0x21

    shr-long v16, v14, v16

    xor-long v14, v14, v16

    const-wide v16, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    mul-long v14, v14, v16

    const/16 v16, 0x1d

    shr-long v16, v14, v16

    xor-long v14, v14, v16

    const-wide v16, -0x7a1435883d4d519dL    # -3.827511455475344E-280

    mul-long v14, v14, v16

    shr-long v16, v14, v4

    xor-long v14, v14, v16

    add-int/lit8 v13, v12, 0x0

    array-length v4, v0

    if-lt v13, v4, :cond_d3

    const/4 v4, 0x0

    goto :goto_d5

    :cond_d3
    aget-byte v4, v0, v13

    :goto_d5
    array-length v11, v1

    rem-int/2addr v13, v11

    aget-byte v11, v1, v13

    xor-int/2addr v4, v11

    int-to-long v7, v4

    shr-long v19, v14, v5

    and-long v19, v19, v9

    xor-long v7, v7, v19

    long-to-int v4, v7

    int-to-byte v4, v4

    invoke-virtual {v6, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v4, v12, 0x1

    array-length v7, v0

    if-lt v4, v7, :cond_ed

    const/4 v7, 0x0

    goto :goto_ef

    :cond_ed
    aget-byte v7, v0, v4

    :goto_ef
    array-length v8, v1

    rem-int/2addr v4, v8

    aget-byte v4, v1, v4

    xor-int/2addr v4, v7

    int-to-long v7, v4

    const/16 v4, 0x8

    shr-long v19, v14, v4

    and-long v19, v19, v9

    xor-long v7, v7, v19

    long-to-int v8, v7

    int-to-byte v7, v8

    invoke-virtual {v6, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v7, v12, 0x2

    array-length v8, v0

    if-lt v7, v8, :cond_109

    const/4 v8, 0x0

    goto :goto_10b

    :cond_109
    aget-byte v8, v0, v7

    :goto_10b
    array-length v11, v1

    rem-int/2addr v7, v11

    aget-byte v7, v1, v7

    xor-int/2addr v7, v8

    int-to-long v7, v7

    const/16 v11, 0x10

    shr-long v19, v14, v11

    and-long v19, v19, v9

    xor-long v7, v7, v19

    long-to-int v8, v7

    int-to-byte v7, v8

    invoke-virtual {v6, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v7, v12, 0x3

    array-length v8, v0

    if-lt v7, v8, :cond_125

    const/4 v8, 0x0

    goto :goto_127

    :cond_125
    aget-byte v8, v0, v7

    :goto_127
    array-length v13, v1

    rem-int/2addr v7, v13

    aget-byte v7, v1, v7

    xor-int/2addr v7, v8

    int-to-long v7, v7

    const/16 v13, 0x18

    shr-long v18, v14, v13

    and-long v18, v18, v9

    xor-long v7, v7, v18

    long-to-int v8, v7

    int-to-byte v7, v8

    invoke-virtual {v6, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v7, v12, 0x4

    array-length v8, v0

    if-lt v7, v8, :cond_141

    const/4 v8, 0x0

    goto :goto_143

    :cond_141
    aget-byte v8, v0, v7

    :goto_143
    array-length v4, v1

    rem-int/2addr v7, v4

    aget-byte v4, v1, v7

    xor-int/2addr v4, v8

    int-to-long v7, v4

    const/16 v4, 0x20

    shr-long v19, v14, v4

    and-long v19, v19, v9

    xor-long v7, v7, v19

    long-to-int v8, v7

    int-to-byte v7, v8

    invoke-virtual {v6, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v7, v12, 0x5

    array-length v8, v0

    if-lt v7, v8, :cond_15d

    const/4 v8, 0x0

    goto :goto_15f

    :cond_15d
    aget-byte v8, v0, v7

    :goto_15f
    array-length v4, v1

    rem-int/2addr v7, v4

    aget-byte v4, v1, v7

    xor-int/2addr v4, v8

    int-to-long v7, v4

    const/16 v4, 0x28

    shr-long v19, v14, v4

    and-long v19, v19, v9

    xor-long v7, v7, v19

    long-to-int v8, v7

    int-to-byte v7, v8

    invoke-virtual {v6, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v7, v12, 0x6

    array-length v8, v0

    if-lt v7, v8, :cond_179

    const/4 v8, 0x0

    goto :goto_17b

    :cond_179
    aget-byte v8, v0, v7

    :goto_17b
    array-length v4, v1

    rem-int/2addr v7, v4

    aget-byte v4, v1, v7

    xor-int/2addr v4, v8

    int-to-long v7, v4

    const/16 v4, 0x30

    shr-long v19, v14, v4

    and-long v19, v19, v9

    xor-long v7, v7, v19

    long-to-int v8, v7

    int-to-byte v7, v8

    invoke-virtual {v6, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v7, v12, 0x7

    array-length v8, v0

    if-lt v7, v8, :cond_195

    const/4 v8, 0x0

    goto :goto_197

    :cond_195
    aget-byte v8, v0, v7

    :goto_197
    array-length v4, v1

    rem-int/2addr v7, v4

    aget-byte v4, v1, v7

    xor-int/2addr v4, v8

    int-to-long v7, v4

    const/16 v4, 0x38

    shr-long/2addr v14, v4

    and-long/2addr v14, v9

    xor-long/2addr v7, v14

    long-to-int v8, v7

    int-to-byte v7, v8

    invoke-virtual {v6, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v12, v12, 0x8

    const/16 v4, 0x20

    const/16 v7, 0x8

    const/16 v8, 0x10

    const/16 v11, 0x18

    const/16 v14, 0x38

    goto/16 :goto_a8

    :cond_1b5
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/m;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p4 .. p4}, Lcom/applovin/impl/sdk/utils/m;->a([B)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1e2
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_1e2} :catch_1e3

    return-object v0

    :catch_1e3
    const/4 v0, 0x0

    :cond_1e4
    :goto_1e4
    return-object v0

    :cond_1e5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Salt is too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1ed
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No salt specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SDK key is too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1fd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No SDK key specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v1, :cond_20d

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x50

    if-lt v3, v4, :cond_205

    if-eqz v2, :cond_1fd

    array-length v3, v2

    const/16 v4, 0x20

    if-lt v3, v4, :cond_1f5

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e

    return-object v0

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v5, "{"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    return-object v0

    :cond_2b
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v5, v0, v3

    const/4 v6, 0x0

    :try_start_35
    const-string v7, "1"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f1

    array-length v5, v0

    const/4 v7, 0x4

    if-eq v5, v7, :cond_42

    return-object v6

    :cond_42
    const/4 v5, 0x1

    aget-object v8, v0, v5

    const/4 v9, 0x2

    aget-object v10, v0, v9

    const/4 v11, 0x3

    aget-object v0, v0, v11

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/m;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_56

    return-object v6

    :cond_56
    invoke-static/range {p2 .. p2}, Lcom/applovin/impl/sdk/utils/m;->a([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1ef

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/utils/m;->a(Ljava/lang/String;[B)[B

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    aget-byte v8, v1, v3

    xor-int/2addr v0, v8

    and-int/lit16 v0, v0, 0xff

    int-to-long v12, v0

    shl-long/2addr v12, v3

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    aget-byte v8, v1, v5

    xor-int/2addr v0, v8

    and-int/lit16 v0, v0, 0xff

    int-to-long v14, v0

    const/16 v0, 0x8

    shl-long/2addr v14, v0

    or-long/2addr v12, v14

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    aget-byte v10, v1, v9

    xor-int/2addr v8, v10

    and-int/lit16 v8, v8, 0xff

    int-to-long v14, v8

    const/16 v8, 0x10

    shl-long/2addr v14, v8

    or-long/2addr v12, v14

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v10

    aget-byte v14, v1, v11

    xor-int/2addr v10, v14

    and-int/lit16 v10, v10, 0xff

    int-to-long v14, v10

    const/16 v10, 0x18

    shl-long/2addr v14, v10

    or-long/2addr v12, v14

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v14

    aget-byte v15, v1, v7

    xor-int/2addr v14, v15

    and-int/lit16 v14, v14, 0xff

    int-to-long v14, v14

    shl-long/2addr v14, v4

    or-long/2addr v12, v14

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v14

    const/4 v15, 0x5

    aget-byte v16, v1, v15
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_b5} :catch_1f3

    xor-int v14, v14, v16

    and-int/lit16 v14, v14, 0xff

    int-to-long v6, v14

    const/16 v14, 0x28

    shl-long/2addr v6, v14

    or-long/2addr v6, v12

    :try_start_be
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v12

    const/4 v13, 0x6

    aget-byte v14, v1, v13

    xor-int/2addr v12, v14

    and-int/lit16 v12, v12, 0xff

    int-to-long v13, v12

    const/16 v12, 0x30

    shl-long v12, v13, v12

    or-long/2addr v6, v12

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v12

    const/4 v13, 0x7

    aget-byte v14, v1, v13

    xor-int/2addr v12, v14

    and-int/lit16 v12, v12, 0xff

    int-to-long v13, v12

    const/16 v12, 0x38

    shl-long v12, v13, v12

    or-long/2addr v6, v12

    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array v13, v0, [B

    invoke-virtual {v2, v13}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v14

    const/4 v15, 0x0

    :goto_ea
    if-ltz v14, :cond_1dd

    int-to-long v10, v15

    add-long/2addr v10, v6

    const/16 v19, 0x21

    shr-long v19, v10, v19

    xor-long v10, v10, v19

    const-wide v19, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    mul-long v10, v10, v19

    const/16 v19, 0x1d

    shr-long v19, v10, v19

    xor-long v10, v10, v19

    const-wide v19, -0x7a1435883d4d519dL    # -3.827511455475344E-280

    mul-long v10, v10, v19

    shr-long v19, v10, v4

    xor-long v10, v10, v19

    aget-byte v19, v13, v3

    add-int/lit8 v20, v15, 0x0

    array-length v14, v1

    rem-int v20, v20, v14

    aget-byte v14, v1, v20

    xor-int v14, v19, v14

    int-to-long v8, v14

    shr-long v22, v10, v3

    const-wide/16 v24, 0xff

    and-long v22, v22, v24

    xor-long v8, v8, v22

    long-to-int v9, v8

    int-to-byte v8, v9

    invoke-virtual {v12, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    aget-byte v8, v13, v5

    add-int/lit8 v9, v15, 0x1

    array-length v14, v1

    rem-int/2addr v9, v14

    aget-byte v9, v1, v9

    xor-int/2addr v8, v9

    int-to-long v8, v8

    shr-long v22, v10, v0

    and-long v22, v22, v24

    xor-long v8, v8, v22

    long-to-int v9, v8

    int-to-byte v8, v9

    invoke-virtual {v12, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v8, 0x2

    aget-byte v9, v13, v8

    add-int/lit8 v14, v15, 0x2

    array-length v0, v1

    rem-int/2addr v14, v0

    aget-byte v0, v1, v14

    xor-int/2addr v0, v9

    move-wide/from16 v22, v6

    int-to-long v5, v0

    const/16 v0, 0x10

    shr-long v26, v10, v0

    and-long v26, v26, v24

    xor-long v5, v5, v26

    long-to-int v6, v5

    int-to-byte v5, v6

    invoke-virtual {v12, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v5, 0x3

    aget-byte v6, v13, v5

    add-int/lit8 v7, v15, 0x3

    array-length v14, v1

    rem-int/2addr v7, v14

    aget-byte v7, v1, v7

    xor-int/2addr v6, v7

    int-to-long v6, v6

    const/16 v14, 0x18

    shr-long v20, v10, v14

    and-long v20, v20, v24

    xor-long v6, v6, v20

    long-to-int v7, v6

    int-to-byte v6, v7

    invoke-virtual {v12, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v6, 0x4

    aget-byte v7, v13, v6

    add-int/lit8 v16, v15, 0x4

    array-length v0, v1

    rem-int v16, v16, v0

    aget-byte v0, v1, v16

    xor-int/2addr v0, v7

    int-to-long v5, v0

    shr-long v26, v10, v4

    and-long v26, v26, v24

    xor-long v5, v5, v26

    long-to-int v0, v5

    int-to-byte v0, v0

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v0, 0x5

    aget-byte v5, v13, v0

    add-int/lit8 v6, v15, 0x5

    array-length v7, v1

    rem-int/2addr v6, v7

    aget-byte v6, v1, v6

    xor-int/2addr v5, v6

    int-to-long v5, v5

    const/16 v7, 0x28

    shr-long v17, v10, v7

    and-long v17, v17, v24

    xor-long v5, v5, v17

    long-to-int v6, v5

    int-to-byte v5, v6

    invoke-virtual {v12, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v5, 0x6

    aget-byte v6, v13, v5

    add-int/lit8 v7, v15, 0x6

    array-length v0, v1

    rem-int/2addr v7, v0

    aget-byte v0, v1, v7

    xor-int/2addr v0, v6

    int-to-long v6, v0

    const/16 v0, 0x30

    shr-long v26, v10, v0

    and-long v26, v26, v24

    xor-long v6, v6, v26

    long-to-int v0, v6

    int-to-byte v0, v0

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v0, 0x7

    aget-byte v6, v13, v0

    add-int/lit8 v7, v15, 0x7

    array-length v0, v1

    rem-int/2addr v7, v0

    aget-byte v0, v1, v7

    xor-int/2addr v0, v6

    int-to-long v6, v0

    const/16 v0, 0x38

    shr-long/2addr v10, v0

    and-long v10, v10, v24

    xor-long/2addr v6, v10

    long-to-int v0, v6

    int-to-byte v0, v0

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v2, v13}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v0

    add-int/lit8 v15, v15, 0x8

    move v14, v0

    move-wide/from16 v6, v22

    const/16 v0, 0x8

    const/4 v5, 0x1

    const/16 v8, 0x10

    const/4 v9, 0x2

    const/16 v10, 0x18

    const/4 v11, 0x3

    goto/16 :goto_ea

    :cond_1dd
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_1ec
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_1ec} :catch_1ed

    return-object v0

    :catch_1ed
    const/4 v0, 0x0

    goto :goto_1f4

    :cond_1ef
    move-object v0, v6

    return-object v0

    :cond_1f1
    move-object v0, v6

    return-object v0

    :catch_1f3
    move-object v0, v6

    :goto_1f4
    return-object v0

    :cond_1f5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Salt is too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1fd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No salt specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SDK key is too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No SDK key specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method

.method private static a([B)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/o;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_11
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SHA-1 algorithm not found"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static a(Ljava/lang/String;)[B
    .registers 2

    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;[B)[B
    .registers 3

    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    const-string p1, "UTF-8"

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_16} :catch_20
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_16} :catch_17

    return-object p0

    :catch_17
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "UTF-8 encoding not found"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_20
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "SHA-1 algorithm not found"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x2d

    const/16 v1, 0x2b

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x5f

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2a

    const/16 v1, 0x3d

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b([B)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/m;->c([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c([B)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/16 p0, 0x2b

    const/16 v1, 0x2d

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    const/16 v1, 0x5f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3d

    const/16 v1, 0x2a

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
