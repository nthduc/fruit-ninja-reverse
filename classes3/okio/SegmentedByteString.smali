.class final Lokio/SegmentedByteString;
.super Lokio/ByteString;
.source "SegmentedByteString.java"


# instance fields
.field final transient directory:[I

.field final transient segments:[[B


# direct methods
.method constructor <init>(Lokio/Buffer;I)V
    .registers 10

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, v0}, Lokio/ByteString;-><init>([B)V

    .line 58
    iget-wide v1, p1, Lokio/Buffer;->size:J

    int-to-long v5, p2

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v6}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 63
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    const/4 v1, 0x0

    move-object v3, v0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_12
    if-ge v0, p2, :cond_2d

    .line 64
    iget v4, v3, Lokio/Segment;->limit:I

    iget v5, v3, Lokio/Segment;->pos:I

    if-eq v4, v5, :cond_25

    .line 67
    iget v4, v3, Lokio/Segment;->limit:I

    iget v5, v3, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    add-int/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    .line 63
    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_12

    .line 65
    :cond_25
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "s.limit == s.pos"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 72
    :cond_2d
    new-array v0, v2, [[B

    iput-object v0, p0, Lokio/SegmentedByteString;->segments:[[B

    mul-int/lit8 v2, v2, 0x2

    .line 73
    new-array v0, v2, [I

    iput-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    .line 76
    iget-object p1, p1, Lokio/Buffer;->head:Lokio/Segment;

    move-object v0, p1

    const/4 p1, 0x0

    :goto_3b
    if-ge v1, p2, :cond_60

    .line 77
    iget-object v2, p0, Lokio/SegmentedByteString;->segments:[[B

    iget-object v3, v0, Lokio/Segment;->data:[B

    aput-object v3, v2, p1

    .line 78
    iget v2, v0, Lokio/Segment;->limit:I

    iget v3, v0, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    if-le v1, p2, :cond_4c

    move v1, p2

    .line 82
    :cond_4c
    iget-object v2, p0, Lokio/SegmentedByteString;->directory:[I

    aput v1, v2, p1

    .line 83
    iget-object v3, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v3, v3

    add-int/2addr v3, p1

    iget v4, v0, Lokio/Segment;->pos:I

    aput v4, v2, v3

    const/4 v2, 0x1

    .line 84
    iput-boolean v2, v0, Lokio/Segment;->shared:Z

    add-int/lit8 p1, p1, 0x1

    .line 76
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_3b

    :cond_60
    return-void
.end method

.method private segment(I)I
    .registers 5

    .line 156
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/lit8 p1, p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result p1

    if-ltz p1, :cond_f

    goto :goto_11

    :cond_f
    xor-int/lit8 p1, p1, -0x1

    :goto_11
    return p1
.end method

.method private toByteString()Lokio/ByteString;
    .registers 3

    .line 257
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 2

    .line 296
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public asByteBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 178
    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public base64()Ljava/lang/String;
    .registers 2

    .line 98
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public base64Url()Ljava/lang/String;
    .registers 2

    .line 134
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->base64Url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 266
    :cond_4
    instance-of v1, p1, Lokio/ByteString;

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    check-cast p1, Lokio/ByteString;

    .line 267
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v1

    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    move-result v3

    if-ne v1, v3, :cond_20

    .line 268
    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    move-result v1

    invoke-virtual {p0, v2, p1, v2, v1}, Lokio/SegmentedByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result p1

    if-eqz p1, :cond_20

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0
.end method

.method public getByte(I)B
    .registers 9

    .line 146
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    int-to-long v1, v0

    int-to-long v3, p1

    const-wide/16 v5, 0x1

    invoke-static/range {v1 .. v6}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 147
    invoke-direct {p0, p1}, Lokio/SegmentedByteString;->segment(I)I

    move-result v0

    if-nez v0, :cond_18

    const/4 v1, 0x0

    goto :goto_1e

    .line 148
    :cond_18
    iget-object v1, p0, Lokio/SegmentedByteString;->directory:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    .line 149
    :goto_1e
    iget-object v2, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v3, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v4, v3

    add-int/2addr v4, v0

    aget v2, v2, v4

    .line 150
    aget-object v0, v3, v0

    sub-int/2addr p1, v1

    add-int/2addr p1, v2

    aget-byte p1, v0, p1

    return p1
.end method

.method public hashCode()I
    .registers 9

    .line 272
    iget v0, p0, Lokio/SegmentedByteString;->hashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 278
    :cond_5
    iget-object v0, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_b
    if-ge v1, v0, :cond_2a

    .line 279
    iget-object v4, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v4, v4, v1

    .line 280
    iget-object v5, p0, Lokio/SegmentedByteString;->directory:[I

    add-int v6, v0, v1

    aget v6, v5, v6

    .line 281
    aget v5, v5, v1

    sub-int v3, v5, v3

    add-int/2addr v3, v6

    :goto_1c
    if-ge v6, v3, :cond_26

    mul-int/lit8 v2, v2, 0x1f

    .line 284
    aget-byte v7, v4, v6

    add-int/2addr v2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    :cond_26
    add-int/lit8 v1, v1, 0x1

    move v3, v5

    goto :goto_b

    .line 288
    :cond_2a
    iput v2, p0, Lokio/SegmentedByteString;->hashCode:I

    return v2
.end method

.method public hex()Ljava/lang/String;
    .registers 2

    .line 102
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hmacSha1(Lokio/ByteString;)Lokio/ByteString;
    .registers 3

    .line 126
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokio/ByteString;->hmacSha1(Lokio/ByteString;)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public hmacSha256(Lokio/ByteString;)Lokio/ByteString;
    .registers 3

    .line 130
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokio/ByteString;->hmacSha256(Lokio/ByteString;)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public indexOf([BI)I
    .registers 4

    .line 248
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokio/ByteString;->indexOf([BI)I

    move-result p1

    return p1
.end method

.method internalArray()[B
    .registers 2

    .line 261
    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf([BI)I
    .registers 4

    .line 252
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokio/ByteString;->lastIndexOf([BI)I

    move-result p1

    return p1
.end method

.method public md5()Lokio/ByteString;
    .registers 2

    .line 114
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->md5()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public rangeEquals(ILokio/ByteString;II)Z
    .registers 12

    const/4 v0, 0x0

    if-ltz p1, :cond_42

    .line 211
    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    move-result v1

    sub-int/2addr v1, p4

    if-le p1, v1, :cond_b

    goto :goto_42

    .line 213
    :cond_b
    invoke-direct {p0, p1}, Lokio/SegmentedByteString;->segment(I)I

    move-result v1

    :goto_f
    if-lez p4, :cond_40

    if-nez v1, :cond_15

    const/4 v2, 0x0

    goto :goto_1b

    .line 214
    :cond_15
    iget-object v2, p0, Lokio/SegmentedByteString;->directory:[I

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    .line 215
    :goto_1b
    iget-object v3, p0, Lokio/SegmentedByteString;->directory:[I

    aget v3, v3, v1

    sub-int/2addr v3, v2

    add-int/2addr v3, v2

    sub-int/2addr v3, p1

    .line 216
    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 217
    iget-object v4, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v5, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v6, v5

    add-int/2addr v6, v1

    aget v4, v4, v6

    sub-int v2, p1, v2

    add-int/2addr v2, v4

    .line 219
    aget-object v4, v5, v1

    invoke-virtual {p2, p3, v4, v2, v3}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v2

    if-nez v2, :cond_3a

    return v0

    :cond_3a
    add-int/2addr p1, v3

    add-int/2addr p3, v3

    sub-int/2addr p4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_40
    const/4 p1, 0x1

    return p1

    :cond_42
    :goto_42
    return v0
.end method

.method public rangeEquals(I[BII)Z
    .registers 12

    const/4 v0, 0x0

    if-ltz p1, :cond_48

    .line 228
    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    move-result v1

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_48

    if-ltz p3, :cond_48

    array-length v1, p2

    sub-int/2addr v1, p4

    if-le p3, v1, :cond_11

    goto :goto_48

    .line 233
    :cond_11
    invoke-direct {p0, p1}, Lokio/SegmentedByteString;->segment(I)I

    move-result v1

    :goto_15
    if-lez p4, :cond_46

    if-nez v1, :cond_1b

    const/4 v2, 0x0

    goto :goto_21

    .line 234
    :cond_1b
    iget-object v2, p0, Lokio/SegmentedByteString;->directory:[I

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    .line 235
    :goto_21
    iget-object v3, p0, Lokio/SegmentedByteString;->directory:[I

    aget v3, v3, v1

    sub-int/2addr v3, v2

    add-int/2addr v3, v2

    sub-int/2addr v3, p1

    .line 236
    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 237
    iget-object v4, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v5, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v6, v5

    add-int/2addr v6, v1

    aget v4, v4, v6

    sub-int v2, p1, v2

    add-int/2addr v2, v4

    .line 239
    aget-object v4, v5, v1

    invoke-static {v4, v2, p2, p3, v3}, Lokio/Util;->arrayRangeEquals([BI[BII)Z

    move-result v2

    if-nez v2, :cond_40

    return v0

    :cond_40
    add-int/2addr p1, v3

    add-int/2addr p3, v3

    sub-int/2addr p4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_46
    const/4 p1, 0x1

    return p1

    :cond_48
    :goto_48
    return v0
.end method

.method public sha1()Lokio/ByteString;
    .registers 2

    .line 118
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->sha1()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public sha256()Lokio/ByteString;
    .registers 2

    .line 122
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->sha256()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 3

    .line 161
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public string(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3

    .line 94
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokio/ByteString;->string(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public substring(I)Lokio/ByteString;
    .registers 3

    .line 138
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokio/ByteString;->substring(I)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public substring(II)Lokio/ByteString;
    .registers 4

    .line 142
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public toAsciiLowercase()Lokio/ByteString;
    .registers 2

    .line 106
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toAsciiUppercase()Lokio/ByteString;
    .registers 2

    .line 110
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toAsciiUppercase()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .registers 9

    .line 165
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    new-array v0, v0, [B

    .line 167
    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    if-ge v2, v1, :cond_25

    .line 168
    iget-object v4, p0, Lokio/SegmentedByteString;->directory:[I

    add-int v5, v1, v2

    aget v5, v4, v5

    .line 169
    aget v4, v4, v2

    .line 170
    iget-object v6, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v6, v6, v2

    sub-int v7, v4, v3

    invoke-static {v6, v5, v0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_e

    :cond_25
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 292
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public utf8()Ljava/lang/String;
    .registers 2

    .line 90
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1f

    .line 184
    iget-object v0, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    if-ge v1, v0, :cond_1e

    .line 185
    iget-object v3, p0, Lokio/SegmentedByteString;->directory:[I

    add-int v4, v0, v1

    aget v4, v3, v4

    .line 186
    aget v3, v3, v1

    .line 187
    iget-object v5, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v5, v5, v1

    sub-int v2, v3, v2

    invoke-virtual {p1, v5, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_7

    :cond_1e
    return-void

    .line 182
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "out == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    return-void
.end method

.method write(Lokio/Buffer;)V
    .registers 13

    .line 194
    iget-object v0, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v1, v0, :cond_35

    .line 195
    iget-object v3, p0, Lokio/SegmentedByteString;->directory:[I

    add-int v4, v0, v1

    aget v7, v3, v4

    .line 196
    aget v3, v3, v1

    .line 197
    new-instance v4, Lokio/Segment;

    iget-object v5, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v6, v5, v1

    add-int v5, v7, v3

    sub-int v8, v5, v2

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lokio/Segment;-><init>([BIIZZ)V

    .line 199
    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v2, :cond_2a

    .line 200
    iput-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    iput-object v4, p1, Lokio/Buffer;->head:Lokio/Segment;

    goto :goto_31

    .line 202
    :cond_2a
    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {v2, v4}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    :goto_31
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_5

    .line 206
    :cond_35
    iget-wide v0, p1, Lokio/Buffer;->size:J

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Lokio/Buffer;->size:J

    return-void
.end method
