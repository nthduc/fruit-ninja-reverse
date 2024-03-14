.class public Lcom/google/android/gms/internal/ads/zzazl;
.super Lcom/google/android/gms/internal/ads/zzazi;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzazi;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Lcom/google/android/gms/internal/ads/zzuk;
    .registers 4

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzayu;->zzr(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 4
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result p1

    if-eqz p1, :cond_14

    sget-object p1, Lcom/google/android/gms/internal/ads/zzuk;->zzcbq:Lcom/google/android/gms/internal/ads/zzuk;

    return-object p1

    :cond_14
    sget-object p1, Lcom/google/android/gms/internal/ads/zzuk;->zzcbp:Lcom/google/android/gms/internal/ads/zzuk;

    return-object p1

    .line 5
    :cond_17
    sget-object p1, Lcom/google/android/gms/internal/ads/zzuk;->zzcbp:Lcom/google/android/gms/internal/ads/zzuk;

    return-object p1
.end method
