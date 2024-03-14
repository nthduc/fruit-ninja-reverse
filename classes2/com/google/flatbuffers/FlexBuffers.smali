.class public Lcom/google/flatbuffers/FlexBuffers;
.super Ljava/lang/Object;
.source "FlexBuffers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/flatbuffers/FlexBuffers$Unsigned;,
        Lcom/google/flatbuffers/FlexBuffers$FlexBufferException;,
        Lcom/google/flatbuffers/FlexBuffers$KeyVector;,
        Lcom/google/flatbuffers/FlexBuffers$TypedVector;,
        Lcom/google/flatbuffers/FlexBuffers$Vector;,
        Lcom/google/flatbuffers/FlexBuffers$Map;,
        Lcom/google/flatbuffers/FlexBuffers$Key;,
        Lcom/google/flatbuffers/FlexBuffers$Blob;,
        Lcom/google/flatbuffers/FlexBuffers$Sized;,
        Lcom/google/flatbuffers/FlexBuffers$Object;,
        Lcom/google/flatbuffers/FlexBuffers$Reference;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final EMPTY_BB:Ljava/nio/ByteBuffer;

.field public static final FBT_BLOB:I = 0x19

.field public static final FBT_BOOL:I = 0x1a

.field public static final FBT_FLOAT:I = 0x3

.field public static final FBT_INDIRECT_FLOAT:I = 0x8

.field public static final FBT_INDIRECT_INT:I = 0x6

.field public static final FBT_INDIRECT_UINT:I = 0x7

.field public static final FBT_INT:I = 0x1

.field public static final FBT_KEY:I = 0x4

.field public static final FBT_MAP:I = 0x9

.field public static final FBT_NULL:I = 0x0

.field public static final FBT_STRING:I = 0x5

.field public static final FBT_UINT:I = 0x2

.field public static final FBT_VECTOR:I = 0xa

.field public static final FBT_VECTOR_BOOL:I = 0x24

.field public static final FBT_VECTOR_FLOAT:I = 0xd

.field public static final FBT_VECTOR_FLOAT2:I = 0x12

.field public static final FBT_VECTOR_FLOAT3:I = 0x15

.field public static final FBT_VECTOR_FLOAT4:I = 0x18

.field public static final FBT_VECTOR_INT:I = 0xb

.field public static final FBT_VECTOR_INT2:I = 0x10

.field public static final FBT_VECTOR_INT3:I = 0x13

.field public static final FBT_VECTOR_INT4:I = 0x16

.field public static final FBT_VECTOR_KEY:I = 0xe

.field public static final FBT_VECTOR_STRING:I = 0xf

.field public static final FBT_VECTOR_UINT:I = 0xc

.field public static final FBT_VECTOR_UINT2:I = 0x11

.field public static final FBT_VECTOR_UINT3:I = 0x14

