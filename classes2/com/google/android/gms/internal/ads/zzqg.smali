.class public final Lcom/google/android/gms/internal/ads/zzqg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final zzbmy:Lcom/google/android/gms/internal/ads/zzqd;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzqd;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_c

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzoz;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqg;->handler:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzbmy:Lcom/google/android/gms/internal/ads/zzqd;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzqg;)Lcom/google/android/gms/internal/ads/zzqd;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzbmy:Lcom/google/android/gms/internal/ads/zzqd;

    return-object p0
.end method


# virtual methods
.method public final zzb(IIIF)V
    .registers 13

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzbmy:Lcom/google/android/gms/internal/ads/zzqd;

    if-eqz v0, :cond_14

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->handler:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzqj;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzqj;-><init>(Lcom/google/android/gms/internal/ads/zzqg;IIIF)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_14
    return-void
.end method

.method public final zzb(Landroid/view/Surface;)V
    .registers 4

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzbmy:Lcom/google/android/gms/internal/ads/zzqd;

    if-eqz v0, :cond_e

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzqm;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzqm;-><init>(Lcom/google/android/gms/internal/ads/zzqg;Landroid/view/Surface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method public final zzb(Ljava/lang/String;JJ)V
    .registers 15

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzbmy:Lcom/google/android/gms/internal/ads/zzqd;

    if-eqz v0, :cond_13

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->handler:Landroid/os/Handler;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzqi;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzqi;-><init>(Lcom/google/android/gms/internal/ads/zzqg;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_13
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzho;)V
    .registers 4

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzbmy:Lcom/google/android/gms/internal/ads/zzqd;

    if-eqz v0, :cond_e

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzqh;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzqh;-><init>(Lcom/google/android/gms/internal/ads/zzqg;Lcom/google/android/gms/internal/ads/zzho;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzjl;)V
    .registers 4

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzbmy:Lcom/google/android/gms/internal/ads/zzqd;

    if-eqz v0, :cond_e

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzqf;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzqf;-><init>(Lcom/google/android/gms/internal/ads/zzqg;Lcom/google/android/gms/internal/ads/zzjl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzjl;)V
    .registers 4

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzbmy:Lcom/google/android/gms/internal/ads/zzqd;

    if-eqz v0, :cond_e

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzql;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzql;-><init>(Lcom/google/android/gms/internal/ads/zzqg;Lcom/google/android/gms/internal/ads/zzjl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method public final zzf(IJ)V
    .registers 6

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzbmy:Lcom/google/android/gms/internal/ads/zzqd;

    if-eqz v0, :cond_e

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzqk;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzqk;-><init>(Lcom/google/android/gms/internal/ads/zzqg;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method
