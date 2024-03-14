.class public final Lcom/google/android/gms/internal/ads/zzaea;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$DisplayOpenMeasurement;


# instance fields
.field private final zzddp:Lcom/google/android/gms/internal/ads/zzafa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzafa;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzddp:Lcom/google/android/gms/internal/ads/zzafa;

    .line 3
    :try_start_5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzafa;->zzss()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p1

    const-string v0, ""

    .line 6
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final setView(Landroid/view/View;)V
    .registers 3

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzddp:Lcom/google/android/gms/internal/ads/zzafa;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzafa;->zzq(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    const-string v0, ""

    .line 15
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final start()Z
    .registers 3

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzddp:Lcom/google/android/gms/internal/ads/zzafa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzafa;->zzsr()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method
