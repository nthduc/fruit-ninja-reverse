.class final Lcom/google/android/gms/internal/ads/zzqh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzajf:Lcom/google/android/gms/internal/ads/zzho;

.field private final synthetic zzbmx:Lcom/google/android/gms/internal/ads/zzqg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzqg;Lcom/google/android/gms/internal/ads/zzho;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzbmx:Lcom/google/android/gms/internal/ads/zzqg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzajf:Lcom/google/android/gms/internal/ads/zzho;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzbmx:Lcom/google/android/gms/internal/ads/zzqg;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzqg;->zza(Lcom/google/android/gms/internal/ads/zzqg;)Lcom/google/android/gms/internal/ads/zzqd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzajf:Lcom/google/android/gms/internal/ads/zzho;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzqd;->zzk(Lcom/google/android/gms/internal/ads/zzho;)V

    return-void
.end method
