.class public final Lcom/google/android/gms/internal/ads/zzbmf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbuy;


# instance fields
.field private final zzfmu:Lcom/google/android/gms/internal/ads/zzdpa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdpa;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmf;->zzfmu:Lcom/google/android/gms/internal/ads/zzdpa;

    return-void
.end method


# virtual methods
.method public final zzca(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmf;->zzfmu:Lcom/google/android/gms/internal/ads/zzdpa;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdpa;->pause()V
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/zzdos; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    const-string v0, "Cannot invoke onPause for the mediation adapter."

    .line 7
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzcb(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmf;->zzfmu:Lcom/google/android/gms/internal/ads/zzdpa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdpa;->resume()V

    if-eqz p1, :cond_c

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmf;->zzfmu:Lcom/google/android/gms/internal/ads/zzdpa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdpa;->onContextChanged(Landroid/content/Context;)V
    :try_end_c
    .catch Lcom/google/android/gms/internal/ads/zzdos; {:try_start_0 .. :try_end_c} :catch_d

    :cond_c
    return-void

    :catch_d
    move-exception p1

    const-string v0, "Cannot invoke onResume for the mediation adapter."

    .line 14
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzcc(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 16
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmf;->zzfmu:Lcom/google/android/gms/internal/ads/zzdpa;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdpa;->destroy()V
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/zzdos; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    const-string v0, "Cannot invoke onDestroy for the mediation adapter."

    .line 19
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
