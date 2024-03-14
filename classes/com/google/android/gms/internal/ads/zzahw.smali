.class public final Lcom/google/android/gms/internal/ads/zzahw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzahq<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final zzdfr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzahy;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->lock:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzdfr:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaks;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<EngineT::",
            "Lcom/google/android/gms/internal/ads/zzaks;",
            ">(TEngineT;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbcg;-><init>()V

    .line 38
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzayu;->zzxs()Ljava/lang/String;

    move-result-object v1

    .line 39
    new-instance v2, Lcom/google/android/gms/internal/ads/zzahv;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzahv;-><init>(Lcom/google/android/gms/internal/ads/zzahw;Lcom/google/android/gms/internal/ads/zzbcg;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzahw;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahy;)V

    .line 40
    :try_start_14
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "id"

    .line 41
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "args"

    .line 42
    invoke-virtual {v2, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    invoke-interface {p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzaks;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_26} :catch_27

    goto :goto_2b

    :catch_27
    move-exception p1

    .line 46
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->setException(Ljava/lang/Throwable;)Z

    :goto_2b
    return-object v0
.end method

.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "id"

    .line 7
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "fail"

    .line 8
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "fail_reason"

    .line 9
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "fail_stack"

    .line 10
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "result"

    .line 11
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_30

    const-string v1, "Unknown Fail Reason."

    .line 14
    :cond_30
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_39

    const-string v2, ""

    goto :goto_4f

    :cond_39
    const-string v3, "\n"

    .line 16
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4a

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4f

    :cond_4a
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 17
    :goto_4f
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzahw;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 18
    :try_start_52
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzdfr:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzahy;

    if-nez v4, :cond_77

    const-string p2, "Received result for unexpected method invocation: "

    .line 20
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6d

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_72

    :cond_6d
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_72
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    .line 21
    monitor-exit v3

    return-void

    .line 22
    :cond_77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9b

    .line 23
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_90

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_96

    :cond_90
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_96
    invoke-interface {v4, p1}, Lcom/google/android/gms/internal/ads/zzahy;->onFailure(Ljava/lang/String;)V

    .line 24
    monitor-exit v3

    return-void

    :cond_9b
    if-nez p2, :cond_a3

    const/4 p1, 0x0

    .line 26
    invoke-interface {v4, p1}, Lcom/google/android/gms/internal/ads/zzahy;->zzc(Lorg/json/JSONObject;)V

    .line 27
    monitor-exit v3
    :try_end_a2
    .catchall {:try_start_52 .. :try_end_a2} :catchall_db

    return-void

    .line 28
    :cond_a3
    :try_start_a3
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzayp;->zzxa()Z

    move-result p2

    if-eqz p2, :cond_cd

    const-string p2, "Result GMSG: "

    const/4 v0, 0x2

    .line 30
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_c4

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_ca

    :cond_c4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    :goto_ca
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    .line 31
    :cond_cd
    invoke-interface {v4, p1}, Lcom/google/android/gms/internal/ads/zzahy;->zzc(Lorg/json/JSONObject;)V
    :try_end_d0
    .catch Lorg/json/JSONException; {:try_start_a3 .. :try_end_d0} :catch_d1
    .catchall {:try_start_a3 .. :try_end_d0} :catchall_db

    goto :goto_d9

    :catch_d1
    move-exception p1

    .line 34
    :try_start_d2
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p1}, Lcom/google/android/gms/internal/ads/zzahy;->onFailure(Ljava/lang/String;)V

    .line 35
    :goto_d9
    monitor-exit v3

    return-void

    :catchall_db
    move-exception p1

    monitor-exit v3
    :try_end_dd
    .catchall {:try_start_d2 .. :try_end_dd} :catchall_db

    throw p1
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahy;)V
    .registers 5

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzdfr:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method
