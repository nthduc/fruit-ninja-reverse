.class final Lcom/google/android/gms/internal/ads/zzsy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzrh;


# instance fields
.field private final synthetic zzbuz:Lcom/google/android/gms/internal/ads/zzsw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzsw;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->zzbuz:Lcom/google/android/gms/internal/ads/zzsw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzp(Z)V
    .registers 2

    if-eqz p1, :cond_8

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->zzbuz:Lcom/google/android/gms/internal/ads/zzsw;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzsw;->zzb(Lcom/google/android/gms/internal/ads/zzsw;)V

    return-void

    .line 4
    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->zzbuz:Lcom/google/android/gms/internal/ads/zzsw;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzsw;->zza(Lcom/google/android/gms/internal/ads/zzsw;)V

    return-void
.end method
