.class public final Lcom/google/zxing/client/result/VCardResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "VCardResultParser.java"


# static fields
.field private static final BEGIN_VCARD:Ljava/util/regex/Pattern;

.field private static final COMMA:Ljava/util/regex/Pattern;

.field private static final CR_LF_SPACE_TAB:Ljava/util/regex/Pattern;

.field private static final EQUALS:Ljava/util/regex/Pattern;

.field private static final NEWLINE_ESCAPE:Ljava/util/regex/Pattern;

.field private static final SEMICOLON:Ljava/util/regex/Pattern;

.field private static final SEMICOLON_OR_COMMA:Ljava/util/regex/Pattern;

.field private static final UNESCAPED_SEMICOLONS:Ljava/util/regex/Pattern;

.field private static final VCARD_ESCAPES:Ljava/util/regex/Pattern;

.field private static final VCARD_LIKE_DATE:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "BEGIN:VCARD"

    const/4 v1, 0x2

    .line 39
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->BEGIN_VCARD:Ljava/util/regex/Pattern;

    const-string v0, "\\d{4}-?\\d{2}-?\\d{2}"

    .line 40
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_LIKE_DATE:Ljava/util/regex/Pattern;

    const-string v0, "\r\n[ \t]"

    .line 41
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->CR_LF_SPACE_TAB:Ljava/util/regex/Pattern;

    const-string v0, "\\\\[nN]"

    .line 42
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->NEWLINE_ESCAPE:Ljava/util/regex/Pattern;

    const-string v0, "\\\\([,;\\\\])"

    .line 43
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_ESCAPES:Ljava/util/regex/Pattern;

    const-string v0, "="

    .line 44
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->EQUALS:Ljava/util/regex/Pattern;

    const-string v0, ";"

    .line 45
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->SEMICOLON:Ljava/util/regex/Pattern;

    const-string v0, "(?<!\\\\);+"

    .line 46
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->UNESCAPED_SEMICOLONS:Ljava/util/regex/Pattern;

    const-string v0, ","

    .line 47
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->COMMA:Ljava/util/regex/Pattern;

    const-string v0, "[;,]"

    .line 48
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->SEMICOLON_OR_COMMA:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static decodeQuotedPrintable(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 224
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 226
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v0, :cond_51

    .line 228
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_4e

    const/16 v6, 0xd

    if-eq v4, v6, :cond_4e

    const/16 v7, 0x3d

    if-eq v4, v7, :cond_28

    .line 248
    invoke-static {v2, p1, v1}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendFragment(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 249
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4e

    :cond_28
    add-int/lit8 v4, v0, -0x2

    if-ge v3, v4, :cond_4e

    add-int/lit8 v4, v3, 0x1

    .line 235
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v4, v6, :cond_4e

    if-eq v4, v5, :cond_4e

    add-int/lit8 v3, v3, 0x2

    .line 237
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 238
    invoke-static {v4}, Lcom/google/zxing/client/result/VCardResultParser;->parseHexDigit(C)I

    move-result v4

    .line 239
    invoke-static {v5}, Lcom/google/zxing/client/result/VCardResultParser;->parseHexDigit(C)I

    move-result v5

    if-ltz v4, :cond_4e

    if-ltz v5, :cond_4e

    shl-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v5

    .line 241
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_4e
    :goto_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 252
    :cond_51
    invoke-static {v2, p1, v1}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendFragment(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 253
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatNames(Ljava/lang/Iterable;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_5f

    .line 342
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    .line 343
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x5

    .line 344
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1e
    const/4 v6, 0x4

    if-ge v4, v6, :cond_34

    const/16 v7, 0x3b

    .line 348
    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-ltz v7, :cond_34

    .line 349
    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v7, 0x1

    goto :goto_1e

    .line 353
    :cond_34
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x64

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x3

    .line 355
    invoke-static {v3, v4, v2}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    const/4 v4, 0x1

    .line 356
    invoke-static {v3, v4, v2}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    const/4 v4, 0x2

    .line 357
    invoke-static {v3, v4, v2}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 358
    invoke-static {v3, v1, v2}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 359
    invoke-static {v3, v6, v2}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 360
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_5f
    return-void
.end method

.method private static isLikeVCardDate(Ljava/lang/CharSequence;)Z
    .registers 2

    if-eqz p0, :cond_11

    .line 331
    sget-object v0, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_LIKE_DATE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method static matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 280
    invoke-static {p0, p1, p2, p3}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 281
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_15

    :cond_d
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_15
    :goto_15
    const/4 p0, 0x0

    return-object p0
.end method

.method static matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 109
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_9
    if-ge v4, v1, :cond_177

    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(?:^|\n)"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v7, p0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "(?:;([^:]*))?:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    invoke-static {v6, v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 116
    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    if-lez v4, :cond_2d

    add-int/lit8 v4, v4, -0x1

    .line 120
    :cond_2d
    invoke-virtual {v6, v4}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v4

    if-eqz v4, :cond_177

    .line 123
    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->end(I)I

    move-result v4

    const/4 v9, 0x1

    .line 125
    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_90

    .line 131
    sget-object v10, Lcom/google/zxing/client/result/VCardResultParser;->SEMICOLON:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v6}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v6

    array-length v10, v6

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_4a
    if-ge v11, v10, :cond_94

    aget-object v2, v6, v11

    if-nez v12, :cond_55

    .line 133
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    :cond_55
    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v3, Lcom/google/zxing/client/result/VCardResultParser;->EQUALS:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2, v8}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v2

    .line 137
    array-length v3, v2

    if-le v3, v9, :cond_8b

    const/4 v3, 0x0

    .line 138
    aget-object v8, v2, v3

    .line 139
    aget-object v2, v2, v9

    const-string v3, "ENCODING"

    .line 140
    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_78

    const-string v3, "QUOTED-PRINTABLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_78

    const/4 v13, 0x1

    goto :goto_8b

    :cond_78
    const-string v3, "CHARSET"

    .line 142
    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_82

    move-object v14, v2

    goto :goto_8b

    :cond_82
    const-string v3, "VALUE"

    .line 144
    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8b

    move-object v15, v2

    :cond_8b
    :goto_8b
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x2

    goto :goto_4a

    :cond_90
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :cond_94
    move v2, v4

    :goto_95
    const/16 v3, 0xa

    .line 153
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ltz v2, :cond_d8

    .line 154
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v9

    if-ge v2, v3, :cond_b9

    add-int/lit8 v3, v2, 0x1

    .line 155
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x20

    if-eq v6, v8, :cond_b6

    .line 156
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x9

    if-ne v3, v6, :cond_b9

    :cond_b6
    add-int/lit8 v2, v2, 0x2

    goto :goto_95

    :cond_b9
    if-eqz v13, :cond_d8

    const/16 v3, 0x3d

    if-lez v2, :cond_ca

    add-int/lit8 v6, v2, -0x1

    .line 159
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v3, :cond_c8

    goto :goto_ca

    :cond_c8
    const/4 v6, 0x2

    goto :goto_d5

    :cond_ca
    :goto_ca
    const/4 v6, 0x2

    if-lt v2, v6, :cond_d8

    add-int/lit8 v8, v2, -0x2

    .line 160
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v3, :cond_d8

    :goto_d5
    add-int/lit8 v2, v2, 0x1

    goto :goto_95

    :cond_d8
    if-gez v2, :cond_de

    move v4, v1

    :goto_db
    const/4 v3, 0x0

    goto/16 :goto_9

    :cond_de
    if-le v2, v4, :cond_171

    if-nez v5, :cond_e8

    .line 173
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v3

    :cond_e8
    if-lez v2, :cond_f6

    add-int/lit8 v3, v2, -0x1

    .line 175
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0xd

    if-ne v3, v6, :cond_f6

    add-int/lit8 v2, v2, -0x1

    .line 178
    :cond_f6
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_100

    .line 180
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :cond_100
    const-string v4, "\n"

    if-eqz v13, :cond_119

    .line 183
    invoke-static {v3, v14}, Lcom/google/zxing/client/result/VCardResultParser;->decodeQuotedPrintable(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz p3, :cond_14b

    .line 185
    sget-object v6, Lcom/google/zxing/client/result/VCardResultParser;->UNESCAPED_SEMICOLONS:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_14b

    :cond_119
    if-eqz p3, :cond_129

    .line 189
    sget-object v6, Lcom/google/zxing/client/result/VCardResultParser;->UNESCAPED_SEMICOLONS:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 191
    :cond_129
    sget-object v6, Lcom/google/zxing/client/result/VCardResultParser;->CR_LF_SPACE_TAB:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 192
    sget-object v6, Lcom/google/zxing/client/result/VCardResultParser;->NEWLINE_ESCAPE:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 193
    sget-object v4, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_ESCAPES:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v4, "$1"

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_14b
    :goto_14b
    const-string v4, "uri"

    .line 196
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15b

    .line 200
    :try_start_153
    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3
    :try_end_15b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_153 .. :try_end_15b} :catch_15b

    :catch_15b
    :cond_15b
    if-nez v12, :cond_169

    .line 206
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 207
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_171

    :cond_169
    const/4 v4, 0x0

    .line 210
    invoke-interface {v12, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 211
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_172

    :cond_171
    :goto_171
    const/4 v4, 0x0

    :goto_172
    add-int/lit8 v2, v2, 0x1

    move v4, v2

    goto/16 :goto_db

    :cond_177
    return-object v5
.end method

.method private static maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V
    .registers 4

    .line 366
    aget-object v0, p0, p1

    if-eqz v0, :cond_1c

    aget-object v0, p0, p1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 367
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_17

    const/16 v0, 0x20

    .line 368
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 370
    :cond_17
    aget-object p0, p0, p1

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    return-void
.end method

.method private static maybeAppendFragment(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 5

    .line 259
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_28

    .line 260
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    if-nez p1, :cond_14

    .line 263
    new-instance p1, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_22

    .line 266
    :cond_14
    :try_start_14
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_14 .. :try_end_19} :catch_1b

    move-object p1, v1

    goto :goto_22

    .line 268
    :catch_1b
    new-instance p1, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 271
    :goto_22
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 272
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    return-void
.end method

.method private static toPrimaryValue(Ljava/util/List;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_11

    .line 285
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_11

    :cond_9
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_11
    :goto_11
    const/4 p0, 0x0

    return-object p0
.end method

.method private static toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_42

    .line 289
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_42

    .line 292
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 293
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_16
    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    .line 294
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_16

    .line 295
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    .line 296
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 299
    :cond_35
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_42
    :goto_42
    const/4 p0, 0x0

    return-object p0
.end method

.method private static toTypes(Ljava/util/Collection;)[Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_71

    .line 303
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_71

    .line 306
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 307
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_17
    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    .line 308
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_17

    .line 309
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_17

    const/4 v4, 0x1

    .line 311
    :goto_33
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5f

    .line 312
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/16 v6, 0x3d

    .line 313
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_49

    move-object v2, v5

    goto :goto_60

    .line 319
    :cond_49
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "TYPE"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5c

    add-int/lit8 v6, v6, 0x1

    .line 320
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_60

    :cond_5c
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_5f
    move-object v2, v0

    .line 324
    :goto_60
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 327
    :cond_64
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_71
    :goto_71
    return-object v0
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;
    .registers 25

    .line 55
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/VCardResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    .line 56
    sget-object v1, Lcom/google/zxing/client/result/VCardResultParser;->BEGIN_VCARD:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_e9

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    if-eqz v1, :cond_19

    goto/16 :goto_e9

    :cond_19
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v4, "FN"

    .line 60
    invoke-static {v4, v0, v1, v2}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_2c

    const-string v4, "N"

    .line 63
    invoke-static {v4, v0, v1, v2}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v4

    .line 64
    invoke-static {v4}, Lcom/google/zxing/client/result/VCardResultParser;->formatNames(Ljava/lang/Iterable;)V

    :cond_2c
    const-string v5, "NICKNAME"

    .line 66
    invoke-static {v5, v0, v1, v2}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_36

    move-object v8, v3

    goto :goto_43

    .line 67
    :cond_36
    sget-object v6, Lcom/google/zxing/client/result/VCardResultParser;->COMMA:Ljava/util/regex/Pattern;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    :goto_43
    const-string v5, "TEL"

    .line 68
    invoke-static {v5, v0, v1, v2}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v5

    const-string v6, "EMAIL"

    .line 69
    invoke-static {v6, v0, v1, v2}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v13

    const-string v6, "NOTE"

    .line 70
    invoke-static {v6, v0, v2, v2}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v15

    const-string v6, "ADR"

    .line 71
    invoke-static {v6, v0, v1, v1}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v17

    const-string v6, "ORG"

    .line 72
    invoke-static {v6, v0, v1, v1}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v18

    const-string v6, "BDAY"

    .line 73
    invoke-static {v6, v0, v1, v2}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_78

    .line 74
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lcom/google/zxing/client/result/VCardResultParser;->isLikeVCardDate(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_78

    move-object/from16 v19, v3

    goto :goto_7a

    :cond_78
    move-object/from16 v19, v6

    :goto_7a
    const-string v6, "TITLE"

    .line 77
    invoke-static {v6, v0, v1, v2}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v20

    const-string v6, "URL"

    .line 78
    invoke-static {v6, v0, v1, v2}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v21

    const-string v6, "IMPP"

    .line 79
    invoke-static {v6, v0, v1, v2}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v14

    const-string v6, "GEO"

    .line 80
    invoke-static {v6, v0, v1, v2}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_96

    move-object v0, v3

    goto :goto_a2

    .line 81
    :cond_96
    sget-object v1, Lcom/google/zxing/client/result/VCardResultParser;->SEMICOLON_OR_COMMA:Ljava/util/regex/Pattern;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    :goto_a2
    if-eqz v0, :cond_ab

    .line 82
    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_ab

    move-object/from16 v22, v3

    goto :goto_ad

    :cond_ab
    move-object/from16 v22, v0

    .line 85
    :goto_ad
    new-instance v0, Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-object v6, v0

    invoke-static {v4}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    .line 88
    invoke-static {v5}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v10

    .line 89
    invoke-static {v5}, Lcom/google/zxing/client/result/VCardResultParser;->toTypes(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v11

    .line 90
    invoke-static {v13}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v12

    .line 91
    invoke-static {v13}, Lcom/google/zxing/client/result/VCardResultParser;->toTypes(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v13

    .line 92
    invoke-static {v14}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v14

    .line 93
    invoke-static {v15}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v15

    .line 94
    invoke-static/range {v17 .. v17}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v16

    .line 95
    invoke-static/range {v17 .. v17}, Lcom/google/zxing/client/result/VCardResultParser;->toTypes(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v17

    .line 96
    invoke-static/range {v18 .. v18}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v18

    .line 97
    invoke-static/range {v19 .. v19}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v19

    .line 98
    invoke-static/range {v20 .. v20}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v20

    .line 99
    invoke-static/range {v21 .. v21}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v6 .. v22}, Lcom/google/zxing/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0

    :cond_e9
    :goto_e9
    return-object v3
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .registers 2

    .line 37
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/VCardResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object p1

    return-object p1
.end method
