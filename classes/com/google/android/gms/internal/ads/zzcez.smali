.class public final Lcom/google/android/gms/internal/ads/zzcez;
.super Lcom/google/android/gms/internal/ads/zzaeo;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Lcom/google/android/gms/internal/ads/zzcgc;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final zzgas:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgat:Ljava/util/Map;
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

.field private final zzgau:Ljava/util/Map;
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

.field private final zzgav:Ljava/util/Map;
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

.field private zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzgax:Lcom/google/android/gms/internal/ads/zzqq;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .registers 8
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
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaeo;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgat:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgau:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgav:Ljava/util/Map;

    .line 6
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlo()Lcom/google/android/gms/internal/ads/zzbco;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzbco;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlo()Lcom/google/android/gms/internal/ads/zzbco;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzbco;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 10
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgas:Ljava/lang/ref/WeakReference;

    .line 13
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_39
    :goto_39
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 14
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 15
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_39

    .line 17
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgat:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "1098"

    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    const-string v2, "3011"

    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 20
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 22
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_39

    .line 24
    :cond_78
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgav:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgat:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 26
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_87
    :goto_87
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_b3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 27
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_87

    .line 29
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgau:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p3, 0x0

    .line 31
    invoke-virtual {v0, p3}, Landroid/view/View;->setClickable(Z)V

    goto :goto_87

    .line 33
    :cond_b3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgav:Ljava/util/Map;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgau:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 35
    new-instance p3, Lcom/google/android/gms/internal/ads/zzqq;

    invoke-direct {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzqq;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 36
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgax:Lcom/google/android/gms/internal/ads/zzqq;

    return-void
.end method


# virtual methods
.method public final declared-synchronized onClick(Landroid/view/View;)V
    .registers 9

    monitor-enter p0

    .line 81
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    if-eqz v0, :cond_18

    .line 82
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcez;->zzahx()Landroid/view/View;

    move-result-object v3

    .line 84
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcez;->zzanc()Ljava/util/Map;

    move-result-object v4

    .line 85
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcez;->zzand()Ljava/util/Map;

    move-result-object v5

    const/4 v6, 0x1

    move-object v2, p1

    .line 86
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzcdx;->zza(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 87
    :cond_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onGlobalLayout()V
    .registers 6

    monitor-enter p0

    .line 88
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    if-eqz v0, :cond_1e

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    .line 90
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcez;->zzahx()Landroid/view/View;

    move-result-object v1

    .line 91
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcez;->zzanc()Ljava/util/Map;

    move-result-object v2

    .line 92
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcez;->zzand()Ljava/util/Map;

    move-result-object v3

    .line 93
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcez;->zzahx()Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzcdx;->zzz(Landroid/view/View;)Z

    move-result v4

    .line 94
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcdx;->zzb(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 95
    :cond_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onScrollChanged()V
    .registers 6

    monitor-enter p0

    .line 96
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    if-eqz v0, :cond_1e

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcez;->zzahx()Landroid/view/View;

    move-result-object v1

    .line 99
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcez;->zzanc()Ljava/util/Map;

    move-result-object v2

    .line 100
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcez;->zzand()Ljava/util/Map;

    move-result-object v3

    .line 101
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcez;->zzahx()Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzcdx;->zzz(Landroid/view/View;)Z

    move-result v4

    .line 102
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcdx;->zzb(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 103
    :cond_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    monitor-enter p0

    .line 78
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    if-eqz v0, :cond_e

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcez;->zzahx()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzcdx;->zza(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    :cond_e
    const/4 p1, 0x0

    .line 80
    monitor-exit p0

    return p1

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized unregisterNativeAd()V
    .registers 2

    monitor-enter p0

    .line 38
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    if-eqz v0, :cond_d

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzcdx;->zzb(Lcom/google/android/gms/internal/ads/zzcgc;)V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 41
    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3

    monitor-enter p0

    .line 42
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    .line 43
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzcdx;

    if-nez v0, :cond_10

    const-string p1, "Not an instance of InternalNativeAd. This is most likely a transient error"

    .line 44
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_3d

    .line 45
    monitor-exit p0

    return-void

    .line 46
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    if-eqz v0, :cond_19

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzcdx;->zzb(Lcom/google/android/gms/internal/ads/zzcgc;)V

    .line 48
    :cond_19
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdx;->zzalv()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 49
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcdx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    .line 50
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzcdx;->zza(Lcom/google/android/gms/internal/ads/zzcgc;)V

    .line 51
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcez;->zzahx()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcdx;->zzaa(Landroid/view/View;)V
    :try_end_34
    .catchall {:try_start_10 .. :try_end_34} :catchall_3d

    monitor-exit p0

    return-void

    :cond_36
    :try_start_36
    const-string p1, "Your account must be enabled to use this feature. Talk to your account manager to request this feature for your account."

    .line 52
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfc(Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_3d

    .line 53
    monitor-exit p0

    return-void

    :catchall_3d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Ljava/lang/String;Landroid/view/View;Z)V
    .registers 5

    monitor-enter p0

    if-nez p2, :cond_14

    .line 58
    :try_start_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgav:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgat:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgau:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_47

    monitor-exit p0

    return-void

    .line 61
    :cond_14
    :try_start_14
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgav:Ljava/util/Map;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "1098"

    .line 62
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_45

    const-string p3, "3011"

    .line 63
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2f

    goto :goto_45

    .line 66
    :cond_2f
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgat:Ljava/util/Map;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 67
    invoke-virtual {p2, p1}, Landroid/view/View;->setClickable(Z)V

    .line 68
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_43
    .catchall {:try_start_14 .. :try_end_43} :catchall_47

    .line 70
    monitor-exit p0

    return-void

    .line 64
    :cond_45
    :goto_45
    monitor-exit p0

    return-void

    :catchall_47
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzahx()Landroid/view/View;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgas:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final zzana()Landroid/widget/FrameLayout;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzanb()Lcom/google/android/gms/internal/ads/zzqq;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgax:Lcom/google/android/gms/internal/ads/zzqq;

    return-object v0
.end method

.method public final declared-synchronized zzanc()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 71
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgav:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzand()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 72
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgat:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzane()Ljava/util/Map;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 73
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgau:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzanf()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    const-string v0, "1007"
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 76
    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzang()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 77
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zze(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3

    monitor-enter p0

    .line 104
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    if-eqz v0, :cond_19

    .line 105
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    .line 106
    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_12

    const-string v0, "Calling NativeAdViewHolderNonagonDelegate.setClickConfirmingView with wrong wrapped object"

    .line 107
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    .line 108
    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcdx;->setClickConfirmingView(Landroid/view/View;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 109
    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzgf(Ljava/lang/String;)Landroid/view/View;
    .registers 3

    monitor-enter p0

    .line 74
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcez;->zzgav:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_16

    if-nez p1, :cond_e

    const/4 p1, 0x0

    .line 75
    monitor-exit p0

    return-object p1

    :cond_e
    :try_start_e
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object p1

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzsi()Lorg/json/JSONObject;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 110
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method
