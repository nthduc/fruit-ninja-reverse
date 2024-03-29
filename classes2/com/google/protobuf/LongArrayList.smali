.class final Lcom/google/protobuf/LongArrayList;
.super Lcom/google/protobuf/AbstractProtobufList;
.source "LongArrayList.java"

# interfaces
.implements Lcom/google/protobuf/Internal$LongList;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/AbstractProtobufList<",
        "Ljava/lang/Long;",
        ">;",
        "Lcom/google/protobuf/Internal$LongList;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final EMPTY_LIST:Lcom/google/protobuf/LongArrayList;


# instance fields
.field private array:[J

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Lcom/google/protobuf/LongArrayList;

    invoke-direct {v0}, Lcom/google/protobuf/LongArrayList;-><init>()V

    sput-object v0, Lcom/google/protobuf/LongArrayList;->EMPTY_LIST:Lcom/google/protobuf/LongArrayList;

    .line 50
    sget-object v0, Lcom/google/protobuf/LongArrayList;->EMPTY_LIST:Lcom/google/protobuf/LongArrayList;

    invoke-virtual {v0}, Lcom/google/protobuf/LongArrayList;->makeImmutable()V

    return-void
.end method

.method constructor <init>()V
    .registers 3

    const/16 v0, 0xa

    .line 72
    new-array v0, v0, [J

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/protobuf/LongArrayList;-><init>([JI)V

    return-void
.end method

.method private constructor <init>([JI)V
    .registers 3

    .line 79
    invoke-direct {p0}, Lcom/google/protobuf/AbstractProtobufList;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    .line 81
    iput p2, p0, Lcom/google/protobuf/LongArrayList;->size:I

    return-void
.end method

.method private addLong(IJ)V
    .registers 8

    .line 171
    invoke-virtual {p0}, Lcom/google/protobuf/LongArrayList;->ensureIsMutable()V

    if-ltz p1, :cond_3e

    .line 172
    iget v0, p0, Lcom/google/protobuf/LongArrayList;->size:I

    if-gt p1, v0, :cond_3e

    .line 176
    iget-object v1, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    array-length v2, v1

    if-ge v0, v2, :cond_15

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    .line 178
    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2d

    :cond_15
    mul-int/lit8 v0, v0, 0x3

    .line 181
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 182
    new-array v0, v0, [J

    const/4 v2, 0x0

    .line 185
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    iget-object v1, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/google/protobuf/LongArrayList;->size:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    iput-object v0, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    .line 192
    :goto_2d
    iget-object v0, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    aput-wide p2, v0, p1

    .line 193
    iget p1, p0, Lcom/google/protobuf/LongArrayList;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/LongArrayList;->size:I

    .line 194
    iget p1, p0, Lcom/google/protobuf/LongArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/LongArrayList;->modCount:I

    return-void

    .line 173
    :cond_3e
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/protobuf/LongArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static emptyList()Lcom/google/protobuf/LongArrayList;
    .registers 1

    .line 54
    sget-object v0, Lcom/google/protobuf/LongArrayList;->EMPTY_LIST:Lcom/google/protobuf/LongArrayList;

    return-object v0
.end method

.method private ensureIndexInRange(I)V
    .registers 3

    if-ltz p1, :cond_7

    .line 264
    iget v0, p0, Lcom/google/protobuf/LongArrayList;->size:I

    if-ge p1, v0, :cond_7

    return-void

    .line 265
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/protobuf/LongArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;
    .registers 4

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/google/protobuf/LongArrayList;->size:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public add(ILjava/lang/Long;)V
    .registers 5

    .line 156
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/protobuf/LongArrayList;->addLong(IJ)V

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .registers 3

    .line 44
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/LongArrayList;->add(ILjava/lang/Long;)V

    return-void
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 199
    invoke-virtual {p0}, Lcom/google/protobuf/LongArrayList;->ensureIsMutable()V

    if-eqz p1, :cond_44

    .line 206
    instance-of v0, p1, Lcom/google/protobuf/LongArrayList;

    if-nez v0, :cond_e

    .line 207
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractProtobufList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 210
    :cond_e
    check-cast p1, Lcom/google/protobuf/LongArrayList;

    .line 211
    iget v0, p1, Lcom/google/protobuf/LongArrayList;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_16

    return v1

    :cond_16
    const v2, 0x7fffffff

    .line 215
    iget v3, p0, Lcom/google/protobuf/LongArrayList;->size:I

    sub-int/2addr v2, v3

    if-lt v2, v0, :cond_3e

    add-int/2addr v3, v0

    .line 222
    iget-object v0, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    array-length v2, v0

    if-le v3, v2, :cond_2a

    .line 223
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    .line 226
    :cond_2a
    iget-object v0, p1, Lcom/google/protobuf/LongArrayList;->array:[J

    iget-object v2, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    iget v4, p0, Lcom/google/protobuf/LongArrayList;->size:I

    iget p1, p1, Lcom/google/protobuf/LongArrayList;->size:I

    invoke-static {v0, v1, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    iput v3, p0, Lcom/google/protobuf/LongArrayList;->size:I

    .line 228
    iget p1, p0, Lcom/google/protobuf/LongArrayList;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/protobuf/LongArrayList;->modCount:I

    return v0

    .line 218
    :cond_3e
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1

    .line 202
    :cond_44
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addLong(J)V
    .registers 4

    .line 164
    iget v0, p0, Lcom/google/protobuf/LongArrayList;->size:I

    invoke-direct {p0, v0, p1, p2}, Lcom/google/protobuf/LongArrayList;->addLong(IJ)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 89
    :cond_4
    instance-of v1, p1, Lcom/google/protobuf/LongArrayList;

    if-nez v1, :cond_d

    .line 90
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractProtobufList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 92
    :cond_d
    check-cast p1, Lcom/google/protobuf/LongArrayList;

    .line 93
    iget v1, p0, Lcom/google/protobuf/LongArrayList;->size:I

    iget v2, p1, Lcom/google/protobuf/LongArrayList;->size:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_17

    return v3

    .line 97
    :cond_17
    iget-object p1, p1, Lcom/google/protobuf/LongArrayList;->array:[J

    const/4 v1, 0x0

    .line 98
    :goto_1a
    iget v2, p0, Lcom/google/protobuf/LongArrayList;->size:I

    if-ge v1, v2, :cond_2c

    .line 99
    iget-object v2, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    aget-wide v4, v2, v1

    aget-wide v6, p1, v1

    cmp-long v2, v4, v6

    if-eqz v2, :cond_29

    return v3

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_2c
    return v0
.end method

.method public get(I)Ljava/lang/Long;
    .registers 4

    .line 126
    invoke-virtual {p0, p1}, Lcom/google/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Lcom/google/protobuf/LongArrayList;->get(I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getLong(I)J
    .registers 5

    .line 131
    invoke-direct {p0, p1}, Lcom/google/protobuf/LongArrayList;->ensureIndexInRange(I)V

    .line 132
    iget-object v0, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public hashCode()I
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 110
    :goto_2
    iget v2, p0, Lcom/google/protobuf/LongArrayList;->size:I

    if-ge v1, v2, :cond_14

    mul-int/lit8 v0, v0, 0x1f

    .line 111
    iget-object v2, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_14
    return v0
.end method

.method public mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$LongList;
    .registers 4

    .line 118
    iget v0, p0, Lcom/google/protobuf/LongArrayList;->size:I

    if-lt p1, v0, :cond_12

    .line 121
    new-instance v0, Lcom/google/protobuf/LongArrayList;

    iget-object v1, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iget v1, p0, Lcom/google/protobuf/LongArrayList;->size:I

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/LongArrayList;-><init>([JI)V

    return-object v0

    .line 119
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public bridge synthetic mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Lcom/google/protobuf/LongArrayList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$LongList;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Ljava/lang/Long;
    .registers 7

    .line 248
    invoke-virtual {p0}, Lcom/google/protobuf/LongArrayList;->ensureIsMutable()V

    .line 249
    invoke-direct {p0, p1}, Lcom/google/protobuf/LongArrayList;->ensureIndexInRange(I)V

    .line 250
    iget-object v0, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    aget-wide v1, v0, p1

    add-int/lit8 v3, p1, 0x1

    .line 251
    iget v4, p0, Lcom/google/protobuf/LongArrayList;->size:I

    sub-int/2addr v4, p1

    invoke-static {v0, v3, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    iget p1, p0, Lcom/google/protobuf/LongArrayList;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/protobuf/LongArrayList;->size:I

    .line 253
    iget p1, p0, Lcom/google/protobuf/LongArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/LongArrayList;->modCount:I

    .line 254
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Lcom/google/protobuf/LongArrayList;->remove(I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 7

    .line 234
    invoke-virtual {p0}, Lcom/google/protobuf/LongArrayList;->ensureIsMutable()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 235
    :goto_5
    iget v2, p0, Lcom/google/protobuf/LongArrayList;->size:I

    if-ge v1, v2, :cond_30

    .line 236
    iget-object v2, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 237
    iget-object p1, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lcom/google/protobuf/LongArrayList;->size:I

    sub-int/2addr v2, v1

    invoke-static {p1, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    iget p1, p0, Lcom/google/protobuf/LongArrayList;->size:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/protobuf/LongArrayList;->size:I

    .line 239
    iget p1, p0, Lcom/google/protobuf/LongArrayList;->modCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/protobuf/LongArrayList;->modCount:I

    return v0

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_30
    return v0
.end method

.method public set(ILjava/lang/Long;)Ljava/lang/Long;
    .registers 5

    .line 142
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/protobuf/LongArrayList;->setLong(IJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 44
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/LongArrayList;->set(ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public setLong(IJ)J
    .registers 7

    .line 147
    invoke-virtual {p0}, Lcom/google/protobuf/LongArrayList;->ensureIsMutable()V

    .line 148
    invoke-direct {p0, p1}, Lcom/google/protobuf/LongArrayList;->ensureIndexInRange(I)V

    .line 149
    iget-object v0, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    aget-wide v1, v0, p1

    .line 150
    aput-wide p2, v0, p1

    return-wide v1
.end method

.method public size()I
    .registers 2

    .line 137
    iget v0, p0, Lcom/google/protobuf/LongArrayList;->size:I

    return v0
.end method
