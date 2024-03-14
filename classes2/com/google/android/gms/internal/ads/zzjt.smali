.class public final Lcom/google/android/gms/internal/ads/zzjt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzke;


# instance fields
.field private final length:I

.field private final zzaih:J

.field private final zzaon:[I

.field private final zzaoo:[J

.field private final zzaop:[J

.field private final zzaoq:[J


# direct methods
.method public constructor <init>([I[J[J[J)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjt;->zzaon:[I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzjt;->zzaoo:[J

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzjt;->zzaop:[J

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzjt;->zzaoq:[J

    .line 6
    array-length p1, p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjt;->length:I

    .line 7
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzjt;->length:I

    if-lez p1, :cond_1e

    add-int/lit8 p2, p1, -0x1

    .line 8
    aget-wide p2, p3, p2

    add-int/lit8 p1, p1, -0x1

    aget-wide v0, p4, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzjt;->zzaih:J

    return-void

    :cond_1e
    const-wide/16 p1, 0x0

    .line 9
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzjt;->zzaih:J

    return-void
.end method


# virtual methods
.method public final getDurationUs()J
    .registers 3

    .line 12
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzjt;->zzaih:J

    return-wide v0
.end method

.method public final isSeekable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final zzdz(J)J
    .registers 6

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjt;->zzaoo:[J

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjt;->zzaoq:[J

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2, v2}, Lcom/google/android/gms/internal/ads/zzpq;->zza([JJZZ)I

    move-result p1

    .line 15
    aget-wide p1, v0, p1

    return-wide p1
.end method
