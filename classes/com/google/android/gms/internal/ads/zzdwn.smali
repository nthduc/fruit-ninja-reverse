.class Lcom/google/android/gms/internal/ads/zzdwn;
.super Lcom/google/android/gms/internal/ads/zzdwm;
.source "com.google.android.gms:play-services-gass@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdwm<",
        "TE;>;"
    }
.end annotation


# instance fields
.field size:I

.field zzhqk:[Ljava/lang/Object;

.field zzhql:Z


# direct methods
.method constructor <init>(I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdwm;-><init>()V

    const-string v0, "initialCapacity"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdwj;->zzh(ILjava/lang/String;)I

    .line 3
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzhqk:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdwn;->size:I

    return-void
.end method

.method private final zzem(I)V
    .registers 6

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzhqk:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    if-ge v1, p1, :cond_2e

    .line 7
    array-length v1, v0

    if-ltz p1, :cond_26

    shr-int/lit8 v3, v1, 0x1

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    if-ge v1, p1, :cond_18

    add-int/lit8 p1, p1, -0x1

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    shl-int/lit8 v1, p1, 0x1

    :cond_18
    if-gez v1, :cond_1d

    const v1, 0x7fffffff

    .line 17
    :cond_1d
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzhqk:[Ljava/lang/Object;

    .line 18
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzhql:Z

    return-void

    .line 10
    :cond_26
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "cannot store more than MAX_VALUE elements"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 19
    :cond_2e
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzhql:Z

    if-eqz p1, :cond_3c

    .line 20
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzhqk:[Ljava/lang/Object;

    .line 21
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzhql:Z

    :cond_3c
    return-void
.end method


# virtual methods
.method public synthetic zzaa(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdwm;
    .registers 2

    .line 36
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdwn;->zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdwn;

    move-result-object p1

    return-object p1
.end method

.method public zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdwn;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/android/gms/internal/ads/zzdwn<",
            "TE;>;"
        }
    .end annotation

    .line 23
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwd;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdwn;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdwn;->zzem(I)V

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzhqk:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdwn;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdwn;->size:I

    aput-object p1, v0, v1

    return-object p0
.end method

.method public zzg(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzdwm;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/android/gms/internal/ads/zzdwm<",
            "TE;>;"
        }
    .end annotation

    .line 27
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_22

    .line 28
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    .line 29
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdwn;->size:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzdwn;->zzem(I)V

    .line 30
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzdwk;

    if-eqz v1, :cond_22

    .line 31
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdwk;

    .line 32
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzhqk:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdwn;->size:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdwk;->zza([Ljava/lang/Object;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdwn;->size:I

    return-object p0

    .line 34
    :cond_22
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdwm;->zzg(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzdwm;

    return-object p0
.end method
