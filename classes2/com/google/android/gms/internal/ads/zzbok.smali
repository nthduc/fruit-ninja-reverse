.class public final Lcom/google/android/gms/internal/ads/zzbok;
.super Lcom/google/android/gms/internal/ads/zzsf;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzbut:Lcom/google/android/gms/internal/ads/zzxc;

.field private final zzfpu:Lcom/google/android/gms/internal/ads/zzboh;

.field private final zzfpv:Lcom/google/android/gms/internal/ads/zzdkc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzboh;Lcom/google/android/gms/internal/ads/zzxc;Lcom/google/android/gms/internal/ads/zzdkc;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsf;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbok;->zzfpu:Lcom/google/android/gms/internal/ads/zzboh;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbok;->zzbut:Lcom/google/android/gms/internal/ads/zzxc;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbok;->zzfpv:Lcom/google/android/gms/internal/ads/zzdkc;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzsq;)V
    .registers 4

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbok;->zzfpv:Lcom/google/android/gms/internal/ads/zzdkc;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzdkc;->zza(Lcom/google/android/gms/internal/ads/zzsq;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbok;->zzfpu:Lcom/google/android/gms/internal/ads/zzboh;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzboh;->zza(Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzsq;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 12
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzayp;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzsm;)V
    .registers 2

    return-void
.end method

.method public final zzdw()Lcom/google/android/gms/internal/ads/zzxc;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbok;->zzbut:Lcom/google/android/gms/internal/ads/zzxc;

    return-object v0
.end method

.method public final zzki()Lcom/google/android/gms/internal/ads/zzyn;
    .registers 3

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcxl:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x0

    return-object v0

    .line 18
    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbok;->zzfpu:Lcom/google/android/gms/internal/ads/zzboh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqo;->zzaix()Lcom/google/android/gms/internal/ads/zzbty;

    move-result-object v0

    return-object v0
.end method
