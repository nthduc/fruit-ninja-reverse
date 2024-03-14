.class final Lcom/google/android/gms/internal/ads/zzdto;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# instance fields
.field private final startTime:J

.field private final zzedb:Landroid/os/HandlerThread;

.field private zzhmj:Lcom/google/android/gms/internal/ads/zzduk;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private final zzhml:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/google/android/gms/internal/ads/zzduv;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhmn:Ljava/lang/String;

.field private final zzhmo:Ljava/lang/String;

.field private final zzhmp:I

.field private final zzvw:Lcom/google/android/gms/internal/ads/zzdtc;

.field private final zzvy:Lcom/google/android/gms/internal/ads/zzgo;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzgo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdtc;)V
    .registers 14

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzhmn:Ljava/lang/String;

    const/4 p2, 0x1

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzhmp:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzvy:Lcom/google/android/gms/internal/ads/zzgo;

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzhmo:Ljava/lang/String;

    .line 6
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzvw:Lcom/google/android/gms/internal/ads/zzdtc;

    .line 7
    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "GassDGClient"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzedb:Landroid/os/HandlerThread;

    .line 8
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzedb:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzdto;->startTime:J

    .line 10
    new-instance p2, Lcom/google/android/gms/internal/ads/zzduk;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzedb:Landroid/os/HandlerThread;

    .line 11
    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const v5, 0x12b6488

    move-object v0, p2

    move-object v1, p1

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzduk;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzhmj:Lcom/google/android/gms/internal/ads/zzduk;

    .line 12
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzhml:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzhmj:Lcom/google/android/gms/internal/ads/zzduk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzduk;->checkAvailabilityAndConnect()V

    return-void
.end method

.method private final zzapz()V
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzhmj:Lcom/google/android/gms/internal/ads/zzduk;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzduk;->isConnected()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzhmj:Lcom/google/android/gms/internal/ads/zzduk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzduk;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 64
    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzhmj:Lcom/google/android/gms/internal/ads/zzduk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzduk;->disconnect()V

    :cond_17
    return-void
.end method

.method private final zzavx()Lcom/google/android/gms/internal/ads/zzdun;
    .registers 2

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzhmj:Lcom/google/android/gms/internal/ads/zzduk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzduk;->zzawm()Lcom/google/android/gms/internal/ads/zzdun;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_6} :catch_7
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    const/4 v0, 0x0

    return-object v0
.end method

.method private static zzavz()Lcom/google/android/gms/internal/ads/zzduv;
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 66
    new-instance v0, Lcom/google/android/gms/internal/ads/zzduv;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzduv;-><init>([BI)V

    return-object v0
.end method

.method private final zzb(IJLjava/lang/Exception;)V
    .registers 8

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzvw:Lcom/google/android/gms/internal/ads/zzdtc;

    if-eqz v0, :cond_c

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    .line 70
    invoke-virtual {v0, p1, v1, v2, p4}, Lcom/google/android/gms/internal/ads/zzdtc;->zza(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    :cond_c
    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .registers 7

    .line 37
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdto;->zzavx()Lcom/google/android/gms/internal/ads/zzdun;

    move-result-object p1

    if-eqz p1, :cond_4e

    .line 39
    :try_start_6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdut;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzhmp:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzvy:Lcom/google/android/gms/internal/ads/zzgo;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzhmn:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzhmo:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdut;-><init>(ILcom/google/android/gms/internal/ads/zzgo;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzdun;->zza(Lcom/google/android/gms/internal/ads/zzdut;)Lcom/google/android/gms/internal/ads/zzduv;

    move-result-object p1

    .line 41
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdto;->startTime:J

    const/16 v2, 0x1393

    const/4 v3, 0x0

    .line 42
    invoke-direct {p0, v2, v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzdto;->zzb(IJLjava/lang/Exception;)V

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzhml:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_24} :catch_2f
    .catchall {:try_start_6 .. :try_end_24} :catchall_2d

    .line 44
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdto;->zzapz()V

    .line 45
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzedb:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    return-void

    :catchall_2d
    move-exception p1

    goto :goto_45

    :catch_2f
    move-exception p1

    .line 48
    :try_start_30
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/16 p1, 0x7da

    .line 49
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzdto;->startTime:J

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdto;->zzb(IJLjava/lang/Exception;)V
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_2d

    .line 50
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdto;->zzapz()V

    .line 51
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzedb:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    return-void

    .line 53
    :goto_45
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdto;->zzapz()V

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzedb:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 55
    throw p1

    :cond_4e
    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5

    .line 57
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdto;->startTime:J

    const/16 p1, 0xfac

    const/4 v2, 0x0

    .line 58
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdto;->zzb(IJLjava/lang/Exception;)V

    .line 59
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzhml:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdto;->zzavz()Lcom/google/android/gms/internal/ads/zzduv;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_11} :catch_11

    :catch_11
    return-void
.end method

.method public final onConnectionSuspended(I)V
    .registers 5

    .line 31
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdto;->startTime:J

    const/16 p1, 0xfab

    const/4 v2, 0x0

    .line 32
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdto;->zzb(IJLjava/lang/Exception;)V

    .line 33
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzhml:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdto;->zzavz()Lcom/google/android/gms/internal/ads/zzduv;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_11} :catch_11

    :catch_11
    return-void
.end method

.method public final zzef(I)Lcom/google/android/gms/internal/ads/zzduv;
    .registers 6

    const/4 p1, 0x0

    .line 17
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzhml:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/32 v1, 0xc350

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzduv;
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_e} :catch_f

    goto :goto_18

    :catch_f
    move-exception v0

    const/16 v1, 0x7d9

    .line 20
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzdto;->startTime:J

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzdto;->zzb(IJLjava/lang/Exception;)V

    move-object v0, p1

    .line 21
    :goto_18
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzdto;->startTime:J

    const/16 v3, 0xbbc

    .line 22
    invoke-direct {p0, v3, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdto;->zzb(IJLjava/lang/Exception;)V

    if-eqz v0, :cond_31

    .line 24
    iget p1, v0, Lcom/google/android/gms/internal/ads/zzduv;->status:I

    const/4 v1, 0x7

    if-ne p1, v1, :cond_2c

    .line 25
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;->zzer:Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdtc;->zzb(Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;)V

    goto :goto_31

    .line 26
    :cond_2c
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;->zzeq:Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdtc;->zzb(Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;)V

    :cond_31
    :goto_31
    if-nez v0, :cond_38

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdto;->zzavz()Lcom/google/android/gms/internal/ads/zzduv;

    move-result-object p1

    return-object p1

    :cond_38
    return-object v0
.end method
