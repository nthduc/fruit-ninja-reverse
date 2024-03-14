.class final Lcom/google/android/gms/internal/ads/zzdqx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzhji:J

.field private final zzhjj:Lcom/google/android/gms/internal/ads/zzdra;

.field private zzhjk:J

.field private zzhjl:I

.field private zzhjm:I

.field private zzhjn:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdra;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdra;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqx;->zzhjj:Lcom/google/android/gms/internal/ads/zzdra;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdqx;->zzhjl:I

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdqx;->zzhjm:I

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdqx;->zzhjn:I

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqx;->zzhji:J

    .line 7
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqx;->zzhji:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqx;->zzhjk:J

    return-void
.end method


# virtual methods
.method public final getCreationTimeMillis()J
    .registers 3

    .line 18
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqx;->zzhji:J

    return-wide v0
.end method

.method public final zzaua()J
    .registers 3

    .line 19
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqx;->zzhjk:J

    return-wide v0
.end method

.method public final zzaub()I
    .registers 2

    .line 20
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdqx;->zzhjl:I

    return v0
.end method

.method public final zzaum()Ljava/lang/String;
    .registers 4

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Created: "

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzdqx;->zzhji:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Last accessed: "

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzdqx;->zzhjk:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Accesses: "

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqx;->zzhjl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nEntries retrieved: Valid: "

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqx;->zzhjm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Stale: "

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqx;->zzhjn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzauu()V
    .registers 3

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqx;->zzhjk:J

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdqx;->zzhjl:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdqx;->zzhjl:I

    return-void
.end method

.method public final zzauv()V
    .registers 3

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdqx;->zzhjm:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdqx;->zzhjm:I

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqx;->zzhjj:Lcom/google/android/gms/internal/ads/zzdra;

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzdra;->zzhjo:Z

    return-void
.end method

.method public final zzauw()V
    .registers 3

    .line 15
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdqx;->zzhjn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdqx;->zzhjn:I

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqx;->zzhjj:Lcom/google/android/gms/internal/ads/zzdra;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzdra;->zzhjn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzdra;->zzhjn:I

    return-void
.end method

.method public final zzaux()Lcom/google/android/gms/internal/ads/zzdra;
    .registers 4

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqx;->zzhjj:Lcom/google/android/gms/internal/ads/zzdra;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdra;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdra;

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqx;->zzhjj:Lcom/google/android/gms/internal/ads/zzdra;

    const/4 v2, 0x0

    .line 23
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzdra;->zzhjo:Z

    .line 24
    iput v2, v1, Lcom/google/android/gms/internal/ads/zzdra;->zzhjn:I

    return-object v0
.end method
