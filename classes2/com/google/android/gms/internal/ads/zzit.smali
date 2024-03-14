.class final Lcom/google/android/gms/internal/ads/zzit;
.super Lcom/google/android/gms/internal/ads/zziq;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private final zzalz:Landroid/media/AudioTimestamp;

.field private zzama:J

.field private zzamb:J

.field private zzamc:J


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zziq;-><init>(Lcom/google/android/gms/internal/ads/zzir;)V

    .line 2
    new-instance v0, Landroid/media/AudioTimestamp;

    invoke-direct {v0}, Landroid/media/AudioTimestamp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzalz:Landroid/media/AudioTimestamp;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/media/AudioTrack;Z)V
    .registers 3

    .line 4
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zziq;->zza(Landroid/media/AudioTrack;Z)V

    const-wide/16 p1, 0x0

    .line 5
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzama:J

    .line 6
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzamb:J

    .line 7
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzamc:J

    return-void
.end method

.method public final zzga()Z
    .registers 8

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzajy:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzalz:Landroid/media/AudioTimestamp;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzalz:Landroid/media/AudioTimestamp;

    iget-wide v1, v1, Landroid/media/AudioTimestamp;->framePosition:J

    .line 12
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzit;->zzamb:J

    cmp-long v5, v3, v1

    if-lez v5, :cond_1b

    .line 13
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzit;->zzama:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzit;->zzama:J

    .line 14
    :cond_1b
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzamb:J

    .line 15
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzit;->zzama:J

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzamc:J

    :cond_25
    return v0
.end method

.method public final zzgb()J
    .registers 3

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzalz:Landroid/media/AudioTimestamp;

    iget-wide v0, v0, Landroid/media/AudioTimestamp;->nanoTime:J

    return-wide v0
.end method

.method public final zzgc()J
    .registers 3

    .line 18
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzamc:J

    return-wide v0
.end method
