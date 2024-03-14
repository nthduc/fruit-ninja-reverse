.class public final Lcom/google/android/gms/internal/ads/zzcfh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final zzbqa:Lcom/google/android/gms/common/util/Clock;

.field private final zzgbo:Lcom/google/android/gms/internal/ads/zzcil;

.field private zzgbp:Lcom/google/android/gms/internal/ads/zzafz;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzgbq:Lcom/google/android/gms/internal/ads/zzahq;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzahq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field zzgbr:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field zzgbs:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field zzgbt:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcil;Lcom/google/android/gms/common/util/Clock;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzgbo:Lcom/google/android/gms/internal/ads/zzcil;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzbqa:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method

.method private final zzank()V
    .registers 4

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzgbr:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzgbs:Ljava/lang/Long;

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzgbt:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_a

    return-void

    .line 40
    :cond_a
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/4 v2, 0x0

    .line 43
    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 44
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzgbt:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final cancelUnconfirmedClick()V
    .registers 3

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzgbp:Lcom/google/android/gms/internal/ads/zzafz;

    if-nez v0, :cond_5

    return-void

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzgbs:Ljava/lang/Long;

    if-nez v0, :cond_a

    return-void

    .line 16
    :cond_a
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcfh;->zzank()V

    .line 17
    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzgbp:Lcom/google/android/gms/internal/ads/zzafz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzafz;->onUnconfirmedClickCancelled()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 20
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 6

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzgbt:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_b

    goto :goto_47

    .line 25
    :cond_b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzgbr:Ljava/lang/String;

    if-eqz p1, :cond_44

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzgbs:Ljava/lang/Long;

    if-nez p1, :cond_14

    goto :goto_44

    .line 27
    :cond_14
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzgbr:Ljava/lang/String;

    const-string v1, "id"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzbqa:Lcom/google/android/gms/common/util/Clock;

    .line 30
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzgbs:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "time_interval"

    .line 31
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "messageType"

    const-string v1, "onePointFiveClick"

    .line 32
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzgbo:Lcom/google/android/gms/internal/ads/zzcil;

    const-string v1, "sendMessageToNativeJs"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcil;->zza(Ljava/lang/String;Ljava/util/Map;)V

    .line 34
    :cond_44
    :goto_44
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcfh;->zzank()V

    :cond_47
    :goto_47
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzafz;)V
    .registers 5

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzgbp:Lcom/google/android/gms/internal/ads/zzafz;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzgbq:Lcom/google/android/gms/internal/ads/zzahq;

    const-string v1, "/unconfirmedClick"

    if-eqz v0, :cond_d

    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzgbo:Lcom/google/android/gms/internal/ads/zzcil;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzcil;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 8
    :cond_d
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzcfk;-><init>(Lcom/google/android/gms/internal/ads/zzcfh;Lcom/google/android/gms/internal/ads/zzafz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzgbq:Lcom/google/android/gms/internal/ads/zzahq;

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzgbo:Lcom/google/android/gms/internal/ads/zzcil;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzgbq:Lcom/google/android/gms/internal/ads/zzahq;

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzcil;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    return-void
.end method

.method public final zzanj()Lcom/google/android/gms/internal/ads/zzafz;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzgbp:Lcom/google/android/gms/internal/ads/zzafz;

    return-object v0
.end method
