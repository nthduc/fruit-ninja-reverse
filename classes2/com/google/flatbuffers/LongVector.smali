.class public final Lcom/google/flatbuffers/LongVector;
.super Lcom/google/flatbuffers/BaseVector;
.source "LongVector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/google/flatbuffers/BaseVector;-><init>()V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lcom/google/flatbuffers/LongVector;
    .registers 4

    const/16 v0, 0x8

    .line 37
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/flatbuffers/LongVector;->__reset(IILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public get(I)J
    .registers 4

    .line 47
    iget-object v0, p0, Lcom/google/flatbuffers/LongVector;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/LongVector;->__element(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method