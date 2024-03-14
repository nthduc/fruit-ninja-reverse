.class final Lcom/google/android/gms/internal/ads/zzcjw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/zzk;


# instance fields
.field private final synthetic zzgfl:Lcom/google/android/gms/internal/ads/zzcjt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcjt;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjw;->zzgfl:Lcom/google/android/gms/internal/ads/zzcjt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzkn()V
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjw;->zzgfl:Lcom/google/android/gms/internal/ads/zzcjt;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcjt;->zza(Lcom/google/android/gms/internal/ads/zzcjt;)Lcom/google/android/gms/internal/ads/zzbwk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbwk;->onPause()V

    return-void
.end method

.method public final zzko()V
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjw;->zzgfl:Lcom/google/android/gms/internal/ads/zzcjt;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcjt;->zza(Lcom/google/android/gms/internal/ads/zzcjt;)Lcom/google/android/gms/internal/ads/zzbwk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbwk;->onResume()V

    return-void
.end method
