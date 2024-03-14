.class public final Lcom/google/android/gms/internal/ads/zzbem;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzom;


# instance fields
.field private isOpen:Z

.field private uri:Landroid/net/Uri;

.field private zzekd:Ljava/io/InputStream;

.field private final zzeke:Lcom/google/android/gms/internal/ads/zzom;

.field private final zzekf:Lcom/google/android/gms/internal/ads/zzpa;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzpa<",
            "Lcom/google/android/gms/internal/ads/zzom;",
            ">;"
        }
    .end annotation
.end field

.field private final zzekg:Lcom/google/android/gms/internal/ads/zzbep;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzom;Lcom/google/android/gms/internal/ads/zzpa;Lcom/google/android/gms/internal/ads/zzbep;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzom;",
            "Lcom/google/android/gms/internal/ads/zzpa<",
            "Lcom/google/android/gms/internal/ads/zzom;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzbep;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbem;->zzvr:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbem;->zzeke:Lcom/google/android/gms/internal/ads/zzom;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbem;->zzekf:Lcom/google/android/gms/internal/ads/zzpa;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbem;->zzekg:Lcom/google/android/gms/internal/ads/zzbep;

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbem;->isOpen:Z

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbem;->isOpen:Z

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbem;->uri:Landroid/net/Uri;

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbem;->zzekd:Ljava/io/InputStream;

    if-eqz v1, :cond_14

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbem;->zzekd:Ljava/io/InputStream;

    goto :goto_19

    .line 14
    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbem;->zzeke:Lcom/google/android/gms/internal/ads/zzom;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzom;->close()V

    .line 16
    :goto_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbem;->zzekf:Lcom/google/android/gms/internal/ads/zzpa;

    if-eqz v0, :cond_20

    .line 17
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzpa;->zze(Ljava/lang/Object;)V

    :cond_20
    return-void

    .line 8
    :cond_21
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempt to close an already closed CacheDataSource."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getUri()Landroid/net/Uri;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbem;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public final read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbem;->isOpen:Z

    if-eqz v0, :cond_1b

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbem;->zzekd:Ljava/io/InputStream;

    if-eqz v0, :cond_d

    .line 82
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    goto :goto_13

    .line 83
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbem;->zzeke:Lcom/google/android/gms/internal/ads/zzom;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzom;->read([BII)I

    move-result p1

    .line 85
    :goto_13
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbem;->zzekf:Lcom/google/android/gms/internal/ads/zzpa;

    if-eqz p2, :cond_1a

    .line 86
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzpa;->zzc(Ljava/lang/Object;I)V

    :cond_1a
    return p1

    .line 80
    :cond_1b
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attempt to read closed CacheDataSource."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzon;)J
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "ms"

    const-string v3, "Cache connection took "

    .line 19
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzbem;->isOpen:Z

    if-nez v4, :cond_15e

    const/4 v4, 0x1

    .line 21
    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzbem;->isOpen:Z

    .line 22
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzon;->uri:Landroid/net/Uri;

    iput-object v5, v1, Lcom/google/android/gms/internal/ads/zzbem;->uri:Landroid/net/Uri;

    .line 24
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzbem;->zzekf:Lcom/google/android/gms/internal/ads/zzpa;

    if-eqz v5, :cond_1a

    .line 25
    invoke-interface {v5, v1, v0}, Lcom/google/android/gms/internal/ads/zzpa;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzon;)V

    .line 26
    :cond_1a
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzon;->uri:Landroid/net/Uri;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzte;->zzd(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzte;

    move-result-object v5

    .line 27
    sget-object v6, Lcom/google/android/gms/internal/ads/zzabb;->zzctd:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v6

    .line 29
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-wide/16 v7, -0x1

    if-eqz v6, :cond_118

    if-eqz v5, :cond_136

    .line 31
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzon;->position:J

    iput-wide v9, v5, Lcom/google/android/gms/internal/ads/zzte;->zzbvk:J

    .line 32
    iget-boolean v6, v5, Lcom/google/android/gms/internal/ads/zzte;->zzbvj:Z

    if-eqz v6, :cond_4b

    .line 33
    sget-object v6, Lcom/google/android/gms/internal/ads/zzabb;->zzctf:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v6

    .line 35
    check-cast v6, Ljava/lang/Long;

    goto :goto_57

    .line 36
    :cond_4b
    sget-object v6, Lcom/google/android/gms/internal/ads/zzabb;->zzcte:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v6

    .line 38
    check-cast v6, Ljava/lang/Long;

    .line 39
    :goto_57
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 40
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v11

    .line 41
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzll()Lcom/google/android/gms/internal/ads/zztp;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbem;->zzvr:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/ads/zztp;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzte;)Ljava/util/concurrent/Future;

    move-result-object v6

    const/4 v13, 0x0

    const/16 v14, 0x2c

    .line 42
    :try_start_6f
    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v9, v10, v15}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/InputStream;

    iput-object v9, v1, Lcom/google/android/gms/internal/ads/zzbem;->zzekd:Ljava/io/InputStream;
    :try_end_79
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6f .. :try_end_79} :catch_cd
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6f .. :try_end_79} :catch_cd
    .catch Ljava/lang/InterruptedException; {:try_start_6f .. :try_end_79} :catch_9f
    .catchall {:try_start_6f .. :try_end_79} :catchall_9d

    .line 43
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v11

    .line 45
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbem;->zzekg:Lcom/google/android/gms/internal/ads/zzbep;

    invoke-interface {v0, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzbep;->zzb(ZJ)V

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    return-wide v7

    :catchall_9d
    move-exception v0

    goto :goto_f4

    .line 56
    :catch_9f
    :try_start_9f
    invoke-interface {v6, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 57
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V
    :try_end_a9
    .catchall {:try_start_9f .. :try_end_a9} :catchall_9d

    .line 58
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v11

    .line 60
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbem;->zzekg:Lcom/google/android/gms/internal/ads/zzbep;

    invoke-interface {v4, v13, v6, v7}, Lcom/google/android/gms/internal/ads/zzbep;->zzb(ZJ)V

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    goto :goto_136

    .line 49
    :catch_cd
    :try_start_cd
    invoke-interface {v6, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_d0
    .catchall {:try_start_cd .. :try_end_d0} :catchall_9d

    .line 50
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v11

    .line 52
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbem;->zzekg:Lcom/google/android/gms/internal/ads/zzbep;

    invoke-interface {v4, v13, v6, v7}, Lcom/google/android/gms/internal/ads/zzbep;->zzb(ZJ)V

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    goto :goto_136

    .line 63
    :goto_f4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v11

    .line 65
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbem;->zzekg:Lcom/google/android/gms/internal/ads/zzbep;

    invoke-interface {v6, v13, v4, v5}, Lcom/google/android/gms/internal/ads/zzbep;->zzb(ZJ)V

    .line 66
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    .line 67
    throw v0

    :cond_118
    const/4 v2, 0x0

    if-eqz v5, :cond_127

    .line 70
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzon;->position:J

    iput-wide v2, v5, Lcom/google/android/gms/internal/ads/zzte;->zzbvk:J

    .line 71
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkx()Lcom/google/android/gms/internal/ads/zzsw;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzsw;->zza(Lcom/google/android/gms/internal/ads/zzte;)Lcom/google/android/gms/internal/ads/zzsz;

    move-result-object v2

    :cond_127
    if-eqz v2, :cond_136

    .line 72
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzsz;->zzmw()Z

    move-result v3

    if-eqz v3, :cond_136

    .line 73
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzsz;->zzmx()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbem;->zzekd:Ljava/io/InputStream;

    return-wide v7

    :cond_136
    :goto_136
    if-eqz v5, :cond_157

    .line 76
    new-instance v2, Lcom/google/android/gms/internal/ads/zzon;

    iget-object v3, v5, Lcom/google/android/gms/internal/ads/zzte;->url:Ljava/lang/String;

    .line 77
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzon;->zzbic:[B

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzon;->zzbid:J

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzon;->position:J

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzon;->zzcp:J

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzon;->zzcn:Ljava/lang/String;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzon;->flags:I

    move-object v9, v2

    move-wide/from16 v16, v3

    move-object/from16 v18, v5

    move/from16 v19, v0

    invoke-direct/range {v9 .. v19}, Lcom/google/android/gms/internal/ads/zzon;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    move-object v0, v2

    .line 78
    :cond_157
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbem;->zzeke:Lcom/google/android/gms/internal/ads/zzom;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzom;->zza(Lcom/google/android/gms/internal/ads/zzon;)J

    move-result-wide v2

    return-wide v2

    .line 20
    :cond_15e
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Attempt to open an already open CacheDataSource."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
