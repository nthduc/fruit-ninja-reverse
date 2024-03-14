.class public abstract Lcom/google/android/gms/internal/ads/zzbdf;
.super Landroid/view/TextureView;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbdy;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field protected final zzege:Lcom/google/android/gms/internal/ads/zzbdp;

.field protected final zzegf:Lcom/google/android/gms/internal/ads/zzbdz;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbdp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdf;->zzege:Lcom/google/android/gms/internal/ads/zzbdp;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdz;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/ads/zzbdz;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdy;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdf;->zzegf:Lcom/google/android/gms/internal/ads/zzbdz;

    return-void
.end method


# virtual methods
.method public abstract getCurrentPosition()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract seekTo(I)V
.end method

.method public abstract setVideoPath(Ljava/lang/String;)V
.end method

.method public abstract stop()V
.end method

.method public abstract zza(FF)V
.end method

.method public abstract zza(Lcom/google/android/gms/internal/ads/zzbdc;)V
.end method

.method public zzb(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbdf;->setVideoPath(Ljava/lang/String;)V

    return-void
.end method

.method public zzdl(I)V
    .registers 2

    return-void
.end method

.method public zzdm(I)V
    .registers 2

    return-void
.end method

.method public zzdn(I)V
    .registers 2

    return-void
.end method

.method public zzdo(I)V
    .registers 2

    return-void
.end method

.method public zzdp(I)V
    .registers 2

    return-void
.end method

.method public abstract zzyx()Ljava/lang/String;
.end method

.method public abstract zzzb()V
.end method
