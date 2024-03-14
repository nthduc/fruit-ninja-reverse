.class Lcom/helpshift/websockets/Token;
.super Ljava/lang/Object;
.source "Token.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSeparator(C)Z
    .registers 2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_2c

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2c

    const/16 v0, 0x22

    if-eq p0, v0, :cond_2c

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_2c

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_2c

    const/16 v0, 0x7b

    if-eq p0, v0, :cond_2c

    const/16 v0, 0x7d

    if-eq p0, v0, :cond_2c

    const/16 v0, 0x28

    if-eq p0, v0, :cond_2c

    const/16 v0, 0x29

    if-eq p0, v0, :cond_2c

    packed-switch p0, :pswitch_data_2e

    packed-switch p0, :pswitch_data_40

    const/4 p0, 0x0

    return p0

    :cond_2c
    :pswitch_2c
    const/4 p0, 0x1

    return p0

    :pswitch_data_2e
    .packed-switch 0x3a
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
    .end packed-switch

    :pswitch_data_40
    .packed-switch 0x5b
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
    .end packed-switch
.end method

.method public static isValid(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_21

    .line 33
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_21

    .line 37
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_1f

    .line 40
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/helpshift/websockets/Token;->isSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_1c

    return v0

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1f
    const/4 p0, 0x1

    return p0

    :cond_21
    :goto_21
    return v0
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/16 v0, 0x5c

    .line 100
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_d

    return-object p0

    .line 104
    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_19
    if-ge v4, v1, :cond_2c

    .line 110
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v0, :cond_25

    if-nez v5, :cond_25

    const/4 v5, 0x1

    goto :goto_29

    .line 118
    :cond_25
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    :goto_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 121
    :cond_2c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unquote(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 83
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_25

    const/4 v1, 0x0

    .line 85
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_25

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v2, :cond_1d

    goto :goto_25

    .line 89
    :cond_1d
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 91
    invoke-static {p0}, Lcom/helpshift/websockets/Token;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_25
    :goto_25
    return-object p0
.end method
