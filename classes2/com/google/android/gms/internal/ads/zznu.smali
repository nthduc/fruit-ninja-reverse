.class public Lcom/google/android/gms/internal/ads/zznu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzob;


# instance fields
.field private final length:I

.field private zzahv:I

.field private final zzbfo:[Lcom/google/android/gms/internal/ads/zzho;

.field private final zzbgw:Lcom/google/android/gms/internal/ads/zznq;

.field private final zzbgx:[I

.field private final zzbgy:[J


# direct methods
.method public varargs constructor <init>(Lcom/google/android/gms/internal/ads/zznq;[I)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzoz;->checkState(Z)V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzoz;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zznq;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zznu;->zzbgw:Lcom/google/android/gms/internal/ads/zznq;

    .line 4
    array-length v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zznu;->length:I

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zznu;->length:I

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzho;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zznu;->zzbfo:[Lcom/google/android/gms/internal/ads/zzho;

    const/4 v0, 0x0

    .line 6
    :goto_1f
    array-length v2, p2

    if-ge v0, v2, :cond_2f

    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zznu;->zzbfo:[Lcom/google/android/gms/internal/ads/zzho;

    aget v3, p2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zznq;->zzbe(I)Lcom/google/android/gms/internal/ads/zzho;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 9
    :cond_2f
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zznu;->zzbfo:[Lcom/google/android/gms/internal/ads/zzho;

    new-instance v0, Lcom/google/android/gms/internal/ads/zznw;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zznw;-><init>(Lcom/google/android/gms/internal/ads/zznt;)V

    invoke-static {p2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 10
    iget p2, p0, Lcom/google/android/gms/internal/ads/zznu;->length:I

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zznu;->zzbgx:[I

    .line 11
    :goto_40
    iget p2, p0, Lcom/google/android/gms/internal/ads/zznu;->length:I

    if-ge v1, p2, :cond_53

    .line 12
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zznu;->zzbgx:[I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznu;->zzbfo:[Lcom/google/android/gms/internal/ads/zzho;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zznq;->zzh(Lcom/google/android/gms/internal/ads/zzho;)I

    move-result v0

    aput v0, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 14
    :cond_53
    new-array p1, p2, [J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznu;->zzbgy:[J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_25

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_25

    .line 27
    :cond_12
    check-cast p1, Lcom/google/android/gms/internal/ads/zznu;

    .line 28
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zznu;->zzbgw:Lcom/google/android/gms/internal/ads/zznq;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zznu;->zzbgw:Lcom/google/android/gms/internal/ads/zznq;

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zznu;->zzbgx:[I

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zznu;->zzbgx:[I

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_25

    return v0

    :cond_25
    :goto_25
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 20
    iget v0, p0, Lcom/google/android/gms/internal/ads/zznu;->zzahv:I

    if-nez v0, :cond_15

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznu;->zzbgw:Lcom/google/android/gms/internal/ads/zznq;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zznu;->zzbgx:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zznu;->zzahv:I

    .line 22
    :cond_15
    iget v0, p0, Lcom/google/android/gms/internal/ads/zznu;->zzahv:I

    return v0
.end method

.method public final length()I
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznu;->zzbgx:[I

    array-length v0, v0

    return v0
.end method

.method public final zzbe(I)Lcom/google/android/gms/internal/ads/zzho;
    .registers 3

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznu;->zzbfo:[Lcom/google/android/gms/internal/ads/zzho;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final zzbf(I)I
    .registers 3

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznu;->zzbgx:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    return p1
.end method

.method public final zzil()Lcom/google/android/gms/internal/ads/zznq;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznu;->zzbgw:Lcom/google/android/gms/internal/ads/zznq;

    return-object v0
.end method
