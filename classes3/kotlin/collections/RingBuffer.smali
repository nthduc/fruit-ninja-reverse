.class final Lkotlin/collections/RingBuffer;
.super Lkotlin/collections/AbstractList;
.source "SlidingWindow.kt"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/AbstractList<",
        "TT;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlidingWindow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer\n*L\n1#1,191:1\n189#1:192\n189#1:193\n189#1:194\n*E\n*S KotlinDebug\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer\n*L\n100#1:192\n160#1:193\n173#1:194\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010(\n\u0002\u0008\u0008\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u00060\u0003j\u0002`\u0004B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0013\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0015J\u0016\u0010\u0016\u001a\u00028\u00002\u0006\u0010\u0017\u001a\u00020\u0006H\u0096\u0002\u00a2\u0006\u0002\u0010\u0018J\u0006\u0010\u0019\u001a\u00020\u001aJ\u000f\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001cH\u0096\u0002J\u000e\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00020\u0006J\u0015\u0010\u001f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\tH\u0014\u00a2\u0006\u0002\u0010 J\'\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\t\"\u0004\u0008\u0001\u0010\u00012\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\tH\u0014\u00a2\u0006\u0002\u0010\"J\u0015\u0010#\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u0006H\u0082\u0008R\u0018\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\tX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001e\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0006@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\rR\u000e\u0010\u0011\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lkotlin/collections/RingBuffer;",
        "T",
        "Lkotlin/collections/AbstractList;",
        "Ljava/util/RandomAccess;",
        "Lkotlin/collections/RandomAccess;",
        "capacity",
        "",
        "(I)V",
        "buffer",
        "",
        "",
        "[Ljava/lang/Object;",
        "getCapacity",
        "()I",
        "<set-?>",
        "size",
        "getSize",
        "startIndex",
        "add",
        "",
        "element",
        "(Ljava/lang/Object;)V",
        "get",
        "index",
        "(I)Ljava/lang/Object;",
        "isFull",
        "",
        "iterator",
        "",
        "removeFirst",
        "n",
        "toArray",
        "()[Ljava/lang/Object;",
        "array",
        "([Ljava/lang/Object;)[Ljava/lang/Object;",
        "forward",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final buffer:[Ljava/lang/Object;

.field private final capacity:I

.field private size:I

.field private startIndex:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 86
    invoke-direct {p0}, Lkotlin/collections/AbstractList;-><init>()V

    iput p1, p0, Lkotlin/collections/RingBuffer;->capacity:I

    .line 88
    iget p1, p0, Lkotlin/collections/RingBuffer;->capacity:I

    if-ltz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    if-eqz p1, :cond_15

    .line 91
    iget p1, p0, Lkotlin/collections/RingBuffer;->capacity:I

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    return-void

    .line 88
    :cond_15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ring buffer capacity should not be negative but it is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lkotlin/collections/RingBuffer;->capacity:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static final synthetic access$forward(Lkotlin/collections/RingBuffer;II)I
    .registers 3

    .line 86
    invoke-direct {p0, p1, p2}, Lkotlin/collections/RingBuffer;->forward(II)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getBuffer$p(Lkotlin/collections/RingBuffer;)[Ljava/lang/Object;
    .registers 1

    .line 86
    iget-object p0, p0, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getSize$p(Lkotlin/collections/RingBuffer;)I
    .registers 1

    .line 86
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getStartIndex$p(Lkotlin/collections/RingBuffer;)I
    .registers 1

    .line 86
    iget p0, p0, Lkotlin/collections/RingBuffer;->startIndex:I

    return p0
.end method

.method public static final synthetic access$setSize$p(Lkotlin/collections/RingBuffer;I)V
    .registers 2

    .line 86
    iput p1, p0, Lkotlin/collections/RingBuffer;->size:I

    return-void
.end method

.method public static final synthetic access$setStartIndex$p(Lkotlin/collections/RingBuffer;I)V
    .registers 2

    .line 86
    iput p1, p0, Lkotlin/collections/RingBuffer;->startIndex:I

    return-void
.end method

.method private final forward(II)I
    .registers 3

    add-int/2addr p1, p2

    .line 189
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->getCapacity()I

    move-result p2

    rem-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->isFull()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 160
    iget-object v0, p0, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/RingBuffer;->startIndex:I

    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 193
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->getCapacity()I

    move-result v2

    rem-int/2addr v1, v2

    aput-object p1, v0, v1

    .line 161
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lkotlin/collections/RingBuffer;->size:I

    return-void

    .line 157
    :cond_1f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ring buffer is full"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 98
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkElementIndex$kotlin_stdlib(II)V

    .line 100
    iget-object v0, p0, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/RingBuffer;->startIndex:I

    add-int/2addr v1, p1

    .line 192
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->getCapacity()I

    move-result p1

    rem-int/2addr v1, p1

    aget-object p1, v0, v1

    return-object p1
.end method

.method public final getCapacity()I
    .registers 2

    .line 86
    iget v0, p0, Lkotlin/collections/RingBuffer;->capacity:I

    return v0
.end method

.method public getSize()I
    .registers 2

    .line 94
    iget v0, p0, Lkotlin/collections/RingBuffer;->size:I

    return v0
.end method

.method public final isFull()Z
    .registers 3

    .line 103
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v0

    iget v1, p0, Lkotlin/collections/RingBuffer;->capacity:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 105
    new-instance v0, Lkotlin/collections/RingBuffer$iterator$1;

    invoke-direct {v0, p0}, Lkotlin/collections/RingBuffer$iterator$1;-><init>(Lkotlin/collections/RingBuffer;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public final removeFirst(I)V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    if-eqz v2, :cond_66

    .line 169
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v2

    if-gt p1, v2, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_3d

    if-lez p1, :cond_3c

    .line 172
    iget v0, p0, Lkotlin/collections/RingBuffer;->startIndex:I

    add-int v2, v0, p1

    .line 194
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->getCapacity()I

    move-result v3

    rem-int/2addr v2, v3

    const/4 v3, 0x0

    if-le v0, v2, :cond_2e

    .line 176
    iget-object v4, p0, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    iget v5, p0, Lkotlin/collections/RingBuffer;->capacity:I

    invoke-static {v4, v3, v0, v5}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 177
    iget-object v0, p0, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    invoke-static {v0, v3, v1, v2}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    goto :goto_33

    .line 179
    :cond_2e
    iget-object v1, p0, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    invoke-static {v1, v3, v0, v2}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 182
    :goto_33
    iput v2, p0, Lkotlin/collections/RingBuffer;->startIndex:I

    .line 183
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v0

    sub-int/2addr v0, p1

    iput v0, p0, Lkotlin/collections/RingBuffer;->size:I

    :cond_3c
    return-void

    .line 169
    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "n shouldn\'t be greater than the buffer size: n = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 168
    :cond_66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "n shouldn\'t be negative but it is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 149
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lkotlin/collections/RingBuffer;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .param p1    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    array-length v0, p1

    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    :cond_19
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v0

    .line 129
    iget v1, p0, Lkotlin/collections/RingBuffer;->startIndex:I

    const/4 v2, 0x0

    move v3, v1

    const/4 v1, 0x0

    :goto_22
    if-ge v1, v0, :cond_33

    .line 131
    iget v4, p0, Lkotlin/collections/RingBuffer;->capacity:I

    if-ge v3, v4, :cond_33

    .line 132
    iget-object v4, p0, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    aget-object v4, v4, v3

    aput-object v4, p1, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_33
    :goto_33
    if-ge v1, v0, :cond_40

    .line 139
    iget-object v3, p0, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    aget-object v3, v3, v2

    aput-object v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 143
    :cond_40
    array-length v0, p1

    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v1

    if-le v0, v1, :cond_4e

    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_4e
    if-eqz p1, :cond_51

    return-object p1

    .line 145
    :cond_51
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    return-void
.end method
