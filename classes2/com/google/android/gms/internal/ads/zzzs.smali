.class public final Lcom/google/android/gms/internal/ads/zzzs;
.super Lcom/google/android/gms/internal/ads/zzxf;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private zzbpj:Lcom/google/android/gms/internal/ads/zzwt;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxf;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzzs;)Lcom/google/android/gms/internal/ads/zzwt;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzzs;->zzbpj:Lcom/google/android/gms/internal/ads/zzwt;

    return-object p0
.end method


# virtual methods
.method public final destroy()V
    .registers 1

    return-void
.end method

.method public final getAdMetadata()Landroid/os/Bundle;
    .registers 2

    .line 14
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzyo;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isLoading()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final isReady()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final pause()V
    .registers 1

    return-void
.end method

.method public final resume()V
    .registers 1

    return-void
.end method

.method public final setImmersiveMode(Z)V
    .registers 2

    return-void
.end method

.method public final setManualImpressionsEnabled(Z)V
    .registers 2

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final showInterstitial()V
    .registers 1

    return-void
.end method

.method public final stopLoading()V
    .registers 1

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaak;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaby;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzari;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaro;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaug;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzsh;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvn;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvs;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwo;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwt;)V
    .registers 2

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzs;->zzbpj:Lcom/google/android/gms/internal/ads/zzwt;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzxj;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzxk;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzxq;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyi;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyu;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvg;)Z
    .registers 3

    const-string p1, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfc(Ljava/lang/String;)V

    .line 6
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbg;->zzaah:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzzr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzzr;-><init>(Lcom/google/android/gms/internal/ads/zzzs;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public final zzbp(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final zzke()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzkf()V
    .registers 1

    return-void
.end method

.method public final zzkg()Lcom/google/android/gms/internal/ads/zzvn;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzkh()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzki()Lcom/google/android/gms/internal/ads/zzyn;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzkj()Lcom/google/android/gms/internal/ads/zzxk;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzkk()Lcom/google/android/gms/internal/ads/zzwt;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
