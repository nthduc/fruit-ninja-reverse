.class public final Lcom/google/android/gms/internal/ads/zzczg;
.super Lcom/google/android/gms/internal/ads/zzapl;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzdfz:Ljava/lang/String;

.field private final zzgsh:Lcom/google/android/gms/internal/ads/zzaph;

.field private zzgsi:Lcom/google/android/gms/internal/ads/zzbcg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbcg<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgsj:Lorg/json/JSONObject;

.field private zzgsk:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaph;Lcom/google/android/gms/internal/ads/zzbcg;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaph;",
            "Lcom/google/android/gms/internal/ads/zzbcg<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzapl;-><init>()V

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzczg;->zzgsj:Lorg/json/JSONObject;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzczg;->zzgsk:Z

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzczg;->zzgsi:Lcom/google/android/gms/internal/ads/zzbcg;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczg;->zzdfz:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzczg;->zzgsh:Lcom/google/android/gms/internal/ads/zzaph;

    .line 8
    :try_start_13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzczg;->zzgsj:Lorg/json/JSONObject;

    const-string p2, "adapter_version"

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzczg;->zzgsh:Lcom/google/android/gms/internal/ads/zzaph;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzaph;->zzua()Lcom/google/android/gms/internal/ads/zzapv;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzapv;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzczg;->zzgsj:Lorg/json/JSONObject;

    const-string p2, "sdk_version"

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzczg;->zzgsh:Lcom/google/android/gms/internal/ads/zzaph;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzaph;->zzub()Lcom/google/android/gms/internal/ads/zzapv;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzapv;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzczg;->zzgsj:Lorg/json/JSONObject;

    const-string p2, "name"

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzczg;->zzdfz:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_3e} :catch_3e
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_3e} :catch_3e
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_3e} :catch_3e

    :catch_3e
    return-void
.end method


# virtual methods
.method public final declared-synchronized onFailure(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 25
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzczg;->zzgsk:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1a

    if-eqz v0, :cond_7

    .line 26
    monitor-exit p0

    return-void

    .line 27
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczg;->zzgsj:Lorg/json/JSONObject;

    const-string v1, "signal_error"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_e} :catch_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_1a

    .line 30
    :catch_e
    :try_start_e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzczg;->zzgsi:Lcom/google/android/gms/internal/ads/zzbcg;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczg;->zzgsj:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->set(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzczg;->zzgsk:Z
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1a

    .line 32
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzds(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 14
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzczg;->zzgsk:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_23

    if-eqz v0, :cond_7

    .line 15
    monitor-exit p0

    return-void

    :cond_7
    if-nez p1, :cond_10

    :try_start_9
    const-string p1, "Adapter returned null signals"

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzczg;->onFailure(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_23

    .line 18
    monitor-exit p0

    return-void

    .line 19
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczg;->zzgsj:Lorg/json/JSONObject;

    const-string v1, "signals"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_17} :catch_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_23

    .line 22
    :catch_17
    :try_start_17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzczg;->zzgsi:Lcom/google/android/gms/internal/ads/zzbcg;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczg;->zzgsj:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->set(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzczg;->zzgsk:Z
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_23

    .line 24
    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzg(Lcom/google/android/gms/internal/ads/zzva;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 33
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzczg;->zzgsk:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1c

    if-eqz v0, :cond_7

    .line 34
    monitor-exit p0

    return-void

    .line 35
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczg;->zzgsj:Lorg/json/JSONObject;

    const-string v1, "signal_error"

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzva;->zzcgw:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_10} :catch_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_1c

    .line 38
    :catch_10
    :try_start_10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzczg;->zzgsi:Lcom/google/android/gms/internal/ads/zzbcg;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczg;->zzgsj:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->set(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzczg;->zzgsk:Z
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1c

    .line 40
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method
