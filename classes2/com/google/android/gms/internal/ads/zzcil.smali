.class public final Lcom/google/android/gms/internal/ads/zzcil;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzbpt:Lcom/google/android/gms/internal/ads/zzbgr;

.field private final zzdqm:Lcom/google/android/gms/internal/ads/zzbbx;

.field private final zzeom:Lcom/google/android/gms/internal/ads/zzeg;

.field private final zzfoc:Ljava/util/concurrent/Executor;

.field private final zzgdm:Lcom/google/android/gms/ads/internal/zzb;

.field private final zzgeg:Lcom/google/android/gms/internal/ads/zzcit;

.field private final zzgeh:Lcom/google/android/gms/internal/ads/zzahw;

.field private zzgei:Lcom/google/android/gms/internal/ads/zzdzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzbgj;",
            ">;"
        }
    .end annotation
.end field

.field private final zzvr:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzciy;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzciy;->zza(Lcom/google/android/gms/internal/ads/zzciy;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzvr:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzciy;->zzb(Lcom/google/android/gms/internal/ads/zzciy;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzfoc:Ljava/util/concurrent/Executor;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzciy;->zzc(Lcom/google/android/gms/internal/ads/zzciy;)Lcom/google/android/gms/internal/ads/zzeg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzeom:Lcom/google/android/gms/internal/ads/zzeg;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzciy;->zzd(Lcom/google/android/gms/internal/ads/zzciy;)Lcom/google/android/gms/internal/ads/zzbbx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzdqm:Lcom/google/android/gms/internal/ads/zzbbx;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzciy;->zze(Lcom/google/android/gms/internal/ads/zzciy;)Lcom/google/android/gms/ads/internal/zzb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzgdm:Lcom/google/android/gms/ads/internal/zzb;

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcit;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcit;-><init>(Lcom/google/android/gms/internal/ads/zzciq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzgeg:Lcom/google/android/gms/internal/ads/zzcit;

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzciy;->zzf(Lcom/google/android/gms/internal/ads/zzciy;)Lcom/google/android/gms/internal/ads/zzbgr;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzbpt:Lcom/google/android/gms/internal/ads/zzbgr;

    .line 9
    new-instance p1, Lcom/google/android/gms/internal/ads/zzahw;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzahw;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzgeh:Lcom/google/android/gms/internal/ads/zzahw;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcil;)Lcom/google/android/gms/internal/ads/zzcit;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzgeg:Lcom/google/android/gms/internal/ads/zzcit;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized destroy()V
    .registers 4

    monitor-enter p0

    .line 20
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzgei:Lcom/google/android/gms/internal/ads/zzdzc;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_18

    if-nez v0, :cond_7

    .line 21
    monitor-exit p0

    return-void

    .line 22
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzgei:Lcom/google/android/gms/internal/ads/zzdzc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzciq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzciq;-><init>(Lcom/google/android/gms/internal/ads/zzcil;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzfoc:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdyr;Ljava/util/concurrent/Executor;)V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzgei:Lcom/google/android/gms/internal/ads/zzdzc;
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_18

    .line 24
    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final synthetic zza(Ljava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzbgj;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzgeh:Lcom/google/android/gms/internal/ads/zzahw;

    invoke-virtual {v0, p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzahw;->zza(Lcom/google/android/gms/internal/ads/zzaks;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzdnw;)V
    .registers 5

    monitor-enter p0

    .line 40
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzgei:Lcom/google/android/gms/internal/ads/zzdzc;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    if-nez v0, :cond_7

    .line 41
    monitor-exit p0

    return-void

    .line 42
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzgei:Lcom/google/android/gms/internal/ads/zzdzc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzciu;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzciu;-><init>(Lcom/google/android/gms/internal/ads/zzcil;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzdnw;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzfoc:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdyr;Ljava/util/concurrent/Executor;)V
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_15

    .line 43
    monitor-exit p0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzahq<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 28
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzgei:Lcom/google/android/gms/internal/ads/zzdzc;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    if-nez v0, :cond_7

    .line 29
    monitor-exit p0

    return-void

    .line 30
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzgei:Lcom/google/android/gms/internal/ads/zzdzc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcip;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcip;-><init>(Lcom/google/android/gms/internal/ads/zzcil;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzfoc:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdyr;Ljava/util/concurrent/Executor;)V
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_15

    .line 31
    monitor-exit p0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 36
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzgei:Lcom/google/android/gms/internal/ads/zzdzc;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    if-nez v0, :cond_7

    .line 37
    monitor-exit p0

    return-void

    .line 38
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzgei:Lcom/google/android/gms/internal/ads/zzdzc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcir;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcir;-><init>(Lcom/google/android/gms/internal/ads/zzcil;Ljava/lang/String;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzfoc:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdyr;Ljava/util/concurrent/Executor;)V
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_15

    .line 39
    monitor-exit p0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzahq<",
            "TT;>;)V"
        }
    .end annotation

    .line 44
    new-instance v6, Lcom/google/android/gms/internal/ads/zzcix;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcix;-><init>(Lcom/google/android/gms/internal/ads/zzcil;Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;Lcom/google/android/gms/internal/ads/zzciq;)V

    invoke-virtual {p0, p2, v6}, Lcom/google/android/gms/internal/ads/zzcil;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    return-void
.end method

.method public final declared-synchronized zzans()V
    .registers 6

    monitor-enter p0

    .line 11
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzvr:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzdqm:Lcom/google/android/gms/internal/ads/zzbbx;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzabb;->zzcru:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v2

    .line 14
    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzeom:Lcom/google/android/gms/internal/ads/zzeg;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzgdm:Lcom/google/android/gms/ads/internal/zzb;

    .line 15
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbgr;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeg;Lcom/google/android/gms/ads/internal/zzb;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    .line 16
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcio;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcio;-><init>(Lcom/google/android/gms/internal/ads/zzcil;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzfoc:Ljava/util/concurrent/Executor;

    .line 17
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdvu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzgei:Lcom/google/android/gms/internal/ads/zzdzc;

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzgei:Lcom/google/android/gms/internal/ads/zzdzc;

    const-string v1, "NativeJavascriptExecutor.initializeEngine"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbcc;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    .line 19
    monitor-exit p0

    return-void

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzahq<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 32
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzgei:Lcom/google/android/gms/internal/ads/zzdzc;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    if-nez v0, :cond_7

    .line 33
    monitor-exit p0

    return-void

    .line 34
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzgei:Lcom/google/android/gms/internal/ads/zzdzc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcis;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcis;-><init>(Lcom/google/android/gms/internal/ads/zzcil;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzfoc:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdyr;Ljava/util/concurrent/Executor;)V
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_15

    .line 35
    monitor-exit p0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzc(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 25
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzgei:Lcom/google/android/gms/internal/ads/zzdzc;

    if-nez v0, :cond_c

    const/4 p1, 0x0

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_1b

    monitor-exit p0

    return-object p1

    .line 27
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzgei:Lcom/google/android/gms/internal/ads/zzdzc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcin;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcin;-><init>(Lcom/google/android/gms/internal/ads/zzcil;Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzfoc:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-object p1

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final synthetic zzm(Lcom/google/android/gms/internal/ads/zzbgj;)Lcom/google/android/gms/internal/ads/zzbgj;
    .registers 15

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzgeh:Lcom/google/android/gms/internal/ads/zzahw;

    const-string v1, "/result"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 49
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabw()Lcom/google/android/gms/internal/ads/zzbhv;

    move-result-object v2

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzgeg:Lcom/google/android/gms/internal/ads/zzcit;

    new-instance v10, Lcom/google/android/gms/ads/internal/zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzvr:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {v10, v0, v1, v1}, Lcom/google/android/gms/ads/internal/zza;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawl;Lcom/google/android/gms/internal/ads/zzasr;)V

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    .line 50
    invoke-interface/range {v2 .. v12}, Lcom/google/android/gms/internal/ads/zzbhv;->zza(Lcom/google/android/gms/internal/ads/zzux;Lcom/google/android/gms/internal/ads/zzagt;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/internal/ads/zzagv;Lcom/google/android/gms/ads/internal/overlay/zzv;ZLcom/google/android/gms/internal/ads/zzahp;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzaqq;Lcom/google/android/gms/internal/ads/zzawl;)V

    return-object p1
.end method
