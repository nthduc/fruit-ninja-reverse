.class public final Lcom/google/android/gms/internal/ads/zzbbc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private zzaai:Landroid/content/Context;

.field private final zzedl:Landroid/content/BroadcastReceiver;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final zzedm:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/BroadcastReceiver;",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzedn:Z

.field private zzzh:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbbc;->zzzh:Z

    .line 3
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbc;->zzedm:Ljava/util/Map;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbbf;-><init>(Lcom/google/android/gms/internal/ads/zzbbc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbc;->zzedl:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbbc;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbbc;->zzc(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private final declared-synchronized zzc(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    monitor-enter p0

    .line 30
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbc;->zzedm:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 32
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 33
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/BroadcastReceiver;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 35
    :cond_36
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_3d
    if-ge v2, v1, :cond_4b

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/content/BroadcastReceiver;

    .line 36
    invoke-virtual {v3, p1, p2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_4d

    goto :goto_3d

    .line 38
    :cond_4b
    monitor-exit p0

    return-void

    :catchall_4d
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method


# virtual methods
.method public final declared-synchronized initialize(Landroid/content/Context;)V
    .registers 4

    monitor-enter p0

    .line 6
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbbc;->zzzh:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_4a

    if-eqz v0, :cond_7

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_7
    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbc;->zzaai:Landroid/content/Context;

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbc;->zzaai:Landroid/content/Context;

    if-nez v0, :cond_13

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbc;->zzaai:Landroid/content/Context;

    .line 11
    :cond_13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbc;->zzaai:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzabb;->initialize(Landroid/content/Context;)V

    .line 12
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzcsf:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbbc;->zzedn:Z

    .line 15
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_ON"

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_PRESENT"

    .line 18
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbc;->zzaai:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbc;->zzedl:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbbc;->zzzh:Z
    :try_end_48
    .catchall {:try_start_7 .. :try_end_48} :catchall_4a

    .line 21
    monitor-exit p0

    return-void

    :catchall_4a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .registers 4

    monitor-enter p0

    .line 26
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbbc;->zzedn:Z

    if-eqz v0, :cond_c

    .line 27
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbc;->zzedm:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_11

    monitor-exit p0

    return-void

    .line 28
    :cond_c
    :try_start_c
    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_11

    .line 29
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 5

    monitor-enter p0

    .line 22
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbbc;->zzedn:Z

    if-eqz v0, :cond_c

    .line 23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbc;->zzedm:Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_11

    monitor-exit p0

    return-void

    .line 24
    :cond_c
    :try_start_c
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_11

    .line 25
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method
