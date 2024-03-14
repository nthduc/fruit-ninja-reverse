.class public final Lcom/google/android/gms/internal/ads/zzpl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzpd;


# instance fields
.field private started:Z

.field private zzafh:Lcom/google/android/gms/internal/ads/zzhu;

.field private zzbkj:J

.field private zzbkk:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhu;->zzahz:Lcom/google/android/gms/internal/ads/zzhu;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->zzafh:Lcom/google/android/gms/internal/ads/zzhu;

    return-void
.end method


# virtual methods
.method public final start()V
    .registers 3

    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->started:Z

    if-nez v0, :cond_d

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->zzbkk:J

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->started:Z

    :cond_d
    return-void
.end method

.method public final stop()V
    .registers 3

    .line 8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->started:Z

    if-eqz v0, :cond_e

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpl;->zzfz()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzpl;->zzel(J)V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->started:Z

    :cond_e
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzpd;)V
    .registers 4

    .line 16
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzpd;->zzfz()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzpl;->zzel(J)V

    .line 17
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzpd;->zzfs()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpl;->zzafh:Lcom/google/android/gms/internal/ads/zzhu;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhu;)Lcom/google/android/gms/internal/ads/zzhu;
    .registers 4

    .line 26
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->started:Z

    if-eqz v0, :cond_b

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpl;->zzfz()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzpl;->zzel(J)V

    .line 28
    :cond_b
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpl;->zzafh:Lcom/google/android/gms/internal/ads/zzhu;

    return-object p1
.end method

.method public final zzel(J)V
    .registers 3

    .line 12
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzpl;->zzbkj:J

    .line 13
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzpl;->started:Z

    if-eqz p1, :cond_c

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzpl;->zzbkk:J

    :cond_c
    return-void
.end method

.method public final zzfs()Lcom/google/android/gms/internal/ads/zzhu;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->zzafh:Lcom/google/android/gms/internal/ads/zzhu;

    return-object v0
.end method

.method public final zzfz()J
    .registers 7

    .line 19
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->zzbkj:J

    .line 20
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzpl;->started:Z

    if-eqz v2, :cond_23

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzpl;->zzbkk:J

    sub-long/2addr v2, v4

    .line 22
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpl;->zzafh:Lcom/google/android/gms/internal/ads/zzhu;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzhu;->zzaia:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1c

    .line 23
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzha;->zzdn(J)J

    move-result-wide v2

    goto :goto_22

    .line 24
    :cond_1c
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpl;->zzafh:Lcom/google/android/gms/internal/ads/zzhu;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzhu;->zzdu(J)J

    move-result-wide v2

    :goto_22
    add-long/2addr v0, v2

    :cond_23
    return-wide v0
.end method
