.class Lcom/helpshift/websockets/Misc;
.super Ljava/lang/Object;
.source "Misc.java"


# static fields
.field private static final sRandom:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/helpshift/websockets/Misc;->sRandom:Ljava/security/SecureRandom;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractHost(Ljava/net/URI;)Ljava/lang/String;
    .registers 2

    .line 283
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 299
    :cond_7
    invoke-virtual {p0}, Ljava/net/URI;->getRawAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/websockets/Misc;->extractHostFromAuthorityPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    return-object v0

    .line 306
    :cond_12
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/helpshift/websockets/Misc;->extractHostFromEntireUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static extractHostFromAuthorityPart(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "^(.*@)?([^:]+)(:\\d+)?$"

    .line 318
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 321
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_1d

    :cond_17
    const/4 v0, 0x2

    .line 327
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    :goto_1d
    return-object v0
.end method

.method static extractHostFromEntireUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "^\\w+://([^@/]*@)?([^:/]+)(:\\d+)?(/.*)?$"

    .line 338
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 341
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_1d

    :cond_17
    const/4 v0, 0x2

    .line 347
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    :goto_1d
    return-object v0
.end method

.method public static getBytesUTF8(Ljava/lang/String;)[B
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    const-string v1, "UTF-8"

    .line 60
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    return-object v0
.end method

.method public static join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    invoke-static {v0, p0, p1}, Lcom/helpshift/websockets/Misc;->join(Ljava/lang/StringBuilder;Ljava/util/Collection;Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static join(Ljava/lang/StringBuilder;Ljava/util/Collection;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 268
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    goto :goto_16

    .line 273
    :cond_13
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :goto_16
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_1e
    return-void
.end method

.method public static max([I)I
    .registers 4

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    .line 246
    :goto_3
    array-length v2, p0

    if-ge v1, v2, :cond_f

    .line 247
    aget v2, p0, v1

    if-ge v0, v2, :cond_c

    .line 248
    aget v0, p0, v1

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_f
    return v0
.end method

.method public static min([I)I
    .registers 4

    const v0, 0x7fffffff

    const/4 v1, 0x0

    .line 230
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_10

    .line 231
    aget v2, p0, v1

    if-ge v2, v0, :cond_d

    .line 232
    aget v0, p0, v1

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_10
    return v0
.end method

.method public static nextBytes(I)[B
    .registers 1

    .line 116
    new-array p0, p0, [B

    .line 118
    invoke-static {p0}, Lcom/helpshift/websockets/Misc;->nextBytes([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static nextBytes([B)[B
    .registers 2

    .line 106
    sget-object v0, Lcom/helpshift/websockets/Misc;->sRandom:Ljava/security/SecureRandom;

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p0
.end method

.method public static readLine(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 169
    :goto_5
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_14

    .line 173
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    if-nez p0, :cond_2d

    const/4 p0, 0x0

    return-object p0

    :cond_14
    const/16 v3, 0xa

    if-ne v1, v3, :cond_19

    goto :goto_2d

    :cond_19
    const/16 v4, 0xd

    if-eq v1, v4, :cond_21

    .line 190
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_5

    .line 195
    :cond_21
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    if-ne v4, v2, :cond_2b

    .line 200
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2d

    :cond_2b
    if-ne v4, v3, :cond_32

    .line 220
    :cond_2d
    :goto_2d
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 213
    :cond_32
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 216
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_5
.end method

.method public static toOpcodeName(I)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_55

    const/4 v0, 0x1

    if-eq p0, v0, :cond_52

    const/4 v1, 0x2

    if-eq p0, v1, :cond_4f

    packed-switch p0, :pswitch_data_58

    const/4 v1, 0x0

    if-gt v0, p0, :cond_20

    const/4 v2, 0x7

    if-gt p0, v2, :cond_20

    .line 150
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "DATA(0x%X)"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_20
    const/16 v2, 0x8

    if-gt v2, p0, :cond_37

    const/16 v2, 0xf

    if-gt p0, v2, :cond_37

    .line 154
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "CONTROL(0x%X)"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 157
    :cond_37
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "0x%X"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_46
    const-string p0, "PONG"

    return-object p0

    :pswitch_49
    const-string p0, "PING"

    return-object p0

    :pswitch_4c
    const-string p0, "CLOSE"

    return-object p0

    :cond_4f
    const-string p0, "BINARY"

    return-object p0

    :cond_52
    const-string p0, "TEXT"

    return-object p0

    :cond_55
    const-string p0, "CONTINUATION"

    return-object p0

    :pswitch_data_58
    .packed-switch 0x8
        :pswitch_4c
        :pswitch_49
        :pswitch_46
    .end packed-switch
.end method

.method public static toStringUTF8([B)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    .line 77
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/helpshift/websockets/Misc;->toStringUTF8([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toStringUTF8([BII)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 90
    :cond_4
    :try_start_4
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, p1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_b} :catch_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_b} :catch_c

    return-object v1

    :catch_c
    return-object v0
.end method
