.class final Lcom/google/android/gms/internal/ads/zzik;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzajd:Lcom/google/android/gms/internal/ads/zzij;

.field private final synthetic zzajf:Lcom/google/android/gms/internal/ads/zzho;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzij;Lcom/google/android/gms/internal/ads/zzho;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzik;->zzajd:Lcom/google/android/gms/internal/ads/zzij;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzik;->zzajf:Lcom/google/android/gms/internal/ads/zzho;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzajd:Lcom/google/android/gms/internal/ads/zzij;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzij;->zza(Lcom/google/android/gms/internal/ads/zzij;)Lcom/google/android/gms/internal/ads/zzig;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzik;->zzajf:Lcom/google/android/gms/internal/ads/zzho;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzig;->zzb(Lcom/google/android/gms/internal/ads/zzho;)V

    return-void
.end method
