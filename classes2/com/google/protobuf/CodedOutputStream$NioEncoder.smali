.class final Lcom/google/protobuf/CodedOutputStream$NioEncoder;
.super Lcom/google/protobuf/CodedOutputStream;
.source "CodedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NioEncoder"
.end annotation


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private final initialPosition:I

.field private final originalBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 4

    const/4 v0, 0x0

    .line 1477
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedOutputStream;-><init>(Lcom/google/protobuf/CodedOutputStream$1;)V

    .line 1478
    iput-object p1, p0, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->originalBuffer:Ljava/nio/ByteBuffer;

    .line 1479
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    .line 1480
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iput p1, p0, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->initialPosition:I

    return-void
.end method

.method private encode(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1772
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Lcom/google/protobuf/Utf8;->encodeUtf8(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 1774
    new-instance v0, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v0, p1}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public flush()V
    .registers 3

    .line 1757
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->originalBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public getTotalBytesWritten()I
    .registers 3

    .line 1767
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->initialPosition:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public spaceLeft()I
    .registers 2

    .line 1762
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public write(B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1591
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 1593
    new-instance v0, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v0, p1}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1701
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 1703
    new-instance v0, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v0, p1}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1685
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 1689
    new-instance p2, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_d
    move-exception p1

    .line 1687
    new-instance p2, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public writeBool(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1520
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->writeTag(II)V

    int-to-byte p1, p2

    .line 1521
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->write(B)V

    return-void
.end method

.method public writeByteArray(I[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1538
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->writeByteArray(I[BII)V

    return-void
.end method

.method public writeByteArray(I[BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1545
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->writeTag(II)V

    .line 1546
    invoke-virtual {p0, p2, p3, p4}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->writeByteArrayNoTag([BII)V

    return-void
.end method

.method public writeByteArrayNoTag([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1605
    invoke-virtual {p0, p3}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->writeUInt32NoTag(I)V

    .line 1606
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->write([BII)V

    return-void
.end method

.method public writeByteBuffer(ILjava/nio/ByteBuffer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1552
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->writeTag(II)V

    .line 1553
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->writeUInt32NoTag(I)V

    .line 1554
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->writeRawBytes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public writeBytes(ILcom/google/protobuf/ByteString;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1532
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->writeTag(II)V

    .line 1533
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->writeBytesNoTag(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public writeBytesNoTag(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1599
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->writeUInt32NoTag(I)V

    .line 1600
    invoke-virtual {p1, p0}, Lcom/google/protobuf/ByteString;->writeTo(Lcom/google/protobuf/ByteOutput;)V

    return-void
.end method

.method public writeFixed32(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1502
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->writeTag(II)V

    .line 1503
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->writeFixed32NoTag(I)V

    return-void
.end method

.method public writeFixed32NoTag(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1650
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 1652
    new-instance v0, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v0, p1}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public writeFixed64(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1514
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->writeTag(II)V

    .line 1515
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->writeFixed64NoTag(J)V

    return-void
.end method

.method public writeFixed64NoTag(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1676
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 1678
    new-instance p2, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public writeInt32(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1490
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->writeTag(II)V

    .line 1491
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->writeInt32NoTag(I)V

    return-void
.end method

.method public writeInt32NoTag(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_6

    .line 1623
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->writeUInt32NoTag(I)V

    goto :goto_a

    :cond_6
    int-to-long v0, p1

    .line 1626
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->writeUInt64NoTag(J)V

    :goto_a
    return-void
.end method

.method public writeLazy(Ljava/nio/ByteBuffer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1709
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->write(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public writeLazy([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1695
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->write([BII)V

    return-void
.end method

.method public writeMessage(ILcom/google/protobuf/MessageLite;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1560
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->writeTag(II)V

    .line 1561
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->writeMessageNoTag(Lcom/google/protobuf/MessageLite;)V

    return-void
.end method

.method public writeMessageNoTag(Lcom/google/protobuf/MessageLite;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1584
    invoke-interface {p1}, Lcom/google/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->writeUInt32NoTag(I)V

    .line 1585
    invoke-interface {p1, p0}, Lcom/google/protobuf/MessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

.method public writeMessageSetExtension(ILcom/google/protobuf/MessageLite;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 1567
    invoke-virtual {p0, v1, v0}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->writeTag(II)V

    const/4 v2, 0x2

    .line 1568
    invoke-virtual {p0, v2, p1}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->writeUInt32(II)V

    .line 1569
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    const/4 p1, 0x4

    .line 1570
    invoke-virtual {p0, v1, p1}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->writeTag(II)V

    return-void
.end method

.method public writeRawBytes(Ljava/nio/ByteBuffer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1611
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1612
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->write([BII)V

    goto :goto_20

    .line 1614
    :cond_16
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 1615
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1616
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->write(Ljava/nio/ByteBuffer;)V

    :goto_20
    return-void
.end method

.method public writeRawMessageSetExtension(ILcom/google/protobuf/ByteString;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 1576
    invoke-virtual {p0, v1, v0}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->writeTag(II)V

    const/4 v2, 0x2

    .line 1577
    invoke-virtual {p0, v2, p1}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->writeUInt32(II)V

    .line 1578
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->writeBytes(ILcom/google/protobuf/ByteString;)V

    const/4 p1, 0x4

    .line 1579
    invoke-virtual {p0, v1, p1}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->writeTag(II)V

    return-void
.end method

.method public writeString(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1526
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->writeTag(II)V

    .line 1527
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->writeStringNoTag(Ljava/lang/String;)V

    return-void
.end method

.method public writeStringNoTag(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1714
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1718
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    .line 1719
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->computeUInt32SizeNoTag(I)I

    move-result v1

    .line 1720
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->computeUInt32SizeNoTag(I)I

    move-result v2

    if-ne v2, v1, :cond_3f

    .line 1724
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v2

    .line 1725
    iget-object v2, p0, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1728
    invoke-direct {p0, p1}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->encode(Ljava/lang/String;)V

    .line 1731
    iget-object v2, p0, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 1732
    iget-object v3, p0, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sub-int v1, v2, v1

    .line 1733
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->writeUInt32NoTag(I)V

    .line 1736
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_5a

    .line 1738
    :cond_3f
    invoke-static {p1}, Lcom/google/protobuf/Utf8;->encodedLength(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1739
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->writeUInt32NoTag(I)V

    .line 1740
    invoke-direct {p0, p1}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->encode(Ljava/lang/String;)V
    :try_end_49
    .catch Lcom/google/protobuf/Utf8$UnpairedSurrogateException; {:try_start_6 .. :try_end_49} :catch_51
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_49} :catch_4a

    goto :goto_5a

    :catch_4a
    move-exception p1

    .line 1750
    new-instance v0, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v0, p1}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_51
    move-exception v1

    .line 1744
    iget-object v2, p0, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1747
    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->inefficientWriteStringNoTag(Ljava/lang/String;Lcom/google/protobuf/Utf8$UnpairedSurrogateException;)V

    :goto_5a
    return-void
.end method

.method public writeTag(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1485
    invoke-static {p1, p2}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->writeUInt32NoTag(I)V

    return-void
.end method

.method public writeUInt32(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1496
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->writeTag(II)V

    .line 1497
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->writeUInt32NoTag(I)V

    return-void
.end method

.method public writeUInt32NoTag(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_b

    .line 1635
    :try_start_4
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void

    .line 1638
    :cond_b
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_15
    .catch Ljava/nio/BufferOverflowException; {:try_start_4 .. :try_end_15} :catch_18

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :catch_18
    move-exception p1

    .line 1643
    new-instance v0, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v0, p1}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    return-void
.end method

.method public writeUInt64(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1508
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->writeTag(II)V

    .line 1509
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->writeUInt64NoTag(J)V

    return-void
.end method

.method public writeUInt64NoTag(J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    .line 1661
    :try_start_9
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void

    .line 1664
    :cond_11
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_1c
    .catch Ljava/nio/BufferOverflowException; {:try_start_9 .. :try_end_1c} :catch_1f

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    :catch_1f
    move-exception p1

    .line 1669
    new-instance p2, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    return-void
.end method
