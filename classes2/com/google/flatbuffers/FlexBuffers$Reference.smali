.class public Lcom/google/flatbuffers/FlexBuffers$Reference;
.super Ljava/lang/Object;
.source "FlexBuffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/flatbuffers/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reference"
.end annotation


# static fields
.field private static final NULL_REFERENCE:Lcom/google/flatbuffers/FlexBuffers$Reference;


# instance fields
.field private bb:Ljava/nio/ByteBuffer;

.field private byteWidth:I

.field private end:I

.field private parentWidth:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 213
    new-instance v0, Lcom/google/flatbuffers/FlexBuffers$Reference;

    # getter for: Lcom/google/flatbuffers/FlexBuffers;->EMPTY_BB:Ljava/nio/ByteBuffer;
    invoke-static {}, Lcom/google/flatbuffers/FlexBuffers;->access$000()Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/google/flatbuffers/FlexBuffers$Reference;-><init>(Ljava/nio/ByteBuffer;III)V

    sput-object v0, Lcom/google/flatbuffers/FlexBuffers$Reference;->NULL_REFERENCE:Lcom/google/flatbuffers/FlexBuffers$Reference;

    return-void
.end method

.method constructor <init>(Ljava/nio/ByteBuffer;III)V
    .registers 13

    and-int/lit8 v0, p4, 0x3

    const/4 v1, 0x1

    shl-int v6, v1, v0

    shr-int/lit8 v7, p4, 0x2

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 221
    invoke-direct/range {v2 .. v7}, Lcom/google/flatbuffers/FlexBuffers$Reference;-><init>(Ljava/nio/ByteBuffer;IIII)V

    return-void
.end method

.method constructor <init>(Ljava/nio/ByteBuffer;IIII)V
    .registers 6

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    .line 226
    iput p2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    .line 227
    iput p3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    .line 228
    iput p4, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    .line 229
    iput p5, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    return-void
.end method

.method static synthetic access$600()Lcom/google/flatbuffers/FlexBuffers$Reference;
    .registers 1

    .line 211
    sget-object v0, Lcom/google/flatbuffers/FlexBuffers$Reference;->NULL_REFERENCE:Lcom/google/flatbuffers/FlexBuffers$Reference;

    return-object v0
.end method


