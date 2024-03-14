.class public Lcom/helpshift/support/external/DoubleMetaphone;
.super Ljava/lang/Object;
.source "DoubleMetaphone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;
    }
.end annotation


# static fields
.field private static final ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

.field private static final L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

.field private static final L_T_K_S_N_M_B_Z:[Ljava/lang/String;

.field private static final SILENT_START:[Ljava/lang/String;

.field private static final VOWELS:Ljava/lang/String; = "AEIOUY"


# instance fields
.field maxCodeLen:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    const-string v0, "GN"

    const-string v1, "KN"

    const-string v2, "PN"

    const-string v3, "WR"

    const-string v4, "PS"

    .line 48
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/helpshift/support/external/DoubleMetaphone;->SILENT_START:[Ljava/lang/String;

    const-string v1, "L"

    const-string v2, "R"

    const-string v3, "N"

    const-string v4, "M"

    const-string v5, "B"

    const-string v6, "H"

    const-string v7, "F"

    const-string v8, "V"

    const-string v9, "W"

    const-string v10, " "

    .line 50
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/helpshift/support/external/DoubleMetaphone;->L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

    const-string v1, "ES"

    const-string v2, "EP"

    const-string v3, "EB"

    const-string v4, "EL"

    const-string v5, "EY"

    const-string v6, "IB"

    const-string v7, "IL"

    const-string v8, "IN"

    const-string v9, "IE"

    const-string v10, "EI"

    const-string v11, "ER"

    .line 52
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/helpshift/support/external/DoubleMetaphone;->ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

    const-string v1, "L"

    const-string v2, "T"

    const-string v3, "K"

    const-string v4, "S"

    const-string v5, "N"

    const-string v6, "M"

    const-string v7, "B"

    const-string v8, "Z"

    .line 54
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/helpshift/support/external/DoubleMetaphone;->L_T_K_S_N_M_B_Z:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 60
    iput v0, p0, Lcom/helpshift/support/external/DoubleMetaphone;->maxCodeLen:I

    return-void
.end method

.method protected static contains(Ljava/lang/String;II[Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-ltz p1, :cond_1f

    add-int/2addr p2, p1

    .line 76
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p2, v1, :cond_1f

    .line 77
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 79
    array-length p1, p3

    const/4 p2, 0x0

    :goto_10
    if-ge p2, p1, :cond_1f

    aget-object v1, p3, p2

    .line 80
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1c
    add-int/lit8 p2, p2, 0x1

    goto :goto_10

    :cond_1f
    :goto_1f
    return v0
.end method


# virtual methods
.method protected charAt(Ljava/lang/String;I)C
    .registers 4

    if-ltz p2, :cond_e

    .line 1310
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_9

    goto :goto_e

    .line 1313
    :cond_9
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1

    :cond_e
    :goto_e
    const/4 p1, 0x0

    return p1
.end method

.method public doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 25

    move-object/from16 v0, p0

    if-nez p1, :cond_6

    const/4 v1, 0x0

    return-object v1

    .line 106
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_12

    const/4 v1, 0x0

    return-object v1

    .line 110
    :cond_12
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x57

    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    const/16 v4, 0x4b

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gt v2, v3, :cond_3e

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gt v2, v3, :cond_3e

    const-string v2, "CZ"

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gt v2, v3, :cond_3e

    const-string v2, "WITZ"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-le v2, v3, :cond_3c

    goto :goto_3e

    :cond_3c
    const/4 v2, 0x0

    goto :goto_3f

    :cond_3e
    :goto_3e
    const/4 v2, 0x1

    .line 115
    :goto_3f
    sget-object v7, Lcom/helpshift/support/external/DoubleMetaphone;->SILENT_START:[Ljava/lang/String;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_43
    if-ge v9, v8, :cond_52

    aget-object v10, v7, v9

    .line 116
    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4f

    const/4 v7, 0x1

    goto :goto_53

    :cond_4f
    add-int/lit8 v9, v9, 0x1

    goto :goto_43

    :cond_52
    const/4 v7, 0x0

    .line 123
    :goto_53
    new-instance v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;

    iget v9, v0, Lcom/helpshift/support/external/DoubleMetaphone;->maxCodeLen:I

    invoke-direct {v8, v0, v9}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;-><init>(Lcom/helpshift/support/external/DoubleMetaphone;I)V

    .line 125
    :goto_5a
    iget-object v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    iget v10, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-lt v9, v10, :cond_6e

    iget-object v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    iget v10, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v9, v10, :cond_15ca

    :cond_6e
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v6

    if-gt v7, v9, :cond_15ca

    .line 127
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0xc7

    const/16 v11, 0x53

    if-eq v9, v10, :cond_15a8

    const/16 v10, 0xd1

    if-eq v9, v10, :cond_1582

    const/16 v10, 0x54

    const-string v12, "AEIOUY"

    const/16 v13, 0x48

    const/16 v15, 0x4a

    const/4 v4, 0x3

    const/4 v14, 0x2

    packed-switch v9, :pswitch_data_15d6

    :cond_90
    :goto_90
    add-int/lit8 v7, v7, 0x1

    :cond_92
    :goto_92
    const/16 v4, 0x4b

    goto :goto_5a

    :pswitch_95
    add-int/lit8 v4, v7, 0x1

    .line 1255
    invoke-virtual {v0, v1, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v9

    if-ne v9, v13, :cond_be

    .line 1257
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v9, :cond_ac

    .line 1258
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1260
    :cond_ac
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v9, :cond_bb

    .line 1261
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_bb
    :goto_bb
    add-int/lit8 v7, v7, 0x2

    goto :goto_92

    :cond_be
    const-string v9, "ZO"

    const-string v12, "ZI"

    const-string v13, "ZA"

    .line 1266
    filled-new-array {v9, v12, v13}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v4, v14, v9}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_fa

    if-eqz v2, :cond_db

    if-lez v7, :cond_db

    add-int/lit8 v9, v7, -0x1

    .line 1267
    invoke-virtual {v0, v1, v9}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v9

    if-eq v9, v10, :cond_db

    goto :goto_fa

    .line 1284
    :cond_db
    iget-object v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    iget v10, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v9, v10, :cond_ea

    .line 1285
    iget-object v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1287
    :cond_ea
    iget-object v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    iget v10, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v9, v10, :cond_136

    .line 1288
    iget-object v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_136

    .line 1268
    :cond_fa
    :goto_fa
    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    iget-object v10, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    sub-int/2addr v9, v10

    if-gt v6, v9, :cond_10d

    .line 1270
    iget-object v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const-string v10, "S"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_118

    .line 1273
    :cond_10d
    iget-object v10, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const-string v11, "S"

    invoke-virtual {v11, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1275
    :goto_118
    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    iget-object v10, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    sub-int/2addr v9, v10

    if-gt v14, v9, :cond_12b

    .line 1277
    iget-object v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const-string v10, "TS"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_136

    .line 1280
    :cond_12b
    iget-object v10, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const-string v11, "TS"

    invoke-virtual {v11, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1291
    :cond_136
    :goto_136
    invoke-virtual {v0, v1, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v9

    const/16 v10, 0x5a

    if-ne v9, v10, :cond_140

    add-int/lit8 v4, v7, 0x2

    :cond_140
    :goto_140
    move v7, v4

    goto/16 :goto_92

    :pswitch_143
    if-nez v7, :cond_165

    .line 1221
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v9, :cond_154

    .line 1222
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1224
    :cond_154
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v9, :cond_90

    .line 1225
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_90

    .line 1230
    :cond_165
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v6

    if-ne v7, v9, :cond_18c

    add-int/lit8 v9, v7, -0x3

    const-string v10, "IAU"

    const-string v11, "EAU"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    .line 1231
    invoke-static {v1, v9, v4, v10}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c8

    add-int/lit8 v4, v7, -0x2

    const-string v9, "AU"

    const-string v10, "OU"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    .line 1232
    invoke-static {v1, v4, v14, v9}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c8

    .line 1234
    :cond_18c
    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    iget-object v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    sub-int/2addr v4, v9

    if-gt v14, v4, :cond_19f

    .line 1236
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const-string v9, "KS"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1aa

    .line 1239
    :cond_19f
    iget-object v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const-string v10, "KS"

    invoke-virtual {v10, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    :goto_1aa
    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    iget-object v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    sub-int/2addr v4, v9

    if-gt v14, v4, :cond_1bd

    .line 1243
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const-string v9, "KS"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c8

    .line 1246
    :cond_1bd
    iget-object v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const-string v10, "KS"

    invoke-virtual {v10, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c8
    :goto_1c8
    add-int/lit8 v4, v7, 0x1

    const-string v9, "C"

    const-string v10, "X"

    .line 1249
    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v4, v6, v9}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_140

    add-int/lit8 v4, v7, 0x2

    goto/16 :goto_140

    :pswitch_1dc
    const-string v9, "WR"

    .line 1151
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v7, v14, v9}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_20c

    .line 1153
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v9, :cond_1f9

    .line 1154
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v9, 0x52

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1156
    :cond_1f9
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v9, :cond_bb

    .line 1157
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const/16 v9, 0x52

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_bb

    :cond_20c
    if-nez v7, :cond_278

    add-int/lit8 v9, v7, 0x1

    .line 1162
    invoke-virtual {v0, v1, v9}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v10

    invoke-virtual {v12, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-ne v10, v3, :cond_226

    const-string v10, "WH"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    .line 1163
    invoke-static {v1, v7, v14, v10}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_278

    .line 1164
    :cond_226
    invoke-virtual {v0, v1, v9}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    invoke-virtual {v12, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v3, :cond_253

    .line 1166
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v7, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v7, :cond_241

    .line 1167
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v7, 0x41

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1169
    :cond_241
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v7, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v7, :cond_275

    .line 1170
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const/16 v7, 0x46

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_275

    .line 1175
    :cond_253
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v7, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v7, :cond_264

    .line 1176
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v7, 0x41

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1178
    :cond_264
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v7, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v7, :cond_275

    .line 1179
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const/16 v7, 0x41

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_275
    :goto_275
    move v7, v9

    goto/16 :goto_92

    .line 1184
    :cond_278
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v6

    if-ne v7, v9, :cond_28b

    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v0, v1, v9}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v9

    invoke-virtual {v12, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ne v9, v3, :cond_2fc

    :cond_28b
    add-int/lit8 v9, v7, -0x1

    const/4 v10, 0x5

    const-string v11, "EWSKI"

    const-string v12, "EWSKY"

    const-string v13, "OWSKI"

    const-string v15, "OWSKY"

    filled-new-array {v11, v12, v13, v15}, [Ljava/lang/String;

    move-result-object v11

    .line 1185
    invoke-static {v1, v9, v10, v11}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2fc

    const-string v9, "SCH"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    .line 1187
    invoke-static {v1, v5, v4, v9}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2ad

    goto :goto_2fc

    :cond_2ad
    const-string v4, "WICZ"

    const-string v9, "WITZ"

    .line 1194
    filled-new-array {v4, v9}, [Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x4

    invoke-static {v1, v7, v9, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_90

    .line 1196
    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    iget-object v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    sub-int/2addr v4, v9

    if-gt v14, v4, :cond_2cf

    .line 1198
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const-string v9, "TS"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2da

    .line 1201
    :cond_2cf
    iget-object v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const-string v10, "TS"

    invoke-virtual {v10, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    :goto_2da
    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    iget-object v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    sub-int/2addr v4, v9

    if-gt v14, v4, :cond_2ed

    .line 1205
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const-string v9, "FX"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f8

    .line 1208
    :cond_2ed
    iget-object v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const-string v10, "FX"

    invoke-virtual {v10, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2f8
    add-int/lit8 v7, v7, 0x4

    goto/16 :goto_92

    .line 1189
    :cond_2fc
    :goto_2fc
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v9, :cond_90

    .line 1190
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const/16 v9, 0x46

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_90

    .line 1141
    :pswitch_30f
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v9, :cond_321

    .line 1142
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v9, 0x46

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_323

    :cond_321
    const/16 v9, 0x46

    .line 1144
    :goto_323
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v10, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v10, :cond_332

    .line 1145
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_332
    add-int/lit8 v4, v7, 0x1

    .line 1147
    invoke-virtual {v0, v1, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v9

    const/16 v10, 0x56

    if-ne v9, v10, :cond_140

    goto/16 :goto_bb

    :pswitch_33e
    const-string v9, "TION"

    .line 1088
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x4

    invoke-static {v1, v7, v11, v9}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_372

    .line 1089
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v9, :cond_35d

    .line 1090
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v9, 0x58

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_35f

    :cond_35d
    const/16 v9, 0x58

    .line 1092
    :goto_35f
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v10, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v10, :cond_36e

    .line 1093
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_36e
    :goto_36e
    add-int/lit8 v7, v7, 0x3

    goto/16 :goto_92

    :cond_372
    const-string v9, "TIA"

    const-string v11, "TCH"

    .line 1097
    filled-new-array {v9, v11}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v7, v4, v9}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3a4

    .line 1098
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v9, :cond_392

    .line 1099
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v9, 0x58

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_394

    :cond_392
    const/16 v9, 0x58

    .line 1101
    :goto_394
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v10, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v10, :cond_36e

    .line 1102
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_36e

    :cond_3a4
    const-string v9, "TH"

    .line 1106
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v7, v14, v9}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3ef

    const-string v9, "TTH"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    .line 1107
    invoke-static {v1, v7, v4, v9}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3bd

    goto :goto_3ef

    .line 1130
    :cond_3bd
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v9, :cond_3cc

    .line 1131
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1133
    :cond_3cc
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v9, :cond_3db

    .line 1134
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3db
    add-int/lit8 v4, v7, 0x1

    const-string v9, "T"

    const-string v10, "D"

    .line 1136
    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v4, v6, v9}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_140

    add-int/lit8 v4, v7, 0x2

    goto/16 :goto_140

    :cond_3ef
    :goto_3ef
    add-int/lit8 v7, v7, 0x2

    const-string v9, "OM"

    const-string v11, "AM"

    .line 1108
    filled-new-array {v9, v11}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v7, v14, v9}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_43d

    const-string v9, "VAN "

    const-string v11, "VON "

    filled-new-array {v9, v11}, [Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x4

    .line 1110
    invoke-static {v1, v5, v11, v9}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_43d

    const-string v9, "SCH"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    .line 1111
    invoke-static {v1, v5, v4, v9}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41b

    goto :goto_43d

    .line 1120
    :cond_41b
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v9, :cond_42c

    .line 1121
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v9, 0x30

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1123
    :cond_42c
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v9, :cond_92

    .line 1124
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_92

    .line 1112
    :cond_43d
    :goto_43d
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v9, :cond_44c

    .line 1113
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1115
    :cond_44c
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v9, :cond_92

    .line 1116
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_92

    :pswitch_45d
    add-int/lit8 v9, v7, -0x1

    const-string v10, "ISL"

    const-string v15, "YSL"

    .line 910
    filled-new-array {v10, v15}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v9, v4, v10}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_46f

    :goto_46d
    goto/16 :goto_157d

    :cond_46f
    if-nez v7, :cond_49f

    const/4 v9, 0x5

    const-string v10, "SUGAR"

    .line 914
    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v7, v9, v10}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_49f

    .line 916
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v9, :cond_48f

    .line 917
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v9, 0x58

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 919
    :cond_48f
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v9, :cond_157d

    .line 920
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_46d

    :cond_49f
    const-string v9, "SH"

    .line 924
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v7, v14, v9}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_506

    add-int/lit8 v4, v7, 0x1

    const-string v9, "HEIM"

    const-string v10, "HOEK"

    const-string v12, "HOLM"

    const-string v13, "HOLZ"

    .line 925
    filled-new-array {v9, v10, v12, v13}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    invoke-static {v1, v4, v10, v9}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4df

    .line 928
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v9, :cond_4cf

    .line 929
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 931
    :cond_4cf
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v9, :cond_502

    .line 932
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_502

    .line 936
    :cond_4df
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v9, :cond_4f1

    .line 937
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v9, 0x58

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4f3

    :cond_4f1
    const/16 v9, 0x58

    .line 939
    :goto_4f3
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v10, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v10, :cond_502

    .line 940
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_502
    :goto_502
    add-int/lit8 v7, v7, 0x2

    goto/16 :goto_157f

    :cond_506
    const-string v9, "SIO"

    const-string v10, "SIA"

    .line 945
    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v7, v4, v9}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_741

    const-string v9, "SIAN"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    .line 946
    invoke-static {v1, v7, v10, v9}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_523

    goto/16 :goto_741

    :cond_523
    if-nez v7, :cond_539

    add-int/lit8 v9, v7, 0x1

    const-string v10, "M"

    const-string v15, "N"

    const-string v3, "L"

    const-string v4, "W"

    .line 966
    filled-new-array {v10, v15, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v9, v6, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_547

    :cond_539
    add-int/lit8 v3, v7, 0x1

    const-string v4, "Z"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 968
    invoke-static {v1, v3, v6, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_57a

    .line 973
    :cond_547
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_556

    .line 974
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 976
    :cond_556
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_567

    .line 977
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const/16 v4, 0x58

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_567
    add-int/lit8 v3, v7, 0x1

    const-string v4, "Z"

    .line 979
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v6, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_577

    :goto_575
    add-int/lit8 v3, v7, 0x2

    :cond_577
    :goto_577
    move v7, v3

    goto/16 :goto_157f

    :cond_57a
    const-string v4, "SC"

    .line 981
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v7, v14, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6ec

    add-int/lit8 v3, v7, 0x2

    .line 982
    invoke-virtual {v0, v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    const-string v9, "SK"

    if-ne v4, v13, :cond_685

    add-int/lit8 v3, v7, 0x3

    const-string v16, "OO"

    const-string v17, "ER"

    const-string v18, "EN"

    const-string v19, "UY"

    const-string v20, "ED"

    const-string v21, "EM"

    .line 984
    filled-new-array/range {v16 .. v21}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v14, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_628

    const-string v4, "ER"

    const-string v10, "EN"

    .line 988
    filled-new-array {v4, v10}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v14, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5f1

    .line 990
    iget v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v3, v4

    if-gt v6, v3, :cond_5c9

    .line 992
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const-string v4, "X"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5d4

    .line 995
    :cond_5c9
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const-string v10, "X"

    invoke-virtual {v10, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    :goto_5d4
    iget v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v3, v4

    if-gt v14, v3, :cond_5e6

    .line 999
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_782

    .line 1002
    :cond_5e6
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_782

    .line 1006
    :cond_5f1
    iget v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v3, v4

    if-gt v14, v3, :cond_602

    .line 1008
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_60b

    .line 1011
    :cond_602
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    :goto_60b
    iget v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v3, v4

    if-gt v14, v3, :cond_61d

    .line 1015
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_782

    .line 1018
    :cond_61d
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_782

    :cond_628
    if-nez v7, :cond_660

    const/4 v3, 0x3

    .line 1023
    invoke-virtual {v0, v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    invoke-virtual {v12, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v9, -0x1

    if-ne v4, v9, :cond_660

    invoke-virtual {v0, v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    const/16 v4, 0x57

    if-eq v3, v4, :cond_660

    .line 1024
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_64f

    .line 1025
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v4, 0x58

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1027
    :cond_64f
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_782

    .line 1028
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_782

    .line 1032
    :cond_660
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_672

    .line 1033
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v4, 0x58

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_674

    :cond_672
    const/16 v4, 0x58

    .line 1035
    :goto_674
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v9, :cond_782

    .line 1036
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_782

    :cond_685
    const-string v4, "I"

    const-string v10, "E"

    const-string v12, "Y"

    .line 1041
    filled-new-array {v4, v10, v12}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v6, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6b5

    .line 1042
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_6a4

    .line 1043
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1045
    :cond_6a4
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_782

    .line 1046
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_782

    .line 1050
    :cond_6b5
    iget v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v3, v4

    if-gt v14, v3, :cond_6c6

    .line 1052
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6cf

    .line 1055
    :cond_6c6
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    :goto_6cf
    iget v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v3, v4

    if-gt v14, v3, :cond_6e1

    .line 1059
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_782

    .line 1062
    :cond_6e1
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_782

    .line 1068
    :cond_6ec
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v6

    if-ne v7, v4, :cond_713

    add-int/lit8 v4, v7, -0x2

    const-string v9, "AI"

    const-string v10, "OI"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v4, v14, v9}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_713

    .line 1070
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v9, :cond_731

    .line 1071
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_731

    .line 1075
    :cond_713
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v9, :cond_722

    .line 1076
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1078
    :cond_722
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v9, :cond_731

    .line 1079
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_731
    :goto_731
    const-string v4, "S"

    const-string v9, "Z"

    .line 1082
    filled-new-array {v4, v9}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v6, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_577

    goto/16 :goto_575

    :cond_741
    :goto_741
    if-eqz v2, :cond_762

    .line 949
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_752

    .line 950
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 952
    :cond_752
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_782

    .line 953
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_782

    .line 957
    :cond_762
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_771

    .line 958
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 960
    :cond_771
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_782

    .line 961
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const/16 v4, 0x58

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_782
    :goto_782
    add-int/lit8 v7, v7, 0x3

    goto/16 :goto_157f

    .line 891
    :pswitch_786
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v6

    if-ne v7, v3, :cond_7bf

    if-nez v2, :cond_7bf

    add-int/lit8 v3, v7, -0x2

    const-string v4, "IE"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 892
    invoke-static {v1, v3, v14, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7bf

    add-int/lit8 v3, v7, -0x4

    const-string v4, "ME"

    const-string v9, "MA"

    filled-new-array {v4, v9}, [Ljava/lang/String;

    move-result-object v4

    .line 893
    invoke-static {v1, v3, v14, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7bf

    .line 894
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_7e1

    .line 895
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const/16 v4, 0x52

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7e1

    .line 899
    :cond_7bf
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_7d0

    .line 900
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v4, 0x52

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 902
    :cond_7d0
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_7e1

    .line 903
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const/16 v4, 0x52

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7e1
    :goto_7e1
    add-int/lit8 v3, v7, 0x1

    .line 906
    invoke-virtual {v0, v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    const/16 v9, 0x52

    if-ne v4, v9, :cond_577

    goto/16 :goto_502

    .line 882
    :pswitch_7ed
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_7ff

    .line 883
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v4, 0x4b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_801

    :cond_7ff
    const/16 v4, 0x4b

    .line 885
    :goto_801
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v9, :cond_810

    .line 886
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_810
    add-int/lit8 v3, v7, 0x1

    .line 888
    invoke-virtual {v0, v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    const/16 v9, 0x51

    if-ne v4, v9, :cond_577

    goto/16 :goto_502

    :pswitch_81c
    add-int/lit8 v3, v7, 0x1

    .line 861
    invoke-virtual {v0, v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    if-ne v4, v13, :cond_849

    .line 862
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_836

    .line 863
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v4, 0x46

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_838

    :cond_836
    const/16 v4, 0x46

    .line 865
    :goto_838
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v9, :cond_502

    .line 866
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_502

    .line 871
    :cond_849
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v9, :cond_85a

    .line 872
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v9, 0x50

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 874
    :cond_85a
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v9, :cond_86b

    .line 875
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const/16 v9, 0x50

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_86b
    const-string v4, "P"

    const-string v9, "B"

    .line 877
    filled-new-array {v4, v9}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v6, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_577

    add-int/lit8 v3, v7, 0x2

    goto/16 :goto_577

    .line 841
    :pswitch_87d
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_88e

    .line 842
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v4, 0x4e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 844
    :cond_88e
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_89f

    .line 845
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const/16 v4, 0x4e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_89f
    add-int/lit8 v3, v7, 0x1

    .line 847
    invoke-virtual {v0, v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    const/16 v9, 0x4e

    if-ne v4, v9, :cond_577

    goto/16 :goto_502

    .line 823
    :pswitch_8ab
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_8bc

    .line 824
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v4, 0x4d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 826
    :cond_8bc
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_8cd

    .line 827
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const/16 v4, 0x4d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8cd
    add-int/lit8 v3, v7, 0x1

    .line 830
    invoke-virtual {v0, v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    const/16 v9, 0x4d

    if-ne v4, v9, :cond_8d9

    :cond_8d7
    :goto_8d7
    const/4 v4, 0x1

    goto :goto_8ff

    :cond_8d9
    add-int/lit8 v4, v7, -0x1

    const-string v9, "UMB"

    .line 834
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    invoke-static {v1, v4, v10, v9}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8fe

    .line 835
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v6

    if-eq v3, v4, :cond_8d7

    add-int/lit8 v4, v7, 0x2

    const-string v9, "ER"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    .line 836
    invoke-static {v1, v4, v14, v9}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8fe

    goto :goto_8d7

    :cond_8fe
    const/4 v4, 0x0

    :goto_8ff
    if-eqz v4, :cond_577

    goto/16 :goto_502

    :pswitch_903
    add-int/lit8 v3, v7, 0x1

    .line 782
    invoke-virtual {v0, v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    const/16 v9, 0x4c

    if-ne v4, v9, :cond_99a

    .line 784
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    sub-int/2addr v3, v4

    if-ne v7, v3, :cond_92a

    add-int/lit8 v3, v7, -0x1

    const-string v4, "ILLO"

    const-string v9, "ILLA"

    const-string v10, "ALLE"

    filled-new-array {v4, v9, v10}, [Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x4

    .line 785
    invoke-static {v1, v3, v9, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_92a

    :goto_928
    const/4 v3, 0x1

    goto :goto_961

    .line 788
    :cond_92a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v14

    const-string v4, "AS"

    const-string v9, "OS"

    filled-new-array {v4, v9}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v14, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_950

    .line 789
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v6

    const-string v4, "A"

    const-string v9, "O"

    filled-new-array {v4, v9}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v6, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_960

    :cond_950
    add-int/lit8 v3, v7, -0x1

    const-string v4, "ALLE"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x4

    .line 790
    invoke-static {v1, v3, v9, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_960

    goto :goto_928

    :cond_960
    const/4 v3, 0x0

    :goto_961
    if-eqz v3, :cond_976

    .line 797
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_502

    .line 798
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v4, 0x4c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_502

    .line 802
    :cond_976
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_987

    .line 803
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v4, 0x4c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 805
    :cond_987
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_502

    .line 806
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const/16 v4, 0x4c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_502

    .line 813
    :cond_99a
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v7, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v7, :cond_9ab

    .line 814
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v7, 0x4c

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 816
    :cond_9ab
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v7, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v7, :cond_577

    .line 817
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const/16 v7, 0x4c

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_577

    .line 772
    :pswitch_9be
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_9d0

    .line 773
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v4, 0x4b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9d2

    :cond_9d0
    const/16 v4, 0x4b

    .line 775
    :goto_9d2
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v9, :cond_9e1

    .line 776
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9e1
    add-int/lit8 v3, v7, 0x1

    .line 778
    invoke-virtual {v0, v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v9

    if-ne v9, v4, :cond_577

    goto/16 :goto_502

    :pswitch_9eb
    const-string v3, "JOSE"

    .line 705
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v1, v7, v4, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_ae0

    const-string v3, "SAN "

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v5, v4, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a06

    goto/16 :goto_ae0

    :cond_a06
    if-nez v7, :cond_a36

    const-string v3, "JOSE"

    .line 727
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v7, v4, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a36

    .line 728
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_a23

    .line 729
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 731
    :cond_a23
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_ad6

    .line 732
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const/16 v4, 0x41

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_ad6

    :cond_a36
    add-int/lit8 v3, v7, -0x1

    .line 735
    invoke-virtual {v0, v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    invoke-virtual {v12, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v9, -0x1

    if-eq v4, v9, :cond_a76

    if-nez v2, :cond_a76

    add-int/lit8 v4, v7, 0x1

    .line 736
    invoke-virtual {v0, v1, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v9

    const/16 v10, 0x41

    if-eq v9, v10, :cond_a57

    invoke-virtual {v0, v1, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    const/16 v9, 0x4f

    if-ne v4, v9, :cond_a76

    .line 737
    :cond_a57
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_a66

    .line 738
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 740
    :cond_a66
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_ad6

    .line 741
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_ad6

    .line 744
    :cond_a76
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v6

    if-ne v7, v4, :cond_a9e

    .line 745
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_a8c

    .line 746
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 748
    :cond_a8c
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_ad6

    .line 749
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_ad6

    :cond_a9e
    add-int/lit8 v4, v7, 0x1

    .line 752
    sget-object v9, Lcom/helpshift/support/external/DoubleMetaphone;->L_T_K_S_N_M_B_Z:[Ljava/lang/String;

    invoke-static {v1, v4, v6, v9}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_ad6

    const-string v4, "S"

    const-string v9, "K"

    const-string v10, "L"

    filled-new-array {v4, v9, v10}, [Ljava/lang/String;

    move-result-object v4

    .line 753
    invoke-static {v1, v3, v6, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_ad6

    .line 754
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_ac7

    .line 755
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 757
    :cond_ac7
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_ad6

    .line 758
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_ad6
    :goto_ad6
    add-int/lit8 v3, v7, 0x1

    .line 762
    invoke-virtual {v0, v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    if-ne v4, v15, :cond_577

    goto/16 :goto_502

    :cond_ae0
    :goto_ae0
    if-nez v7, :cond_aec

    add-int/lit8 v3, v7, 0x4

    .line 707
    invoke-virtual {v0, v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_b20

    .line 708
    :cond_aec
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_b20

    const-string v3, "SAN "

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v5, v4, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b00

    goto :goto_b20

    .line 717
    :cond_b00
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_b0f

    .line 718
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 720
    :cond_b0f
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_157d

    .line 721
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_157d

    .line 709
    :cond_b20
    :goto_b20
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_b2f

    .line 710
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 712
    :cond_b2f
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_157d

    .line 713
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_157d

    :pswitch_b40
    if-eqz v7, :cond_b50

    add-int/lit8 v3, v7, -0x1

    .line 687
    invoke-virtual {v0, v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    invoke-virtual {v12, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_157d

    goto :goto_b51

    :cond_b50
    const/4 v4, -0x1

    :goto_b51
    add-int/lit8 v3, v7, 0x1

    .line 688
    invoke-virtual {v0, v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    invoke-virtual {v12, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v4, :cond_157d

    .line 689
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_b6c

    .line 690
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 692
    :cond_b6c
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_502

    .line 693
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_502

    :pswitch_b7d
    add-int/lit8 v3, v7, 0x1

    .line 476
    invoke-virtual {v0, v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    if-ne v4, v13, :cond_cbf

    if-lez v7, :cond_bb9

    add-int/lit8 v3, v7, -0x1

    .line 478
    invoke-virtual {v0, v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    invoke-virtual {v12, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_bb9

    .line 479
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_ba6

    .line 480
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v4, 0x4b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_ba8

    :cond_ba6
    const/16 v4, 0x4b

    .line 482
    :goto_ba8
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v9, :cond_502

    .line 483
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_502

    :cond_bb9
    if-nez v7, :cond_c0a

    add-int/lit8 v7, v7, 0x2

    .line 488
    invoke-virtual {v0, v1, v7}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    const/16 v4, 0x49

    if-ne v3, v4, :cond_be5

    .line 489
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_bd4

    .line 490
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 492
    :cond_bd4
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_157f

    .line 493
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_157f

    .line 497
    :cond_be5
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_bf7

    .line 498
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v4, 0x4b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_bf9

    :cond_bf7
    const/16 v4, 0x4b

    .line 500
    :goto_bf9
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v9, :cond_157f

    .line 501
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_157f

    :cond_c0a
    if-le v7, v6, :cond_c1e

    add-int/lit8 v3, v7, -0x2

    const-string v4, "B"

    const-string v9, "H"

    const-string v10, "D"

    .line 506
    filled-new-array {v4, v9, v10}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v6, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_502

    :cond_c1e
    if-le v7, v14, :cond_c32

    add-int/lit8 v3, v7, -0x3

    const-string v4, "B"

    const-string v9, "H"

    const-string v10, "D"

    filled-new-array {v4, v9, v10}, [Ljava/lang/String;

    move-result-object v4

    .line 507
    invoke-static {v1, v3, v6, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_502

    :cond_c32
    const/4 v3, 0x3

    if-le v7, v3, :cond_c47

    add-int/lit8 v3, v7, -0x4

    const-string v4, "B"

    const-string v9, "H"

    filled-new-array {v4, v9}, [Ljava/lang/String;

    move-result-object v4

    .line 508
    invoke-static {v1, v3, v6, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c47

    goto/16 :goto_502

    :cond_c47
    if-le v7, v14, :cond_c8e

    add-int/lit8 v3, v7, -0x1

    .line 513
    invoke-virtual {v0, v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    const/16 v4, 0x55

    if-ne v3, v4, :cond_c8e

    add-int/lit8 v3, v7, -0x3

    const-string v4, "C"

    const-string v9, "G"

    const-string v10, "L"

    const-string v11, "R"

    const-string v12, "T"

    filled-new-array {v4, v9, v10, v11, v12}, [Ljava/lang/String;

    move-result-object v4

    .line 514
    invoke-static {v1, v3, v6, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c8e

    .line 518
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_c7b

    .line 519
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v4, 0x46

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_c7d

    :cond_c7b
    const/16 v4, 0x46

    .line 521
    :goto_c7d
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v9, :cond_502

    .line 522
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_502

    :cond_c8e
    if-lez v7, :cond_502

    add-int/lit8 v3, v7, -0x1

    .line 525
    invoke-virtual {v0, v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    const/16 v4, 0x49

    if-eq v3, v4, :cond_502

    .line 526
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_cac

    .line 527
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v4, 0x4b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_cae

    :cond_cac
    const/16 v4, 0x4b

    .line 529
    :goto_cae
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v9, :cond_502

    .line 530
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_502

    .line 537
    :cond_cbf
    invoke-virtual {v0, v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    const/16 v9, 0x4e

    if-ne v4, v9, :cond_dab

    if-ne v7, v6, :cond_d15

    .line 538
    invoke-virtual {v0, v1, v5}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    invoke-virtual {v12, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v9, -0x1

    if-eq v4, v9, :cond_d15

    if-nez v2, :cond_d15

    .line 539
    iget v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v3, v4

    if-gt v14, v3, :cond_ce9

    .line 541
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const-string v4, "KN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cf4

    .line 544
    :cond_ce9
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const-string v9, "KN"

    invoke-virtual {v9, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    :goto_cf4
    iget v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v3, v4

    if-gt v6, v3, :cond_d08

    .line 548
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const-string v4, "N"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_502

    .line 551
    :cond_d08
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const-string v9, "N"

    invoke-virtual {v9, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_502

    :cond_d15
    add-int/lit8 v4, v7, 0x2

    const-string v9, "EY"

    .line 554
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v4, v14, v9}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d6c

    .line 555
    invoke-virtual {v0, v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    const/16 v4, 0x59

    if-eq v3, v4, :cond_d6c

    if-nez v2, :cond_d6c

    .line 556
    iget v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v3, v4

    if-gt v6, v3, :cond_d40

    .line 558
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const-string v4, "N"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d4b

    .line 561
    :cond_d40
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const-string v9, "N"

    invoke-virtual {v9, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    :goto_d4b
    iget v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v3, v4

    if-gt v14, v3, :cond_d5f

    .line 565
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const-string v4, "KN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_502

    .line 568
    :cond_d5f
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const-string v9, "KN"

    invoke-virtual {v9, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_502

    .line 572
    :cond_d6c
    iget v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v3, v4

    if-gt v14, v3, :cond_d7f

    .line 574
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const-string v4, "KN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d8a

    .line 577
    :cond_d7f
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const-string v9, "KN"

    invoke-virtual {v9, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    :goto_d8a
    iget v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v3, v4

    if-gt v14, v3, :cond_d9e

    .line 581
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const-string v4, "KN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_502

    .line 584
    :cond_d9e
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const-string v9, "KN"

    invoke-virtual {v9, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_502

    :cond_dab
    const-string v4, "LI"

    .line 589
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v14, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_df8

    if-nez v2, :cond_df8

    .line 590
    iget v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v3, v4

    if-gt v14, v3, :cond_dcc

    .line 592
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const-string v4, "KL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_dd7

    .line 595
    :cond_dcc
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const-string v9, "KL"

    invoke-virtual {v9, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    :goto_dd7
    iget v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v3, v4

    if-gt v6, v3, :cond_deb

    .line 599
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const-string v4, "L"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_502

    .line 602
    :cond_deb
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const-string v9, "L"

    invoke-virtual {v9, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_502

    :cond_df8
    if-nez v7, :cond_e2c

    .line 607
    invoke-virtual {v0, v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    const/16 v9, 0x59

    if-eq v4, v9, :cond_e0a

    sget-object v4, Lcom/helpshift/support/external/DoubleMetaphone;->ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

    .line 608
    invoke-static {v1, v3, v14, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e2c

    .line 610
    :cond_e0a
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_e1b

    .line 611
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v4, 0x4b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 613
    :cond_e1b
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_502

    .line 614
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_502

    :cond_e2c
    const-string v4, "ER"

    .line 618
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v14, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e40

    .line 619
    invoke-virtual {v0, v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    const/16 v9, 0x59

    if-ne v4, v9, :cond_e92

    :cond_e40
    const/4 v4, 0x6

    const-string v9, "DANGER"

    const-string v10, "RANGER"

    const-string v11, "MANGER"

    filled-new-array {v9, v10, v11}, [Ljava/lang/String;

    move-result-object v9

    .line 620
    invoke-static {v1, v5, v4, v9}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e92

    add-int/lit8 v4, v7, -0x1

    const-string v9, "E"

    const-string v10, "I"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    .line 621
    invoke-static {v1, v4, v6, v9}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e92

    const-string v9, "RGY"

    const-string v10, "OGY"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    .line 622
    invoke-static {v1, v4, v10, v9}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e92

    .line 624
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_e81

    .line 625
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v4, 0x4b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 627
    :cond_e81
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_502

    .line 628
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_502

    :cond_e92
    const-string v4, "E"

    const-string v9, "I"

    const-string v10, "Y"

    .line 632
    filled-new-array {v4, v9, v10}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v6, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f05

    add-int/lit8 v4, v7, -0x1

    const-string v9, "AGGI"

    const-string v10, "OGGI"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    .line 633
    invoke-static {v1, v4, v10, v9}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_eb4

    goto :goto_f05

    .line 664
    :cond_eb4
    invoke-virtual {v0, v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    const/16 v9, 0x47

    if-ne v4, v9, :cond_ee3

    add-int/lit8 v7, v7, 0x2

    .line 666
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_ed0

    .line 667
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v4, 0x4b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_ed2

    :cond_ed0
    const/16 v4, 0x4b

    .line 669
    :goto_ed2
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v9, :cond_157f

    .line 670
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_157f

    :cond_ee3
    const/16 v4, 0x4b

    .line 675
    iget-object v7, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v7, v9, :cond_ef4

    .line 676
    iget-object v7, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 678
    :cond_ef4
    iget-object v7, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v7, v9, :cond_577

    .line 679
    iget-object v7, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_577

    :cond_f05
    :goto_f05
    const-string v4, "VAN "

    const-string v9, "VON "

    .line 635
    filled-new-array {v4, v9}, [Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x4

    invoke-static {v1, v5, v9, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f7c

    const-string v4, "SCH"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x3

    .line 636
    invoke-static {v1, v5, v9, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f7c

    const-string v4, "ET"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 637
    invoke-static {v1, v3, v14, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f2e

    goto :goto_f7c

    :cond_f2e
    const-string v4, "IER"

    .line 646
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v9, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f5a

    .line 647
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_f49

    .line 648
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 650
    :cond_f49
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_502

    .line 651
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_502

    .line 655
    :cond_f5a
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_f69

    .line 656
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 658
    :cond_f69
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_502

    .line 659
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const/16 v4, 0x4b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_502

    :cond_f7c
    :goto_f7c
    const/16 v4, 0x4b

    .line 639
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v9, :cond_f8d

    .line 640
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 642
    :cond_f8d
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v9, :cond_502

    .line 643
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_502

    .line 466
    :pswitch_f9e
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_fb0

    .line 467
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v4, 0x46

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_fb2

    :cond_fb0
    const/16 v4, 0x46

    .line 469
    :goto_fb2
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v9, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v9, :cond_fc1

    .line 470
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_fc1
    add-int/lit8 v3, v7, 0x1

    .line 472
    invoke-virtual {v0, v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v9

    if-ne v9, v4, :cond_577

    goto/16 :goto_502

    :pswitch_fcb
    const-string v3, "DG"

    .line 415
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v7, v14, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1048

    add-int/lit8 v3, v7, 0x2

    const-string v4, "I"

    const-string v9, "E"

    const-string v10, "Y"

    .line 417
    filled-new-array {v4, v9, v10}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v6, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1009

    .line 418
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_ff8

    .line 419
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 421
    :cond_ff8
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_782

    .line 422
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_782

    .line 428
    :cond_1009
    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    iget-object v7, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int/2addr v4, v7

    if-gt v14, v4, :cond_101c

    .line 430
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const-string v7, "TK"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1027

    .line 433
    :cond_101c
    iget-object v7, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const-string v9, "TK"

    invoke-virtual {v9, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    :goto_1027
    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    iget-object v7, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int/2addr v4, v7

    if-gt v14, v4, :cond_103b

    .line 437
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const-string v7, "TK"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_577

    .line 440
    :cond_103b
    iget-object v7, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const-string v9, "TK"

    invoke-virtual {v9, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_577

    :cond_1048
    const-string v3, "DT"

    const-string v4, "DD"

    .line 445
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v7, v14, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1076

    .line 446
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_1065

    .line 447
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 449
    :cond_1065
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_502

    .line 450
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_502

    .line 455
    :cond_1076
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_1085

    .line 456
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 458
    :cond_1085
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_157d

    .line 459
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_157d

    :pswitch_1096
    const-string v3, "CHIA"

    .line 167
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v1, v7, v4, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10a6

    const/4 v3, 0x1

    :goto_10a4
    const/4 v9, -0x1

    goto :goto_10e7

    :cond_10a6
    if-gt v7, v6, :cond_10aa

    const/4 v3, 0x0

    goto :goto_10a4

    :cond_10aa
    add-int/lit8 v3, v7, -0x2

    .line 173
    invoke-virtual {v0, v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    invoke-virtual {v12, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v9, -0x1

    if-eq v4, v9, :cond_10b9

    :cond_10b7
    :goto_10b7
    const/4 v3, 0x0

    goto :goto_10e7

    :cond_10b9
    add-int/lit8 v4, v7, -0x1

    const-string v10, "ACH"

    .line 176
    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x3

    invoke-static {v1, v4, v12, v10}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10c9

    goto :goto_10b7

    :cond_10c9
    add-int/lit8 v4, v7, 0x2

    .line 180
    invoke-virtual {v0, v1, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    const/16 v10, 0x49

    if-eq v4, v10, :cond_10d7

    const/16 v10, 0x45

    if-ne v4, v10, :cond_10e6

    :cond_10d7
    const/4 v4, 0x6

    const-string v10, "BACHER"

    const-string v12, "MACHER"

    .line 181
    filled-new-array {v10, v12}, [Ljava/lang/String;

    move-result-object v10

    .line 182
    invoke-static {v1, v3, v4, v10}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10b7

    :cond_10e6
    const/4 v3, 0x1

    :goto_10e7
    if-eqz v3, :cond_1112

    .line 185
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_10fb

    .line 186
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v4, 0x4b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_10fd

    :cond_10fb
    const/16 v4, 0x4b

    .line 188
    :goto_10fd
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v10, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v10, :cond_110c

    .line 189
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_110c
    :goto_110c
    add-int/lit8 v7, v7, 0x2

    :goto_110e
    const/16 v10, 0x4b

    goto/16 :goto_157f

    :cond_1112
    if-nez v7, :cond_1140

    const/4 v3, 0x6

    const-string v4, "CAESAR"

    .line 194
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v7, v3, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1140

    .line 195
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_1130

    .line 196
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    :cond_1130
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_110c

    .line 199
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_110c

    :cond_1140
    const-string v3, "CH"

    .line 204
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v7, v14, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12e7

    if-eqz v7, :cond_1150

    :goto_114e
    const/4 v3, 0x0

    goto :goto_1184

    :cond_1150
    add-int/lit8 v3, v7, 0x1

    const/4 v4, 0x5

    const-string v10, "HARAC"

    const-string v11, "HARIS"

    .line 210
    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v3, v4, v10}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1175

    const-string v4, "HOR"

    const-string v10, "HYM"

    const-string v11, "HIA"

    const-string v12, "HEM"

    filled-new-array {v4, v10, v11, v12}, [Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x3

    .line 211
    invoke-static {v1, v3, v10, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1175

    goto :goto_114e

    :cond_1175
    const/4 v3, 0x5

    const-string v4, "CHORE"

    .line 215
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v5, v3, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1183

    goto :goto_114e

    :cond_1183
    const/4 v3, 0x1

    :goto_1184
    if-lez v7, :cond_11b7

    const-string v4, "CHAE"

    .line 221
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x4

    invoke-static {v1, v7, v10, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11b7

    .line 222
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_11a4

    .line 223
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v4, 0x4b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    :cond_11a4
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_110c

    .line 226
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const/16 v4, 0x58

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_110c

    :cond_11b7
    if-eqz v3, :cond_11de

    .line 232
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_11cb

    .line 233
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v4, 0x4b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_11cd

    :cond_11cb
    const/16 v4, 0x4b

    .line 235
    :goto_11cd
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v10, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v10, :cond_110c

    .line 236
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_110c

    :cond_11de
    const-string v3, "VAN "

    const-string v4, "VON "

    .line 240
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    .line 241
    invoke-static {v1, v5, v4, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12c2

    const-string v3, "SCH"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v1, v5, v4, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12c2

    add-int/lit8 v3, v7, -0x2

    const/4 v4, 0x6

    const-string v10, "ORCHES"

    const-string v11, "ARCHIT"

    const-string v12, "ORCHID"

    filled-new-array {v10, v11, v12}, [Ljava/lang/String;

    move-result-object v10

    .line 242
    invoke-static {v1, v3, v4, v10}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12c2

    add-int/lit8 v3, v7, 0x2

    const-string v4, "T"

    const-string v10, "S"

    filled-new-array {v4, v10}, [Ljava/lang/String;

    move-result-object v4

    .line 243
    invoke-static {v1, v3, v6, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12c2

    add-int/lit8 v4, v7, -0x1

    const-string v10, "A"

    const-string v11, "O"

    const-string v12, "U"

    const-string v13, "E"

    filled-new-array {v10, v11, v12, v13}, [Ljava/lang/String;

    move-result-object v10

    .line 244
    invoke-static {v1, v4, v6, v10}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1233

    if-nez v7, :cond_1246

    :cond_1233
    sget-object v4, Lcom/helpshift/support/external/DoubleMetaphone;->L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

    .line 246
    invoke-static {v1, v3, v6, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12c2

    add-int/lit8 v4, v7, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v6

    if-ne v4, v10, :cond_1246

    goto/16 :goto_12c2

    :cond_1246
    if-lez v7, :cond_129d

    const-string v4, "MC"

    .line 258
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v5, v14, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1279

    .line 259
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v7, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v7, :cond_1266

    .line 260
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v7, 0x4b

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1268

    :cond_1266
    const/16 v7, 0x4b

    .line 262
    :goto_1268
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v10, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v10, :cond_1431

    .line 263
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1431

    .line 267
    :cond_1279
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v7, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v7, :cond_128a

    .line 268
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v7, 0x58

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 270
    :cond_128a
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v7, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v7, :cond_1431

    .line 271
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const/16 v7, 0x4b

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1431

    .line 276
    :cond_129d
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v7, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v7, :cond_12af

    .line 277
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v7, 0x58

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_12b1

    :cond_12af
    const/16 v7, 0x58

    .line 279
    :goto_12b1
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v10, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v10, :cond_1431

    .line 280
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1431

    .line 248
    :cond_12c2
    :goto_12c2
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_12d4

    .line 249
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v4, 0x4b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_12d6

    :cond_12d4
    const/16 v4, 0x4b

    .line 251
    :goto_12d6
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v10, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v10, :cond_110c

    .line 252
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_110c

    :cond_12e7
    const-string v3, "CZ"

    .line 288
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v7, v14, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1324

    add-int/lit8 v3, v7, -0x2

    const-string v4, "WICZ"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x4

    .line 289
    invoke-static {v1, v3, v10, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1324

    .line 291
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_1311

    .line 292
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    :cond_1311
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_110c

    .line 295
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const/16 v4, 0x58

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_110c

    :cond_1324
    add-int/lit8 v3, v7, 0x1

    const-string v4, "CIA"

    .line 300
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x3

    invoke-static {v1, v3, v10, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_135a

    .line 302
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_1345

    .line 303
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v4, 0x58

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1347

    :cond_1345
    const/16 v4, 0x58

    .line 305
    :goto_1347
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v10, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v10, :cond_1356

    .line 306
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1356
    add-int/lit8 v7, v7, 0x3

    goto/16 :goto_110e

    :cond_135a
    const-string v4, "CC"

    .line 311
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v7, v14, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1434

    if-ne v7, v6, :cond_1370

    .line 312
    invoke-virtual {v0, v1, v5}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    const/16 v10, 0x4d

    if-eq v4, v10, :cond_1434

    :cond_1370
    add-int/lit8 v3, v7, 0x2

    const-string v4, "I"

    const-string v10, "E"

    const-string v11, "H"

    .line 315
    filled-new-array {v4, v10, v11}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v6, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_140e

    const-string v4, "HU"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 316
    invoke-static {v1, v3, v14, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_140e

    if-ne v7, v6, :cond_139a

    add-int/lit8 v3, v7, -0x1

    .line 318
    invoke-virtual {v0, v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    const/16 v4, 0x41

    if-eq v3, v4, :cond_13ab

    :cond_139a
    add-int/lit8 v3, v7, -0x1

    const/4 v4, 0x5

    const-string v10, "UCCEE"

    const-string v11, "UCCES"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    .line 319
    invoke-static {v1, v3, v4, v10}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13e8

    .line 321
    :cond_13ab
    iget v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v3, v4

    if-gt v14, v3, :cond_13be

    .line 323
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const-string v4, "KS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13c9

    .line 326
    :cond_13be
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const-string v10, "KS"

    invoke-virtual {v10, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    :goto_13c9
    iget v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v3, v4

    if-gt v14, v3, :cond_13dc

    .line 330
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const-string v4, "KS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_140b

    .line 333
    :cond_13dc
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const-string v10, "KS"

    invoke-virtual {v10, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_140b

    .line 338
    :cond_13e8
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_13fa

    .line 339
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v4, 0x58

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_13fc

    :cond_13fa
    const/16 v4, 0x58

    .line 341
    :goto_13fc
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v10, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v10, :cond_140b

    .line 342
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_140b
    :goto_140b
    add-int/lit8 v3, v7, 0x3

    goto :goto_1431

    .line 348
    :cond_140e
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v7, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v7, :cond_1420

    .line 349
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v7, 0x4b

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1422

    :cond_1420
    const/16 v7, 0x4b

    .line 351
    :goto_1422
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v10, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v10, :cond_1431

    .line 352
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1431
    :goto_1431
    move v7, v3

    goto/16 :goto_110e

    :cond_1434
    const-string v4, "CK"

    const-string v10, "CG"

    const-string v12, "CQ"

    .line 359
    filled-new-array {v4, v10, v12}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v7, v14, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1469

    .line 360
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_1456

    .line 361
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v4, 0x4b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1458

    :cond_1456
    const/16 v4, 0x4b

    .line 363
    :goto_1458
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v10, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v10, :cond_110c

    .line 364
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_110c

    :cond_1469
    const-string v4, "CI"

    const-string v10, "CE"

    const-string v12, "CY"

    .line 369
    filled-new-array {v4, v10, v12}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v7, v14, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14cc

    const-string v3, "CIO"

    const-string v4, "CIE"

    const-string v10, "CIA"

    .line 371
    filled-new-array {v3, v4, v10}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v1, v7, v4, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14ac

    .line 372
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_1499

    .line 373
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 375
    :cond_1499
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_110c

    .line 376
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const/16 v4, 0x58

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_110c

    .line 380
    :cond_14ac
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_14bb

    .line 381
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 383
    :cond_14bb
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_110c

    .line 384
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_110c

    .line 391
    :cond_14cc
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v10, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v10, :cond_14de

    .line 392
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v10, 0x4b

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_14e0

    :cond_14de
    const/16 v10, 0x4b

    .line 394
    :goto_14e0
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v11, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v4, v11, :cond_14ef

    .line 395
    iget-object v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_14ef
    const-string v4, " C"

    const-string v11, " Q"

    const-string v12, " G"

    .line 397
    filled-new-array {v4, v11, v12}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v14, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1503

    add-int/lit8 v3, v7, 0x3

    goto/16 :goto_577

    :cond_1503
    const-string v4, "C"

    const-string v11, "K"

    const-string v12, "Q"

    .line 401
    filled-new-array {v4, v11, v12}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v6, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_577

    const-string v4, "CE"

    const-string v11, "CI"

    filled-new-array {v4, v11}, [Ljava/lang/String;

    move-result-object v4

    .line 402
    invoke-static {v1, v3, v14, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_577

    add-int/lit8 v3, v7, 0x2

    goto/16 :goto_577

    :pswitch_1525
    const/4 v9, -0x1

    const/16 v10, 0x4b

    .line 145
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_1539

    .line 146
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v4, 0x50

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    :cond_1539
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_154a

    .line 149
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const/16 v4, 0x50

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_154a
    add-int/lit8 v3, v7, 0x1

    .line 151
    invoke-virtual {v0, v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    const/16 v11, 0x42

    if-ne v4, v11, :cond_577

    goto/16 :goto_502

    :pswitch_1556
    const/4 v9, -0x1

    const/16 v10, 0x4b

    if-nez v7, :cond_157d

    .line 135
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_156c

    .line 136
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v4, 0x41

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    :cond_156c
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_157d

    .line 139
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const/16 v4, 0x41

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_157d
    :goto_157d
    add-int/lit8 v7, v7, 0x1

    :cond_157f
    :goto_157f
    const/4 v3, -0x1

    goto/16 :goto_92

    :cond_1582
    const/4 v9, -0x1

    const/16 v10, 0x4b

    .line 851
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_1596

    .line 852
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/16 v4, 0x4e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 854
    :cond_1596
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_157d

    .line 855
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const/16 v4, 0x4e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_157d

    :cond_15a8
    const/4 v9, -0x1

    const/16 v10, 0x4b

    .line 155
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_15ba

    .line 156
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    :cond_15ba
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v3, v4, :cond_157d

    .line 159
    iget-object v3, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_157d

    :cond_15ca
    if-eqz p2, :cond_15cf

    .line 1301
    iget-object v1, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    goto :goto_15d1

    :cond_15cf
    iget-object v1, v8, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    :goto_15d1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_15d6
    .packed-switch 0x41
        :pswitch_1556
        :pswitch_1525
        :pswitch_1096
        :pswitch_fcb
        :pswitch_1556
        :pswitch_f9e
        :pswitch_b7d
        :pswitch_b40
        :pswitch_1556
        :pswitch_9eb
        :pswitch_9be
        :pswitch_903
        :pswitch_8ab
        :pswitch_87d
        :pswitch_1556
        :pswitch_81c
        :pswitch_7ed
        :pswitch_786
        :pswitch_45d
        :pswitch_33e
        :pswitch_1556
        :pswitch_30f
        :pswitch_1dc
        :pswitch_143
        :pswitch_1556
        :pswitch_95
    .end packed-switch
.end method
