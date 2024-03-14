.class final synthetic Lcom/google/android/gms/internal/ads/zzbtl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzftw:Lcom/google/android/gms/internal/ads/zzbtm;

.field private final zzftx:Lcom/google/android/gms/internal/ads/zzdzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbtm;Lcom/google/android/gms/internal/ads/zzdzc;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtl;->zzftw:Lcom/google/android/gms/internal/ads/zzbtm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtl;->zzftx:Lcom/google/android/gms/internal/ads/zzdzc;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtl;->zzftw:Lcom/google/android/gms/internal/ads/zzbtm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtl;->zzftx:Lcom/google/android/gms/internal/ads/zzdzc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbtm;->zzc(Lcom/google/android/gms/internal/ads/zzdzc;)Lcom/google/android/gms/internal/ads/zzatc;

    move-result-object v0

    return-object v0
.end method
