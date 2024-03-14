.class public final Lcom/google/android/gms/internal/ads/zzawi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# direct methods
.method public static isEnabled()Z
    .registers 1

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzadc;->zzdcj:Lcom/google/android/gms/internal/ads/zzaci;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaci;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static zzef(Ljava/lang/String;)V
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzadc;->zzdcj:Lcom/google/android/gms/internal/ads/zzaci;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaci;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzayp;->zzef(Ljava/lang/String;)V

    :cond_11
    return-void
.end method
