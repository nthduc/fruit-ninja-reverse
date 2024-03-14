.class public Lcom/helpshift/util/HSLinkify;
.super Ljava/lang/Object;
.source "HSLinkify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/util/HSLinkify$LinkClickListener;,
        Lcom/helpshift/util/HSLinkify$TransformFilter;,
        Lcom/helpshift/util/HSLinkify$MatchFilter;
    }
.end annotation


# static fields
.field public static final ALL:I = 0xf

.field private static final EMAIL_ADDRESSES:I = 0x2

.field private static final MAP_ADDRESSES:I = 0x8

.field private static final PHONE_NUMBERS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "Helpshift_HSlnkfy"

.field public static final WEB_URLS:I = 0x1

.field private static final sUrlMatchFilter:Lcom/helpshift/util/HSLinkify$MatchFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 97
    new-instance v0, Lcom/helpshift/util/HSLinkify$1;

    invoke-direct {v0}, Lcom/helpshift/util/HSLinkify$1;-><init>()V

    sput-object v0, Lcom/helpshift/util/HSLinkify;->sUrlMatchFilter:Lcom/helpshift/util/HSLinkify$MatchFilter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Lcom/helpshift/util/HSLinkify$MatchFilter;Lcom/helpshift/util/HSLinkify$TransformFilter;Lcom/helpshift/util/HSLinkify$LinkClickListener;)V
    .registers 13

    .line 385
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 387
    invoke-static/range {v1 .. v6}, Lcom/helpshift/util/HSLinkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Lcom/helpshift/util/HSLinkify$MatchFilter;Lcom/helpshift/util/HSLinkify$TransformFilter;Lcom/helpshift/util/HSLinkify$LinkClickListener;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 388
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 392
    instance-of p1, p1, Landroid/text/method/LinkMovementMethod;

    if-nez p1, :cond_2e

    .line 393
    :cond_21
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 394
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_2e
    return-void
.end method

