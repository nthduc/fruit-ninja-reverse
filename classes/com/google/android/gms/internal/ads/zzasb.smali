.class public final Lcom/google/android/gms/internal/ads/zzasb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private zzaat:Landroid/view/View;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final zzdqc:Ljava/util/Map;
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


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasb;->zzdqc:Ljava/util/Map;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzasb;)Landroid/view/View;
    .registers 1

    .line 12
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzasb;->zzaat:Landroid/view/View;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzasb;)Ljava/util/Map;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzasb;->zzdqc:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final zzh(Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzasb;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzasb;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasb;->zzdqc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_d

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzasb;->zzdqc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_32
    return-object p0
.end method

.method public final zzk(Landroid/view/View;)Lcom/google/android/gms/internal/ads/zzasb;
    .registers 2

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasb;->zzaat:Landroid/view/View;

    return-object p0
.end method
