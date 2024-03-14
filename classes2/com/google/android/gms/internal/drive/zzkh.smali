.class final Lcom/google/android/gms/internal/drive/zzkh;
.super Lcom/google/android/gms/internal/drive/zziw;

# interfaces
.implements Lcom/google/android/gms/internal/drive/zzkp;
.implements Lcom/google/android/gms/internal/drive/zzmc;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/drive/zziw<",
        "Ljava/lang/Float;",
        ">;",
        "Lcom/google/android/gms/internal/drive/zzkp<",
        "Ljava/lang/Float;",
        ">;",
        "Lcom/google/android/gms/internal/drive/zzmc;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final zzrm:Lcom/google/android/gms/internal/drive/zzkh;


# instance fields
.field private size:I

.field private zzrn:[F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 112
    new-instance v0, Lcom/google/android/gms/internal/drive/zzkh;

    const/4 v1, 0x0

    new-array v2, v1, [F

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/drive/zzkh;-><init>([FI)V

    .line 113
    sput-object v0, Lcom/google/android/gms/internal/drive/zzkh;->zzrm:Lcom/google/android/gms/internal/drive/zzkh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zziw;->zzbp()V

    return-void
.end method

.method constructor <init>()V
    .registers 3

    const/16 v0, 0xa

    .line 1
    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/drive/zzkh;-><init>([FI)V

    return-void
.end method

.method private constructor <init>([FI)V
    .registers 3

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zziw;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzkh;->zzrn:[F

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/drive/zzkh;->size:I

    return-void
.end method

.method private final zzc(IF)V
    .registers 7

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zziw;->zzbq()V

    if-ltz p1, :cond_3e

    .line 36
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzkh;->size:I

    if-gt p1, v0, :cond_3e

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzkh;->zzrn:[F

    array-length v2, v1

    if-ge v0, v2, :cond_15

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    .line 39
    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2d

    :cond_15
    mul-int/lit8 v0, v0, 0x3

    .line 40
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 41
    new-array v0, v0, [F

    const/4 v2, 0x0

    .line 42
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzkh;->zzrn:[F

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/drive/zzkh;->size:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zzkh;->zzrn:[F

    .line 45
    :goto_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkh;->zzrn:[F

    aput p2, v0, p1

    .line 46
    iget p1, p0, Lcom/google/android/gms/internal/drive/zzkh;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/drive/zzkh;->size:I

    .line 47
    iget p1, p0, Lcom/google/android/gms/internal/drive/zzkh;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/drive/zzkh;->modCount:I

    return-void

    .line 37
    :cond_3e
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/drive/zzkh;->zzq(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final zzp(I)V
    .registers 3

    if-ltz p1, :cond_7

    .line 75
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzkh;->size:I

    if-ge p1, v0, :cond_7

    return-void

    .line 76
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/drive/zzkh;->zzq(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzq(I)Ljava/lang/String;
    .registers 5

    .line 78
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzkh;->size:I

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

    .line 98
    check-cast p2, Ljava/lang/Float;

    .line 99
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzkh;->zzc(IF)V

    return-void
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zziw;->zzbq()V

    .line 50
    invoke-static {p1}, Lcom/google/android/gms/internal/drive/zzkm;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    instance-of v0, p1, Lcom/google/android/gms/internal/drive/zzkh;

    if-nez v0, :cond_f

    .line 52
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/drive/zziw;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 53
    :cond_f
    check-cast p1, Lcom/google/android/gms/internal/drive/zzkh;

    .line 54
    iget v0, p1, Lcom/google/android/gms/internal/drive/zzkh;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_17

    return v1

    :cond_17
    const v2, 0x7fffffff

    .line 56
    iget v3, p0, Lcom/google/android/gms/internal/drive/zzkh;->size:I

    sub-int/2addr v2, v3

    if-lt v2, v0, :cond_3f

    add-int/2addr v3, v0

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkh;->zzrn:[F

    array-length v2, v0

    if-le v3, v2, :cond_2b

    .line 61
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zzkh;->zzrn:[F

    .line 62
    :cond_2b
    iget-object v0, p1, Lcom/google/android/gms/internal/drive/zzkh;->zzrn:[F

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzkh;->zzrn:[F

    iget v4, p0, Lcom/google/android/gms/internal/drive/zzkh;->size:I

    iget p1, p1, Lcom/google/android/gms/internal/drive/zzkh;->size:I

    invoke-static {v0, v1, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iput v3, p0, Lcom/google/android/gms/internal/drive/zzkh;->size:I

    .line 64
    iget p1, p0, Lcom/google/android/gms/internal/drive/zzkh;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/drive/zzkh;->modCount:I

    return v0

    .line 58
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
    instance-of v1, p1, Lcom/google/android/gms/internal/drive/zzkh;

    if-nez v1, :cond_d

    .line 17
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/drive/zziw;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 18
    :cond_d
    check-cast p1, Lcom/google/android/gms/internal/drive/zzkh;

    .line 19
    iget v1, p0, Lcom/google/android/gms/internal/drive/zzkh;->size:I

    iget v2, p1, Lcom/google/android/gms/internal/drive/zzkh;->size:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_17

    return v3

    .line 21
    :cond_17
    iget-object p1, p1, Lcom/google/android/gms/internal/drive/zzkh;->zzrn:[F

    const/4 v1, 0x0

    .line 22
    :goto_1a
    iget v2, p0, Lcom/google/android/gms/internal/drive/zzkh;->size:I

    if-ge v1, v2, :cond_32

    .line 23
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzkh;->zzrn:[F

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    aget v4, p1, v1

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v2, v4, :cond_2f

    return v3

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_32
    return v0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .registers 3

    .line 108
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/drive/zzkh;->zzp(I)V

    .line 109
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkh;->zzrn:[F

    aget p1, v0, p1

    .line 110
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 28
    :goto_2
    iget v2, p0, Lcom/google/android/gms/internal/drive/zzkh;->size:I

    if-ge v1, v2, :cond_14

    mul-int/lit8 v0, v0, 0x1f

    .line 29
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzkh;->zzrn:[F

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_14
    return v0
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .registers 6

    .line 89
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zziw;->zzbq()V

    .line 90
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/drive/zzkh;->zzp(I)V

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkh;->zzrn:[F

    aget v1, v0, p1

    .line 92
    iget v2, p0, Lcom/google/android/gms/internal/drive/zzkh;->size:I

    add-int/lit8 v3, v2, -0x1

    if-ge p1, v3, :cond_18

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    .line 93
    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    :cond_18
    iget p1, p0, Lcom/google/android/gms/internal/drive/zzkh;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/drive/zzkh;->size:I

    .line 95
    iget p1, p0, Lcom/google/android/gms/internal/drive/zzkh;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/drive/zzkh;->modCount:I

    .line 96
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 6

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zziw;->zzbq()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 67
    :goto_5
    iget v2, p0, Lcom/google/android/gms/internal/drive/zzkh;->size:I

    if-ge v1, v2, :cond_31

    .line 68
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzkh;->zzrn:[F

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 69
    iget-object p1, p0, Lcom/google/android/gms/internal/drive/zzkh;->zzrn:[F

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/drive/zzkh;->size:I

    sub-int/2addr v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {p1, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    iget p1, p0, Lcom/google/android/gms/internal/drive/zzkh;->size:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/google/android/gms/internal/drive/zzkh;->size:I

    .line 71
    iget p1, p0, Lcom/google/android/gms/internal/drive/zzkh;->modCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/google/android/gms/internal/drive/zzkh;->modCount:I

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
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkh;->zzrn:[F

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzkh;->size:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzkh;->size:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzkh;->size:I

    .line 12
    iget p1, p0, Lcom/google/android/gms/internal/drive/zzkh;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/drive/zzkh;->modCount:I

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

    .line 79
    check-cast p2, Ljava/lang/Float;

    .line 80
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zziw;->zzbq()V

    .line 82
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/drive/zzkh;->zzp(I)V

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkh;->zzrn:[F

    aget v1, v0, p1

    .line 84
    aput p2, v0, p1

    .line 86
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    .line 32
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzkh;->size:I

    return v0
.end method

.method public final zzc(F)V
    .registers 3

    .line 33
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzkh;->size:I

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/drive/zzkh;->zzc(IF)V

    return-void
.end method

.method public final synthetic zzr(I)Lcom/google/android/gms/internal/drive/zzkp;
    .registers 4

    .line 102
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzkh;->size:I

    if-lt p1, v0, :cond_12

    .line 104
    new-instance v0, Lcom/google/android/gms/internal/drive/zzkh;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzkh;->zzrn:[F

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzkh;->size:I

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/drive/zzkh;-><init>([FI)V

    return-object v0

    .line 103
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
