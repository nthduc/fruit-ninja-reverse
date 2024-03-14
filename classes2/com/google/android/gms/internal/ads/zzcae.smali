.class public final Lcom/google/android/gms/internal/ads/zzcae;
.super Lcom/google/android/gms/internal/ads/zzbyr;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzqu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbyr<",
        "Lcom/google/android/gms/internal/ads/zzqu;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzqu;"
    }
.end annotation


# instance fields
.field private final zzeot:Lcom/google/android/gms/internal/ads/zzdnv;

.field private zzfwm:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/google/android/gms/internal/ads/zzqq;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Set;Lcom/google/android/gms/internal/ads/zzdnv;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzcab<",
            "Lcom/google/android/gms/internal/ads/zzqu;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/zzdnv;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzbyr;-><init>(Ljava/util/Set;)V

    .line 2
    new-instance p2, Ljava/util/WeakHashMap;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfwm:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzvr:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzeot:Lcom/google/android/gms/internal/ads/zzdnv;

    return-void
.end method


# virtual methods
.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzqr;)V
    .registers 3

    monitor-enter p0

    .line 6
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcad;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzcad;-><init>(Lcom/google/android/gms/internal/ads/zzqr;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbyr;->zza(Lcom/google/android/gms/internal/ads/zzbyt;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 7
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzv(Landroid/view/View;)V
    .registers 5

    monitor-enter p0

    .line 8
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfwm:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzqq;

    if-nez v0, :cond_1a

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzvr:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzqq;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 10
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzqq;->zza(Lcom/google/android/gms/internal/ads/zzqu;)V

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfwm:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_1a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzeot:Lcom/google/android/gms/internal/ads/zzdnv;

    if-eqz p1, :cond_4b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzeot:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzdnv;->zzdtq:Z

    if-eqz p1, :cond_4b

    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzcpw:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzcpv:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p1

    .line 18
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzqq;->zzen(J)V
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_50

    monitor-exit p0

    return-void

    .line 19
    :cond_4b
    :try_start_4b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqq;->zzlw()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_50

    .line 20
    monitor-exit p0

    return-void

    :catchall_50
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzw(Landroid/view/View;)V
    .registers 3

    monitor-enter p0

    .line 21
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfwm:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfwm:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzqq;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzqq;->zzb(Lcom/google/android/gms/internal/ads/zzqu;)V

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfwm:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 24
    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method
