.class public final Lcom/google/android/gms/ads/internal/overlay/zzl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V
    .registers 6

    .line 2
    iget v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpr:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1d

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    if-nez v0, :cond_1d

    .line 3
    iget-object p2, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzcgv:Lcom/google/android/gms/internal/ads/zzux;

    if-eqz p2, :cond_12

    .line 4
    iget-object p2, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzcgv:Lcom/google/android/gms/internal/ads/zzux;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzux;->onAdClicked()V

    .line 5
    :cond_12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkp()Lcom/google/android/gms/ads/internal/overlay/zza;

    iget-object p2, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpl:Lcom/google/android/gms/ads/internal/overlay/zzb;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpq:Lcom/google/android/gms/ads/internal/overlay/zzv;

    .line 6
    invoke-static {p0, p2, p1}, Lcom/google/android/gms/ads/internal/overlay/zza;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzb;Lcom/google/android/gms/ads/internal/overlay/zzv;)Z

    return-void

    .line 8
    :cond_1d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms.ads.AdActivity"

    .line 9
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    iget-object v1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbpe:Lcom/google/android/gms/internal/ads/zzbbx;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzbbx;->zzeen:Z

    const-string v2, "com.google.android.gms.ads.internal.overlay.useClientJar"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "shouldCallOnOverlayOpened"

    .line 11
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 12
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zza(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    .line 13
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastLollipop()Z

    move-result p1

    if-nez p1, :cond_43

    const/high16 p1, 0x80000

    .line 14
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 15
    :cond_43
    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_4c

    const/high16 p1, 0x10000000

    .line 16
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 17
    :cond_4c
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzayu;->zza(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
