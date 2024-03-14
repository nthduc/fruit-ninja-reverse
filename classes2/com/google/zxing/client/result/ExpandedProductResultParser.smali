.class public final Lcom/google/zxing/client/result/ExpandedProductResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "ExpandedProductResultParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static findAIvalue(ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 176
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x28

    if-eq v0, v2, :cond_a

    return-object v1

    :cond_a
    add-int/lit8 p0, p0, 0x1

    .line 182
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 185
    :goto_16
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_39

    .line 186
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x29

    if-ne v2, v3, :cond_29

    .line 188
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_29
    const/16 v3, 0x30

    if-lt v2, v3, :cond_38

    const/16 v3, 0x39

    if-le v2, v3, :cond_32

    goto :goto_38

    .line 193
    :cond_32
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_38
    :goto_38
    return-object v1

    .line 195
    :cond_39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static findValue(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 202
    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_28

    .line 203
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_22

    .line 207
    invoke-static {p1, p0}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_28

    .line 210
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 212
    :cond_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_25
    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    .line 215
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    .registers 26

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v0

    .line 46
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    return-object v2

    .line 50
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v4

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v5, v2

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    const/4 v3, 0x0

    .line 69
    :goto_23
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v3, v1, :cond_262

    .line 70
    invoke-static {v3, v4}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_30

    return-object v2

    .line 76
    :cond_30
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x2

    add-int/lit8 v18, v18, 0x2

    add-int v3, v3, v18

    .line 77
    invoke-static {v3, v4}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v20

    add-int v3, v3, v20

    const/16 v20, -0x1

    move/from16 v21, v3

    .line 80
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    move-object/from16 v22, v15

    const/16 v15, 0x600

    move-object/from16 v23, v14

    const/4 v14, 0x3

    if-eq v3, v15, :cond_203

    const/16 v15, 0x601

    if-eq v3, v15, :cond_1f9

    const/16 v15, 0x61f

    if-eq v3, v15, :cond_1ef

    const/16 v15, 0x620

    if-eq v3, v15, :cond_1e5

    const/16 v15, 0x622

    if-eq v3, v15, :cond_1db

    const/16 v15, 0x624

    if-eq v3, v15, :cond_1d1

    const/16 v15, 0x626

    if-eq v3, v15, :cond_1c7

    packed-switch v3, :pswitch_data_270

    packed-switch v3, :pswitch_data_288

    packed-switch v3, :pswitch_data_2a0

    packed-switch v3, :pswitch_data_2ac

    goto/16 :goto_20d

    :pswitch_7b
    const-string v3, "3933"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20d

    const/16 v3, 0x22

    goto/16 :goto_20e

    :pswitch_87
    const-string v3, "3932"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20d

    const/16 v3, 0x21

    goto/16 :goto_20e

    :pswitch_93
    const-string v3, "3931"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20d

    const/16 v3, 0x20

    goto/16 :goto_20e

    :pswitch_9f
    const-string v3, "3930"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20d

    const/16 v3, 0x1f

    goto/16 :goto_20e

    :pswitch_ab
    const-string v3, "3923"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20d

    const/16 v3, 0x1e

    goto/16 :goto_20e

    :pswitch_b7
    const-string v3, "3922"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20d

    const/16 v3, 0x1d

    goto/16 :goto_20e

    :pswitch_c3
    const-string v3, "3921"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20d

    const/16 v3, 0x1c

    goto/16 :goto_20e

    :pswitch_cf
    const-string v3, "3920"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20d

    const/16 v3, 0x1b

    goto/16 :goto_20e

    :pswitch_db
    const-string v3, "3209"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20d

    const/16 v3, 0x1a

    goto/16 :goto_20e

    :pswitch_e7
    const-string v3, "3208"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20d

    const/16 v3, 0x19

    goto/16 :goto_20e

    :pswitch_f3
    const-string v3, "3207"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20d

    const/16 v3, 0x18

    goto/16 :goto_20e

    :pswitch_ff
    const-string v3, "3206"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20d

    const/16 v3, 0x17

    goto/16 :goto_20e

    :pswitch_10b
    const-string v3, "3205"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20d

    const/16 v3, 0x16

    goto/16 :goto_20e

    :pswitch_117
    const-string v3, "3204"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20d

    const/16 v3, 0x15

    goto/16 :goto_20e

    :pswitch_123
    const-string v3, "3203"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20d

    const/16 v3, 0x14

    goto/16 :goto_20e

    :pswitch_12f
    const-string v3, "3202"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20d

    const/16 v3, 0x13

    goto/16 :goto_20e

    :pswitch_13b
    const-string v3, "3201"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20d

    const/16 v3, 0x12

    goto/16 :goto_20e

    :pswitch_147
    const-string v3, "3200"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20d

    const/16 v3, 0x11

    goto/16 :goto_20e

    :pswitch_153
    const-string v3, "3109"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20d

    const/16 v3, 0x10

    goto/16 :goto_20e

    :pswitch_15f
    const-string v3, "3108"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20d

    const/16 v3, 0xf

    goto/16 :goto_20e

    :pswitch_16b
    const-string v3, "3107"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20d

    const/16 v3, 0xe

    goto/16 :goto_20e

    :pswitch_177
    const-string v3, "3106"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20d

    const/16 v3, 0xd

    goto/16 :goto_20e

    :pswitch_183
    const-string v3, "3105"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20d

    const/16 v3, 0xc

    goto/16 :goto_20e

    :pswitch_18f
    const-string v3, "3104"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20d

    const/16 v3, 0xb

    goto/16 :goto_20e

    :pswitch_19b
    const-string v3, "3103"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20d

    const/16 v3, 0xa

    goto/16 :goto_20e

    :pswitch_1a7
    const-string v3, "3102"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20d

    const/16 v3, 0x9

    goto :goto_20e

    :pswitch_1b2
    const-string v3, "3101"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20d

    const/16 v3, 0x8

    goto :goto_20e

    :pswitch_1bd
    const-string v3, "3100"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20d

    const/4 v3, 0x7

    goto :goto_20e

    :cond_1c7
    const-string v3, "17"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20d

    const/4 v3, 0x6

    goto :goto_20e

    :cond_1d1
    const-string v3, "15"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20d

    const/4 v3, 0x5

    goto :goto_20e

    :cond_1db
    const-string v3, "13"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20d

    const/4 v3, 0x4

    goto :goto_20e

    :cond_1e5
    const-string v3, "11"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20d

    const/4 v3, 0x3

    goto :goto_20e

    :cond_1ef
    const-string v3, "10"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20d

    const/4 v3, 0x2

    goto :goto_20e

    :cond_1f9
    const-string v3, "01"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20d

    const/4 v3, 0x1

    goto :goto_20e

    :cond_203
    const-string v3, "00"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20d

    const/4 v3, 0x0

    goto :goto_20e

    :cond_20d
    :goto_20d
    const/4 v3, -0x1

    :goto_20e
    packed-switch v3, :pswitch_data_2b8

    const/4 v3, 0x0

    .line 153
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_215
    move/from16 v3, v21

    move-object/from16 v15, v22

    :goto_219
    move-object/from16 v14, v23

    :goto_21b
    const/4 v2, 0x0

    goto/16 :goto_23

    .line 141
    :pswitch_21e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v15, 0x4

    if-ge v3, v15, :cond_227

    const/4 v3, 0x0

    return-object v3

    :cond_227
    const/4 v3, 0x0

    .line 147
    invoke-virtual {v2, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    const/4 v3, 0x0

    .line 148
    invoke-virtual {v2, v3, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 149
    invoke-virtual {v1, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    goto :goto_23c

    :pswitch_236
    const/4 v3, 0x0

    .line 135
    invoke-virtual {v1, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    move-object v15, v2

    :goto_23c
    move/from16 v3, v21

    goto :goto_219

    :pswitch_23f
    const/4 v3, 0x0

    .line 128
    invoke-virtual {v1, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    const-string v13, "LB"

    goto :goto_24e

    :pswitch_247
    const/4 v3, 0x0

    .line 114
    invoke-virtual {v1, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    const-string v13, "KG"

    :goto_24e
    move-object v12, v2

    move/from16 v3, v21

    move-object/from16 v15, v22

    goto :goto_21b

    :pswitch_254
    move-object v11, v2

    goto :goto_215

    :pswitch_256
    move-object v10, v2

    goto :goto_215

    :pswitch_258
    move-object v9, v2

    goto :goto_215

    :pswitch_25a
    move-object v8, v2

    goto :goto_215

    :pswitch_25c
    move-object v7, v2

    goto :goto_215

    :pswitch_25e
    move-object v5, v2

    goto :goto_215

    :pswitch_260
    move-object v6, v2

    goto :goto_215

    :cond_262
    move-object/from16 v23, v14

    move-object/from16 v22, v15

    .line 158
    new-instance v1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    move-object v3, v1

    move-object/from16 v18, v0

    invoke-direct/range {v3 .. v18}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v1

    nop

    :pswitch_data_270
    .packed-switch 0x17ecde
        :pswitch_1bd
        :pswitch_1b2
        :pswitch_1a7
        :pswitch_19b
        :pswitch_18f
        :pswitch_183
        :pswitch_177
        :pswitch_16b
        :pswitch_15f
        :pswitch_153
    .end packed-switch

    :pswitch_data_288
    .packed-switch 0x17f09f
        :pswitch_147
        :pswitch_13b
        :pswitch_12f
        :pswitch_123
        :pswitch_117
        :pswitch_10b
        :pswitch_ff
        :pswitch_f3
        :pswitch_e7
        :pswitch_db
    .end packed-switch

    :pswitch_data_2a0
    .packed-switch 0x180b24
        :pswitch_cf
        :pswitch_c3
        :pswitch_b7
        :pswitch_ab
    .end packed-switch

    :pswitch_data_2ac
    .packed-switch 0x180b43
        :pswitch_9f
        :pswitch_93
        :pswitch_87
        :pswitch_7b
    .end packed-switch

    :pswitch_data_2b8
    .packed-switch 0x0
        :pswitch_260
        :pswitch_25e
        :pswitch_25c
        :pswitch_25a
        :pswitch_258
        :pswitch_256
        :pswitch_254
        :pswitch_247
        :pswitch_247
        :pswitch_247
        :pswitch_247
        :pswitch_247
        :pswitch_247
        :pswitch_247
        :pswitch_247
        :pswitch_247
        :pswitch_247
        :pswitch_23f
        :pswitch_23f
        :pswitch_23f
        :pswitch_23f
        :pswitch_23f
        :pswitch_23f
        :pswitch_23f
        :pswitch_23f
        :pswitch_23f
        :pswitch_23f
        :pswitch_236
        :pswitch_236
        :pswitch_236
        :pswitch_236
        :pswitch_21e
        :pswitch_21e
        :pswitch_21e
        :pswitch_21e
    .end packed-switch
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .registers 2

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    move-result-object p1

    return-object p1
.end method
