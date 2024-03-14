.class final Lcom/google/android/gms/internal/firebase_auth/zzbp;
.super Lcom/google/android/gms/internal/firebase_auth/zzbl;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/firebase_auth/zzbl<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final zza:Lcom/google/android/gms/internal/firebase_auth/zzbl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzbl<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient zzb:Ljava/lang/Object;

.field private final transient zzc:[Ljava/lang/Object;

.field private final transient zzd:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 135
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzbp;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/internal/firebase_auth/zzbp;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzbp;->zza:Lcom/google/android/gms/internal/firebase_auth/zzbl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .registers 4

    .line 83
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzbl;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbp;->zzb:Ljava/lang/Object;

    .line 85
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzbp;->zzc:[Ljava/lang/Object;

    .line 86
    iput p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzbp;->zzd:I

    return-void
.end method

.method static zza(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzbp;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/firebase_auth/zzbp<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p0, :cond_7

    .line 2
    sget-object p0, Lcom/google/android/gms/internal/firebase_auth/zzbp;->zza:Lcom/google/android/gms/internal/firebase_auth/zzbl;

    check-cast p0, Lcom/google/android/gms/internal/firebase_auth/zzbp;

    return-object p0

    :cond_7
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_19

    .line 4
    aget-object p0, p1, v1

    aget-object v1, p1, v2

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzbf;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    new-instance p0, Lcom/google/android/gms/internal/firebase_auth/zzbp;

    invoke-direct {p0, v0, p1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzbp;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object p0

    .line 6
    :cond_19
    array-length v3, p1

    shr-int/2addr v3, v2

    invoke-static {p0, v3}, Lcom/google/android/gms/internal/firebase_auth/zzav;->zzb(II)I

    const/4 v3, 0x2

    .line 8
    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const v4, 0x2ccccccc

    const/high16 v5, 0x40000000    # 2.0f

    if-ge v3, v4, :cond_45

    add-int/lit8 v4, v3, -0x1

    .line 10
    invoke-static {v4}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v4

    shl-int/2addr v4, v2

    move v5, v4

    :goto_32
    int-to-double v6, v5

    const-wide v8, 0x3fe6666666666666L    # 0.7

    .line 11
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    int-to-double v8, v3

    cmpg-double v4, v6, v8

    if-gez v4, :cond_4c

    shl-int/lit8 v5, v5, 0x1

    goto :goto_32

    :cond_45
    if-ge v3, v5, :cond_49

    const/4 v3, 0x1

    goto :goto_4a

    :cond_49
    const/4 v3, 0x0

    :goto_4a
    if-eqz v3, :cond_10f

    :cond_4c
    if-ne p0, v2, :cond_58

    .line 21
    aget-object v1, p1, v1

    aget-object v2, p1, v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzbf;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v0

    goto/16 :goto_109

    :cond_58
    add-int/lit8 v0, v5, -0x1

    const/16 v2, 0x80

    const/4 v3, -0x1

    if-gt v5, v2, :cond_97

    .line 25
    new-array v2, v5, [B

    .line 26
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    :goto_64
    if-ge v1, p0, :cond_109

    mul-int/lit8 v3, v1, 0x2

    .line 29
    aget-object v4, p1, v3

    xor-int/lit8 v5, v3, 0x1

    .line 30
    aget-object v5, p1, v5

    .line 31
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase_auth/zzbf;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/gms/internal/firebase_auth/zzbe;->zza(I)I

    move-result v6

    :goto_79
    and-int/2addr v6, v0

    .line 34
    aget-byte v7, v2, v6

    const/16 v8, 0xff

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_87

    int-to-byte v3, v3

    .line 36
    aput-byte v3, v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    .line 38
    :cond_87
    aget-object v8, p1, v7

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_92

    add-int/lit8 v6, v6, 0x1

    goto :goto_79

    .line 39
    :cond_92
    invoke-static {v4, v5, p1, v7}, Lcom/google/android/gms/internal/firebase_auth/zzbp;->zza(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_97
    const v2, 0x8000

    if-gt v5, v2, :cond_d5

    .line 44
    new-array v2, v5, [S

    .line 45
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([SS)V

    :goto_a1
    if-ge v1, p0, :cond_109

    mul-int/lit8 v3, v1, 0x2

    .line 48
    aget-object v4, p1, v3

    xor-int/lit8 v5, v3, 0x1

    .line 49
    aget-object v5, p1, v5

    .line 50
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase_auth/zzbf;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/gms/internal/firebase_auth/zzbe;->zza(I)I

    move-result v6

    :goto_b6
    and-int/2addr v6, v0

    .line 53
    aget-short v7, v2, v6

    const v8, 0xffff

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_c5

    int-to-short v3, v3

    .line 55
    aput-short v3, v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_a1

    .line 57
    :cond_c5
    aget-object v8, p1, v7

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d0

    add-int/lit8 v6, v6, 0x1

    goto :goto_b6

    .line 58
    :cond_d0
    invoke-static {v4, v5, p1, v7}, Lcom/google/android/gms/internal/firebase_auth/zzbp;->zza(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 62
    :cond_d5
    new-array v2, v5, [I

    .line 63
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    :goto_da
    if-ge v1, p0, :cond_109

    mul-int/lit8 v4, v1, 0x2

    .line 66
    aget-object v5, p1, v4

    xor-int/lit8 v6, v4, 0x1

    .line 67
    aget-object v6, p1, v6

    .line 68
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzbf;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/gms/internal/firebase_auth/zzbe;->zza(I)I

    move-result v7

    :goto_ef
    and-int/2addr v7, v0

    .line 71
    aget v8, v2, v7

    if-ne v8, v3, :cond_f9

    .line 73
    aput v4, v2, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_da

    .line 75
    :cond_f9
    aget-object v9, p1, v8

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_104

    add-int/lit8 v7, v7, 0x1

    goto :goto_ef

    .line 76
    :cond_104
    invoke-static {v5, v6, p1, v8}, Lcom/google/android/gms/internal/firebase_auth/zzbp;->zza(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 81
    :cond_109
    :goto_109
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzbp;

    invoke-direct {v0, v2, p1, p0}, Lcom/google/android/gms/internal/firebase_auth/zzbp;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v0

    .line 16
    :cond_10f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "collection too large"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    return-void
.end method

.method private static zza(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;
    .registers 7

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aget-object v1, p2, p3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    xor-int/lit8 p3, p3, 0x1

    aget-object p2, p2, p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x27

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p3, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p3, v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Multiple entries with same key: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbp;->zzb:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbp;->zzc:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzbp;->zzd:I

    const/4 v3, 0x0

    if-nez p1, :cond_a

    return-object v3

    :cond_a
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1a

    const/4 v0, 0x0

    .line 93
    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 94
    aget-object p1, v1, v4

    return-object p1

    :cond_19
    return-object v3

    :cond_1a
    if-nez v0, :cond_1d

    return-object v3

    .line 99
    :cond_1d
    instance-of v2, v0, [B

    if-eqz v2, :cond_48

    .line 100
    move-object v2, v0

    check-cast v2, [B

    .line 101
    array-length v0, v2

    add-int/lit8 v5, v0, -0x1

    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_auth/zzbe;->zza(I)I

    move-result v0

    :goto_2f
    and-int/2addr v0, v5

    .line 104
    aget-byte v6, v2, v0

    const/16 v7, 0xff

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_38

    return-object v3

    .line 107
    :cond_38
    aget-object v7, v1, v6

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_45

    xor-int/lit8 p1, v6, 0x1

    .line 108
    aget-object p1, v1, p1

    return-object p1

    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 110
    :cond_48
    instance-of v2, v0, [S

    if-eqz v2, :cond_74

    .line 111
    move-object v2, v0

    check-cast v2, [S

    .line 112
    array-length v0, v2

    add-int/lit8 v5, v0, -0x1

    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_auth/zzbe;->zza(I)I

    move-result v0

    :goto_5a
    and-int/2addr v0, v5

    .line 115
    aget-short v6, v2, v0

    const v7, 0xffff

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_64

    return-object v3

    .line 118
    :cond_64
    aget-object v7, v1, v6

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_71

    xor-int/lit8 p1, v6, 0x1

    .line 119
    aget-object p1, v1, p1

    return-object p1

    :cond_71
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    .line 121
    :cond_74
    check-cast v0, [I

    .line 122
    array-length v2, v0

    sub-int/2addr v2, v4

    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzbe;->zza(I)I

    move-result v5

    :goto_80
    and-int/2addr v5, v2

    .line 125
    aget v6, v0, v5

    const/4 v7, -0x1

    if-ne v6, v7, :cond_87

    return-object v3

    .line 128
    :cond_87
    aget-object v7, v1, v6

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_94

    xor-int/lit8 p1, v6, 0x1

    .line 129
    aget-object p1, v1, p1

    return-object p1

    :cond_94
    add-int/lit8 v5, v5, 0x1

    goto :goto_80
.end method

.method public final size()I
    .registers 2

    .line 88
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbp;->zzd:I

    return v0
.end method

.method final zzb()Lcom/google/android/gms/internal/firebase_auth/zzbn;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase_auth/zzbn<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 131
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzbo;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbp;->zzc:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzbp;->zzd:I

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/google/android/gms/internal/firebase_auth/zzbo;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzbl;[Ljava/lang/Object;II)V

    return-object v0
.end method

.method final zzc()Lcom/google/android/gms/internal/firebase_auth/zzbn;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase_auth/zzbn<",
            "TK;>;"
        }
    .end annotation

    .line 132
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzbt;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbp;->zzc:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzbp;->zzd:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/internal/firebase_auth/zzbt;-><init>([Ljava/lang/Object;II)V

    .line 133
    new-instance v1, Lcom/google/android/gms/internal/firebase_auth/zzbq;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/firebase_auth/zzbq;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzbl;Lcom/google/android/gms/internal/firebase_auth/zzbg;)V

    return-object v1
.end method

.method final zzd()Lcom/google/android/gms/internal/firebase_auth/zzbh;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase_auth/zzbh<",
            "TV;>;"
        }
    .end annotation

    .line 134
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzbt;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbp;->zzc:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzbp;->zzd:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/internal/firebase_auth/zzbt;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method
