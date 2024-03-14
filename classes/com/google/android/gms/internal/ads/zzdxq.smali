.class public Lcom/google/android/gms/internal/ads/zzdxq;
.super Lcom/google/android/gms/internal/ads/zzdzt;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdzc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdxq$zzf;,
        Lcom/google/android/gms/internal/ads/zzdxq$zzd;,
        Lcom/google/android/gms/internal/ads/zzdxq$zzj;,
        Lcom/google/android/gms/internal/ads/zzdxq$zzb;,
        Lcom/google/android/gms/internal/ads/zzdxq$zzg;,
        Lcom/google/android/gms/internal/ads/zzdxq$zza;,
        Lcom/google/android/gms/internal/ads/zzdxq$zzc;,
        Lcom/google/android/gms/internal/ads/zzdxq$zze;,
        Lcom/google/android/gms/internal/ads/zzdxq$zzk;,
        Lcom/google/android/gms/internal/ads/zzdxq$zzh;,
        Lcom/google/android/gms/internal/ads/zzdxq$zzi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdzt;",
        "Lcom/google/android/gms/internal/ads/zzdzc<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final GENERATE_CANCELLATION_CAUSES:Z

.field private static final NULL:Ljava/lang/Object;

.field private static final zzhrt:Ljava/util/logging/Logger;

.field private static final zzhru:Lcom/google/android/gms/internal/ads/zzdxq$zzb;


