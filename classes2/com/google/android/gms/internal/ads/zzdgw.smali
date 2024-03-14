.class public final Lcom/google/android/gms/internal/ads/zzdgw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzgyf:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzdgx<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzdgu<",
            "TT;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzdgx<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzdgu<",
            "TT;>;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgw;->executor:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdgw;->zzgyf:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final zzt(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "TT;>;"
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgw;->zzgyf:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgw;->zzgyf:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdgx;

    .line 7
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdgx;->zzarj()Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v3

    .line 8
    sget-object v4, Lcom/google/android/gms/internal/ads/zzacv;->zzdbq:Lcom/google/android/gms/internal/ads/zzaci;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzaci;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v4

    .line 10
    new-instance v6, Lcom/google/android/gms/internal/ads/zzdgz;

    invoke-direct {v6, v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzdgz;-><init>(Lcom/google/android/gms/internal/ads/zzdgx;J)V

    .line 11
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeu:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 12
    invoke-interface {v3, v6, v2}, Lcom/google/android/gms/internal/ads/zzdzc;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 13
    :cond_41
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 15
    :cond_45
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zzk(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzdyv;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdgy;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/ads/zzdgy;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgw;->executor:Ljava/util/concurrent/Executor;

    .line 16
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdyv;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
