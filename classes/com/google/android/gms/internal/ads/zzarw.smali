.class public final Lcom/google/android/gms/internal/ads/zzarw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private final zzaat:Landroid/view/View;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final zzdqc:Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzdqd:Lcom/google/android/gms/internal/ads/zzaxl;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzasb;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzasb;->zza(Lcom/google/android/gms/internal/ads/zzasb;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzarw;->zzaat:Landroid/view/View;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzasb;->zzb(Lcom/google/android/gms/internal/ads/zzasb;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzarw;->zzdqc:Ljava/util/Map;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzasb;->zza(Lcom/google/android/gms/internal/ads/zzasb;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaru;->zzs(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzaxl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzarw;->zzdqd:Lcom/google/android/gms/internal/ads/zzaxl;

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzarw;->zzdqd:Lcom/google/android/gms/internal/ads/zzaxl;

    if-eqz p1, :cond_50

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzarw;->zzdqc:Ljava/util/Map;

    if-eqz p1, :cond_50

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2c

    goto :goto_50

    .line 9
    :cond_2c
    :try_start_2c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzarw;->zzdqd:Lcom/google/android/gms/internal/ads/zzaxl;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzasa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzarw;->zzaat:Landroid/view/View;

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzarw;->zzdqc:Ljava/util/Map;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/dynamic/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzasa;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 11
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzaxl;->zza(Lcom/google/android/gms/internal/ads/zzasa;)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_4a} :catch_4b

    return-void

    :catch_4b
    const-string p1, "Failed to call remote method."

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfc(Ljava/lang/String;)V

    :cond_50
    :goto_50
    return-void
.end method


# virtual methods
.method public final reportTouchEvent(Landroid/view/MotionEvent;)V
    .registers 3

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarw;->zzdqd:Lcom/google/android/gms/internal/ads/zzaxl;

    if-nez v0, :cond_a

    const-string p1, "Failed to get internal reporting info generator."

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    return-void

    .line 38
    :cond_a
    :try_start_a
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxl;->zzan(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    return-void

    :catch_12
    const-string p1, "Failed to call remote method."

    .line 41
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfc(Ljava/lang/String;)V

    return-void
.end method

.method public final updateClickUrl(Landroid/net/Uri;Lcom/google/android/gms/ads/query/UpdateClickUrlCallback;)V
    .registers 7

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarw;->zzdqd:Lcom/google/android/gms/internal/ads/zzaxl;

    if-nez v0, :cond_9

    const-string v0, "Failed to get internal reporting info generator."

    .line 26
    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/query/UpdateClickUrlCallback;->onFailure(Ljava/lang/String;)V

    .line 27
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarw;->zzdqd:Lcom/google/android/gms/internal/ads/zzaxl;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 28
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzarw;->zzaat:Landroid/view/View;

    .line 29
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzary;

    invoke-direct {v2, p0, p2}, Lcom/google/android/gms/internal/ads/zzary;-><init>(Lcom/google/android/gms/internal/ads/zzarw;Lcom/google/android/gms/ads/query/UpdateClickUrlCallback;)V

    .line 30
    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzaxl;->zzb(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzart;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_28} :catch_29

    return-void

    :catch_29
    move-exception p1

    .line 33
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Internal error: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/query/UpdateClickUrlCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public final updateImpressionUrls(Ljava/util/List;Lcom/google/android/gms/ads/query/UpdateImpressionUrlsCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/google/android/gms/ads/query/UpdateImpressionUrlsCallback;",
            ")V"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarw;->zzdqd:Lcom/google/android/gms/internal/ads/zzaxl;

    if-nez v0, :cond_9

    const-string v0, "Failed to get internal reporting info generator."

    .line 17
    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/query/UpdateImpressionUrlsCallback;->onFailure(Ljava/lang/String;)V

    .line 18
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarw;->zzdqd:Lcom/google/android/gms/internal/ads/zzaxl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzarw;->zzaat:Landroid/view/View;

    .line 19
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzarz;

    invoke-direct {v2, p0, p2}, Lcom/google/android/gms/internal/ads/zzarz;-><init>(Lcom/google/android/gms/internal/ads/zzarw;Lcom/google/android/gms/ads/query/UpdateImpressionUrlsCallback;)V

    .line 20
    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzaxl;->zza(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzart;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_19} :catch_1a

    return-void

    :catch_1a
    move-exception p1

    .line 23
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Internal error: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/query/UpdateImpressionUrlsCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method
