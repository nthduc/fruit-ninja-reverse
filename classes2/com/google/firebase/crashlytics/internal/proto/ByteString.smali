.class final Lcom/google/firebase/crashlytics/internal/proto/ByteString;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-crashlytics@@17.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/proto/ByteString$CodedBuilder;,
        Lcom/google/firebase/crashlytics/internal/proto/ByteString$Output;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/google/firebase/crashlytics/internal/proto/ByteString;


# instance fields
.field private final bytes:[B

.field private volatile hash:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 84
    new-instance v0, Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;-><init>([B)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->EMPTY:Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    return-void
.end method

.method private constructor <init>([B)V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 254
    iput v0, p0, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->hash:I

    .line 58
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->bytes:[B

    return-void
.end method

.method synthetic constructor <init>([BLcom/google/firebase/crashlytics/internal/proto/ByteString$1;)V
    .registers 3

    .line 54
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;-><init>([B)V

    return-void
.end method

.method public static copyFrom(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 116
    new-instance v0, Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;-><init>([B)V

    return-object v0
.end method

.method public static copyFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;
    .registers 2

    .line 107
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->copyFrom(Ljava/nio/ByteBuffer;I)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static copyFrom(Ljava/nio/ByteBuffer;I)Lcom/google/firebase/crashlytics/internal/proto/ByteString;
    .registers 2

    .line 100
    new-array p1, p1, [B

    .line 101
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 102
    new-instance p0, Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;-><init>([B)V

    return-object p0
.end method

.method public static copyFrom(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/proto/ByteString;",
            ">;)",
            "Lcom/google/firebase/crashlytics/internal/proto/ByteString;"
        }
    .end annotation

    .line 139
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 140
    sget-object p0, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->EMPTY:Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    return-object p0

    .line 141
    :cond_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_18

    .line 142
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    return-object p0

    .line 146
    :cond_18
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    .line 147
    invoke-virtual {v3}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->size()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_1d

    .line 149
    :cond_2f
    new-array v0, v1, [B

    .line 151
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_36
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    .line 152
    iget-object v4, v3, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->bytes:[B

    invoke-virtual {v3}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->size()I

    move-result v5

    invoke-static {v4, v2, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    invoke-virtual {v3}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->size()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_36

    .line 155
    :cond_51
    new-instance p0, Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;-><init>([B)V

    return-object p0
.end method

.method public static copyFrom([B)Lcom/google/firebase/crashlytics/internal/proto/ByteString;
    .registers 3

    .line 95
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->copyFrom([BII)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static copyFrom([BII)Lcom/google/firebase/crashlytics/internal/proto/ByteString;
    .registers 5

    .line 88
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 89
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    new-instance p0, Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;-><init>([B)V

    return-object p0
.end method

.method public static copyFromUtf8(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;
    .registers 3

    .line 125
    :try_start_0
    new-instance v0, Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;-><init>([B)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception p0

    .line 127
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 not supported."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static newCodedBuilder(I)Lcom/google/firebase/crashlytics/internal/proto/ByteString$CodedBuilder;
    .registers 3

    .line 331
    new-instance v0, Lcom/google/firebase/crashlytics/internal/proto/ByteString$CodedBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/crashlytics/internal/proto/ByteString$CodedBuilder;-><init>(ILcom/google/firebase/crashlytics/internal/proto/ByteString$1;)V

    return-object v0
.end method

.method public static newOutput()Lcom/google/firebase/crashlytics/internal/proto/ByteString$Output;
    .registers 1

    const/16 v0, 0x20

    .line 296
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->newOutput(I)Lcom/google/firebase/crashlytics/internal/proto/ByteString$Output;

    move-result-object v0

    return-object v0
.end method

.method public static newOutput(I)Lcom/google/firebase/crashlytics/internal/proto/ByteString$Output;
    .registers 3

    .line 291
    new-instance v0, Lcom/google/firebase/crashlytics/internal/proto/ByteString$Output;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 p0, 0x0

    invoke-direct {v0, v1, p0}, Lcom/google/firebase/crashlytics/internal/proto/ByteString$Output;-><init>(Ljava/io/ByteArrayOutputStream;Lcom/google/firebase/crashlytics/internal/proto/ByteString$1;)V

    return-object v0
.end method


# virtual methods
.method public asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 206
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->bytes:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public byteAt(I)B
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->bytes:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public copyTo(Ljava/nio/ByteBuffer;)V
    .registers 5

    .line 193
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->bytes:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public copyTo([BI)V
    .registers 6

    .line 168
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->bytes:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public copyTo([BIII)V
    .registers 6

    .line 181
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->bytes:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 233
    :cond_4
    instance-of v1, p1, Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 237
    :cond_a
    check-cast p1, Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    .line 238
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->bytes:[B

    array-length v3, v1

    .line 239
    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->bytes:[B

    array-length v4, p1

    if-eq v3, v4, :cond_15

    return v2

    :cond_15
    const/4 v4, 0x0

    :goto_16
    if-ge v4, v3, :cond_22

    .line 246
    aget-byte v5, v1, v4

    aget-byte v6, p1, v4

    if-eq v5, v6, :cond_1f

    return v2

    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_22
    return v0
.end method

.method public hashCode()I
    .registers 6

    .line 258
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->hash:I

    if-nez v0, :cond_1a

    .line 261
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->bytes:[B

    .line 262
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v1

    :goto_9
    if-ge v2, v1, :cond_13

    mul-int/lit8 v3, v3, 0x1f

    .line 266
    aget-byte v4, v0, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_13
    if-nez v3, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    move v0, v3

    .line 272
    :goto_18
    iput v0, p0, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->hash:I

    :cond_1a
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->bytes:[B

    array-length v0, v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public newInput()Ljava/io/InputStream;
    .registers 3

    .line 283
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->bytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method public toByteArray()[B
    .registers 5

    .line 198
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->bytes:[B

    array-length v1, v0

    .line 199
    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 200
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 212
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->bytes:[B

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public toStringUtf8()Ljava/lang/String;
    .registers 4

    .line 218
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->bytes:[B

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    move-exception v0

    .line 220
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
