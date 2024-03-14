.class public final Lcom/google/android/gms/internal/ads/zzagh;
.super Lcom/google/android/gms/dynamic/RemoteCreator;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/RemoteCreator<",
        "Lcom/google/android/gms/internal/ads/zzaeq;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const-string v0, "com.google.android.gms.ads.NativeAdViewHolderDelegateCreatorImpl"

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
    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegateCreator"

    .line 24
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 25
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzaeq;

    if-eqz v1, :cond_11

    .line 26
    check-cast v0, Lcom/google/android/gms/internal/ads/zzaeq;

    return-object v0

    .line 27
    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaep;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzaep;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final zzb(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/google/android/gms/internal/ads/zzael;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzael;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    .line 5
    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p3

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzagh;->getRemoteCreatorInstance(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaeq;

    .line 8
    invoke-interface {p1, v1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaeq;->zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_1e

    return-object v0

    :cond_1e
    const-string p2, "com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate"

    .line 12
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 13
    instance-of p3, p2, Lcom/google/android/gms/internal/ads/zzael;

    if-eqz p3, :cond_2b

    .line 14
    check-cast p2, Lcom/google/android/gms/internal/ads/zzael;

    return-object p2

    .line 15
    :cond_2b
    new-instance p2, Lcom/google/android/gms/internal/ads/zzaen;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzaen;-><init>(Landroid/os/IBinder;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_30} :catch_33
    .catch Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException; {:try_start_1 .. :try_end_30} :catch_31

    return-object p2

    :catch_31
    move-exception p1

    goto :goto_34

    :catch_33
    move-exception p1

    :goto_34
    const-string p2, "Could not create remote NativeAdViewHolderDelegate."

    .line 18
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
