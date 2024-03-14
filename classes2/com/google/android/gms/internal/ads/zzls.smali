.class final Lcom/google/android/gms/internal/ads/zzls;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field public final zzaon:[I

.field public final zzaoo:[J

.field public final zzaxc:I

.field public final zzaxi:I

.field public final zzaxk:[I

.field public final zzbbh:[J


# direct methods
.method public constructor <init>([J[II[J[I)V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p2

    array-length v1, p4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzoz;->checkArgument(Z)V

    .line 3
    array-length v0, p1

    array-length v1, p4

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzoz;->checkArgument(Z)V

    .line 4
    array-length v0, p5

    array-length v1, p4

    if-ne v0, v1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzoz;->checkArgument(Z)V

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzls;->zzaoo:[J

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzls;->zzaon:[I

    .line 7
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzls;->zzaxi:I

    .line 8
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzls;->zzbbh:[J

    .line 9
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzls;->zzaxk:[I

    .line 10
    array-length p1, p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzls;->zzaxc:I

    return-void
.end method


# virtual methods
.method public final zzec(J)I
    .registers 6

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzls;->zzbbh:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzpq;->zza([JJZZ)I

    move-result p1

    :goto_8
    if-ltz p1, :cond_15

    .line 14
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzls;->zzaxk:[I

    aget p2, p2, p1

    and-int/2addr p2, v1

    if-eqz p2, :cond_12

    return p1

    :cond_12
    add-int/lit8 p1, p1, -0x1

    goto :goto_8

    :cond_15
    const/4 p1, -0x1

    return p1
.end method

.method public final zzed(J)I
    .registers 6

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzls;->zzbbh:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzpq;->zzb([JJZZ)I

    move-result p1

    .line 19
    :goto_8
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzls;->zzbbh:[J

    array-length p2, p2

    if-ge p1, p2, :cond_18

    .line 20
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzls;->zzaxk:[I

    aget p2, p2, p1

    and-int/2addr p2, v1

    if-eqz p2, :cond_15

    return p1

    :cond_15
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_18
    const/4 p1, -0x1

    return p1
.end method
