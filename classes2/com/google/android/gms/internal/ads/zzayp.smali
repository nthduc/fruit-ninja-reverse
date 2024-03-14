.class public final Lcom/google/android/gms/internal/ads/zzayp;
.super Lcom/google/android/gms/internal/ads/zzbbq;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# direct methods
.method public static zza(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzayp;->zzxa()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "Ads"

    .line 5
    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    return-void
.end method

.method public static zzei(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzayp;->zzxa()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "Ads"

    .line 2
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method public static zzxa()Z
    .registers 1

    const/4 v0, 0x2

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzacv;->zzdbq:Lcom/google/android/gms/internal/ads/zzaci;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaci;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    return v0

    :cond_17
    const/4 v0, 0x0

    return v0
.end method
