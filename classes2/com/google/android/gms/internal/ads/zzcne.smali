.class public final Lcom/google/android/gms/internal/ads/zzcne;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private zzghv:Ljava/util/List;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private zzghw:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzghx:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzghy:Ljava/lang/String;

.field private zzghz:Lcom/google/android/gms/internal/ads/zzcmz;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcmz;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcne;->zzghv:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcne;->zzghw:Z

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcne;->zzghx:Z

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcne;->zzghy:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcne;->zzghz:Lcom/google/android/gms/internal/ads/zzcmz;

    return-void
.end method

.method private final zzapk()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcne;->zzghz:Lcom/google/android/gms/internal/ads/zzcmz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcmz;->zzapg()Ljava/util/Map;

    move-result-object v0

    .line 61
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    const/16 v3, 0xa

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tms"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcne;->zzghy:Ljava/lang/String;

    const-string v2, "tid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized zzapi()V
    .registers 4

    monitor-enter p0

    .line 36
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcqm:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_2e

    if-nez v0, :cond_15

    .line 39
    monitor-exit p0

    return-void

    .line 40
    :cond_15
    :try_start_15
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcne;->zzghw:Z

    if-nez v0, :cond_2c

    .line 41
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcne;->zzapk()Ljava/util/Map;

    move-result-object v0

    const-string v1, "action"

    const-string v2, "init_started"

    .line 42
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcne;->zzghv:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcne;->zzghw:Z
    :try_end_2c
    .catchall {:try_start_15 .. :try_end_2c} :catchall_2e

    .line 45
    :cond_2c
    monitor-exit p0

    return-void

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzapj()V
    .registers 4

    monitor-enter p0

    .line 46
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcqm:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 47
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 48
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_46

    if-nez v0, :cond_15

    .line 49
    monitor-exit p0

    return-void

    .line 50
    :cond_15
    :try_start_15
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcne;->zzghx:Z

    if-nez v0, :cond_44

    .line 51
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcne;->zzapk()Ljava/util/Map;

    move-result-object v0

    const-string v1, "action"

    const-string v2, "init_finished"

    .line 52
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcne;->zzghv:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcne;->zzghv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 56
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcne;->zzghz:Lcom/google/android/gms/internal/ads/zzcmz;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzcmz;->zzn(Ljava/util/Map;)V

    goto :goto_2f

    :cond_41
    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcne;->zzghx:Z
    :try_end_44
    .catchall {:try_start_15 .. :try_end_44} :catchall_46

    .line 59
    :cond_44
    monitor-exit p0

    return-void

    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method public final declared-synchronized zzgj(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 8
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcqm:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_2c

    if-nez v0, :cond_15

    .line 11
    monitor-exit p0

    return-void

    .line 12
    :cond_15
    :try_start_15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcne;->zzapk()Ljava/util/Map;

    move-result-object v0

    const-string v1, "action"

    const-string v2, "adapter_init_started"

    .line 13
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ancn"

    .line 14
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcne;->zzghv:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_15 .. :try_end_2a} :catchall_2c

    .line 16
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzgk(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 17
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcqm:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_2c

    if-nez v0, :cond_15

    .line 20
    monitor-exit p0

    return-void

    .line 21
    :cond_15
    :try_start_15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcne;->zzapk()Ljava/util/Map;

    move-result-object v0

    const-string v1, "action"

    const-string v2, "adapter_init_finished"

    .line 22
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ancn"

    .line 23
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcne;->zzghv:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_15 .. :try_end_2a} :catchall_2c

    .line 25
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzs(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 26
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcqm:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_31

    if-nez v0, :cond_15

    .line 29
    monitor-exit p0

    return-void

    .line 30
    :cond_15
    :try_start_15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcne;->zzapk()Ljava/util/Map;

    move-result-object v0

    const-string v1, "action"

    const-string v2, "adapter_init_finished"

    .line 31
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ancn"

    .line 32
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "rqe"

    .line 33
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcne;->zzghv:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catchall {:try_start_15 .. :try_end_2f} :catchall_31

    .line 35
    monitor-exit p0

    return-void

    :catchall_31
    move-exception p1

    monitor-exit p0

    throw p1
.end method