# virtual methods
.method public asBlob()Lcom/google/flatbuffers/FlexBuffers$Blob;
    .registers 5

    .line 531
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isBlob()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isString()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_12

    .line 534
    :cond_d
    invoke-static {}, Lcom/google/flatbuffers/FlexBuffers$Blob;->empty()Lcom/google/flatbuffers/FlexBuffers$Blob;

    move-result-object v0

    return-object v0

    .line 532
    :cond_12
    :goto_12
    new-instance v0, Lcom/google/flatbuffers/FlexBuffers$Blob;

    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->indirect(Ljava/nio/ByteBuffer;II)I
    invoke-static {v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v2

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers$Blob;-><init>(Ljava/nio/ByteBuffer;II)V

    return-object v0
.end method

.method public asBoolean()Z
    .registers 8

    .line 544
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isBoolean()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    .line 545
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1

    .line 547
    :cond_15
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asUInt()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_20

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    return v1
.end method

.method public asFloat()D
    .registers 5

    .line 445
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    .line 447
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->readDouble(Ljava/nio/ByteBuffer;II)D
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$400(Ljava/nio/ByteBuffer;II)D

    move-result-wide v0

    return-wide v0

    :cond_10
    const-wide/16 v1, 0x0

    if-eqz v0, :cond_90

    const/4 v3, 0x1

    if-eq v0, v3, :cond_84

    const/4 v3, 0x2

    if-eq v0, v3, :cond_78

    const/4 v3, 0x5

    if-eq v0, v3, :cond_6f

    const/4 v3, 0x6

    if-eq v0, v3, :cond_5d

    const/4 v3, 0x7

    if-eq v0, v3, :cond_4b

    const/16 v3, 0x8

    if-eq v0, v3, :cond_3a

    const/16 v3, 0xa

    if-eq v0, v3, :cond_30

    const/16 v3, 0x1a

    if-eq v0, v3, :cond_78

    return-wide v1

    .line 459
    :cond_30
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asVector()Lcom/google/flatbuffers/FlexBuffers$Vector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/flatbuffers/FlexBuffers$Vector;->size()I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 450
    :cond_3a
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->indirect(Ljava/nio/ByteBuffer;II)I
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->readDouble(Ljava/nio/ByteBuffer;II)D
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$400(Ljava/nio/ByteBuffer;II)D

    move-result-wide v0

    return-wide v0

    .line 456
    :cond_4b
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->indirect(Ljava/nio/ByteBuffer;II)I
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->readUInt(Ljava/nio/ByteBuffer;II)J
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$300(Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    .line 455
    :cond_5d
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->indirect(Ljava/nio/ByteBuffer;II)I
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->readInt(Ljava/nio/ByteBuffer;II)I
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$100(Ljava/nio/ByteBuffer;II)I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 458
    :cond_6f
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    .line 454
    :cond_78
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->readUInt(Ljava/nio/ByteBuffer;II)J
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$300(Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    .line 451
    :cond_84
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->readInt(Ljava/nio/ByteBuffer;II)I
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$100(Ljava/nio/ByteBuffer;II)I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    :cond_90
    return-wide v1
.end method

.method public asInt()I
    .registers 4

    .line 354
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 356
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->readInt(Ljava/nio/ByteBuffer;II)I
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$100(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0

    :cond_10
    const/4 v1, 0x0

    if-eqz v0, :cond_98

    const/16 v2, 0xa

    if-eq v0, v2, :cond_8f

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_84

    const/4 v2, 0x2

    if-eq v0, v2, :cond_79

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6d

    const/4 v2, 0x5

    if-eq v0, v2, :cond_64

    const/4 v2, 0x6

    if-eq v0, v2, :cond_53

    const/4 v2, 0x7

    if-eq v0, v2, :cond_41

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2f

    return v1

    .line 363
    :cond_2f
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->indirect(Ljava/nio/ByteBuffer;II)I
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->readDouble(Ljava/nio/ByteBuffer;II)D
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$400(Ljava/nio/ByteBuffer;II)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    .line 361
    :cond_41
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->indirect(Ljava/nio/ByteBuffer;II)I
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->readUInt(Ljava/nio/ByteBuffer;II)J
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$300(Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    :goto_51
    long-to-int v1, v0

    return v1

    .line 359
    :cond_53
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->indirect(Ljava/nio/ByteBuffer;II)I
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->readInt(Ljava/nio/ByteBuffer;II)I
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$100(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0

    .line 365
    :cond_64
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 362
    :cond_6d
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->readDouble(Ljava/nio/ByteBuffer;II)D
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$400(Ljava/nio/ByteBuffer;II)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    .line 360
    :cond_79
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->readUInt(Ljava/nio/ByteBuffer;II)J
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$300(Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    goto :goto_51

    .line 367
    :cond_84
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->readInt(Ljava/nio/ByteBuffer;II)I
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$100(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0

    .line 366
    :cond_8f
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asVector()Lcom/google/flatbuffers/FlexBuffers$Vector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/flatbuffers/FlexBuffers$Vector;->size()I

    move-result v0

    return v0

    :cond_98
    return v1
.end method

.method public asKey()Lcom/google/flatbuffers/FlexBuffers$Key;
    .registers 5

    .line 471
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isKey()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 472
    new-instance v0, Lcom/google/flatbuffers/FlexBuffers$Key;

    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->indirect(Ljava/nio/ByteBuffer;II)I
    invoke-static {v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v2

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers$Key;-><init>(Ljava/nio/ByteBuffer;II)V

    return-object v0

    .line 474
    :cond_18
    invoke-static {}, Lcom/google/flatbuffers/FlexBuffers$Key;->empty()Lcom/google/flatbuffers/FlexBuffers$Key;

    move-result-object v0

    return-object v0
.end method

.method public asLong()J
    .registers 5

    .line 412
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 414
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->readLong(Ljava/nio/ByteBuffer;II)J
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$500(Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0

    :cond_10
    const-wide/16 v1, 0x0

    if-eqz v0, :cond_9b

    const/16 v3, 0xa

    if-eq v0, v3, :cond_91

    const/16 v3, 0x1a

    if-eq v0, v3, :cond_85

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7a

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6e

    const/4 v3, 0x5

    if-eq v0, v3, :cond_64

    const/4 v3, 0x6

    if-eq v0, v3, :cond_53

    const/4 v3, 0x7

    if-eq v0, v3, :cond_42

    const/16 v3, 0x8

    if-eq v0, v3, :cond_30

    return-wide v1

    .line 421
    :cond_30
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->indirect(Ljava/nio/ByteBuffer;II)I
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->readDouble(Ljava/nio/ByteBuffer;II)D
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$400(Ljava/nio/ByteBuffer;II)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0

    .line 419
    :cond_42
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->indirect(Ljava/nio/ByteBuffer;II)I
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->readUInt(Ljava/nio/ByteBuffer;II)J
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$300(Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0

    .line 417
    :cond_53
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->indirect(Ljava/nio/ByteBuffer;II)I
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->readLong(Ljava/nio/ByteBuffer;II)J
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$500(Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0

    .line 425
    :cond_64
    :try_start_64
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_6c
    .catch Ljava/lang/NumberFormatException; {:try_start_64 .. :try_end_6c} :catch_6d

    return-wide v0

    :catch_6d
    return-wide v1

    .line 420
    :cond_6e
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->readDouble(Ljava/nio/ByteBuffer;II)D
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$400(Ljava/nio/ByteBuffer;II)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0

    .line 418
    :cond_7a
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->readUInt(Ljava/nio/ByteBuffer;II)J
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$300(Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0

    .line 431
    :cond_85
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->readInt(Ljava/nio/ByteBuffer;II)I
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$100(Ljava/nio/ByteBuffer;II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 430
    :cond_91
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asVector()Lcom/google/flatbuffers/FlexBuffers$Vector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/flatbuffers/FlexBuffers$Vector;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_9b
    return-wide v1
.end method

.method public asMap()Lcom/google/flatbuffers/FlexBuffers$Map;
    .registers 5

    .line 505
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isMap()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 506
    new-instance v0, Lcom/google/flatbuffers/FlexBuffers$Map;

    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->indirect(Ljava/nio/ByteBuffer;II)I
    invoke-static {v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v2

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers$Map;-><init>(Ljava/nio/ByteBuffer;II)V

    return-object v0

    .line 508
    :cond_18
    invoke-static {}, Lcom/google/flatbuffers/FlexBuffers$Map;->empty()Lcom/google/flatbuffers/FlexBuffers$Map;

    move-result-object v0

    return-object v0
.end method

.method public asString()Ljava/lang/String;
    .registers 5

    .line 483
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isString()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 484
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->indirect(Ljava/nio/ByteBuffer;II)I
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 485
    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    sub-int v3, v0, v2

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->readInt(Ljava/nio/ByteBuffer;II)I
    invoke-static {v1, v3, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$100(Ljava/nio/ByteBuffer;II)I

    move-result v1

    .line 486
    invoke-static {}, Lcom/google/flatbuffers/Utf8;->getDefault()Lcom/google/flatbuffers/Utf8;

    move-result-object v2

    iget-object v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/flatbuffers/Utf8;->decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 488
    :cond_25
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isKey()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 489
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->indirect(Ljava/nio/ByteBuffer;II)I
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v0

    move v1, v0

    .line 491
    :goto_36
    iget-object v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-nez v2, :cond_4a

    .line 492
    invoke-static {}, Lcom/google/flatbuffers/Utf8;->getDefault()Lcom/google/flatbuffers/Utf8;

    move-result-object v2

    iget-object v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v0

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/flatbuffers/Utf8;->decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    :cond_4d
    const-string v0, ""

    return-object v0
.end method

.method public asUInt()J
    .registers 5

    .line 383
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 385
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->readUInt(Ljava/nio/ByteBuffer;II)J
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$300(Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0

    :cond_10
    const-wide/16 v1, 0x0

    if-eqz v0, :cond_9a

    const/4 v3, 0x1

    if-eq v0, v3, :cond_8f

    const/4 v3, 0x3

    if-eq v0, v3, :cond_83

    const/16 v3, 0xa

    if-eq v0, v3, :cond_79

    const/16 v3, 0x1a

    if-eq v0, v3, :cond_6d

    const/4 v3, 0x5

    if-eq v0, v3, :cond_64

    const/4 v3, 0x6

    if-eq v0, v3, :cond_53

    const/4 v3, 0x7

    if-eq v0, v3, :cond_42

    const/16 v3, 0x8

    if-eq v0, v3, :cond_30

    return-wide v1

    .line 392
    :cond_30
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->indirect(Ljava/nio/ByteBuffer;II)I
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->readDouble(Ljava/nio/ByteBuffer;II)D
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$400(Ljava/nio/ByteBuffer;II)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0

    .line 388
    :cond_42
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->indirect(Ljava/nio/ByteBuffer;II)I
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->readUInt(Ljava/nio/ByteBuffer;II)J
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$300(Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0

    .line 390
    :cond_53
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->indirect(Ljava/nio/ByteBuffer;II)I
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->readLong(Ljava/nio/ByteBuffer;II)J
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$500(Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0

    .line 394
    :cond_64
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 396
    :cond_6d
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->readInt(Ljava/nio/ByteBuffer;II)I
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$100(Ljava/nio/ByteBuffer;II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 395
    :cond_79
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asVector()Lcom/google/flatbuffers/FlexBuffers$Vector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/flatbuffers/FlexBuffers$Vector;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 391
    :cond_83
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->readDouble(Ljava/nio/ByteBuffer;II)D
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$400(Ljava/nio/ByteBuffer;II)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0

    .line 389
    :cond_8f
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->readLong(Ljava/nio/ByteBuffer;II)J
    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$500(Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0

    :cond_9a
    return-wide v1
.end method

.method public asVector()Lcom/google/flatbuffers/FlexBuffers$Vector;
    .registers 6

    .line 517
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isVector()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 518
    new-instance v0, Lcom/google/flatbuffers/FlexBuffers$Vector;

    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->indirect(Ljava/nio/ByteBuffer;II)I
    invoke-static {v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v2

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers$Vector;-><init>(Ljava/nio/ByteBuffer;II)V

    return-object v0

    .line 519
    :cond_18
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    invoke-static {v0}, Lcom/google/flatbuffers/FlexBuffers;->isTypedVector(I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 520
    new-instance v0, Lcom/google/flatbuffers/FlexBuffers$TypedVector;

    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    # invokes: Lcom/google/flatbuffers/FlexBuffers;->indirect(Ljava/nio/ByteBuffer;II)I
    invoke-static {v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v2

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    iget v4, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    invoke-static {v4}, Lcom/google/flatbuffers/FlexBuffers;->toTypedVectorElementType(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/flatbuffers/FlexBuffers$TypedVector;-><init>(Ljava/nio/ByteBuffer;III)V

    return-object v0

    .line 522
    :cond_38
    invoke-static {}, Lcom/google/flatbuffers/FlexBuffers$Vector;->empty()Lcom/google/flatbuffers/FlexBuffers$Vector;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 237
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    return v0
.end method

.method public isBlob()Z
    .registers 3

    .line 342
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isBoolean()Z
    .registers 3

    .line 253
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isFloat()Z
    .registers 3

    .line 277
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method public isInt()Z
    .registers 4

    .line 285
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v2, 0x6

    if-ne v0, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_a
    return v1
.end method

.method public isIntOrUInt()Z
    .registers 2

    .line 269
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isInt()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isUInt()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public isKey()Z
    .registers 3

    .line 309
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isMap()Z
    .registers 3

    .line 334
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isNull()Z
    .registers 2

    .line 245
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isNumeric()Z
    .registers 2

    .line 261
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isIntOrUInt()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isFloat()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public isString()Z
    .registers 3

    .line 301
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isTypedVector()Z
    .registers 3

    .line 325
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_a

    const/16 v1, 0xf

    if-le v0, v1, :cond_10

    :cond_a
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/16 v1, 0x24

    if-ne v0, v1, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public isUInt()Z
    .registers 3

    .line 293
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    const/4 v1, 0x7

    if-ne v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public isVector()Z
    .registers 3

    .line 317
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_d

    const/16 v1, 0x9

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 5

    .line 565
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/16 v1, 0x24

    if-eq v0, v1, :cond_83

    const/16 v1, 0x22

    packed-switch v0, :pswitch_data_8c

    return-object p1

    .line 588
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asBoolean()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-object p1

    .line 586
    :pswitch_14
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asBlob()Lcom/google/flatbuffers/FlexBuffers$Blob;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/flatbuffers/FlexBuffers$Blob;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1

    .line 606
    :pswitch_1d
    new-instance p1, Lcom/google/flatbuffers/FlexBuffers$FlexBufferException;

    const/16 v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "not_implemented:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/flatbuffers/FlexBuffers$FlexBufferException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 584
    :pswitch_36
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asVector()Lcom/google/flatbuffers/FlexBuffers$Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/flatbuffers/FlexBuffers$Vector;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1

    .line 582
    :pswitch_3f
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asMap()Lcom/google/flatbuffers/FlexBuffers$Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/flatbuffers/FlexBuffers$Map;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1

    .line 580
    :pswitch_48
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p1

    .line 578
    :pswitch_56
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asKey()Lcom/google/flatbuffers/FlexBuffers$Key;

    move-result-object v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Lcom/google/flatbuffers/FlexBuffers$Key;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p1

    .line 576
    :pswitch_65
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asFloat()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    return-object p1

    .line 573
    :pswitch_6d
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asUInt()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-object p1

    .line 570
    :pswitch_75
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asLong()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-object p1

    :pswitch_7d
    const-string v0, "null"

    .line 567
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1

    .line 595
    :cond_83
    :pswitch_83
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asVector()Lcom/google/flatbuffers/FlexBuffers$Vector;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-object p1

    nop

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_7d
        :pswitch_75
        :pswitch_6d
        :pswitch_65
        :pswitch_56
        :pswitch_48
        :pswitch_75
        :pswitch_6d
        :pswitch_65
        :pswitch_3f
        :pswitch_36
        :pswitch_83
        :pswitch_83
        :pswitch_83
        :pswitch_83
        :pswitch_83
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_14
        :pswitch_c
    .end packed-switch
.end method
