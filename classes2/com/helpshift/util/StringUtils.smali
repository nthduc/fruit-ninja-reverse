.class public Lcom/helpshift/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateRandomString([CI)Ljava/lang/String;
    .registers 6

    if-eqz p0, :cond_2c

    .line 49
    array-length v0, p0

    if-eqz v0, :cond_2c

    if-gez p1, :cond_8

    goto :goto_2c

    :cond_8
    if-nez p1, :cond_d

    const-string p0, ""

    return-object p0

    .line 56
    :cond_d
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_18
    if-ge v2, p1, :cond_27

    .line 59
    array-length v3, p0

    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    .line 60
    aget-char v3, p0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 62
    :cond_27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2c
    :goto_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .registers 1

    if-eqz p0, :cond_f

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public static isEmpty(Ljava/lang/String;Z)Z
    .registers 3

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    if-eqz p1, :cond_a

    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public static isEmptyWithoutTrim(Ljava/lang/String;)Z
    .registers 1

    if-eqz p0, :cond_b

    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static isEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    if-nez p0, :cond_4

    if-eqz p1, :cond_c

    :cond_4
    if-eqz p0, :cond_e

    .line 89
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    :cond_c
    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static isNotEmpty(Ljava/lang/String;)Z
    .registers 1

    .line 21
    invoke-static {p0}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isNotEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    .line 93
    invoke-static {p0, p1}, Lcom/helpshift/util/StringUtils;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 30
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    .line 32
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v1, :cond_1c

    const/4 v1, 0x0

    goto :goto_1f

    .line 37
    :cond_1c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 39
    :goto_1f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 41
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static userVisibleCharacterCount(Ljava/lang/String;)I
    .registers 4

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    .line 76
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    .line 79
    :cond_c
    invoke-static {}, Ljava/text/BreakIterator;->getCharacterInstance()Ljava/text/BreakIterator;

    move-result-object v1

    .line 80
    invoke-virtual {v1, p0}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 82
    :goto_13
    invoke-virtual {v1}, Ljava/text/BreakIterator;->next()I

    move-result p0

    if-eq p0, v0, :cond_1c

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_1c
    return v2
.end method
