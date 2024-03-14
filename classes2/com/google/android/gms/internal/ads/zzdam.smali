.class final synthetic Lcom/google/android/gms/internal/ads/zzdam;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgub:Lcom/google/android/gms/internal/ads/zzdaj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdaj;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdam;->zzgub:Lcom/google/android/gms/internal/ads/zzdaj;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdam;->zzgub:Lcom/google/android/gms/internal/ads/zzdaj;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdaj;->zzgua:Lcom/google/android/gms/internal/ads/zzdai;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdai;->zza(Lcom/google/android/gms/internal/ads/zzdai;)Lcom/google/android/gms/internal/ads/zzdac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdac;->zzaqz()Lcom/google/android/gms/internal/ads/zzbvs;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbvs;->onAdLoaded()V

    return-void
.end method
