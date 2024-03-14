.class final Lcom/google/android/gms/internal/ads/zzcyw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/zzg;


# instance fields
.field private final synthetic zzgsb:Lcom/google/android/gms/internal/ads/zzcbg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcyr;Lcom/google/android/gms/internal/ads/zzcbg;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcyw;->zzgsb:Lcom/google/android/gms/internal/ads/zzcbg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzh(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public final zzkc()V
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyw;->zzgsb:Lcom/google/android/gms/internal/ads/zzcbg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqq;->zzafb()Lcom/google/android/gms/internal/ads/zzbuc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbuc;->onAdClicked()V

    return-void
.end method

.method public final zzkd()V
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyw;->zzgsb:Lcom/google/android/gms/internal/ads/zzcbg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqq;->zzafc()Lcom/google/android/gms/internal/ads/zzbuu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbuu;->onAdImpression()V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyw;->zzgsb:Lcom/google/android/gms/internal/ads/zzcbg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqq;->zzafd()Lcom/google/android/gms/internal/ads/zzcaf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcaf;->zzakv()V

    return-void
.end method
