.class public final Lcom/google/android/gms/internal/ads/zzawp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzqu;


# instance fields
.field private final lock:Ljava/lang/Object;

.field private zzbuu:Ljava/lang/String;

.field private final zzclo:Landroid/content/Context;

.field private zzdxz:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_d
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawp;->zzclo:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzawp;->zzbuu:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzawp;->zzdxz:Z

    .line 6
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawp;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getAdUnitId()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawp;->zzbuu:Ljava/lang/String;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzqr;)V
    .registers 2

    .line 20
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzqr;->zzbro:Z

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzawp;->zzam(Z)V

    return-void
.end method

.method public final zzam(Z)V
    .registers 5

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlp()Lcom/google/android/gms/internal/ads/zzawo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawp;->zzclo:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzawo;->zzac(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 10
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawp;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_10
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzawp;->zzdxz:Z

    if-ne v1, p1, :cond_16

    .line 12
    monitor-exit v0

    return-void

    .line 13
    :cond_16
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzawp;->zzdxz:Z

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzawp;->zzbuu:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 15
    monitor-exit v0

    return-void

    .line 16
    :cond_22
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzawp;->zzdxz:Z

    if-eqz p1, :cond_32

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlp()Lcom/google/android/gms/internal/ads/zzawo;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawp;->zzclo:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzawp;->zzbuu:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzawo;->zzf(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3d

    .line 18
    :cond_32
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlp()Lcom/google/android/gms/internal/ads/zzawo;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawp;->zzclo:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzawp;->zzbuu:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzawo;->zzg(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    :goto_3d
    monitor-exit v0

    return-void

    :catchall_3f
    move-exception p1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_10 .. :try_end_41} :catchall_3f

    throw p1
.end method
