.class public abstract Lcom/google/flatbuffers/FlatBufferBuilder$ByteBufferFactory;
.super Ljava/lang/Object;
.source "FlatBufferBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/flatbuffers/FlatBufferBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ByteBufferFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract newByteBuffer(I)Ljava/nio/ByteBuffer;
.end method

.method public releaseByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 2

    return-void
.end method
