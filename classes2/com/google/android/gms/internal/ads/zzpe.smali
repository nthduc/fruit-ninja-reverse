.class public final Lcom/google/android/gms/internal/ads/zzpe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private size:I

.field private zzbju:[J


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x20

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzpe;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x20

    .line 4
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzbju:[J

    return-void
.end method


# virtual methods
.method public final add(J)V
    .registers 6

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpe;->size:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzbju:[J

    array-length v2, v1

    if-ne v0, v2, :cond_f

    shl-int/lit8 v0, v0, 0x1

    .line 7
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzbju:[J

    .line 8
    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzbju:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpe;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzpe;->size:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public final get(I)J
    .registers 6

    if-ltz p1, :cond_b

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpe;->size:I

    if-ge p1, v0, :cond_b

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzbju:[J

    aget-wide v1, v0, p1

    return-wide v1

    .line 11
    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpe;->size:I

    const/16 v2, 0x2e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid index "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size is "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final size()I
    .registers 2

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpe;->size:I

    return v0
.end method
