.class final synthetic Lcom/google/android/gms/internal/ads/zzdal;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgte:Lcom/google/android/gms/internal/ads/zzva;

.field private final zzgub:Lcom/google/android/gms/internal/ads/zzdaj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdaj;Lcom/google/android/gms/internal/ads/zzva;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdal;->zzgub:Lcom/google/android/gms/internal/ads/zzdaj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdal;->zzgte:Lcom/google/android/gms/internal/ads/zzva;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdal;->zzgub:Lcom/google/android/gms/internal/ads/zzdaj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdal;->zzgte:Lcom/google/android/gms/internal/ads/zzva;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdaj;->zzgua:Lcom/google/android/gms/internal/ads/zzdai;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdai;->zza(Lcom/google/android/gms/internal/ads/zzdai;)Lcom/google/android/gms/internal/ads/zzdac;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdac;->zzara()Lcom/google/android/gms/internal/ads/zzbui;

    move-result-object v0

    .line 4
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbui;->zzk(Lcom/google/android/gms/internal/ads/zzva;)V

    return-void
.end method
