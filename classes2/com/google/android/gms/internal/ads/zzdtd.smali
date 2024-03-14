.class public abstract Lcom/google/android/gms/internal/ads/zzdtd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.4.0"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzavv()Lcom/google/android/gms/internal/ads/zzdtg;
    .registers 2

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdtk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdtk;-><init>()V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdtg;->zzbq(Z)Lcom/google/android/gms/internal/ads/zzdtg;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdtg;->zzbr(Z)Lcom/google/android/gms/internal/ads/zzdtg;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract zzavt()Ljava/lang/String;
.end method

.method public abstract zzavu()Z
.end method

.method public abstract zzcm()Z
.end method
