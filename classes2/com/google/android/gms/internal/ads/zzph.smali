.class public final Lcom/google/android/gms/internal/ads/zzph;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private data:[B

.field private zzbjy:I

.field private zzbjz:I

.field private zzbka:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    .line 2
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzph;-><init>([BI)V

    return-void
.end method

.method private constructor <init>([BI)V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzph;->data:[B

    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzph;->zzbka:I

    return-void
.end method


# virtual methods
.method public final zzbk(I)I
    .registers 13

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 11
    :cond_4
    div-int/lit8 v1, p1, 0x8

    move v2, p1

    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_9
    const/4 v4, 0x1

    const/16 v5, 0xff

    const/16 v6, 0x8

    if-ge p1, v1, :cond_38

    .line 13
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzph;->zzbjz:I

    if-eqz v7, :cond_25

    .line 14
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzph;->data:[B

    iget v9, p0, Lcom/google/android/gms/internal/ads/zzph;->zzbjy:I

    aget-byte v10, v8, v9

    and-int/2addr v10, v5

    shl-int/2addr v10, v7

    add-int/2addr v9, v4

    aget-byte v8, v8, v9

    and-int/2addr v8, v5

    sub-int/2addr v6, v7

    ushr-int v6, v8, v6

    or-int/2addr v6, v10

    goto :goto_2b

    .line 15
    :cond_25
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzph;->data:[B

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzph;->zzbjy:I

    aget-byte v6, v6, v7

    :goto_2b
    add-int/lit8 v2, v2, -0x8

    and-int/2addr v5, v6

    shl-int/2addr v5, v2

    or-int/2addr v3, v5

    .line 18
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzph;->zzbjy:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzph;->zzbjy:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_38
    if-lez v2, :cond_72

    .line 21
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzph;->zzbjz:I

    add-int/2addr p1, v2

    rsub-int/lit8 v1, v2, 0x8

    shr-int v1, v5, v1

    int-to-byte v1, v1

    if-le p1, v6, :cond_5d

    .line 24
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzph;->data:[B

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzph;->zzbjy:I

    aget-byte v8, v2, v7

    and-int/2addr v8, v5

    add-int/lit8 v9, p1, -0x8

    shl-int/2addr v8, v9

    add-int/lit8 v9, v7, 0x1

    aget-byte v2, v2, v9

    and-int/2addr v2, v5

    rsub-int/lit8 v5, p1, 0x10

    shr-int/2addr v2, v5

    or-int/2addr v2, v8

    and-int/2addr v1, v2

    or-int/2addr v1, v3

    add-int/2addr v7, v4

    .line 25
    iput v7, p0, Lcom/google/android/gms/internal/ads/zzph;->zzbjy:I

    goto :goto_6e

    .line 26
    :cond_5d
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzph;->data:[B

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzph;->zzbjy:I

    aget-byte v2, v2, v7

    and-int/2addr v2, v5

    rsub-int/lit8 v5, p1, 0x8

    shr-int/2addr v2, v5

    and-int/2addr v1, v2

    or-int/2addr v1, v3

    if-ne p1, v6, :cond_6e

    add-int/2addr v7, v4

    .line 28
    iput v7, p0, Lcom/google/android/gms/internal/ads/zzph;->zzbjy:I

    :cond_6e
    :goto_6e
    move v3, v1

    .line 29
    rem-int/2addr p1, v6

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzph;->zzbjz:I

    .line 31
    :cond_72
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzph;->zzbjy:I

    if-ltz p1, :cond_85

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzph;->zzbjz:I

    if-ltz v1, :cond_85

    if-ge v1, v6, :cond_85

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzph;->zzbka:I

    if-lt p1, v2, :cond_84

    if-ne p1, v2, :cond_85

    if-nez v1, :cond_85

    :cond_84
    const/4 v0, 0x1

    :cond_85
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzoz;->checkState(Z)V

    return v3
.end method
