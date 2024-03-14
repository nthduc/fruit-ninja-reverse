.class abstract Lcom/google/android/gms/internal/ads/zzdxt;
.super Lcom/google/android/gms/internal/ads/zzdyk;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdyk<",
        "TO;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private zzhrl:Lcom/google/android/gms/internal/ads/zzdzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "+TI;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private zzhsh:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "+TI;>;TF;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdyk;-><init>()V

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwd;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdzc;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxt;->zzhrl:Lcom/google/android/gms/internal/ads/zzdzc;

    .line 11
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdwd;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxt;->zzhsh:Ljava/lang/Object;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdvu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/zzdvu<",
            "-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "TO;>;"
        }
    .end annotation

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwd;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdxv;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdxv;-><init>(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdvu;)V

    .line 7
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzdze;->zza(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdxq;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzdzc;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/zzdya<",
            "-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "TO;>;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdwd;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdxs;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdxs;-><init>(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdya;)V

    .line 3
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzdze;->zza(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdxq;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzdzc;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method protected final afterDone()V
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxt;->zzhrl:Lcom/google/android/gms/internal/ads/zzdzc;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdxq;->maybePropagateCancellationTo(Ljava/util/concurrent/Future;)V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxt;->zzhrl:Lcom/google/android/gms/internal/ads/zzdzc;

    .line 49
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxt;->zzhsh:Ljava/lang/Object;

    return-void
.end method

.method protected final pendingToString()Ljava/lang/String;
    .registers 6

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxt;->zzhrl:Lcom/google/android/gms/internal/ads/zzdzc;

    .line 52
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxt;->zzhsh:Ljava/lang/Object;

    .line 53
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->pendingToString()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_2f

    .line 56
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "inputFuture=["

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    :cond_2f
    const-string v0, ""

    :goto_31
    if-eqz v1, :cond_64

    .line 58
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "function=["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_64
    if-eqz v2, :cond_7f

    .line 60
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_79

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_79
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_7f
    const/4 v0, 0x0

    return-object v0
.end method

.method public final run()V
    .registers 7

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxt;->zzhrl:Lcom/google/android/gms/internal/ads/zzdzc;

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxt;->zzhsh:Ljava/lang/Object;

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdxq;->isCancelled()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_e

    const/4 v5, 0x1

    goto :goto_f

    :cond_e
    const/4 v5, 0x0

    :goto_f
    or-int/2addr v2, v5

    if-nez v1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v3, 0x0

    :goto_14
    or-int/2addr v2, v3

    if-eqz v2, :cond_18

    return-void

    :cond_18
    const/4 v2, 0x0

    .line 17
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxt;->zzhrl:Lcom/google/android/gms/internal/ads/zzdzc;

    .line 18
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdzc;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 20
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdxq;->setFuture(Lcom/google/android/gms/internal/ads/zzdzc;)Z

    return-void

    .line 22
    :cond_25
    :try_start_25
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_29
    .catch Ljava/util/concurrent/CancellationException; {:try_start_25 .. :try_end_29} :catch_52
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_25 .. :try_end_29} :catch_49
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_29} :catch_44
    .catch Ljava/lang/Error; {:try_start_25 .. :try_end_29} :catch_3f

    .line 36
    :try_start_29
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzdxt;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2d} :catch_35
    .catchall {:try_start_29 .. :try_end_2d} :catchall_33

    .line 37
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxt;->zzhsh:Ljava/lang/Object;

    .line 45
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdxt;->setResult(Ljava/lang/Object;)V

    return-void

    :catchall_33
    move-exception v0

    goto :goto_3c

    :catch_35
    move-exception v0

    .line 40
    :try_start_36
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdxq;->setException(Ljava/lang/Throwable;)Z
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_33

    .line 41
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxt;->zzhsh:Ljava/lang/Object;

    return-void

    .line 43
    :goto_3c
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxt;->zzhsh:Ljava/lang/Object;

    .line 44
    throw v0

    :catch_3f
    move-exception v0

    .line 34
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdxq;->setException(Ljava/lang/Throwable;)Z

    return-void

    :catch_44
    move-exception v0

    .line 31
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdxq;->setException(Ljava/lang/Throwable;)Z

    return-void

    :catch_49
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdxq;->setException(Ljava/lang/Throwable;)Z

    return-void

    .line 25
    :catch_52
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzdxq;->cancel(Z)Z

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

.method abstract zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TI;)TT;"
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
