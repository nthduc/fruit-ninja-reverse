.class final Lcom/google/android/gms/internal/drive/zzkl;
.super Lcom/google/android/gms/internal/drive/zziw;

# interfaces
.implements Lcom/google/android/gms/internal/drive/zzkp;
.implements Lcom/google/android/gms/internal/drive/zzmc;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/drive/zziw<",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/google/android/gms/internal/drive/zzkp<",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/google/android/gms/internal/drive/zzmc;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final zzsl:Lcom/google/android/gms/internal/drive/zzkl;


# instance fields
.field private size:I

.field private zzsm:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 111
    new-instance v0, Lcom/google/android/gms/internal/drive/zzkl;

    const/4 v1, 0x0

    new-array v2, v1, [I

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/drive/zzkl;-><init>([II)V

    .line 112
    sput-object v0, Lcom/google/android/gms/internal/drive/zzkl;->zzsl:Lcom/google/android/gms/internal/drive/zzkl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zziw;->zzbp()V

    return-void
.end method

.method constructor <init>()V
    .registers 3

    const/16 v0, 0xa

    .line 1
    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/drive/zzkl;-><init>([II)V

    return-void
.end method

.method private constructor <init>([II)V
    .registers 3

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zziw;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzkl;->zzsm:[I

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/drive/zzkl;->size:I

    return-void
.end method

.method private final zzo(II)V
    .registers 7

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zziw;->zzbq()V

    if-ltz p1, :cond_3e

    .line 38
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzkl;->size:I

    if-gt p1, v0, :cond_3e

    .line 40
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzkl;->zzsm:[I

    array-length v2, v1

    if-ge v0, v2, :cond_15

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    .line 41
    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2d

    :cond_15
    mul-int/lit8 v0, v0, 0x3

    .line 42
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 43
    new-array v0, v0, [I

    const/4 v2, 0x0

    .line 44
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzkl;->zzsm:[I

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/drive/zzkl;->size:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zzkl;->zzsm:[I

    .line 47
    :goto_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkl;->zzsm:[I

    aput p2, v0, p1

    .line 48
    iget p1, p0, Lcom/google/android/gms/internal/drive/zzkl;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/drive/zzkl;->size:I

    .line 49
    iget p1, p0, Lcom/google/android/gms/internal/drive/zzkl;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/drive/zzkl;->modCount:I

    return-void

    .line 39
    :cond_3e
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/drive/zzkl;->zzq(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final zzp(I)V
    .registers 3

    if-ltz p1, :cond_7

    .line 77
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzkl;->size:I

    if-ge p1, v0, :cond_7

    return-void

    .line 78
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/drive/zzkl;->zzq(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzq(I)Ljava/lang/String;
    .registers 5

    .line 80
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzkl;->size:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final synthetic add(ILjava/lang/Object;)V
    .registers 3

    .line 100
    check-cast p2, Ljava/lang/Integer;

    .line 101
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzkl;->zzo(II)V

    return-void
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zziw;->zzbq()V

    .line 52
    invoke-static {p1}, Lcom/google/android/gms/internal/drive/zzkm;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    instance-of v0, p1, Lcom/google/android/gms/internal/drive/zzkl;

    if-nez v0, :cond_f

    .line 54
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/drive/zziw;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 55
    :cond_f
    check-cast p1, Lcom/google/android/gms/internal/drive/zzkl;

    .line 56
    iget v0, p1, Lcom/google/android/gms/internal/drive/zzkl;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_17

    return v1

    :cond_17
    const v2, 0x7fffffff

    .line 58
    iget v3, p0, Lcom/google/android/gms/internal/drive/zzkl;->size:I

    sub-int/2addr v2, v3

    if-lt v2, v0, :cond_3f

    add-int/2addr v3, v0

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkl;->zzsm:[I

    array-length v2, v0

    if-le v3, v2, :cond_2b

    .line 63
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zzkl;->zzsm:[I

    .line 64
    :cond_2b
    iget-object v0, p1, Lcom/google/android/gms/internal/drive/zzkl;->zzsm:[I

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzkl;->zzsm:[I

    iget v4, p0, Lcom/google/android/gms/internal/drive/zzkl;->size:I

    iget p1, p1, Lcom/google/android/gms/internal/drive/zzkl;->size:I

    invoke-static {v0, v1, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    iput v3, p0, Lcom/google/android/gms/internal/drive/zzkl;->size:I

    .line 66
    iget p1, p0, Lcom/google/android/gms/internal/drive/zzkl;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/drive/zzkl;->modCount:I

    return v0

    .line 60
    :cond_3f
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 16
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/drive/zzkl;

    if-nez v1, :cond_d

    .line 17
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/drive/zziw;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 18
    :cond_d
    check-cast p1, Lcom/google/android/gms/internal/drive/zzkl;

    .line 19
    iget v1, p0, Lcom/google/android/gms/internal/drive/zzkl;->size:I

    iget v2, p1, Lcom/google/android/gms/internal/drive/zzkl;->size:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_17

    return v3

    .line 21
    :cond_17
    iget-object p1, p1, Lcom/google/android/gms/internal/drive/zzkl;->zzsm:[I

    const/4 v1, 0x0

    .line 22
    :goto_1a
    iget v2, p0, Lcom/google/android/gms/internal/drive/zzkl;->size:I

    if-ge v1, v2, :cond_2a

    .line 23
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzkl;->zzsm:[I

    aget v2, v2, v1

    aget v4, p1, v1

    if-eq v2, v4, :cond_27

    return v3

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_2a
    return v0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .registers 2

    .line 109
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzkl;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final getInt(I)I
    .registers 3

    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/drive/zzkl;->zzp(I)V

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkl;->zzsm:[I

    aget p1, v0, p1

    return p1
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 28
    :goto_2
    iget v2, p0, Lcom/google/android/gms/internal/drive/zzkl;->size:I

    if-ge v1, v2, :cond_10

    mul-int/lit8 v0, v0, 0x1f

    .line 29
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzkl;->zzsm:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    return v0
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .registers 6

    .line 91
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zziw;->zzbq()V

    .line 92
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/drive/zzkl;->zzp(I)V

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkl;->zzsm:[I

    aget v1, v0, p1

    .line 94
    iget v2, p0, Lcom/google/android/gms/internal/drive/zzkl;->size:I

    add-int/lit8 v3, v2, -0x1

    if-ge p1, v3, :cond_18

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    .line 95
    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    :cond_18
    iget p1, p0, Lcom/google/android/gms/internal/drive/zzkl;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/drive/zzkl;->size:I

    .line 97
    iget p1, p0, Lcom/google/android/gms/internal/drive/zzkl;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/drive/zzkl;->modCount:I

    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 6

    .line 68
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zziw;->zzbq()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 69
    :goto_5
    iget v2, p0, Lcom/google/android/gms/internal/drive/zzkl;->size:I

    if-ge v1, v2, :cond_31

    .line 70
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzkl;->zzsm:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 71
    iget-object p1, p0, Lcom/google/android/gms/internal/drive/zzkl;->zzsm:[I

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/drive/zzkl;->size:I

    sub-int/2addr v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {p1, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iget p1, p0, Lcom/google/android/gms/internal/drive/zzkl;->size:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/google/android/gms/internal/drive/zzkl;->size:I

    .line 73
    iget p1, p0, Lcom/google/android/gms/internal/drive/zzkl;->modCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/google/android/gms/internal/drive/zzkl;->modCount:I

    return v3

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_31
    return v0
.end method

.method protected final removeRange(II)V
    .registers 5

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zziw;->zzbq()V

    if-lt p2, p1, :cond_1a

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkl;->zzsm:[I

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzkl;->size:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzkl;->size:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzkl;->size:I

    .line 12
    iget p1, p0, Lcom/google/android/gms/internal/drive/zzkl;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/drive/zzkl;->modCount:I

    return-void

    .line 9
    :cond_1a
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "toIndex < fromIndex"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 81
    check-cast p2, Ljava/lang/Integer;

    .line 82
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zziw;->zzbq()V

    .line 84
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/drive/zzkl;->zzp(I)V

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkl;->zzsm:[I

    aget v1, v0, p1

    .line 86
    aput p2, v0, p1

    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    .line 34
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzkl;->size:I

    return v0
.end method

.method public final zzam(I)V
    .registers 3

    .line 35
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzkl;->size:I

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/drive/zzkl;->zzo(II)V

    return-void
.end method

.method public final synthetic zzr(I)Lcom/google/android/gms/internal/drive/zzkp;
    .registers 4

    .line 104
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzkl;->size:I

    if-lt p1, v0, :cond_12

    .line 106
    new-instance v0, Lcom/google/android/gms/internal/drive/zzkl;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzkl;->zzsm:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzkl;->size:I

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/drive/zzkl;-><init>([II)V

    return-object v0

    .line 105
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method