.class public final Lcom/google/android/gms/internal/ads/zzzl;
.super Lcom/google/android/gms/dynamic/RemoteCreator;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/RemoteCreator<",
        "Lcom/google/android/gms/internal/ads/zzxx;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.MobileAdsSettingManagerCreatorImpl"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/RemoteCreator;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final synthetic getRemoteCreator(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator"

    .line 22
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 23
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzxx;

    if-eqz v1, :cond_11

    .line 24
    check-cast v0, Lcom/google/android/gms/internal/ads/zzxx;

    return-object v0

    .line 25
    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzxw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzxw;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final zzi(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzxs;
    .registers 5

    const/4 v0, 0x0

    .line 3
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzzl;->getRemoteCreatorInstance(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzxx;

    const v2, 0xc120eb0

    .line 6
    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzxx;->zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;I)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_15

    return-object v0

    :cond_15
    const-string v1, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager"

    .line 10
    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 11
    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zzxs;

    if-eqz v2, :cond_22

    .line 12
    check-cast v1, Lcom/google/android/gms/internal/ads/zzxs;

    return-object v1

    .line 13
    :cond_22
    new-instance v1, Lcom/google/android/gms/internal/ads/zzxu;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzxu;-><init>(Landroid/os/IBinder;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_27} :catch_2a
    .catch Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException; {:try_start_1 .. :try_end_27} :catch_28

    return-object v1

    :catch_28
    move-exception p1

    goto :goto_2b

    :catch_2a
    move-exception p1

    :goto_2b
    const-string v1, "Could not get remote MobileAdsSettingManager."

    .line 16
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
