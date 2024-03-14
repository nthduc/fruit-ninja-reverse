.class abstract Lcom/google/android/gms/internal/ads/zzdxm;
.super Lcom/google/android/gms/internal/ads/zzdyk;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Throwable;",
        "F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdyk<",
        "TV;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private zzhrl:Lcom/google/android/gms/internal/ads/zzdzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "+TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private zzhrm:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TX;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private zzhrn:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;TF;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdyk;-><init>()V

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwd;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdzc;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxm;->zzhrl:Lcom/google/android/gms/internal/ads/zzdzc;

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdwd;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxm;->zzhrm:Ljava/lang/Class;

    .line 7
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzdwd;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxm;->zzhrn:Ljava/lang/Object;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/android/gms/internal/ads/zzdya<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdxp;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdxp;-><init>(Lcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdya;)V

    .line 2
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/zzdze;->zza(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdxq;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzdzc;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method protected final afterDone()V
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxm;->zzhrl:Lcom/google/android/gms/internal/ads/zzdzc;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdxq;->maybePropagateCancellationTo(Ljava/util/concurrent/Future;)V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxm;->zzhrl:Lcom/google/android/gms/internal/ads/zzdzc;

    .line 69
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxm;->zzhrm:Ljava/lang/Class;

    .line 70
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxm;->zzhrn:Ljava/lang/Object;

    return-void
.end method

.method protected final pendingToString()Ljava/lang/String;
    .registers 7

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxm;->zzhrl:Lcom/google/android/gms/internal/ads/zzdzc;

    .line 56
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxm;->zzhrm:Ljava/lang/Class;

    .line 57
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxm;->zzhrn:Ljava/lang/Object;

    .line 58
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->pendingToString()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_31

    .line 61
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x10

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "inputFuture=["

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    :cond_31
    const-string v0, ""

    :goto_33
    if-eqz v1, :cond_7d

    if-eqz v2, :cond_7d

    .line 63
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1d

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "exceptionType=["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], fallback=["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7d
    if-eqz v3, :cond_98

    .line 65
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_92

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_92
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_98
    const/4 v0, 0x0

    return-object v0
.end method

.method public final run()V
    .registers 10

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxm;->zzhrl:Lcom/google/android/gms/internal/ads/zzdzc;

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxm;->zzhrm:Ljava/lang/Class;

    .line 11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxm;->zzhrn:Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_c

    const/4 v5, 0x1

    goto :goto_d

    :cond_c
    const/4 v5, 0x0

    :goto_d
    if-nez v1, :cond_11

    const/4 v6, 0x1

    goto :goto_12

    :cond_11
    const/4 v6, 0x0

    :goto_12
    or-int/2addr v5, v6

    if-nez v2, :cond_16

    goto :goto_17

    :cond_16
    const/4 v3, 0x0

    :goto_17
    or-int/2addr v3, v5

    if-nez v3, :cond_b7

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdxq;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_22

    goto/16 :goto_b7

    :cond_22
    const/4 v3, 0x0

    .line 15
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzdxm;->zzhrl:Lcom/google/android/gms/internal/ads/zzdzc;

    .line 18
    :try_start_25
    instance-of v4, v0, Lcom/google/android/gms/internal/ads/zzdzt;

    if-eqz v4, :cond_31

    .line 19
    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/ads/zzdzt;

    .line 20
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdzw;->zza(Lcom/google/android/gms/internal/ads/zzdzt;)Ljava/lang/Throwable;

    move-result-object v4

    goto :goto_32

    :cond_31
    move-object v4, v3

    :goto_32
    if-nez v4, :cond_3a

    .line 22
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v5
    :try_end_38
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_25 .. :try_end_38} :catch_3c
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_38} :catch_39

    goto :goto_8b

    :catch_39
    move-exception v4

    :cond_3a
    :goto_3a
    move-object v5, v3

    goto :goto_8b

    :catch_3c
    move-exception v4

    .line 25
    invoke-virtual {v4}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-nez v5, :cond_89

    .line 27
    new-instance v5, Ljava/lang/NullPointerException;

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 29
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x23

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Future type "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " threw "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " without a cause"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :cond_89
    move-object v4, v5

    goto :goto_3a

    :goto_8b
    if-nez v4, :cond_91

    .line 33
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ads/zzdxq;->set(Ljava/lang/Object;)Z

    return-void

    .line 36
    :cond_91
    invoke-virtual {v1, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9b

    .line 38
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdxq;->setFuture(Lcom/google/android/gms/internal/ads/zzdzc;)Z

    return-void

    .line 41
    :cond_9b
    :try_start_9b
    invoke-virtual {p0, v2, v4}, Lcom/google/android/gms/internal/ads/zzdxm;->zza(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0
    :try_end_9f
    .catch Ljava/lang/Throwable; {:try_start_9b .. :try_end_9f} :catch_a9
    .catchall {:try_start_9b .. :try_end_9f} :catchall_a7

    .line 42
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzdxm;->zzhrm:Ljava/lang/Class;

    .line 43
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzdxm;->zzhrn:Ljava/lang/Object;

    .line 53
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdxm;->setResult(Ljava/lang/Object;)V

    return-void

    :catchall_a7
    move-exception v0

    goto :goto_b2

    :catch_a9
    move-exception v0

    .line 46
    :try_start_aa
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdxq;->setException(Ljava/lang/Throwable;)Z
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_a7

    .line 47
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzdxm;->zzhrm:Ljava/lang/Class;

    .line 48
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzdxm;->zzhrn:Ljava/lang/Object;

    return-void

    .line 50
    :goto_b2
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzdxm;->zzhrm:Ljava/lang/Class;

    .line 51
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzdxm;->zzhrn:Ljava/lang/Object;

    .line 52
    throw v0

    :cond_b7
    :goto_b7
    return-void
.end method

.method abstract setResult(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method abstract zza(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TX;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end method
