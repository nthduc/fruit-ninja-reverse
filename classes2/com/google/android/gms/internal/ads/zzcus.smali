.class final Lcom/google/android/gms/internal/ads/zzcus;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdyr<",
        "Lcom/google/android/gms/internal/ads/zzboq;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgpa:Lcom/google/android/gms/internal/ads/zzcun;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcun;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzgpa:Lcom/google/android/gms/internal/ads/zzcun;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/ads/zzboq;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbqo;->zzaih()V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzgpa:Lcom/google/android/gms/internal/ads/zzcun;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcun;->zza(Lcom/google/android/gms/internal/ads/zzcun;)Lcom/google/android/gms/internal/ads/zzbpm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbpm;->zzaev()Lcom/google/android/gms/internal/ads/zzbrl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbrl;->zze(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzva;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzgpa:Lcom/google/android/gms/internal/ads/zzcun;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcun;->zzb(Lcom/google/android/gms/internal/ads/zzcun;)Lcom/google/android/gms/internal/ads/zzbug;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbug;->zzk(Lcom/google/android/gms/internal/ads/zzva;)V

    .line 5
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzva;->errorCode:I

    const-string v1, "DelayedBannerAd.onFailure"

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdox;->zza(ILjava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
