.class public Lcom/google/flatbuffers/BaseVector;
.super Ljava/lang/Object;
.source "BaseVector.java"


# instance fields
.field protected bb:Ljava/nio/ByteBuffer;

.field private element_size:I

.field private length:I

.field private vector:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected __element(I)I
    .registers 4

    .line 52
    iget v0, p0, Lcom/google/flatbuffers/BaseVector;->vector:I

    iget v1, p0, Lcom/google/flatbuffers/BaseVector;->element_size:I

    mul-int p1, p1, v1

    add-int/2addr v0, p1

    return v0
.end method

.method protected __reset(IILjava/nio/ByteBuffer;)V
    .registers 4

    .line 63
    iput-object p3, p0, Lcom/google/flatbuffers/BaseVector;->bb:Ljava/nio/ByteBuffer;

    .line 64
    iget-object p3, p0, Lcom/google/flatbuffers/BaseVector;->bb:Ljava/nio/ByteBuffer;

    if-eqz p3, :cond_13

    .line 65
    iput p1, p0, Lcom/google/flatbuffers/BaseVector;->vector:I

    add-int/lit8 p1, p1, -0x4

    .line 66
    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/google/flatbuffers/BaseVector;->length:I

    .line 67
    iput p2, p0, Lcom/google/flatbuffers/BaseVector;->element_size:I

    goto :goto_1a

    :cond_13
    const/4 p1, 0x0

    .line 69
    iput p1, p0, Lcom/google/flatbuffers/BaseVector;->vector:I

    .line 70
    iput p1, p0, Lcom/google/flatbuffers/BaseVector;->length:I

    .line 71
    iput p1, p0, Lcom/google/flatbuffers/BaseVector;->element_size:I

    :goto_1a
    return-void
.end method

.method protected __vector()I
    .registers 2

    .line 42
    iget v0, p0, Lcom/google/flatbuffers/BaseVector;->vector:I

    return v0
.end method

.method public length()I
    .registers 2

    .line 92
    iget v0, p0, Lcom/google/flatbuffers/BaseVector;->length:I

    return v0
.end method

.method public reset()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p0, v0, v0, v1}, Lcom/google/flatbuffers/BaseVector;->__reset(IILjava/nio/ByteBuffer;)V

    return-void
.end method
