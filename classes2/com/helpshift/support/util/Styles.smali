.class public Lcom/helpshift/support/util/Styles;
.super Ljava/lang/Object;
.source "Styles.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColor(Landroid/content/Context;I)I
    .registers 4

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, -0x1

    .line 27
    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 28
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static getInt(Landroid/content/Context;I)I
    .registers 4

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 34
    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 35
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static getQuestionWithHighlightedSearchTerms(Landroid/content/Context;Lcom/helpshift/support/Faq;Ljava/util/ArrayList;)Lcom/helpshift/support/Faq;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/helpshift/support/Faq;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/helpshift/support/Faq;"
        }
    .end annotation

    move-object/from16 v0, p1

    if-eqz p2, :cond_28a

    .line 72
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_28a

    .line 73
    invoke-static/range {p2 .. p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 74
    invoke-static/range {p2 .. p2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 76
    iget-object v1, v0, Lcom/helpshift/support/Faq;->title:Ljava/lang/String;

    .line 77
    iget-object v2, v0, Lcom/helpshift/support/Faq;->body:Ljava/lang/String;

    .line 79
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 80
    sget v4, Lcom/helpshift/R$attr;->hs__searchHighlightColor:I

    move-object/from16 v5, p0

    invoke-static {v5, v4}, Lcom/helpshift/util/Styles;->getHexColor(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 82
    invoke-static {v1}, Lcom/helpshift/support/util/HSTransliterator;->unidecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 83
    invoke-static {v2}, Lcom/helpshift/support/util/HSTransliterator;->unidecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    const/4 v5, 0x1

    goto :goto_38

    :cond_37
    const/4 v5, 0x0

    :goto_38
    const/4 v8, 0x3

    if-nez v5, :cond_16a

    .line 86
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    .line 89
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string v10, ""

    move-object v12, v10

    const/4 v11, 0x0

    :goto_48
    if-ge v11, v5, :cond_8a

    .line 91
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 92
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/helpshift/support/util/HSTransliterator;->unidecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v14, v12

    const/4 v12, 0x0

    .line 93
    :goto_63
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v12, v15, :cond_86

    .line 94
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 95
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_63

    :cond_86
    add-int/lit8 v11, v11, 0x1

    move-object v12, v14

    goto :goto_48

    .line 98
    :cond_8a
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 100
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    .line 101
    invoke-static {v2}, Lcom/helpshift/support/util/HSTransliterator;->unidecode(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v10

    const/4 v13, 0x0

    :goto_9c
    if-ge v13, v11, :cond_de

    .line 106
    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 107
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/helpshift/support/util/HSTransliterator;->unidecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v15, v14

    const/4 v14, 0x0

    .line 108
    :goto_b7
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v14, v6, :cond_da

    .line 109
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 110
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_b7

    :cond_da
    add-int/lit8 v13, v13, 0x1

    move-object v14, v15

    goto :goto_9c

    .line 113
    :cond_de
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 115
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_e6
    :goto_e6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_184

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 116
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v11, v8, :cond_167

    .line 117
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 118
    invoke-static {v5, v10, v11}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v13

    :goto_101
    if-ltz v13, :cond_130

    .line 120
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 121
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v14, v13

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/2addr v14, v15

    .line 122
    invoke-virtual {v1, v11, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 123
    invoke-virtual {v3, v11}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v13, v11

    invoke-static {v5, v10, v13}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v13

    goto :goto_101

    :cond_130
    const/4 v11, 0x0

    .line 127
    invoke-static {v6, v10, v11}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v13

    :goto_135
    if-ltz v13, :cond_e6

    .line 129
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 130
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v15, v13

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    .line 131
    invoke-virtual {v2, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 132
    invoke-virtual {v3, v14}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v6, v10, v13}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v13

    goto :goto_135

    :cond_167
    const/4 v11, 0x0

    goto/16 :goto_e6

    .line 139
    :cond_16a
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_16e
    :goto_16e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_184

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 140
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v8, :cond_16e

    .line 141
    invoke-virtual {v3, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_16e

    .line 145
    :cond_184
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 146
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ">[^<]+<"

    .line 148
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 149
    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_256

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 151
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    move-object v8, v1

    .line 152
    :goto_1c7
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    const-string v10, "\">$1</span>"

    const-string v11, "<span style=\"background-color: "

    const-string v12, ")"

    const-string v13, "(?i)("

    if-eqz v9, :cond_20e

    .line 153
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->end()I

    move-result v14

    invoke-virtual {v1, v9, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 154
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v12, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 157
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1c7

    .line 161
    :cond_20e
    invoke-virtual {v2, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    move-object v7, v5

    .line 162
    :goto_213
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_252

    .line 163
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v14

    invoke-virtual {v5, v9, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 164
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 167
    invoke-virtual {v7, v9, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    goto :goto_213

    :cond_252
    move-object v5, v7

    move-object v1, v8

    goto/16 :goto_1b6

    .line 171
    :cond_256
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 172
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v5, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 174
    new-instance v1, Lcom/helpshift/support/Faq;

    const-wide/16 v7, 0x1

    .line 175
    invoke-virtual/range {p1 .. p1}, Lcom/helpshift/support/Faq;->getId()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/helpshift/support/Faq;->publish_id:Ljava/lang/String;

    iget-object v11, v0, Lcom/helpshift/support/Faq;->language:Ljava/lang/String;

    iget-object v12, v0, Lcom/helpshift/support/Faq;->section_publish_id:Ljava/lang/String;

    iget v15, v0, Lcom/helpshift/support/Faq;->is_helpful:I

    iget-object v2, v0, Lcom/helpshift/support/Faq;->is_rtl:Ljava/lang/Boolean;

    .line 183
    invoke-virtual/range {p1 .. p1}, Lcom/helpshift/support/Faq;->getTags()Ljava/util/List;

    move-result-object v17

    .line 184
    invoke-virtual/range {p1 .. p1}, Lcom/helpshift/support/Faq;->getCategoryTags()Ljava/util/List;

    move-result-object v18

    move-object v6, v1

    move-object/from16 v16, v2

    invoke-direct/range {v6 .. v18}, Lcom/helpshift/support/Faq;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;Ljava/util/List;Ljava/util/List;)V

    goto :goto_28b

    :cond_28a
    const/4 v1, 0x0

    :goto_28b
    return-object v1
.end method

.method public static getResourceIdForAttribute(Landroid/content/Context;I)I
    .registers 4

    .line 200
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 201
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 202
    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .registers 2

    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/helpshift/R$bool;->is_screen_large:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static setAccentColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 66
    sget v0, Lcom/helpshift/R$attr;->colorAccent:I

    invoke-static {p0, p1, v0}, Lcom/helpshift/util/Styles;->setColorFilter(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public static setAdminChatBubbleColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 62
    sget v0, Lcom/helpshift/R$attr;->hs__chatBubbleAdminBackgroundColor:I

    invoke-static {p0, p1, v0}, Lcom/helpshift/util/Styles;->setColorFilter(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public static setImageAlpha(Landroid/widget/ImageButton;I)V
    .registers 4

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    .line 41
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImageAlpha(I)V

    goto :goto_d

    .line 44
    :cond_a
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setAlpha(I)V

    :goto_d
    return-void
.end method

.method public static setSendMessageButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V
    .registers 3

    if-eqz p2, :cond_5

    .line 53
    sget p2, Lcom/helpshift/R$attr;->colorAccent:I

    goto :goto_8

    :cond_5
    const p2, 0x101009a

    .line 58
    :goto_8
    invoke-static {p0, p1, p2}, Lcom/helpshift/util/Styles;->setColorFilter(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method