.method private static addLinks(Landroid/text/Spannable;ILcom/helpshift/util/HSLinkify$LinkClickListener;)Z
    .registers 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez p1, :cond_6

    return v1

    .line 123
    :cond_6
    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Landroid/text/style/URLSpan;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/URLSpan;

    .line 125
    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_15
    if-ltz v3, :cond_1f

    .line 126
    aget-object v5, v2, v3

    invoke-interface {v0, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_15

    .line 129
    :cond_1f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_c4

    .line 135
    sget-object v3, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 137
    :cond_2e
    :goto_2e
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_c4

    .line 138
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    .line 139
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    .line 141
    sget-object v7, Lcom/helpshift/util/HSLinkify;->sUrlMatchFilter:Lcom/helpshift/util/HSLinkify$MatchFilter;

    if-eqz v7, :cond_46

    invoke-interface {v7, v0, v5, v6}, Lcom/helpshift/util/HSLinkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 142
    :cond_46
    new-instance v7, Lcom/helpshift/util/LinkSpec;

    invoke-direct {v7}, Lcom/helpshift/util/LinkSpec;-><init>()V

    .line 144
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    const-string v8, "http://"

    const-string v9, "https://"

    const-string v10, "rtsp://"

    .line 145
    filled-new-array {v8, v9, v10}, [Ljava/lang/String;

    move-result-object v15

    const/4 v13, 0x0

    .line 149
    :goto_5a
    array-length v8, v15

    if-ge v13, v8, :cond_a5

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 150
    aget-object v11, v15, v13

    const/4 v12, 0x0

    aget-object v8, v15, v13

    .line 151
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v16

    move-object v8, v14

    move/from16 v17, v13

    move/from16 v13, v16

    .line 150
    invoke-virtual/range {v8 .. v13}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_a2

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 155
    aget-object v11, v15, v17

    const/4 v12, 0x0

    aget-object v8, v15, v17

    .line 156
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    move-object v8, v14

    .line 155
    invoke-virtual/range {v8 .. v13}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v8

    if-nez v8, :cond_a0

    .line 157
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v15, v17

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v15, v17

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v14, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :cond_a0
    const/4 v8, 0x1

    goto :goto_a6

    :cond_a2
    add-int/lit8 v13, v17, 0x1

    goto :goto_5a

    :cond_a5
    const/4 v8, 0x0

    :goto_a6
    if-nez v8, :cond_b9

    .line 165
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v15, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 168
    :cond_b9
    iput-object v14, v7, Lcom/helpshift/util/LinkSpec;->url:Ljava/lang/String;

    .line 169
    iput v5, v7, Lcom/helpshift/util/LinkSpec;->start:I

    .line 170
    iput v6, v7, Lcom/helpshift/util/LinkSpec;->end:I

    .line 172
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2e

    :cond_c4
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_156

    .line 181
    sget-object v3, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 183
    :goto_ce
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_156

    .line 184
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    .line 185
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    .line 187
    new-instance v7, Lcom/helpshift/util/LinkSpec;

    invoke-direct {v7}, Lcom/helpshift/util/LinkSpec;-><init>()V

    .line 189
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    const-string v8, "mailto:"

    .line 190
    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v15

    const/4 v13, 0x0

    .line 194
    :goto_ec
    array-length v8, v15

    if-ge v13, v8, :cond_137

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 195
    aget-object v11, v15, v13

    const/4 v12, 0x0

    aget-object v8, v15, v13

    .line 196
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v16

    move-object v8, v14

    move/from16 v17, v13

    move/from16 v13, v16

    .line 195
    invoke-virtual/range {v8 .. v13}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_134

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 200
    aget-object v11, v15, v17

    const/4 v12, 0x0

    aget-object v8, v15, v17

    .line 201
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    move-object v8, v14

    .line 200
    invoke-virtual/range {v8 .. v13}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v8

    if-nez v8, :cond_132

    .line 202
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v15, v17

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v15, v17

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v14, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :cond_132
    const/4 v8, 0x1

    goto :goto_138

    :cond_134
    add-int/lit8 v13, v17, 0x1

    goto :goto_ec

    :cond_137
    const/4 v8, 0x0

    :goto_138
    if-nez v8, :cond_14b

    .line 210
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v15, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 213
    :cond_14b
    iput-object v14, v7, Lcom/helpshift/util/LinkSpec;->url:Ljava/lang/String;

    .line 214
    iput v5, v7, Lcom/helpshift/util/LinkSpec;->start:I

    .line 215
    iput v6, v7, Lcom/helpshift/util/LinkSpec;->end:I

    .line 217
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_ce

    :cond_156
    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_199

    .line 225
    sget-object v3, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    .line 226
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 229
    :cond_160
    :goto_160
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_199

    .line 232
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    .line 235
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x6

    if-lt v6, v7, :cond_160

    .line 236
    new-instance v6, Lcom/helpshift/util/LinkSpec;

    invoke-direct {v6}, Lcom/helpshift/util/LinkSpec;-><init>()V

    .line 237
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tel:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/helpshift/util/LinkSpec;->url:Ljava/lang/String;

    .line 238
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    iput v5, v6, Lcom/helpshift/util/LinkSpec;->start:I

    .line 239
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    iput v5, v6, Lcom/helpshift/util/LinkSpec;->end:I

    .line 240
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_160

    .line 247
    :cond_199
    new-instance v3, Lcom/helpshift/util/HSLinkify$2;

    invoke-direct {v3}, Lcom/helpshift/util/HSLinkify$2;-><init>()V

    .line 273
    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 275
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v3

    const/4 v3, 0x0

    :goto_1a7
    add-int/lit8 v6, v5, -0x1

    if-ge v3, v6, :cond_1f4

    .line 279
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/helpshift/util/LinkSpec;

    add-int/lit8 v7, v3, 0x1

    .line 280
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/helpshift/util/LinkSpec;

    .line 283
    iget v9, v6, Lcom/helpshift/util/LinkSpec;->start:I

    iget v10, v8, Lcom/helpshift/util/LinkSpec;->start:I

    if-gt v9, v10, :cond_1f2

    iget v9, v6, Lcom/helpshift/util/LinkSpec;->end:I

    iget v10, v8, Lcom/helpshift/util/LinkSpec;->start:I

    if-le v9, v10, :cond_1f2

    .line 284
    iget v9, v8, Lcom/helpshift/util/LinkSpec;->end:I

    iget v10, v6, Lcom/helpshift/util/LinkSpec;->end:I

    const/4 v11, -0x1

    if-gt v9, v10, :cond_1ce

    :goto_1cc
    move v6, v7

    goto :goto_1ea

    .line 287
    :cond_1ce
    iget v9, v6, Lcom/helpshift/util/LinkSpec;->end:I

    iget v10, v6, Lcom/helpshift/util/LinkSpec;->start:I

    sub-int/2addr v9, v10

    iget v10, v8, Lcom/helpshift/util/LinkSpec;->end:I

    iget v12, v8, Lcom/helpshift/util/LinkSpec;->start:I

    sub-int/2addr v10, v12

    if-le v9, v10, :cond_1db

    goto :goto_1cc

    .line 290
    :cond_1db
    iget v9, v6, Lcom/helpshift/util/LinkSpec;->end:I

    iget v6, v6, Lcom/helpshift/util/LinkSpec;->start:I

    sub-int/2addr v9, v6

    iget v6, v8, Lcom/helpshift/util/LinkSpec;->end:I

    iget v8, v8, Lcom/helpshift/util/LinkSpec;->start:I

    sub-int/2addr v6, v8

    if-ge v9, v6, :cond_1e9

    move v6, v3

    goto :goto_1ea

    :cond_1e9
    const/4 v6, -0x1

    :goto_1ea
    if-eq v6, v11, :cond_1f2

    .line 295
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    goto :goto_1a7

    :cond_1f2
    move v3, v7

    goto :goto_1a7

    .line 305
    :cond_1f4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1fb

    return v1

    .line 309
    :cond_1fb
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1ff
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/util/LinkSpec;

    .line 311
    iget-object v3, v2, Lcom/helpshift/util/LinkSpec;->url:Ljava/lang/String;

    move-object/from16 v5, p2

    invoke-static {v3, v5}, Lcom/helpshift/util/HSLinkify;->getURLSpanWithClickListener(Ljava/lang/String;Lcom/helpshift/util/HSLinkify$LinkClickListener;)Landroid/text/style/URLSpan;

    move-result-object v3

    .line 313
    iget v6, v2, Lcom/helpshift/util/LinkSpec;->start:I

    iget v2, v2, Lcom/helpshift/util/LinkSpec;->end:I

    const/16 v7, 0x21

    invoke-interface {v0, v3, v6, v2, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1ff

    :cond_21d
    return v4
.end method

.method private static addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Lcom/helpshift/util/HSLinkify$MatchFilter;Lcom/helpshift/util/HSLinkify$TransformFilter;Lcom/helpshift/util/HSLinkify$LinkClickListener;)Z
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    if-nez v1, :cond_d

    const-string v1, ""

    goto :goto_13

    .line 418
    :cond_d
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    :goto_13
    move-object v4, v1

    move-object/from16 v1, p1

    .line 419
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 421
    :goto_1c
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_ba

    .line 422
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    .line 423
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    const/4 v9, 0x1

    if-eqz v2, :cond_32

    .line 427
    invoke-interface {v2, v0, v7, v8}, Lcom/helpshift/util/HSLinkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v10

    goto :goto_33

    :cond_32
    const/4 v10, 0x1

    :goto_33
    if-eqz v10, :cond_b6

    .line 433
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 434
    new-array v10, v9, [Ljava/lang/String;

    aput-object v4, v10, v5

    if-eqz v3, :cond_43

    .line 436
    invoke-interface {v3, v1, v6}, Lcom/helpshift/util/HSLinkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_43
    const/4 v15, 0x0

    .line 441
    :goto_44
    array-length v11, v10

    if-ge v15, v11, :cond_93

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 442
    aget-object v14, v10, v15

    const/16 v16, 0x0

    aget-object v11, v10, v15

    .line 443
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v17

    move-object v11, v6

    move/from16 v18, v15

    move/from16 v15, v16

    move/from16 v16, v17

    .line 442
    invoke-virtual/range {v11 .. v16}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_90

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 447
    aget-object v14, v10, v18

    const/4 v15, 0x0

    aget-object v11, v10, v18

    .line 448
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v16

    move-object v11, v6

    .line 447
    invoke-virtual/range {v11 .. v16}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v11

    if-nez v11, :cond_8d

    .line 449
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v12, v10, v18

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v10, v18

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_8d
    move-object v11, v6

    const/4 v6, 0x1

    goto :goto_95

    :cond_90
    add-int/lit8 v15, v18, 0x1

    goto :goto_44

    :cond_93
    move-object v11, v6

    const/4 v6, 0x0

    :goto_95
    if-nez v6, :cond_a8

    .line 457
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v10, v5

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_a8
    move-object/from16 v10, p5

    .line 463
    invoke-static {v11, v10}, Lcom/helpshift/util/HSLinkify;->getURLSpanWithClickListener(Ljava/lang/String;Lcom/helpshift/util/HSLinkify$LinkClickListener;)Landroid/text/style/URLSpan;

    move-result-object v6

    const/16 v11, 0x21

    .line 465
    invoke-interface {v0, v6, v7, v8, v11}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    const/4 v6, 0x1

    goto/16 :goto_1c

    :cond_b6
    move-object/from16 v10, p5

    goto/16 :goto_1c

    :cond_ba
    return v6
.end method

.method public static addLinks(Landroid/widget/TextView;ILcom/helpshift/util/HSLinkify$LinkClickListener;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 330
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 332
    instance-of v2, v1, Landroid/text/Spannable;

    const/4 v3, 0x1

    if-eqz v2, :cond_2e

    .line 333
    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, p1, p2}, Lcom/helpshift/util/HSLinkify;->addLinks(Landroid/text/Spannable;ILcom/helpshift/util/HSLinkify$LinkClickListener;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 335
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 337
    instance-of p1, p1, Landroid/text/method/LinkMovementMethod;

    if-nez p1, :cond_2c

    .line 338
    :cond_1f
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 339
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_2c
    return v3

    :cond_2d
    return v0

    .line 348
    :cond_2e
    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v1

    .line 350
    invoke-static {v1, p1, p2}, Lcom/helpshift/util/HSLinkify;->addLinks(Landroid/text/Spannable;ILcom/helpshift/util/HSLinkify$LinkClickListener;)Z

    move-result p1

    if-eqz p1, :cond_53

    .line 352
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object p1

    if-eqz p1, :cond_42

    .line 354
    instance-of p1, p1, Landroid/text/method/LinkMovementMethod;

    if-nez p1, :cond_4f

    .line 355
    :cond_42
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 356
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 359
    :cond_4f
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v3

    :cond_53
    return v0
.end method

.method private static getURLSpanWithClickListener(Ljava/lang/String;Lcom/helpshift/util/HSLinkify$LinkClickListener;)Landroid/text/style/URLSpan;
    .registers 3

    .line 475
    new-instance v0, Lcom/helpshift/util/HSLinkify$3;

    invoke-direct {v0, p0, p1, p0}, Lcom/helpshift/util/HSLinkify$3;-><init>(Ljava/lang/String;Lcom/helpshift/util/HSLinkify$LinkClickListener;Ljava/lang/String;)V

    return-object v0
.end method
