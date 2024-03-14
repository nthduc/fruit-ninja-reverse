.class public final Lcom/google/android/gms/internal/ads/zzcxc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzctb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzctb<",
        "Lcom/google/android/gms/internal/ads/zzdpa;",
        "Lcom/google/android/gms/internal/ads/zzcut;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgij:Lcom/google/android/gms/internal/ads/zzcku;

.field private final zzgql:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzctc<",
            "Lcom/google/android/gms/internal/ads/zzdpa;",
            "Lcom/google/android/gms/internal/ads/zzcut;",
            ">;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcku;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxc;->zzgql:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxc;->zzgij:Lcom/google/android/gms/internal/ads/zzcku;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzctc;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzctc<",
            "Lcom/google/android/gms/internal/ads/zzdpa;",
            "Lcom/google/android/gms/internal/ads/zzcut;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdos;
        }
    .end annotation

    .line 5
    monitor-enter p0

    .line 6
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxc;->zzgql:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzctc;

    if-nez v0, :cond_25

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxc;->zzgij:Lcom/google/android/gms/internal/ads/zzcku;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcku;->zzd(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzdpa;

    move-result-object p2

    if-nez p2, :cond_16

    const/4 p1, 0x0

    .line 11
    monitor-exit p0

    return-object p1

    .line 12
    :cond_16
    new-instance v0, Lcom/google/android/gms/internal/ads/zzctc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcut;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzcut;-><init>()V

    invoke-direct {v0, p2, v1, p1}, Lcom/google/android/gms/internal/ads/zzctc;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbvp;Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcxc;->zzgql:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_25
    monitor-exit p0

    return-object v0

    :catchall_27
    move-exception p1

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_27

    throw p1
.end method
