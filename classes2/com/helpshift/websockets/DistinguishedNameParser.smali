.class final Lcom/helpshift/websockets/DistinguishedNameParser;
.super Ljava/lang/Object;
.source "DistinguishedNameParser.java"


# instance fields
.field private beg:I

.field private chars:[C

.field private cur:I

.field private final dn:Ljava/lang/String;

.field private end:I

.field private final length:I

.field private pos:I


# direct methods
.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RFC2253"

    .line 52
    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->dn:Ljava/lang/String;

    .line 53
    iget-object p1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->length:I

    return-void
.end method

.method private escapedAV()Ljava/lang/String;
    .registers 9

    .line 200
    iget v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    iput v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->beg:I

    .line 201
    iput v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->end:I

    .line 203
    :cond_6
    :goto_6
    iget v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->length:I

    if-lt v0, v1, :cond_19

    .line 205
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->beg:I

    iget v3, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->end:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 208
    :cond_19
    iget-object v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    const/16 v3, 0x2c

    const/16 v4, 0x2b

    const/16 v5, 0x3b

    const/16 v6, 0x20

    if-eq v2, v6, :cond_60

    if-eq v2, v5, :cond_53

    const/16 v5, 0x5c

    if-eq v2, v5, :cond_40

    if-eq v2, v4, :cond_53

    if-eq v2, v3, :cond_53

    .line 237
    iget v2, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->end:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->end:I

    aget-char v3, v1, v0

    aput-char v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    .line 238
    iput v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    goto :goto_6

    .line 216
    :cond_40
    iget v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->end:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->end:I

    invoke-direct {p0}, Lcom/helpshift/websockets/DistinguishedNameParser;->getEscaped()C

    move-result v2

    aput-char v2, v1, v0

    .line 217
    iget v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    goto :goto_6

    .line 213
    :cond_53
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->beg:I

    iget v3, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->end:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 222
    :cond_60
    iget v2, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->end:I

    iput v2, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->cur:I

    add-int/lit8 v0, v0, 0x1

    .line 224
    iput v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v2, 0x1

    .line 225
    iput v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->end:I

    aput-char v6, v1, v2

    .line 227
    :goto_6e
    iget v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_87

    iget-object v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    if-ne v2, v6, :cond_87

    .line 228
    iget v2, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->end:I

    add-int/lit8 v7, v2, 0x1

    iput v7, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->end:I

    aput-char v6, v1, v2

    add-int/lit8 v0, v0, 0x1

    .line 227
    iput v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    goto :goto_6e

    .line 230
    :cond_87
    iget v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_9b

    iget-object v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    if-eq v2, v3, :cond_9b

    aget-char v2, v1, v0

    if-eq v2, v4, :cond_9b

    aget-char v0, v1, v0

    if-ne v0, v5, :cond_6

    .line 233
    :cond_9b
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->beg:I

    iget v3, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->cur:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private getByte(I)I
    .registers 11

    add-int/lit8 v0, p1, 0x1

    .line 328
    iget v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->length:I

    const-string v2, "Malformed DN: "

    if-ge v0, v1, :cond_74

    .line 334
    iget-object v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->chars:[C

    aget-char p1, v1, p1

    const/16 v1, 0x46

    const/16 v3, 0x66

    const/16 v4, 0x41

    const/16 v5, 0x39

    const/16 v6, 0x61

    const/16 v7, 0x30

    if-lt p1, v7, :cond_1e

    if-gt p1, v5, :cond_1e

    sub-int/2addr p1, v7

    goto :goto_2b

    :cond_1e
    if-lt p1, v6, :cond_25

    if-gt p1, v3, :cond_25

    add-int/lit8 p1, p1, -0x57

    goto :goto_2b

    :cond_25
    if-lt p1, v4, :cond_5d

    if-gt p1, v1, :cond_5d

    add-int/lit8 p1, p1, -0x37

    .line 348
    :goto_2b
    iget-object v8, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->chars:[C

    aget-char v0, v8, v0

    if-lt v0, v7, :cond_35

    if-gt v0, v5, :cond_35

    sub-int/2addr v0, v7

    goto :goto_42

    :cond_35
    if-lt v0, v6, :cond_3c

    if-gt v0, v3, :cond_3c

    add-int/lit8 v0, v0, -0x57

    goto :goto_42

    :cond_3c
    if-lt v0, v4, :cond_46

    if-gt v0, v1, :cond_46

    add-int/lit8 v0, v0, -0x37

    :goto_42
    shl-int/lit8 p1, p1, 0x4

    add-int/2addr p1, v0

    return p1

    .line 359
    :cond_46
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 345
    :cond_5d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 329
    :cond_74
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getEscaped()C
    .registers 4

    .line 245
    iget v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    .line 246
    iget v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_3a

    .line 250
    iget-object v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->chars:[C

    aget-char v0, v1, v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_33

    const/16 v1, 0x25

    if-eq v0, v1, :cond_33

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_33

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_33

    const/16 v1, 0x22

    if-eq v0, v1, :cond_33

    const/16 v1, 0x23

    if-eq v0, v1, :cond_33

    packed-switch v0, :pswitch_data_54

    packed-switch v0, :pswitch_data_5e

    .line 269
    invoke-direct {p0}, Lcom/helpshift/websockets/DistinguishedNameParser;->getUTF8()C

    move-result v0

    return v0

    .line 265
    :cond_33
    :pswitch_33
    iget-object v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    return v0

    .line 247
    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_54
    .packed-switch 0x2a
        :pswitch_33
        :pswitch_33
        :pswitch_33
    .end packed-switch

    :pswitch_data_5e
    .packed-switch 0x3b
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
    .end packed-switch
.end method

.method private getUTF8()C
    .registers 10

    .line 276
    iget v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    invoke-direct {p0, v0}, Lcom/helpshift/websockets/DistinguishedNameParser;->getByte(I)I

    move-result v0

    .line 277
    iget v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    const/16 v1, 0x80

    if-ge v0, v1, :cond_12

    int-to-char v0, v0

    return v0

    :cond_12
    const/16 v3, 0xc0

    const/16 v4, 0x3f

    if-lt v0, v3, :cond_65

    const/16 v3, 0xf7

    if-gt v0, v3, :cond_65

    const/16 v3, 0xdf

    if-gt v0, v3, :cond_24

    and-int/lit8 v0, v0, 0x1f

    const/4 v3, 0x1

    goto :goto_2f

    :cond_24
    const/16 v3, 0xef

    if-gt v0, v3, :cond_2c

    const/4 v3, 0x2

    and-int/lit8 v0, v0, 0xf

    goto :goto_2f

    :cond_2c
    const/4 v3, 0x3

    and-int/lit8 v0, v0, 0x7

    :goto_2f
    const/4 v5, 0x0

    :goto_30
    if-ge v5, v3, :cond_63

    .line 300
    iget v6, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    .line 301
    iget v6, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    iget v7, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->length:I

    if-eq v6, v7, :cond_62

    iget-object v7, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->chars:[C

    aget-char v7, v7, v6

    const/16 v8, 0x5c

    if-eq v7, v8, :cond_46

    goto :goto_62

    :cond_46
    add-int/lit8 v6, v6, 0x1

    .line 304
    iput v6, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    .line 306
    iget v6, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    invoke-direct {p0, v6}, Lcom/helpshift/websockets/DistinguishedNameParser;->getByte(I)I

    move-result v6

    .line 307
    iget v7, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    add-int/2addr v7, v2

    iput v7, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    and-int/lit16 v7, v6, 0xc0

    if-eq v7, v1, :cond_5a

    return v4

    :cond_5a
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    add-int/2addr v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    :cond_62
    :goto_62
    return v4

    :cond_63
    int-to-char v0, v0

    return v0

    :cond_65
    return v4
.end method

.method private hexAV()Ljava/lang/String;
    .registers 7

    .line 149
    iget v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    add-int/lit8 v1, v0, 0x4

    iget v2, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->length:I

    const-string v3, "Unexpected end of DN: "

    if-ge v1, v2, :cond_a8

    .line 154
    iput v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->beg:I

    add-int/lit8 v0, v0, 0x1

    .line 155
    iput v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    .line 160
    :goto_10
    iget v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_61

    iget-object v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    const/16 v4, 0x2b

    if-eq v2, v4, :cond_61

    aget-char v2, v1, v0

    const/16 v4, 0x2c

    if-eq v2, v4, :cond_61

    aget-char v2, v1, v0

    const/16 v4, 0x3b

    if-ne v2, v4, :cond_2b

    goto :goto_61

    .line 166
    :cond_2b
    aget-char v2, v1, v0

    const/16 v4, 0x20

    if-ne v2, v4, :cond_48

    .line 167
    iput v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->end:I

    add-int/lit8 v0, v0, 0x1

    .line 168
    iput v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    .line 171
    :goto_37
    iget v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_65

    iget-object v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->chars:[C

    aget-char v1, v1, v0

    if-ne v1, v4, :cond_65

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    goto :goto_37

    .line 175
    :cond_48
    aget-char v2, v1, v0

    const/16 v5, 0x41

    if-lt v2, v5, :cond_5a

    aget-char v2, v1, v0

    const/16 v5, 0x46

    if-gt v2, v5, :cond_5a

    .line 176
    aget-char v2, v1, v0

    add-int/2addr v2, v4

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 179
    :cond_5a
    iget v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    goto :goto_10

    .line 162
    :cond_61
    :goto_61
    iget v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    iput v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->end:I

    .line 184
    :cond_65
    iget v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->end:I

    iget v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->beg:I

    sub-int/2addr v0, v1

    const/4 v2, 0x5

    if-lt v0, v2, :cond_91

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_91

    .line 190
    div-int/lit8 v2, v0, 0x2

    new-array v2, v2, [B

    const/4 v3, 0x0

    add-int/lit8 v1, v1, 0x1

    .line 191
    :goto_78
    array-length v4, v2

    if-ge v3, v4, :cond_87

    .line 192
    invoke-direct {p0, v1}, Lcom/helpshift/websockets/DistinguishedNameParser;->getByte(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_78

    .line 195
    :cond_87
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->chars:[C

    iget v3, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->beg:I

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 186
    :cond_91
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_a8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method

.method private nextAT()Ljava/lang/String;
    .registers 7

    .line 60
    :goto_0
    iget v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->length:I

    const/16 v2, 0x20

    if-ge v0, v1, :cond_13

    iget-object v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->chars:[C

    aget-char v1, v1, v0

    if-ne v1, v2, :cond_13

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    goto :goto_0

    .line 62
    :cond_13
    iget v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->length:I

    if-ne v0, v1, :cond_1b

    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_1b
    iput v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->beg:I

    add-int/lit8 v0, v0, 0x1

    .line 70
    iput v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    .line 71
    :goto_21
    iget v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->length:I

    const/16 v3, 0x3d

    if-ge v0, v1, :cond_38

    iget-object v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->chars:[C

    aget-char v4, v1, v0

    if-eq v4, v3, :cond_38

    aget-char v1, v1, v0

    if-eq v1, v2, :cond_38

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    goto :goto_21

    .line 75
    :cond_38
    iget v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->length:I

    const-string v4, "Unexpected end of DN: "

    if-ge v0, v1, :cond_f0

    .line 80
    iput v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->end:I

    .line 84
    iget-object v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->chars:[C

    aget-char v0, v1, v0

    if-ne v0, v2, :cond_81

    .line 85
    :goto_48
    iget v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_5d

    iget-object v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->chars:[C

    aget-char v5, v1, v0

    if-eq v5, v3, :cond_5d

    aget-char v1, v1, v0

    if-ne v1, v2, :cond_5d

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    goto :goto_48

    .line 88
    :cond_5d
    iget-object v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_6a

    iget v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->length:I

    if-eq v1, v0, :cond_6a

    goto :goto_81

    .line 89
    :cond_6a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_81
    :goto_81
    iget v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    .line 97
    :goto_87
    iget v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_98

    iget-object v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->chars:[C

    aget-char v1, v1, v0

    if-ne v1, v2, :cond_98

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    goto :goto_87

    .line 102
    :cond_98
    iget v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->end:I

    iget v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->beg:I

    sub-int/2addr v0, v1

    const/4 v2, 0x4

    if-le v0, v2, :cond_e3

    iget-object v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->chars:[C

    add-int/lit8 v3, v1, 0x3

    aget-char v3, v0, v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_e3

    aget-char v3, v0, v1

    const/16 v4, 0x4f

    if-eq v3, v4, :cond_b6

    aget-char v0, v0, v1

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_e3

    :cond_b6
    iget-object v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->beg:I

    add-int/lit8 v3, v1, 0x1

    aget-char v3, v0, v3

    const/16 v4, 0x49

    if-eq v3, v4, :cond_ca

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x69

    if-ne v0, v1, :cond_e3

    :cond_ca
    iget-object v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->beg:I

    add-int/lit8 v3, v1, 0x2

    aget-char v3, v0, v3

    const/16 v4, 0x44

    if-eq v3, v4, :cond_de

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_e3

    .line 106
    :cond_de
    iget v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->beg:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->beg:I

    .line 109
    :cond_e3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->beg:I

    iget v3, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->end:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 76
    :cond_f0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method

.method private quotedAV()Ljava/lang/String;
    .registers 5

    .line 114
    iget v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    .line 115
    iget v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    iput v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->beg:I

    .line 116
    iget v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->beg:I

    iput v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->end:I

    .line 119
    :goto_e
    iget v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_62

    .line 123
    iget-object v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    const/16 v3, 0x22

    if-ne v2, v3, :cond_40

    add-int/lit8 v0, v0, 0x1

    .line 125
    iput v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    .line 141
    :goto_20
    iget v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_33

    iget-object v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->chars:[C

    aget-char v1, v1, v0

    const/16 v2, 0x20

    if-ne v1, v2, :cond_33

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    goto :goto_20

    .line 144
    :cond_33
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->beg:I

    iget v3, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->end:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 128
    :cond_40
    aget-char v2, v1, v0

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_4f

    .line 129
    iget v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->end:I

    invoke-direct {p0}, Lcom/helpshift/websockets/DistinguishedNameParser;->getEscaped()C

    move-result v2

    aput-char v2, v1, v0

    goto :goto_55

    .line 133
    :cond_4f
    iget v2, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->end:I

    aget-char v0, v1, v0

    aput-char v0, v1, v2

    .line 135
    :goto_55
    iget v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    .line 136
    iget v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->end:I

    goto :goto_e

    .line 120
    :cond_62
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method


# virtual methods
.method public findMostSpecific(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    .line 373
    iput v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    .line 374
    iput v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->beg:I

    .line 375
    iput v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->end:I

    .line 376
    iput v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->cur:I

    .line 377
    iget-object v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->chars:[C

    .line 379
    invoke-direct {p0}, Lcom/helpshift/websockets/DistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    return-object v1

    .line 386
    :cond_19
    :goto_19
    iget v2, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    iget v3, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->length:I

    if-ne v2, v3, :cond_20

    return-object v1

    .line 390
    :cond_20
    iget-object v3, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->chars:[C

    aget-char v2, v3, v2

    const/16 v3, 0x22

    const/16 v4, 0x3b

    const/16 v5, 0x2c

    const/16 v6, 0x2b

    if-eq v2, v3, :cond_45

    const/16 v3, 0x23

    if-eq v2, v3, :cond_40

    if-eq v2, v6, :cond_3d

    if-eq v2, v5, :cond_3d

    if-eq v2, v4, :cond_3d

    .line 403
    invoke-direct {p0}, Lcom/helpshift/websockets/DistinguishedNameParser;->escapedAV()Ljava/lang/String;

    move-result-object v2

    goto :goto_49

    :cond_3d
    const-string v2, ""

    goto :goto_49

    .line 395
    :cond_40
    invoke-direct {p0}, Lcom/helpshift/websockets/DistinguishedNameParser;->hexAV()Ljava/lang/String;

    move-result-object v2

    goto :goto_49

    .line 392
    :cond_45
    invoke-direct {p0}, Lcom/helpshift/websockets/DistinguishedNameParser;->quotedAV()Ljava/lang/String;

    move-result-object v2

    .line 409
    :goto_49
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    return-object v2

    .line 413
    :cond_50
    iget v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    iget v2, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->length:I

    if-lt v0, v2, :cond_57

    return-object v1

    .line 417
    :cond_57
    iget-object v2, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->chars:[C

    aget-char v3, v2, v0

    const-string v7, "Malformed DN: "

    if-eq v3, v5, :cond_80

    aget-char v3, v2, v0

    if-ne v3, v4, :cond_64

    goto :goto_80

    .line 419
    :cond_64
    aget-char v0, v2, v0

    if-ne v0, v6, :cond_69

    goto :goto_80

    .line 420
    :cond_69
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 423
    :cond_80
    :goto_80
    iget v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->pos:I

    .line 424
    invoke-direct {p0}, Lcom/helpshift/websockets/DistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8d

    goto :goto_19

    .line 426
    :cond_8d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpshift/websockets/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    return-void
.end method
