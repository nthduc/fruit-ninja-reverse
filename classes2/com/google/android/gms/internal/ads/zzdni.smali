.class final Lcom/google/android/gms/internal/ads/zzdni;
.super Lcom/google/android/gms/ads/reward/AdMetadataListener;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final synthetic zzhcv:Lcom/google/android/gms/internal/ads/zzyh;

.field private final synthetic zzhcw:Lcom/google/android/gms/internal/ads/zzdnj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzyh;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdni;->zzhcw:Lcom/google/android/gms/internal/ads/zzdnj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdni;->zzhcv:Lcom/google/android/gms/internal/ads/zzyh;

    invoke-direct {p0}, Lcom/google/android/gms/ads/reward/AdMetadataListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdMetadataChanged()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdni;->zzhcw:Lcom/google/android/gms/internal/ads/zzdnj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdnj;->zza(Lcom/google/android/gms/internal/ads/zzdnj;)Lcom/google/android/gms/internal/ads/zzcjg;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 3
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdni;->zzhcv:Lcom/google/android/gms/internal/ads/zzyh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzyh;->onAdMetadataChanged()V
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
