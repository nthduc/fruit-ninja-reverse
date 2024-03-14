.class final synthetic Lcom/google/android/gms/internal/ads/zzcnv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgic:Lcom/google/android/gms/internal/ads/zzcnu;

.field private final zzgim:Lcom/google/android/gms/internal/ads/zzbcg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcnu;Lcom/google/android/gms/internal/ads/zzbcg;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnv;->zzgic:Lcom/google/android/gms/internal/ads/zzcnu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcnv;->zzgim:Lcom/google/android/gms/internal/ads/zzbcg;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnv;->zzgic:Lcom/google/android/gms/internal/ads/zzcnu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnv;->zzgim:Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcnu;->zza(Lcom/google/android/gms/internal/ads/zzbcg;)V

    return-void
.end method
