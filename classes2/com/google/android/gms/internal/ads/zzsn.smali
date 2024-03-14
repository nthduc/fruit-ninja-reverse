.class public final Lcom/google/android/gms/internal/ads/zzsn;
.super Lcom/google/android/gms/ads/appopen/AppOpenAd;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private final zzbus:Lcom/google/android/gms/internal/ads/zzsg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzsg;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/appopen/AppOpenAd;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzbus:Lcom/google/android/gms/internal/ads/zzsg;

    return-void
.end method


# virtual methods
.method public final getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;
    .registers 3

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzbus:Lcom/google/android/gms/internal/ads/zzsg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsg;->zzki()Lcom/google/android/gms/internal/ads/zzyn;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_e

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 13
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 14
    :goto_e
    invoke-static {v0}, Lcom/google/android/gms/ads/ResponseInfo;->zza(Lcom/google/android/gms/internal/ads/zzyn;)Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public final show(Landroid/app/Activity;Lcom/google/android/gms/ads/FullScreenContentCallback;)V
    .registers 5

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzbus:Lcom/google/android/gms/internal/ads/zzsg;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzsd;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzsd;-><init>(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzsg;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzsq;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 7
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/ads/zzsm;)V
    .registers 3

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzbus:Lcom/google/android/gms/internal/ads/zzsg;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzsg;->zza(Lcom/google/android/gms/internal/ads/zzsm;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    const-string v0, ""

    .line 22
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected final zzdw()Lcom/google/android/gms/internal/ads/zzxc;
    .registers 3

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzbus:Lcom/google/android/gms/internal/ads/zzsg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsg;->zzdw()Lcom/google/android/gms/internal/ads/zzxc;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 17
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method
