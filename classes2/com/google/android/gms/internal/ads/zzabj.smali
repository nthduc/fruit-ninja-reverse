.class public final Lcom/google/android/gms/internal/ads/zzabj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# direct methods
.method public static varargs zza(Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/internal/ads/zzabq;[Ljava/lang/String;)Z
    .registers 5
    .param p0    # Lcom/google/android/gms/internal/ads/zzabs;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/internal/ads/zzabq;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p0, :cond_1a

    if-nez p1, :cond_6

    goto :goto_1a

    .line 4
    :cond_6
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzczm:Z

    if-eqz v1, :cond_1a

    if-nez p1, :cond_d

    goto :goto_1a

    .line 6
    :cond_d
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzabs;->zza(Lcom/google/android/gms/internal/ads/zzabq;J[Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1a
    :goto_1a
    return v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzabs;)Lcom/google/android/gms/internal/ads/zzabq;
    .registers 3
    .param p0    # Lcom/google/android/gms/internal/ads/zzabs;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 11
    :cond_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzabs;->zzex(J)Lcom/google/android/gms/internal/ads/zzabq;

    move-result-object p0

    return-object p0
.end method
