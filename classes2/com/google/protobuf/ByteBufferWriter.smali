.class final Lcom/google/protobuf/ByteBufferWriter;
.super Ljava/lang/Object;
.source "ByteBufferWriter.java"


# static fields
.field private static final BUFFER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/SoftReference<",
            "[B>;>;"
        }
    .end annotation
.end field

.field private static final BUFFER_REALLOCATION_THRESHOLD:F = 0.5f

.field private static final MAX_CACHED_BUFFER_SIZE:I = 0x4000

.field private static final MIN_CACHED_BUFFER_SIZE:I = 0x400


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 74
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/protobuf/ByteBufferWriter;->BUFFER:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clearCachedBuffer()V
    .registers 2

    .line 82
    sget-object v0, Lcom/google/protobuf/ByteBufferWriter;->BUFFER:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private static getBuffer()[B
    .registers 1

    .line 138
    sget-object v0, Lcom/google/protobuf/ByteBufferWriter;->BUFFER:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto :goto_12

    .line 139
    :cond_c
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_12
    return-object v0
.end method

.method private static getOrCreateBuffer(I)[B
    .registers 3

    const/16 v0, 0x400

    .line 116
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 118
    invoke-static {}, Lcom/google/protobuf/ByteBufferWriter;->getBuffer()[B

    move-result-object v0

    if-eqz v0, :cond_13

    .line 120
    array-length v1, v0

    invoke-static {p0, v1}, Lcom/google/protobuf/ByteBufferWriter;->needToReallocate(II)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 121
    :cond_13
    new-array v0, p0, [B

    const/16 v1, 0x4000

    if-gt p0, v1, :cond_1c

    .line 125
    invoke-static {v0}, Lcom/google/protobuf/ByteBufferWriter;->setBuffer([B)V

    :cond_1c
    return-object v0
.end method

.method private static needToReallocate(II)Z
    .registers 3

    if-ge p1, p0, :cond_e

    int-to-float p1, p1

    int-to-float p0, p0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p0, p0, v0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private static setBuffer([B)V
    .registers 3

    .line 143
    sget-object v0, Lcom/google/protobuf/ByteBufferWriter;->BUFFER:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method static write(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 92
    :try_start_4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 95
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4c

    .line 96
    :cond_1f
    instance-of v1, p1, Ljava/io/FileOutputStream;

    if-eqz v1, :cond_2d

    .line 98
    check-cast p1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_4c

    .line 102
    :cond_2d
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/ByteBufferWriter;->getOrCreateBuffer(I)[B

    move-result-object v1

    .line 103
    :goto_35
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 104
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    .line 105
    invoke-virtual {p0, v1, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 106
    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4b
    .catchall {:try_start_4 .. :try_end_4b} :catchall_50

    goto :goto_35

    .line 111
    :cond_4c
    :goto_4c
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :catchall_50
    move-exception p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw p1

    return-void
.end method