.field public static final FBT_VECTOR_UINT4:I = 0x17


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    .line 101
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/google/flatbuffers/FlexBuffers;->EMPTY_BB:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/nio/ByteBuffer;
    .registers 1

    .line 45
    sget-object v0, Lcom/google/flatbuffers/FlexBuffers;->EMPTY_BB:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$100(Ljava/nio/ByteBuffer;II)I
    .registers 3

    .line 45
    invoke-static {p0, p1, p2}, Lcom/google/flatbuffers/FlexBuffers;->readInt(Ljava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Ljava/nio/ByteBuffer;II)I
    .registers 3

    .line 45
    invoke-static {p0, p1, p2}, Lcom/google/flatbuffers/FlexBuffers;->indirect(Ljava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Ljava/nio/ByteBuffer;II)J
    .registers 3

    .line 45
    invoke-static {p0, p1, p2}, Lcom/google/flatbuffers/FlexBuffers;->readUInt(Ljava/nio/ByteBuffer;II)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$400(Ljava/nio/ByteBuffer;II)D
    .registers 3

    .line 45
    invoke-static {p0, p1, p2}, Lcom/google/flatbuffers/FlexBuffers;->readDouble(Ljava/nio/ByteBuffer;II)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$500(Ljava/nio/ByteBuffer;II)J
    .registers 3

    .line 45
    invoke-static {p0, p1, p2}, Lcom/google/flatbuffers/FlexBuffers;->readLong(Ljava/nio/ByteBuffer;II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getRoot(Ljava/nio/ByteBuffer;)Lcom/google/flatbuffers/FlexBuffers$Reference;
    .registers 5

    .line 201
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 202
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    add-int/lit8 v0, v0, -0x1

    .line 203
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Lcom/google/flatbuffers/FlexBuffers$Unsigned;->byteToUnsignedInt(B)I

    move-result v2

    sub-int/2addr v0, v1

    .line 205
    new-instance v3, Lcom/google/flatbuffers/FlexBuffers$Reference;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers$Reference;-><init>(Ljava/nio/ByteBuffer;III)V

    return-object v3
.end method

.method private static indirect(Ljava/nio/ByteBuffer;II)I
    .registers 5

    int-to-long v0, p1

    .line 154
    invoke-static {p0, p1, p2}, Lcom/google/flatbuffers/FlexBuffers;->readUInt(Ljava/nio/ByteBuffer;II)J

    move-result-wide p0

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method static isTypeInline(I)Z
    .registers 2

    const/4 v0, 0x3

    if-le p0, v0, :cond_a

    const/16 v0, 0x1a

    if-ne p0, v0, :cond_8

    goto :goto_a

    :cond_8
    const/4 p0, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 p0, 0x1

    :goto_b
    return p0
.end method

.method static isTypedVector(I)Z
    .registers 2

    const/16 v0, 0xb

    if-lt p0, v0, :cond_8

    const/16 v0, 0xf

    if-le p0, v0, :cond_c

    :cond_8
    const/16 v0, 0x24

    if-ne p0, v0, :cond_e

    :cond_c
    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method static isTypedVectorElementType(I)Z
    .registers 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_6

    const/4 v1, 0x5

    if-le p0, v1, :cond_c

    :cond_6
    const/16 v1, 0x1a

    if-ne p0, v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :cond_c
    :goto_c
    return v0
.end method

.method private static readDouble(Ljava/nio/ByteBuffer;II)D
    .registers 4

    const/4 v0, 0x4

    if-eq p2, v0, :cond_f

    const/16 v0, 0x8

    if-eq p2, v0, :cond_a

    const-wide/high16 p0, -0x4010000000000000L    # -1.0

    return-wide p0

    .line 187
    :cond_a
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide p0

    return-wide p0

    .line 186
    :cond_f
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result p0

    float-to-double p0, p0

    return-wide p0
.end method

.method private static readInt(Ljava/nio/ByteBuffer;II)I
    .registers 3

    .line 170
    invoke-static {p0, p1, p2}, Lcom/google/flatbuffers/FlexBuffers;->readLong(Ljava/nio/ByteBuffer;II)J

    move-result-wide p0

    long-to-int p1, p0

    return p1
.end method

.method private static readLong(Ljava/nio/ByteBuffer;II)J
    .registers 4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_20

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1b

    const/4 v0, 0x4

    if-eq p2, v0, :cond_15

    const/16 v0, 0x8

    if-eq p2, v0, :cond_10

    const-wide/16 p0, -0x1

    return-wide p0

    .line 179
    :cond_10
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide p0

    return-wide p0

    .line 178
    :cond_15
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    :goto_19
    int-to-long p0, p0

    return-wide p0

    .line 177
    :cond_1b
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    goto :goto_19

    .line 176
    :cond_20
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    goto :goto_19
.end method

.method private static readUInt(Ljava/nio/ByteBuffer;II)J
    .registers 4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_28

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1e

    const/4 v0, 0x4

    if-eq p2, v0, :cond_15

    const/16 v0, 0x8

    if-eq p2, v0, :cond_10

    const-wide/16 p0, -0x1

    return-wide p0

    .line 163
    :cond_10
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide p0

    return-wide p0

    .line 162
    :cond_15
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/flatbuffers/FlexBuffers$Unsigned;->intToUnsignedLong(I)J

    move-result-wide p0

    return-wide p0

    .line 161
    :cond_1e
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    invoke-static {p0}, Lcom/google/flatbuffers/FlexBuffers$Unsigned;->shortToUnsignedInt(S)I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    .line 160
    :cond_28
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    invoke-static {p0}, Lcom/google/flatbuffers/FlexBuffers$Unsigned;->byteToUnsignedInt(B)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method static toTypedVector(II)I
    .registers 3

    if-eqz p1, :cond_1c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_17

    const/4 v0, 0x3

    if-eq p1, v0, :cond_12

    const/4 v0, 0x4

    if-eq p1, v0, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    add-int/lit8 p0, p0, -0x1

    add-int/lit8 p0, p0, 0x16

    return p0

    :cond_12
    add-int/lit8 p0, p0, -0x1

    add-int/lit8 p0, p0, 0x13

    return p0

    :cond_17
    add-int/lit8 p0, p0, -0x1

    add-int/lit8 p0, p0, 0x10

    return p0

    :cond_1c
    add-int/lit8 p0, p0, -0x1

    add-int/lit8 p0, p0, 0xb

    return p0
.end method

.method static toTypedVectorElementType(I)I
    .registers 1

    add-int/lit8 p0, p0, -0xb

    add-int/lit8 p0, p0, 0x1

    return p0
.end method
