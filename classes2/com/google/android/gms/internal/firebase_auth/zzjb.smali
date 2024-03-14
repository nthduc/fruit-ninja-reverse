.class final Lcom/google/android/gms/internal/firebase_auth/zzjb;
.super Lcom/google/android/gms/internal/firebase_auth/zzgr;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzio;
.implements Lcom/google/android/gms/internal/firebase_auth/zzka;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_auth/zzgr<",
        "Ljava/lang/Long;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_auth/zzio<",
        "Ljava/lang/Long;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_auth/zzka;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase_auth/zzjb;


# instance fields
.field private zzb:[J

.field private zzc:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 130
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzjb;

    const/4 v1, 0x0

    new-array v2, v1, [J

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjb;-><init>([JI)V

    .line 131
    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zza:Lcom/google/android/gms/internal/firebase_auth/zzjb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzgr;->zzb()V

    return-void
.end method

.method constructor <init>()V
    .registers 3

    const/16 v0, 0xa

    .line 1
    new-array v0, v0, [J

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjb;-><init>([JI)V

    return-void
.end method

.method private constructor <init>([JI)V
    .registers 3

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzgr;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzb:[J

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzc:I

    return-void
.end method

.method private final zzc(I)V
    .registers 3

    if-ltz p1, :cond_7

    .line 79
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzc:I

    if-ge p1, v0, :cond_7

    return-void

    .line 80
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzd(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzd(I)Ljava/lang/String;
    .registers 5

    .line 82
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzc:I

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
    .registers 8

    .line 102
    check-cast p2, Ljava/lang/Long;

    .line 103
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 104
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzgr;->zzc()V

    if-ltz p1, :cond_44

    .line 105
    iget p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzc:I

    if-gt p1, p2, :cond_44

    .line 107
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzb:[J

    array-length v3, v2

    if-ge p2, v3, :cond_1b

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr p2, p1

    .line 108
    invoke-static {v2, p1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_33

    :cond_1b
    mul-int/lit8 p2, p2, 0x3

    .line 109
    div-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x1

    .line 110
    new-array p2, p2, [J

    const/4 v3, 0x0

    .line 111
    invoke-static {v2, v3, p2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzb:[J

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzc:I

    sub-int/2addr v4, p1

    invoke-static {v2, p1, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzb:[J

    .line 114
    :goto_33
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzb:[J

    aput-wide v0, p2, p1

    .line 115
    iget p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzc:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzc:I

    .line 116
    iget p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->modCount:I

    return-void

    .line 106
    :cond_44
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzd(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final synthetic add(Ljava/lang/Object;)Z
    .registers 4

    .line 118
    check-cast p1, Ljava/lang/Long;

    .line 119
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zza(J)V

    const/4 p1, 0x1

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
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

    .line 53
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzgr;->zzc()V

    .line 54
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzii;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase_auth/zzjb;

    if-nez v0, :cond_f

    .line 56
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzgr;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 57
    :cond_f
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzjb;

    .line 58
    iget v0, p1, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzc:I

    const/4 v1, 0x0

    if-nez v0, :cond_17

    return v1

    :cond_17
    const v2, 0x7fffffff

    .line 60
    iget v3, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzc:I

    sub-int/2addr v2, v3

    if-lt v2, v0, :cond_3f

    add-int/2addr v3, v0

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzb:[J

    array-length v2, v0

    if-le v3, v2, :cond_2b

    .line 65
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzb:[J

    .line 66
    :cond_2b
    iget-object v0, p1, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzb:[J

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzb:[J

    iget v4, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzc:I

    iget p1, p1, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzc:I

    invoke-static {v0, v1, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    iput v3, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzc:I

    .line 68
    iget p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->modCount:I

    return v0

    .line 62
    :cond_3f
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3

    .line 43
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzjb;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    const/4 p1, 0x1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 16
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/firebase_auth/zzjb;

    if-nez v1, :cond_d

    .line 17
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzgr;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 18
    :cond_d
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzjb;

    .line 19
    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzc:I

    iget v2, p1, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzc:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_17

    return v3

    .line 21
    :cond_17
    iget-object p1, p1, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzb:[J

    const/4 v1, 0x0

    .line 22
    :goto_1a
    iget v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzc:I

    if-ge v1, v2, :cond_2c

    .line 23
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzb:[J

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

.method public final synthetic get(I)Ljava/lang/Object;
    .registers 4

    .line 128
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzb(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 28
    :goto_2
    iget v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzc:I

    if-ge v1, v2, :cond_14

    mul-int/lit8 v0, v0, 0x1f

    .line 29
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzb:[J

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzii;->zza(J)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_14
    return v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .registers 9

    .line 34
    instance-of v0, p1, Ljava/lang/Long;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 36
    :cond_6
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzjb;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_11
    if-ge v0, p1, :cond_1f

    .line 39
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzb:[J

    aget-wide v5, v4, v0

    cmp-long v4, v5, v2

    if-nez v4, :cond_1c

    return v0

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_1f
    return v1
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .registers 7

    .line 93
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzgr;->zzc()V

    .line 94
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzc(I)V

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzb:[J

    aget-wide v1, v0, p1

    .line 96
    iget v3, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzc:I

    add-int/lit8 v4, v3, -0x1

    if-ge p1, v4, :cond_18

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    .line 97
    invoke-static {v0, v4, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    :cond_18
    iget p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzc:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzc:I

    .line 99
    iget p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->modCount:I

    .line 100
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 7

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzgr;->zzc()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 71
    :goto_5
    iget v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzc:I

    if-ge v1, v2, :cond_31

    .line 72
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzb:[J

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 73
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzb:[J

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzc:I

    sub-int/2addr v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {p1, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iget p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzc:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzc:I

    .line 75
    iget p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->modCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->modCount:I

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzgr;->zzc()V

    if-lt p2, p1, :cond_1a

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzb:[J

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzc:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzc:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzc:I

    .line 12
    iget p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->modCount:I

    return-void

    .line 9
    :cond_1a
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "toIndex < fromIndex"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 83
    check-cast p2, Ljava/lang/Long;

    .line 84
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 85
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzgr;->zzc()V

    .line 86
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzc(I)V

    .line 87
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzb:[J

    aget-wide v2, p2, p1

    .line 88
    aput-wide v0, p2, p1

    .line 90
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    .line 44
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzc:I

    return v0
.end method

.method public final synthetic zza(I)Lcom/google/android/gms/internal/firebase_auth/zzio;
    .registers 4

    .line 123
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzc:I

    if-lt p1, v0, :cond_12

    .line 125
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzjb;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzb:[J

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzc:I

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjb;-><init>([JI)V

    return-object v0

    .line 124
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final zza(J)V
    .registers 7

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzgr;->zzc()V

    .line 46
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzc:I

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzb:[J

    array-length v2, v1

    if-ne v0, v2, :cond_18

    mul-int/lit8 v2, v0, 0x3

    .line 47
    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 48
    new-array v2, v2, [J

    const/4 v3, 0x0

    .line 49
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    iput-object v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzb:[J

    .line 51
    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzb:[J

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzc:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public final zzb(I)J
    .registers 5

    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzc(I)V

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjb;->zzb:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method
