.class public final Lcom/google/android/gms/internal/ads/zzpj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private data:[B

.field private zzbjy:I

.field private zzbjz:I

.field private zzbka:I


# direct methods
.method public constructor <init>([BII)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpj;->data:[B

    .line 4
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjy:I

    .line 5
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbka:I

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjz:I

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpj;->zziz()V

    return-void
.end method

.method private final zzbm(I)Z
    .registers 5

    const/4 v0, 0x2

    if-gt v0, p1, :cond_1b

    .line 56
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbka:I

    if-ge p1, v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpj;->data:[B

    aget-byte v1, v0, p1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1b

    add-int/lit8 v1, p1, -0x2

    aget-byte v1, v0, v1

    if-nez v1, :cond_1b

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget-byte p1, v0, p1

    if-nez p1, :cond_1b

    return v1

    :cond_1b
    const/4 p1, 0x0

    return p1
.end method

.method private final zziy()I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 53
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpj;->zziv()Z

    move-result v2

    if-nez v2, :cond_b

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    const/4 v2, 0x1

    shl-int v3, v2, v1

    sub-int/2addr v3, v2

    if-lez v1, :cond_15

    .line 55
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzpj;->zzbk(I)I

    move-result v0

    :cond_15
    add-int/2addr v3, v0

    return v3
.end method

.method private final zziz()V
    .registers 4

    .line 57
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjy:I

    if-ltz v0, :cond_16

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjz:I

    if-ltz v1, :cond_16

    const/16 v2, 0x8

    if-ge v1, v2, :cond_16

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbka:I

    if-lt v0, v2, :cond_14

    if-ne v0, v2, :cond_16

    if-nez v1, :cond_16

    :cond_14
    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzoz;->checkState(Z)V

    return-void
.end method


# virtual methods
.method public final zzbk(I)I
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 26
    :cond_4
    div-int/lit8 v1, p1, 0x8

    const/4 v2, 0x0

    :goto_7
    const/16 v3, 0xff

    const/16 v4, 0x8

    if-ge v0, v1, :cond_44

    .line 28
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjy:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzpj;->zzbm(I)Z

    move-result v5

    if-eqz v5, :cond_1c

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjy:I

    add-int/lit8 v5, v5, 0x2

    goto :goto_20

    :cond_1c
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjy:I

    add-int/lit8 v5, v5, 0x1

    .line 29
    :goto_20
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjz:I

    if-eqz v6, :cond_34

    .line 30
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzpj;->data:[B

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjy:I

    aget-byte v8, v7, v8

    and-int/2addr v8, v3

    shl-int/2addr v8, v6

    aget-byte v7, v7, v5

    and-int/2addr v7, v3

    sub-int/2addr v4, v6

    ushr-int v4, v7, v4

    or-int/2addr v4, v8

    goto :goto_3a

    .line 31
    :cond_34
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpj;->data:[B

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjy:I

    aget-byte v4, v4, v6

    :goto_3a
    add-int/lit8 p1, p1, -0x8

    and-int/2addr v3, v4

    shl-int/2addr v3, p1

    or-int/2addr v2, v3

    .line 34
    iput v5, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjy:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_44
    if-lez p1, :cond_8d

    .line 37
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjz:I

    add-int/2addr v0, p1

    rsub-int/lit8 p1, p1, 0x8

    shr-int p1, v3, p1

    int-to-byte p1, p1

    .line 39
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjy:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzpj;->zzbm(I)Z

    move-result v1

    if-eqz v1, :cond_5d

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjy:I

    add-int/lit8 v1, v1, 0x2

    goto :goto_61

    :cond_5d
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjy:I

    add-int/lit8 v1, v1, 0x1

    :goto_61
    if-le v0, v4, :cond_79

    .line 41
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzpj;->data:[B

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjy:I

    aget-byte v6, v5, v6

    and-int/2addr v6, v3

    add-int/lit8 v7, v0, -0x8

    shl-int/2addr v6, v7

    aget-byte v5, v5, v1

    and-int/2addr v3, v5

    rsub-int/lit8 v5, v0, 0x10

    shr-int/2addr v3, v5

    or-int/2addr v3, v6

    and-int/2addr p1, v3

    or-int/2addr p1, v2

    .line 42
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjy:I

    goto :goto_89

    .line 43
    :cond_79
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzpj;->data:[B

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjy:I

    aget-byte v5, v5, v6

    and-int/2addr v3, v5

    rsub-int/lit8 v5, v0, 0x8

    shr-int/2addr v3, v5

    and-int/2addr p1, v3

    or-int/2addr p1, v2

    if-ne v0, v4, :cond_89

    .line 45
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjy:I

    :cond_89
    :goto_89
    move v2, p1

    .line 46
    rem-int/2addr v0, v4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjz:I

    .line 47
    :cond_8d
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpj;->zziz()V

    return v2
.end method

.method public final zzbl(I)V
    .registers 4

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjy:I

    .line 10
    div-int/lit8 v1, p1, 0x8

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjy:I

    .line 11
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjz:I

    rem-int/lit8 p1, p1, 0x8

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjz:I

    .line 12
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjz:I

    const/4 v1, 0x7

    if-le p1, v1, :cond_1d

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjy:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjy:I

    add-int/lit8 p1, p1, -0x8

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjz:I

    :cond_1d
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    .line 15
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjy:I

    if-gt v0, p1, :cond_32

    .line 16
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzpj;->zzbm(I)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 17
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjy:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzbjy:I

    add-int/lit8 v0, v0, 0x2

    goto :goto_1d

    .line 20
    :cond_32
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpj;->zziz()V

    return-void
.end method

.method public final zziv()Z
    .registers 3

    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzpj;->zzbk(I)I

    move-result v1

    if-ne v1, v0, :cond_8

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zziw()I
    .registers 2

    .line 49
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpj;->zziy()I

    move-result v0

    return v0
.end method

.method public final zzix()I
    .registers 4

    .line 50
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpj;->zziy()I

    move-result v0

    .line 51
    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-nez v1, :cond_b

    const/4 v1, -0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x1

    :goto_c
    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    mul-int v1, v1, v0

    return v1
.end method
