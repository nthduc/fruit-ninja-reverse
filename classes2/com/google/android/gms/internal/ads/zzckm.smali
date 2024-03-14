.class public final Lcom/google/android/gms/internal/ads/zzckm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbuy;


# instance fields
.field private final zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbgj;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/internal/ads/zzbgj;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcoh:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckm;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    return-void
.end method


# virtual methods
.method public final zzca(Landroid/content/Context;)V
    .registers 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzckm;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    if-eqz p1, :cond_7

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->onPause()V

    :cond_7
    return-void
.end method

.method public final zzcb(Landroid/content/Context;)V
    .registers 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzckm;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    if-eqz p1, :cond_7

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->onResume()V

    :cond_7
    return-void
.end method

.method public final zzcc(Landroid/content/Context;)V
    .registers 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzckm;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    if-eqz p1, :cond_7

    .line 13
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->destroy()V

    :cond_7
    return-void
.end method
