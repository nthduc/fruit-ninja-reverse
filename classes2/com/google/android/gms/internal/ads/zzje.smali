.class public final Lcom/google/android/gms/internal/ads/zzje;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzie;


# instance fields
.field private zzahm:I

.field private zzaia:F

.field private zzaib:F

.field private zzalf:Ljava/nio/ByteBuffer;

.field private zzami:I

.field private zzamm:Ljava/nio/ByteBuffer;

.field private zzamn:Z

.field private zzamw:Lcom/google/android/gms/internal/ads/zzjf;

.field private zzamx:Ljava/nio/ShortBuffer;

.field private zzamy:J

.field private zzamz:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzaia:F

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzaib:F

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzahm:I

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzami:I

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzje;->zzaiy:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamm:Ljava/nio/ByteBuffer;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamm:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamx:Ljava/nio/ShortBuffer;

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzje;->zzaiy:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzalf:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final flush()V
    .registers 4

    .line 51
    new-instance v0, Lcom/google/android/gms/internal/ads/zzjf;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzje;->zzami:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzje;->zzahm:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzjf;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamw:Lcom/google/android/gms/internal/ads/zzjf;

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamw:Lcom/google/android/gms/internal/ads/zzjf;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzje;->zzaia:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzjf;->setSpeed(F)V

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamw:Lcom/google/android/gms/internal/ads/zzjf;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzje;->zzaib:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzjf;->zzc(F)V

    .line 54
    sget-object v0, Lcom/google/android/gms/internal/ads/zzje;->zzaiy:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzalf:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x0

    .line 55
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamy:J

    .line 56
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamz:J

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamn:Z

    return-void
.end method

.method public final isActive()Z
    .registers 4

    .line 23
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzaia:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v2

    if-gez v0, :cond_1e

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzaib:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v0, 0x0

    return v0

    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    return v0
.end method

.method public final reset()V
    .registers 3

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamw:Lcom/google/android/gms/internal/ads/zzjf;

    .line 60
    sget-object v0, Lcom/google/android/gms/internal/ads/zzje;->zzaiy:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamm:Ljava/nio/ByteBuffer;

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamm:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamx:Ljava/nio/ShortBuffer;

    .line 62
    sget-object v0, Lcom/google/android/gms/internal/ads/zzje;->zzaiy:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzalf:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzahm:I

    .line 64
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzami:I

    const-wide/16 v0, 0x0

    .line 65
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamy:J

    .line 66
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamz:J

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamn:Z

    return-void
.end method

.method public final zza(F)F
    .registers 4

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x41000000    # 8.0f

    .line 10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzpq;->zza(FFF)F

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzje;->zzaia:F

    .line 11
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzje;->zzaia:F

    return p1
.end method

.method public final zzb(F)F
    .registers 4

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x41000000    # 8.0f

    .line 12
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzpq;->zza(FFF)F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzaib:F

    return p1
.end method

.method public final zzb(III)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzih;
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p3, v0, :cond_13

    .line 18
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzje;->zzami:I

    if-ne p3, p1, :cond_d

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzje;->zzahm:I

    if-ne p3, p2, :cond_d

    const/4 p1, 0x0

    return p1

    .line 20
    :cond_d
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzje;->zzami:I

    .line 21
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzje;->zzahm:I

    const/4 p1, 0x1

    return p1

    .line 17
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/ads/zzih;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzih;-><init>(III)V

    throw v0
.end method

.method public final zzfe()Z
    .registers 2

    .line 50
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamn:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamw:Lcom/google/android/gms/internal/ads/zzjf;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzjf;->zzgh()I

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public final zzfj()I
    .registers 2

    .line 24
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzahm:I

    return v0
.end method

.method public final zzfk()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public final zzfl()V
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamw:Lcom/google/android/gms/internal/ads/zzjf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzjf;->zzfl()V

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamn:Z

    return-void
.end method

.method public final zzfm()Ljava/nio/ByteBuffer;
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzalf:Ljava/nio/ByteBuffer;

    .line 48
    sget-object v1, Lcom/google/android/gms/internal/ads/zzje;->zzaiy:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzje;->zzalf:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final zzgf()J
    .registers 3

    .line 14
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamy:J

    return-wide v0
.end method

.method public final zzgg()J
    .registers 3

    .line 15
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamz:J

    return-wide v0
.end method

.method public final zzn(Ljava/nio/ByteBuffer;)V
    .registers 8

    .line 26
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 27
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 28
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 29
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamy:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamy:J

    .line 30
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamw:Lcom/google/android/gms/internal/ads/zzjf;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzjf;->zza(Ljava/nio/ShortBuffer;)V

    .line 31
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 32
    :cond_21
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamw:Lcom/google/android/gms/internal/ads/zzjf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzjf;->zzgh()I

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzahm:I

    mul-int p1, p1, v0

    shl-int/lit8 p1, p1, 0x1

    if-lez p1, :cond_6e

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamm:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_4e

    .line 35
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamm:Ljava/nio/ByteBuffer;

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamm:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamx:Ljava/nio/ShortBuffer;

    goto :goto_58

    .line 37
    :cond_4e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamm:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamx:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 39
    :goto_58
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamw:Lcom/google/android/gms/internal/ads/zzjf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamx:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzjf;->zzb(Ljava/nio/ShortBuffer;)V

    .line 40
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamz:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamz:J

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamm:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 42
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamm:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzje;->zzalf:Ljava/nio/ByteBuffer;

    :cond_6e
    return-void
.end method
