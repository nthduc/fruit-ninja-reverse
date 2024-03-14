.class final Lcom/google/android/gms/internal/ads/zzdnr;
.super Lcom/google/android/gms/ads/reward/AdMetadataListener;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final synthetic zzhda:Lcom/google/android/gms/internal/ads/zzdnp;

.field private final synthetic zzhdb:Lcom/google/android/gms/internal/ads/zzxj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdnp;Lcom/google/android/gms/internal/ads/zzxj;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnr;->zzhda:Lcom/google/android/gms/internal/ads/zzdnp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdnr;->zzhdb:Lcom/google/android/gms/internal/ads/zzxj;

    invoke-direct {p0}, Lcom/google/android/gms/ads/reward/AdMetadataListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdMetadataChanged()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnr;->zzhda:Lcom/google/android/gms/internal/ads/zzdnp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdnp;->zza(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzcjg;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 3
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnr;->zzhdb:Lcom/google/android/gms/internal/ads/zzxj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzxj;->onAdMetadataChanged()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 6
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzayp;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_14
    return-void
.end method