# instance fields
.field private volatile listeners:Lcom/google/android/gms/internal/ads/zzdxq$zze;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private volatile value:Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private volatile waiters:Lcom/google/android/gms/internal/ads/zzdxq$zzk;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 14

    :try_start_0
    const-string v0, "guava.concurrent.generate_cancellation_cause"

    const-string v1, "false"

    .line 340
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_e

    :catch_d
    const/4 v0, 0x0

    .line 345
    :goto_e
    sput-boolean v0, Lcom/google/android/gms/internal/ads/zzdxq;->GENERATE_CANCELLATION_CAUSES:Z

    .line 346
    const-class v0, Lcom/google/android/gms/internal/ads/zzdxq;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdxq;->zzhrt:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    .line 349
    :try_start_1d
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdxq$zzj;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdxq$zzj;-><init>(Lcom/google/android/gms/internal/ads/zzdxq$1;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_22} :catch_25

    move-object v7, v0

    move-object v13, v7

    goto :goto_6b

    :catch_25
    move-exception v1

    .line 352
    :try_start_26
    new-instance v8, Lcom/google/android/gms/internal/ads/zzdxq$zzd;

    const-class v2, Lcom/google/android/gms/internal/ads/zzdxq$zzk;

    const-class v3, Ljava/lang/Thread;

    const-string v4, "thread"

    .line 353
    invoke-static {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    const-class v2, Lcom/google/android/gms/internal/ads/zzdxq$zzk;

    const-class v4, Lcom/google/android/gms/internal/ads/zzdxq$zzk;

    const-string v5, "next"

    .line 354
    invoke-static {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    const-class v2, Lcom/google/android/gms/internal/ads/zzdxq;

    const-class v5, Lcom/google/android/gms/internal/ads/zzdxq$zzk;

    const-string v6, "waiters"

    .line 355
    invoke-static {v2, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    const-class v2, Lcom/google/android/gms/internal/ads/zzdxq;

    const-class v6, Lcom/google/android/gms/internal/ads/zzdxq$zze;

    const-string v7, "listeners"

    .line 356
    invoke-static {v2, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    const-class v2, Lcom/google/android/gms/internal/ads/zzdxq;

    const-class v7, Ljava/lang/Object;

    const-string v9, "value"

    .line 357
    invoke-static {v2, v7, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzdxq$zzd;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_5e} :catch_62

    move-object v7, v0

    move-object v13, v1

    move-object v1, v8

    goto :goto_6b

    :catch_62
    move-exception v2

    .line 360
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdxq$zzf;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/zzdxq$zzf;-><init>(Lcom/google/android/gms/internal/ads/zzdxq$1;)V

    move-object v13, v1

    move-object v7, v2

    move-object v1, v3

    .line 361
    :goto_6b
    sput-object v1, Lcom/google/android/gms/internal/ads/zzdxq;->zzhru:Lcom/google/android/gms/internal/ads/zzdxq$zzb;

    if-eqz v7, :cond_89

    .line 363
    sget-object v8, Lcom/google/android/gms/internal/ads/zzdxq;->zzhrt:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v10, "com.google.common.util.concurrent.AbstractFuture"

    const-string v11, "<clinit>"

    const-string v12, "UnsafeAtomicHelper is broken!"

    invoke-virtual/range {v8 .. v13}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 364
    sget-object v2, Lcom/google/android/gms/internal/ads/zzdxq;->zzhrt:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "com.google.common.util.concurrent.AbstractFuture"

    const-string v5, "<clinit>"

    const-string v6, "SafeAtomicHelper is broken!"

    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 365
    :cond_89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdxq;->NULL:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdzt;-><init>()V

    return-void
.end method

.method private static getFutureValue(Lcom/google/android/gms/internal/ads/zzdzc;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "get() did not throw CancellationException, despite reporting isCancelled() == true: "

    .line 187
    instance-of v1, p0, Lcom/google/android/gms/internal/ads/zzdxq$zzi;

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    .line 188
    check-cast p0, Lcom/google/android/gms/internal/ads/zzdxq;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdxq;->value:Ljava/lang/Object;

    .line 189
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzdxq$zza;

    if-eqz v0, :cond_24

    .line 190
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdxq$zza;

    .line 191
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzdxq$zza;->wasInterrupted:Z

    if-eqz v1, :cond_24

    .line 192
    iget-object p0, v0, Lcom/google/android/gms/internal/ads/zzdxq$zza;->cause:Ljava/lang/Throwable;

    if-eqz p0, :cond_22

    .line 193
    new-instance p0, Lcom/google/android/gms/internal/ads/zzdxq$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdxq$zza;->cause:Ljava/lang/Throwable;

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzdxq$zza;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_24

    .line 194
    :cond_22
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdxq$zza;->zzhrw:Lcom/google/android/gms/internal/ads/zzdxq$zza;

    :cond_24
    :goto_24
    return-object p0

    .line 196
    :cond_25
    instance-of v1, p0, Lcom/google/android/gms/internal/ads/zzdzt;

    if-eqz v1, :cond_38

    .line 197
    move-object v1, p0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdzt;

    .line 198
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdzw;->zza(Lcom/google/android/gms/internal/ads/zzdzt;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 200
    new-instance p0, Lcom/google/android/gms/internal/ads/zzdxq$zzc;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzdxq$zzc;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    .line 201
    :cond_38
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzdzc;->isCancelled()Z

    move-result v1

    .line 202
    sget-boolean v3, Lcom/google/android/gms/internal/ads/zzdxq;->GENERATE_CANCELLATION_CAUSES:Z

    xor-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v1

    if-eqz v3, :cond_46

    .line 203
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdxq$zza;->zzhrw:Lcom/google/android/gms/internal/ads/zzdxq$zza;

    return-object p0

    .line 204
    :cond_46
    :try_start_46
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdxq;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v1, :cond_74

    .line 206
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdxq$zza;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x54

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzdxq$zza;-><init>(ZLjava/lang/Throwable;)V

    return-object v3

    :cond_74
    if-nez v3, :cond_79

    .line 207
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdxq;->NULL:Ljava/lang/Object;
    :try_end_78
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_46 .. :try_end_78} :catch_b4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_46 .. :try_end_78} :catch_81
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_78} :catch_7a

    return-object p0

    :cond_79
    return-object v3

    :catch_7a
    move-exception p0

    .line 217
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdxq$zzc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdxq$zzc;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :catch_81
    move-exception v0

    if-nez v1, :cond_ae

    .line 214
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdxq$zzc;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "get() threw CancellationException, despite reporting isCancelled() == false: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzdxq$zzc;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    .line 215
    :cond_ae
    new-instance p0, Lcom/google/android/gms/internal/ads/zzdxq$zza;

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzdxq$zza;-><init>(ZLjava/lang/Throwable;)V

    return-object p0

    :catch_b4
    move-exception v3

    if-eqz v1, :cond_df

    .line 210
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdxq$zza;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x54

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzdxq$zza;-><init>(ZLjava/lang/Throwable;)V

    return-object v1

    .line 211
    :cond_df
    new-instance p0, Lcom/google/android/gms/internal/ads/zzdxq$zzc;

    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdxq$zzc;-><init>(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method private static getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 219
    :goto_1
    :try_start_1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_5} :catch_1a
    .catchall {:try_start_1 .. :try_end_5} :catchall_f

    if-eqz v0, :cond_e

    .line 221
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_e
    return-object p0

    :catchall_f
    move-exception p0

    if-eqz v0, :cond_19

    .line 227
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 228
    :cond_19
    throw p0

    :catch_1a
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdxq;Lcom/google/android/gms/internal/ads/zzdxq$zze;)Lcom/google/android/gms/internal/ads/zzdxq$zze;
    .registers 2

    .line 337
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxq;->listeners:Lcom/google/android/gms/internal/ads/zzdxq$zze;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdxq;Lcom/google/android/gms/internal/ads/zzdxq$zzk;)Lcom/google/android/gms/internal/ads/zzdxq$zzk;
    .registers 2

    .line 335
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxq;->waiters:Lcom/google/android/gms/internal/ads/zzdxq$zzk;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdxq;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 338
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxq;->value:Ljava/lang/Object;

    return-object p1
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzdxq$zzk;)V
    .registers 6

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzdxq$zzk;->thread:Ljava/lang/Thread;

    .line 3
    :cond_3
    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxq;->waiters:Lcom/google/android/gms/internal/ads/zzdxq$zzk;

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdxq$zzk;->zzhsg:Lcom/google/android/gms/internal/ads/zzdxq$zzk;

    if-ne p1, v1, :cond_a

    return-void

    :cond_a
    move-object v1, v0

    :goto_b
    if-eqz p1, :cond_28

    .line 7
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzdxq$zzk;->next:Lcom/google/android/gms/internal/ads/zzdxq$zzk;

    .line 8
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzdxq$zzk;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_15

    move-object v1, p1

    goto :goto_26

    :cond_15
    if-eqz v1, :cond_1e

    .line 11
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzdxq$zzk;->next:Lcom/google/android/gms/internal/ads/zzdxq$zzk;

    .line 12
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzdxq$zzk;->thread:Ljava/lang/Thread;

    if-nez p1, :cond_26

    goto :goto_3

    .line 14
    :cond_1e
    sget-object v3, Lcom/google/android/gms/internal/ads/zzdxq;->zzhru:Lcom/google/android/gms/internal/ads/zzdxq$zzb;

    invoke-virtual {v3, p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzdxq$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdxq;Lcom/google/android/gms/internal/ads/zzdxq$zzk;Lcom/google/android/gms/internal/ads/zzdxq$zzk;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_26
    :goto_26
    move-object p1, v2

    goto :goto_b

    :cond_28
    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzdxq;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdxq<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    .line 231
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxq;->waiters:Lcom/google/android/gms/internal/ads/zzdxq$zzk;

    .line 232
    sget-object v3, Lcom/google/android/gms/internal/ads/zzdxq;->zzhru:Lcom/google/android/gms/internal/ads/zzdxq$zzb;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzdxq$zzk;->zzhsg:Lcom/google/android/gms/internal/ads/zzdxq$zzk;

    invoke-virtual {v3, p0, v2, v4}, Lcom/google/android/gms/internal/ads/zzdxq$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdxq;Lcom/google/android/gms/internal/ads/zzdxq$zzk;Lcom/google/android/gms/internal/ads/zzdxq$zzk;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_e
    if-eqz v2, :cond_1c

    .line 235
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzdxq$zzk;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_19

    .line 237
    iput-object v0, v2, Lcom/google/android/gms/internal/ads/zzdxq$zzk;->thread:Ljava/lang/Thread;

    .line 238
    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 239
    :cond_19
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdxq$zzk;->next:Lcom/google/android/gms/internal/ads/zzdxq$zzk;

    goto :goto_e

    .line 240
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdxq;->afterDone()V

    .line 242
    :cond_1f
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxq;->listeners:Lcom/google/android/gms/internal/ads/zzdxq$zze;

    .line 243
    sget-object v3, Lcom/google/android/gms/internal/ads/zzdxq;->zzhru:Lcom/google/android/gms/internal/ads/zzdxq$zzb;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzdxq$zze;->zzhry:Lcom/google/android/gms/internal/ads/zzdxq$zze;

    invoke-virtual {v3, p0, v2, v4}, Lcom/google/android/gms/internal/ads/zzdxq$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdxq;Lcom/google/android/gms/internal/ads/zzdxq$zze;Lcom/google/android/gms/internal/ads/zzdxq$zze;)Z

    move-result v3

    if-eqz v3, :cond_1f

    :goto_2b
    move-object p0, v1

    move-object v1, v2

    if-eqz v1, :cond_34

    .line 247
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzdxq$zze;->next:Lcom/google/android/gms/internal/ads/zzdxq$zze;

    .line 248
    iput-object p0, v1, Lcom/google/android/gms/internal/ads/zzdxq$zze;->next:Lcom/google/android/gms/internal/ads/zzdxq$zze;

    goto :goto_2b

    :cond_34
    :goto_34
    if-eqz p0, :cond_5c

    .line 255
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxq$zze;->next:Lcom/google/android/gms/internal/ads/zzdxq$zze;

    .line 256
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxq$zze;->task:Ljava/lang/Runnable;

    .line 257
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/zzdxq$zzg;

    if-eqz v3, :cond_55

    .line 258
    check-cast v2, Lcom/google/android/gms/internal/ads/zzdxq$zzg;

    .line 259
    iget-object p0, v2, Lcom/google/android/gms/internal/ads/zzdxq$zzg;->zzhrz:Lcom/google/android/gms/internal/ads/zzdxq;

    .line 260
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdxq;->value:Ljava/lang/Object;

    if-ne v3, v2, :cond_5a

    .line 261
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzdxq$zzg;->future:Lcom/google/android/gms/internal/ads/zzdzc;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdxq;->getFutureValue(Lcom/google/android/gms/internal/ads/zzdzc;)Ljava/lang/Object;

    move-result-object v3

    .line 262
    sget-object v4, Lcom/google/android/gms/internal/ads/zzdxq;->zzhru:Lcom/google/android/gms/internal/ads/zzdxq$zzb;

    invoke-virtual {v4, p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzdxq$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdxq;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_5a

    .line 264
    :cond_55
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdxq$zze;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v2, p0}, Lcom/google/android/gms/internal/ads/zzdxq;->zza(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_5a
    :goto_5a
    move-object p0, v1

    goto :goto_34

    :cond_5c
    return-void
.end method

.method private static zza(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 8

    .line 324
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v5

    .line 327
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdxq;->zzhrt:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x39

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "RuntimeException while executing runnable "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " with executor "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v2, "com.google.common.util.concurrent.AbstractFuture"

    const-string v3, "executeListener"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zza(Ljava/lang/StringBuilder;)V
    .registers 5

    const-string v0, "]"

    .line 303
    :try_start_2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdxq;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SUCCESS, result=["

    .line 304
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdxq;->zza(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 306
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_11
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_11} :catch_2b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_11} :catch_25
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception v0

    const-string v1, "UNKNOWN, cause=["

    .line 315
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " thrown from get()]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catch_25
    const-string v0, "CANCELLED"

    .line 312
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catch_2b
    move-exception v1

    const-string v2, "FAILURE, cause=["

    .line 309
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private final zza(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .registers 4

    if-ne p2, p0, :cond_8

    :try_start_2
    const-string p2, "this future"

    .line 318
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 319
    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_b} :catch_e
    .catch Ljava/lang/StackOverflowError; {:try_start_2 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p2

    goto :goto_f

    :catch_e
    move-exception p2

    :goto_f
    const-string v0, "Exception thrown from implementation: "

    .line 322
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static zzae(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 93
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzdxq$zza;

    if-nez v0, :cond_18

    .line 99
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzdxq$zzc;

    if-nez v0, :cond_e

    .line 101
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdxq;->NULL:Ljava/lang/Object;

    if-ne p0, v0, :cond_d

    const/4 p0, 0x0

    :cond_d
    return-object p0

    .line 100
    :cond_e
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdxq$zzc;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdxq$zzc;->exception:Ljava/lang/Throwable;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 94
    :cond_18
    check-cast p0, Lcom/google/android/gms/internal/ads/zzdxq$zza;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdxq$zza;->cause:Ljava/lang/Throwable;

    .line 95
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task was cancelled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 98
    throw v0
.end method

.method static synthetic zzaxw()Lcom/google/android/gms/internal/ads/zzdxq$zzb;
    .registers 1

    .line 329
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdxq;->zzhru:Lcom/google/android/gms/internal/ads/zzdxq$zzb;

    return-object v0
.end method

.method static synthetic zzaxx()Z
    .registers 1

    .line 330
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzdxq;->GENERATE_CANCELLATION_CAUSES:Z

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdxq;)Ljava/lang/Object;
    .registers 1

    .line 331
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdxq;->value:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzdxq;)V
    .registers 1

    .line 333
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdxq;->zza(Lcom/google/android/gms/internal/ads/zzdxq;)V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzdxq;)Lcom/google/android/gms/internal/ads/zzdxq$zzk;
    .registers 1

    .line 334
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdxq;->waiters:Lcom/google/android/gms/internal/ads/zzdxq$zzk;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzdxq;)Lcom/google/android/gms/internal/ads/zzdxq$zze;
    .registers 1

    .line 336
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdxq;->listeners:Lcom/google/android/gms/internal/ads/zzdxq$zze;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzdzc;)Ljava/lang/Object;
    .registers 1

    .line 332
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdxq;->getFutureValue(Lcom/google/android/gms/internal/ads/zzdzc;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 6

    const-string v0, "Runnable was null."

    .line 140
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdwd;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Executor was null."

    .line 141
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzdwd;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdxq;->isDone()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 143
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxq;->listeners:Lcom/google/android/gms/internal/ads/zzdxq$zze;

    .line 144
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdxq$zze;->zzhry:Lcom/google/android/gms/internal/ads/zzdxq$zze;

    if-eq v0, v1, :cond_2c

    .line 145
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdxq$zze;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzdxq$zze;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 146
    :cond_1b
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzdxq$zze;->next:Lcom/google/android/gms/internal/ads/zzdxq$zze;

    .line 147
    sget-object v2, Lcom/google/android/gms/internal/ads/zzdxq;->zzhru:Lcom/google/android/gms/internal/ads/zzdxq$zzb;

    invoke-virtual {v2, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzdxq$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdxq;Lcom/google/android/gms/internal/ads/zzdxq$zze;Lcom/google/android/gms/internal/ads/zzdxq$zze;)Z

    move-result v0

    if-eqz v0, :cond_26

    return-void

    .line 149
    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxq;->listeners:Lcom/google/android/gms/internal/ads/zzdxq$zze;

    .line 150
    sget-object v2, Lcom/google/android/gms/internal/ads/zzdxq$zze;->zzhry:Lcom/google/android/gms/internal/ads/zzdxq$zze;

    if-ne v0, v2, :cond_1b

    .line 151
    :cond_2c
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzdxq;->zza(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method protected afterDone()V
    .registers 1

    return-void
.end method

.method public cancel(Z)Z
    .registers 9

    .line 109
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxq;->value:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    const/4 v3, 0x1

    goto :goto_9

    :cond_8
    const/4 v3, 0x0

    .line 111
    :goto_9
    instance-of v4, v0, Lcom/google/android/gms/internal/ads/zzdxq$zzg;

    or-int/2addr v3, v4

    if-eqz v3, :cond_61

    .line 112
    sget-boolean v3, Lcom/google/android/gms/internal/ads/zzdxq;->GENERATE_CANCELLATION_CAUSES:Z

    if-eqz v3, :cond_1f

    .line 113
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdxq$zza;

    new-instance v4, Ljava/util/concurrent/CancellationException;

    const-string v5, "Future.cancel() was called."

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1, v4}, Lcom/google/android/gms/internal/ads/zzdxq$zza;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_26

    :cond_1f
    if-eqz p1, :cond_24

    .line 115
    sget-object v3, Lcom/google/android/gms/internal/ads/zzdxq$zza;->zzhrv:Lcom/google/android/gms/internal/ads/zzdxq$zza;

    goto :goto_26

    .line 116
    :cond_24
    sget-object v3, Lcom/google/android/gms/internal/ads/zzdxq$zza;->zzhrw:Lcom/google/android/gms/internal/ads/zzdxq$zza;

    :goto_26
    const/4 v5, 0x0

    move-object v4, v0

    move-object v0, p0

    .line 118
    :cond_29
    :goto_29
    sget-object v6, Lcom/google/android/gms/internal/ads/zzdxq;->zzhru:Lcom/google/android/gms/internal/ads/zzdxq$zzb;

    invoke-virtual {v6, v0, v4, v3}, Lcom/google/android/gms/internal/ads/zzdxq$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdxq;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_59

    if-eqz p1, :cond_36

    .line 121
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxq;->interruptTask()V

    .line 122
    :cond_36
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdxq;->zza(Lcom/google/android/gms/internal/ads/zzdxq;)V

    .line 123
    instance-of v0, v4, Lcom/google/android/gms/internal/ads/zzdxq$zzg;

    if-eqz v0, :cond_62

    .line 124
    check-cast v4, Lcom/google/android/gms/internal/ads/zzdxq$zzg;

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzdxq$zzg;->future:Lcom/google/android/gms/internal/ads/zzdzc;

    .line 125
    instance-of v4, v0, Lcom/google/android/gms/internal/ads/zzdxq$zzi;

    if-eqz v4, :cond_55

    .line 126
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdxq;

    .line 127
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdxq;->value:Ljava/lang/Object;

    if-nez v4, :cond_4d

    const/4 v5, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v5, 0x0

    .line 128
    :goto_4e
    instance-of v6, v4, Lcom/google/android/gms/internal/ads/zzdxq$zzg;

    or-int/2addr v5, v6

    if-eqz v5, :cond_62

    const/4 v5, 0x1

    goto :goto_29

    .line 132
    :cond_55
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdzc;->cancel(Z)Z

    goto :goto_62

    .line 134
    :cond_59
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdxq;->value:Ljava/lang/Object;

    .line 135
    instance-of v6, v4, Lcom/google/android/gms/internal/ads/zzdxq$zzg;

    if-nez v6, :cond_29

    move v1, v5

    goto :goto_62

    :cond_61
    const/4 v1, 0x0

    :cond_62
    :goto_62
    return v1
.end method

.method public get()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 73
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_69

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxq;->value:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    const/4 v3, 0x1

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    .line 76
    :goto_f
    instance-of v4, v0, Lcom/google/android/gms/internal/ads/zzdxq$zzg;

    if-nez v4, :cond_15

    const/4 v4, 0x1

    goto :goto_16

    :cond_15
    const/4 v4, 0x0

    :goto_16
    and-int/2addr v3, v4

    if-eqz v3, :cond_1e

    .line 77
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdxq;->zzae(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 78
    :cond_1e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxq;->waiters:Lcom/google/android/gms/internal/ads/zzdxq$zzk;

    .line 79
    sget-object v3, Lcom/google/android/gms/internal/ads/zzdxq$zzk;->zzhsg:Lcom/google/android/gms/internal/ads/zzdxq$zzk;

    if-eq v0, v3, :cond_62

    .line 80
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdxq$zzk;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzdxq$zzk;-><init>()V

    .line 81
    :cond_29
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzdxq$zzk;->zzb(Lcom/google/android/gms/internal/ads/zzdxq$zzk;)V

    .line 82
    sget-object v4, Lcom/google/android/gms/internal/ads/zzdxq;->zzhru:Lcom/google/android/gms/internal/ads/zzdxq$zzb;

    invoke-virtual {v4, p0, v0, v3}, Lcom/google/android/gms/internal/ads/zzdxq$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdxq;Lcom/google/android/gms/internal/ads/zzdxq$zzk;Lcom/google/android/gms/internal/ads/zzdxq$zzk;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 83
    :cond_34
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 84
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_53

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxq;->value:Ljava/lang/Object;

    if-eqz v0, :cond_43

    const/4 v4, 0x1

    goto :goto_44

    :cond_43
    const/4 v4, 0x0

    .line 88
    :goto_44
    instance-of v5, v0, Lcom/google/android/gms/internal/ads/zzdxq$zzg;

    if-nez v5, :cond_4a

    const/4 v5, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v5, 0x0

    :goto_4b
    and-int/2addr v4, v5

    if-eqz v4, :cond_34

    .line 89
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdxq;->zzae(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 85
    :cond_53
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzdxq;->zza(Lcom/google/android/gms/internal/ads/zzdxq$zzk;)V

    .line 86
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 90
    :cond_5c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxq;->waiters:Lcom/google/android/gms/internal/ads/zzdxq$zzk;

    .line 91
    sget-object v4, Lcom/google/android/gms/internal/ads/zzdxq$zzk;->zzhsg:Lcom/google/android/gms/internal/ads/zzdxq$zzk;

    if-ne v0, v4, :cond_29

    .line 92
    :cond_62
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxq;->value:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdxq;->zzae(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 74
    :cond_69
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    return-void
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    .line 18
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 20
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_1db

    .line 22
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzdxq;->value:Ljava/lang/Object;

    const/4 v8, 0x0

    if-eqz v6, :cond_17

    const/4 v9, 0x1

    goto :goto_18

    :cond_17
    const/4 v9, 0x0

    .line 23
    :goto_18
    instance-of v10, v6, Lcom/google/android/gms/internal/ads/zzdxq$zzg;

    if-nez v10, :cond_1e

    const/4 v10, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v10, 0x0

    :goto_1f
    and-int/2addr v9, v10

    if-eqz v9, :cond_27

    .line 24
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzdxq;->zzae(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_27
    const-wide/16 v9, 0x0

    cmp-long v6, v4, v9

    if-lez v6, :cond_33

    .line 25
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    add-long/2addr v11, v4

    goto :goto_34

    :cond_33
    move-wide v11, v9

    :goto_34
    const-wide/16 v13, 0x3e8

    cmp-long v6, v4, v13

    if-ltz v6, :cond_93

    .line 27
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzdxq;->waiters:Lcom/google/android/gms/internal/ads/zzdxq$zzk;

    .line 28
    sget-object v15, Lcom/google/android/gms/internal/ads/zzdxq$zzk;->zzhsg:Lcom/google/android/gms/internal/ads/zzdxq$zzk;

    if-eq v6, v15, :cond_8c

    .line 29
    new-instance v15, Lcom/google/android/gms/internal/ads/zzdxq$zzk;

    invoke-direct {v15}, Lcom/google/android/gms/internal/ads/zzdxq$zzk;-><init>()V

    .line 30
    :cond_45
    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/ads/zzdxq$zzk;->zzb(Lcom/google/android/gms/internal/ads/zzdxq$zzk;)V

    .line 31
    sget-object v7, Lcom/google/android/gms/internal/ads/zzdxq;->zzhru:Lcom/google/android/gms/internal/ads/zzdxq$zzb;

    invoke-virtual {v7, v0, v6, v15}, Lcom/google/android/gms/internal/ads/zzdxq$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdxq;Lcom/google/android/gms/internal/ads/zzdxq$zzk;Lcom/google/android/gms/internal/ads/zzdxq$zzk;)Z

    move-result v6

    if-eqz v6, :cond_86

    .line 32
    :cond_50
    invoke-static {v0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 33
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_7d

    .line 36
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdxq;->value:Ljava/lang/Object;

    if-eqz v4, :cond_5f

    const/4 v5, 0x1

    goto :goto_60

    :cond_5f
    const/4 v5, 0x0

    .line 37
    :goto_60
    instance-of v6, v4, Lcom/google/android/gms/internal/ads/zzdxq$zzg;

    if-nez v6, :cond_66

    const/4 v6, 0x1

    goto :goto_67

    :cond_66
    const/4 v6, 0x0

    :goto_67
    and-int/2addr v5, v6

    if-eqz v5, :cond_6f

    .line 38
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdxq;->zzae(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 39
    :cond_6f
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    cmp-long v6, v4, v13

    if-gez v6, :cond_50

    .line 41
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/ads/zzdxq;->zza(Lcom/google/android/gms/internal/ads/zzdxq$zzk;)V

    goto :goto_93

    .line 34
    :cond_7d
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/ads/zzdxq;->zza(Lcom/google/android/gms/internal/ads/zzdxq$zzk;)V

    .line 35
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 43
    :cond_86
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzdxq;->waiters:Lcom/google/android/gms/internal/ads/zzdxq$zzk;

    .line 44
    sget-object v7, Lcom/google/android/gms/internal/ads/zzdxq$zzk;->zzhsg:Lcom/google/android/gms/internal/ads/zzdxq$zzk;

    if-ne v6, v7, :cond_45

    .line 45
    :cond_8c
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdxq;->value:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdxq;->zzae(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_93
    :goto_93
    cmp-long v6, v4, v9

    if-lez v6, :cond_c0

    .line 47
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdxq;->value:Ljava/lang/Object;

    if-eqz v4, :cond_9d

    const/4 v5, 0x1

    goto :goto_9e

    :cond_9d
    const/4 v5, 0x0

    .line 48
    :goto_9e
    instance-of v6, v4, Lcom/google/android/gms/internal/ads/zzdxq$zzg;

    if-nez v6, :cond_a4

    const/4 v6, 0x1

    goto :goto_a5

    :cond_a4
    const/4 v6, 0x0

    :goto_a5
    and-int/2addr v5, v6

    if-eqz v5, :cond_ad

    .line 49
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdxq;->zzae(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 50
    :cond_ad
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_ba

    .line 52
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    goto :goto_93

    .line 51
    :cond_ba
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 53
    :cond_c0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzdxq;->toString()Ljava/lang/String;

    move-result-object v6

    .line 54
    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 55
    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x1c

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "Waited "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-long v11, v4, v13

    cmp-long v15, v11, v9

    if-gez v15, :cond_198

    .line 57
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v11, " (plus "

    invoke-virtual {v2, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    neg-long v4, v4

    .line 59
    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v11}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v11

    .line 60
    invoke-virtual {v3, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v17

    sub-long v4, v4, v17

    cmp-long v3, v11, v9

    if-eqz v3, :cond_124

    cmp-long v3, v4, v13

    if-lez v3, :cond_121

    goto :goto_124

    :cond_121
    const/16 v16, 0x0

    goto :goto_126

    :cond_124
    :goto_124
    const/16 v16, 0x1

    :goto_126
    cmp-long v3, v11, v9

    if-lez v3, :cond_16a

    .line 63
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x15

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v3, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v16, :cond_162

    .line 65
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    :cond_162
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_16a
    if-eqz v16, :cond_18e

    .line 68
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " nanoseconds "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 69
    :cond_18e
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "delay)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    :cond_198
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzdxq;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1ae

    .line 71
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " but future completed as timeout expired"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_1ae
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 21
    :cond_1db
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    return-void
.end method

.method protected interruptTask()V
    .registers 1

    return-void
.end method

.method public isCancelled()Z
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxq;->value:Ljava/lang/Object;

    .line 108
    instance-of v0, v0, Lcom/google/android/gms/internal/ads/zzdxq$zza;

    return v0
.end method

.method public isDone()Z
    .registers 5

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxq;->value:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    const/4 v3, 0x1

    goto :goto_9

    :cond_8
    const/4 v3, 0x0

    .line 106
    :goto_9
    instance-of v0, v0, Lcom/google/android/gms/internal/ads/zzdxq$zzg;

    if-nez v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    and-int v0, v3, v1

    return v0
.end method

.method final maybePropagateCancellationTo(Ljava/util/concurrent/Future;)V
    .registers 4
    .param p1    # Ljava/util/concurrent/Future;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 273
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdxq;->isCancelled()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    .line 274
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdxq;->wasInterrupted()Z

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_13
    return-void
.end method

.method protected pendingToString()Ljava/lang/String;
    .registers 5
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 298
    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_26

    .line 299
    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 300
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const/16 v2, 0x29

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "remaining delay=["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_26
    const/4 v0, 0x0

    return-object v0
.end method

.method protected set(Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    if-nez p1, :cond_4

    .line 153
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdxq;->NULL:Ljava/lang/Object;

    .line 154
    :cond_4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdxq;->zzhru:Lcom/google/android/gms/internal/ads/zzdxq$zzb;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdxq$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdxq;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 155
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdxq;->zza(Lcom/google/android/gms/internal/ads/zzdxq;)V

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method protected setException(Ljava/lang/Throwable;)Z
    .registers 4

    .line 158
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdxq$zzc;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwd;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdxq$zzc;-><init>(Ljava/lang/Throwable;)V

    .line 159
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdxq;->zzhru:Lcom/google/android/gms/internal/ads/zzdxq$zzb;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzdxq$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdxq;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 160
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdxq;->zza(Lcom/google/android/gms/internal/ads/zzdxq;)V

    const/4 p1, 0x1

    return p1

    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method protected final setFuture(Lcom/google/android/gms/internal/ads/zzdzc;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 163
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwd;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxq;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_45

    .line 166
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdzc;->isDone()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_21

    .line 167
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdxq;->getFutureValue(Lcom/google/android/gms/internal/ads/zzdzc;)Ljava/lang/Object;

    move-result-object p1

    .line 168
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdxq;->zzhru:Lcom/google/android/gms/internal/ads/zzdxq$zzb;

    invoke-virtual {v0, p0, v3, p1}, Lcom/google/android/gms/internal/ads/zzdxq$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdxq;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 169
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdxq;->zza(Lcom/google/android/gms/internal/ads/zzdxq;)V

    return v2

    :cond_20
    return v1

    .line 172
    :cond_21
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdxq$zzg;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdxq$zzg;-><init>(Lcom/google/android/gms/internal/ads/zzdxq;Lcom/google/android/gms/internal/ads/zzdzc;)V

    .line 173
    sget-object v4, Lcom/google/android/gms/internal/ads/zzdxq;->zzhru:Lcom/google/android/gms/internal/ads/zzdxq$zzb;

    invoke-virtual {v4, p0, v3, v0}, Lcom/google/android/gms/internal/ads/zzdxq$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdxq;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 174
    :try_start_2e
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdyj;->zzhtb:Lcom/google/android/gms/internal/ads/zzdyj;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdzc;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_33} :catch_34

    goto :goto_42

    :catch_34
    move-exception p1

    .line 177
    :try_start_35
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdxq$zzc;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzdxq$zzc;-><init>(Ljava/lang/Throwable;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_3a} :catch_3b

    goto :goto_3d

    .line 180
    :catch_3b
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdxq$zzc;->zzhrx:Lcom/google/android/gms/internal/ads/zzdxq$zzc;

    .line 181
    :goto_3d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdxq;->zzhru:Lcom/google/android/gms/internal/ads/zzdxq$zzb;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzdxq$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdxq;Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_42
    return v2

    .line 183
    :cond_43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxq;->value:Ljava/lang/Object;

    .line 184
    :cond_45
    instance-of v2, v0, Lcom/google/android/gms/internal/ads/zzdxq$zza;

    if-eqz v2, :cond_50

    .line 185
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdxq$zza;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdxq$zza;->wasInterrupted:Z

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzdzc;->cancel(Z)Z

    :cond_50
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdxq;->isCancelled()Z

    move-result v1

    const-string v2, "]"

    if-eqz v1, :cond_20

    const-string v1, "CANCELLED"

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_95

    .line 279
    :cond_20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdxq;->isDone()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 280
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdxq;->zza(Ljava/lang/StringBuilder;)V

    goto :goto_95

    .line 282
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const-string v3, "PENDING"

    .line 283
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdxq;->value:Ljava/lang/Object;

    .line 285
    instance-of v4, v3, Lcom/google/android/gms/internal/ads/zzdxq$zzg;

    if-eqz v4, :cond_49

    const-string v4, ", setFuture=["

    .line 286
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    check-cast v3, Lcom/google/android/gms/internal/ads/zzdxq$zzg;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdxq$zzg;->future:Lcom/google/android/gms/internal/ads/zzdzc;

    invoke-direct {p0, v0, v3}, Lcom/google/android/gms/internal/ads/zzdxq;->zza(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 288
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_85

    .line 289
    :cond_49
    :try_start_49
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdxq;->pendingToString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdwf;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_51
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_51} :catch_54
    .catch Ljava/lang/StackOverflowError; {:try_start_49 .. :try_end_51} :catch_52

    goto :goto_78

    :catch_52
    move-exception v3

    goto :goto_55

    :catch_54
    move-exception v3

    .line 291
    :goto_55
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x26

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Exception thrown from implementation: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_78
    if-eqz v3, :cond_85

    const-string v4, ", info=["

    .line 293
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_85
    :goto_85
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdxq;->isDone()Z

    move-result v3

    if-eqz v3, :cond_95

    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 296
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdxq;->zza(Ljava/lang/StringBuilder;)V

    .line 297
    :cond_95
    :goto_95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final wasInterrupted()Z
    .registers 3

    .line 138
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxq;->value:Ljava/lang/Object;

    .line 139
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzdxq$zza;

    if-eqz v1, :cond_e

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdxq$zza;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdxq$zza;->wasInterrupted:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method protected final zzaxv()Ljava/lang/Throwable;
    .registers 3
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 268
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzdxq$zzi;

    if-eqz v0, :cond_f

    .line 269
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxq;->value:Ljava/lang/Object;

    .line 270
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzdxq$zzc;

    if-eqz v1, :cond_f

    .line 271
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdxq$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdxq$zzc;->exception:Ljava/lang/Throwable;

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method
