.class public abstract Lcom/google/android/gms/internal/ads/zzgz;
.super Lcom/google/android/gms/internal/ads/zzgt;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgx;


# direct methods
.method public static zza(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzgx;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.clearcut.IClearcut"

    .line 3
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzgx;

    if-eqz v1, :cond_11

    .line 5
    check-cast v0, Lcom/google/android/gms/internal/ads/zzgx;

    return-object v0

    .line 6
    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
