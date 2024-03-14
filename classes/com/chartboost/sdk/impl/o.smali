.class public Lcom/chartboost/sdk/impl/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/p0$a;


# instance fields
.field public a:Lcom/chartboost/sdk/impl/n;

.field private final b:Lcom/chartboost/sdk/Libraries/f;

.field private final c:Lcom/chartboost/sdk/Networking/g;

.field private final d:Lcom/chartboost/sdk/Model/g;

.field private final e:Lcom/chartboost/sdk/Tracking/a;

.field private final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/chartboost/sdk/Model/h;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/chartboost/sdk/impl/u0;

.field private h:I

.field private i:I

.field private j:J

.field private k:Lcom/chartboost/sdk/impl/p0;

.field private l:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/n;Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/Networking/g;Lcom/chartboost/sdk/Model/g;Lcom/chartboost/sdk/Tracking/a;Ljava/util/concurrent/atomic/AtomicReference;Lcom/chartboost/sdk/impl/u0;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/n;",
            "Lcom/chartboost/sdk/Libraries/f;",
            "Lcom/chartboost/sdk/Networking/g;",
            "Lcom/chartboost/sdk/Model/g;",
            "Lcom/chartboost/sdk/Tracking/a;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/chartboost/sdk/Model/h;",
            ">;",
            "Lcom/chartboost/sdk/impl/u0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/chartboost/sdk/impl/o;->h:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/chartboost/sdk/impl/o;->i:I

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/chartboost/sdk/impl/o;->j:J

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/chartboost/sdk/impl/o;->k:Lcom/chartboost/sdk/impl/p0;

    .line 7
    iput-object v0, p0, Lcom/chartboost/sdk/impl/o;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 23
    iput-object p1, p0, Lcom/chartboost/sdk/impl/o;->a:Lcom/chartboost/sdk/impl/n;

    .line 24
    iput-object p2, p0, Lcom/chartboost/sdk/impl/o;->b:Lcom/chartboost/sdk/Libraries/f;

    .line 25
    iput-object p3, p0, Lcom/chartboost/sdk/impl/o;->c:Lcom/chartboost/sdk/Networking/g;

    .line 26
    iput-object p4, p0, Lcom/chartboost/sdk/impl/o;->d:Lcom/chartboost/sdk/Model/g;

    .line 27
    iput-object p5, p0, Lcom/chartboost/sdk/impl/o;->e:Lcom/chartboost/sdk/Tracking/a;

    .line 28
    iput-object p6, p0, Lcom/chartboost/sdk/impl/o;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 29
    iput-object p7, p0, Lcom/chartboost/sdk/impl/o;->g:Lcom/chartboost/sdk/impl/u0;

    return-void
.end method

.method private a(Lcom/chartboost/sdk/Model/h;)V
    .registers 6

    .line 1
    iget-boolean v0, p1, Lcom/chartboost/sdk/Model/h;->w:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_c

    .line 2
    iget-boolean p1, p1, Lcom/chartboost/sdk/Model/h;->e:Z

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    .line 4
    :goto_d
    iget v3, p0, Lcom/chartboost/sdk/impl/o;->i:I

    if-ne v3, v2, :cond_13

    if-eqz p1, :cond_1a

    :cond_13
    iget p1, p0, Lcom/chartboost/sdk/impl/o;->i:I

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1c

    if-nez v0, :cond_1c

    :cond_1a
    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    if-eqz p1, :cond_3c

    const-string p1, "Prefetcher"

    const-string v0, "Change state to IDLE"

    .line 9
    invoke-static {p1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iput v2, p0, Lcom/chartboost/sdk/impl/o;->h:I

    .line 11
    iput v1, p0, Lcom/chartboost/sdk/impl/o;->i:I

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lcom/chartboost/sdk/impl/o;->j:J

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/chartboost/sdk/impl/o;->k:Lcom/chartboost/sdk/impl/p0;

    .line 14
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    iput-object p1, p0, Lcom/chartboost/sdk/impl/o;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_3c

    .line 17
    iget-object p1, p0, Lcom/chartboost/sdk/impl/o;->a:Lcom/chartboost/sdk/impl/n;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/impl/n;->a(Ljava/util/concurrent/atomic/AtomicInteger;)V

    :cond_3c
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 5

    monitor-enter p0

    .line 18
    :try_start_1
    iget v0, p0, Lcom/chartboost/sdk/impl/o;->h:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne v0, v1, :cond_14

    const-string v0, "Prefetcher"

    const-string v1, "Change state to COOLDOWN"

    .line 19
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iput v3, p0, Lcom/chartboost/sdk/impl/o;->h:I

    .line 21
    iput-object v2, p0, Lcom/chartboost/sdk/impl/o;->k:Lcom/chartboost/sdk/impl/p0;

    goto :goto_2b

    :cond_14
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2b

    const-string v0, "Prefetcher"

    const-string v1, "Change state to COOLDOWN"

    .line 23
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iput v3, p0, Lcom/chartboost/sdk/impl/o;->h:I

    .line 25
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    iput-object v2, p0, Lcom/chartboost/sdk/impl/o;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_2b

    .line 28
    iget-object v1, p0, Lcom/chartboost/sdk/impl/o;->a:Lcom/chartboost/sdk/impl/n;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/n;->a(Ljava/util/concurrent/atomic/AtomicInteger;)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    :cond_2b
    :goto_2b
    monitor-exit p0

    return-void

    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/chartboost/sdk/impl/p0;Lcom/chartboost/sdk/Model/CBError;)V
    .registers 4

    monitor-enter p0

    .line 58
    :try_start_1
    iget p2, p0, Lcom/chartboost/sdk/impl/o;->h:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1d

    const/4 v0, 0x2

    if-eq p2, v0, :cond_8

    monitor-exit p0

    return-void

    .line 62
    :cond_8
    :try_start_8
    iget-object p2, p0, Lcom/chartboost/sdk/impl/o;->k:Lcom/chartboost/sdk/impl/p0;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_1d

    if-eq p1, p2, :cond_e

    monitor-exit p0

    return-void

    :cond_e
    const/4 p1, 0x0

    .line 66
    :try_start_f
    iput-object p1, p0, Lcom/chartboost/sdk/impl/o;->k:Lcom/chartboost/sdk/impl/p0;

    const-string p1, "Prefetcher"

    const-string p2, "Change state to COOLDOWN"

    .line 67
    invoke-static {p1, p2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 68
    iput p1, p0, Lcom/chartboost/sdk/impl/o;->h:I
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/chartboost/sdk/impl/p0;Lorg/json/JSONObject;)V
    .registers 8

    monitor-enter p0

    .line 29
    :try_start_1
    iget v0, p0, Lcom/chartboost/sdk/impl/o;->h:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3} :catch_67
    .catchall {:try_start_1 .. :try_end_3} :catchall_65

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    monitor-exit p0

    return-void

    .line 33
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o;->k:Lcom/chartboost/sdk/impl/p0;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_a} :catch_67
    .catchall {:try_start_8 .. :try_end_a} :catchall_65

    if-eq p1, v0, :cond_e

    monitor-exit p0

    return-void

    :cond_e
    :try_start_e
    const-string p1, "Prefetcher"

    const-string v0, "Change state to DOWNLOAD_ASSETS"

    .line 37
    invoke-static {p1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 38
    iput p1, p0, Lcom/chartboost/sdk/impl/o;->h:I

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/chartboost/sdk/impl/o;->k:Lcom/chartboost/sdk/impl/p0;

    .line 40
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v2, p0, Lcom/chartboost/sdk/impl/o;->l:Ljava/util/concurrent/atomic/AtomicInteger;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_22} :catch_67
    .catchall {:try_start_e .. :try_end_22} :catchall_65

    if-eqz p2, :cond_6f

    :try_start_24
    const-string v2, "Prefetcher"
    :try_end_26
    .catchall {:try_start_24 .. :try_end_26} :catchall_65

    .line 43
    :try_start_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got Asset list for Prefetch from server :)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget v2, p0, Lcom/chartboost/sdk/impl/o;->i:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4b

    .line 45
    invoke-static {p2}, Lcom/chartboost/sdk/Model/b;->b(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p2

    .line 46
    iget-object v1, p0, Lcom/chartboost/sdk/impl/o;->a:Lcom/chartboost/sdk/impl/n;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/o;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p1, p2, v2, v0}, Lcom/chartboost/sdk/impl/n;->a(ILjava/util/Map;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/chartboost/sdk/impl/j;)V

    goto :goto_6f

    .line 47
    :cond_4b
    iget v2, p0, Lcom/chartboost/sdk/impl/o;->i:I

    if-ne v2, v1, :cond_6f

    .line 48
    iget-object v1, p0, Lcom/chartboost/sdk/impl/o;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/Model/h;

    iget v1, v1, Lcom/chartboost/sdk/Model/h;->t:I

    invoke-static {p2, v1}, Lcom/chartboost/sdk/Model/b;->a(Lorg/json/JSONObject;I)Ljava/util/Map;

    move-result-object p2

    .line 50
    iget-object v1, p0, Lcom/chartboost/sdk/impl/o;->a:Lcom/chartboost/sdk/impl/n;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/o;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p1, p2, v2, v0}, Lcom/chartboost/sdk/impl/n;->a(ILjava/util/Map;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/chartboost/sdk/impl/j;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_64} :catch_67
    .catchall {:try_start_26 .. :try_end_64} :catchall_65

    goto :goto_6f

    :catchall_65
    move-exception p1

    goto :goto_71

    :catch_67
    move-exception p1

    .line 57
    :try_start_68
    const-class p2, Lcom/chartboost/sdk/impl/o;

    const-string v0, "onSuccess"

    invoke-static {p2, v0, p1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_65

    :cond_6f
    :goto_6f
    monitor-exit p0

    return-void

    :goto_71
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()V
    .registers 16

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x2

    :try_start_4
    const-string v3, "Chartboost SDK"

    const-string v4, "Sdk Version = 8.1.0, Commit: 6fc21cc6f0ae7b9742b4577672d558b51a909e27"

    .line 1
    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v3, p0, Lcom/chartboost/sdk/impl/o;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chartboost/sdk/Model/h;

    .line 5
    invoke-direct {p0, v3}, Lcom/chartboost/sdk/impl/o;->a(Lcom/chartboost/sdk/Model/h;)V

    .line 7
    iget-boolean v4, v3, Lcom/chartboost/sdk/Model/h;->c:Z

    if-nez v4, :cond_fd

    iget-boolean v4, v3, Lcom/chartboost/sdk/Model/h;->b:Z

    if-nez v4, :cond_fd

    sget-boolean v4, Lcom/chartboost/sdk/j;->q:Z

    if-nez v4, :cond_24

    goto/16 :goto_fd

    .line 18
    :cond_24
    iget v4, p0, Lcom/chartboost/sdk/impl/o;->h:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3e

    .line 19
    iget-object v4, p0, Lcom/chartboost/sdk/impl/o;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2f} :catch_104
    .catchall {:try_start_4 .. :try_end_2f} :catchall_102

    if-lez v4, :cond_33

    monitor-exit p0

    return-void

    :cond_33
    :try_start_33
    const-string v4, "Prefetcher"

    const-string v5, "Change state to COOLDOWN"

    .line 22
    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iput v1, p0, Lcom/chartboost/sdk/impl/o;->h:I

    .line 24
    iput-object v0, p0, Lcom/chartboost/sdk/impl/o;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    :cond_3e
    iget v4, p0, Lcom/chartboost/sdk/impl/o;->h:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v1, :cond_67

    .line 28
    iget-wide v7, p0, Lcom/chartboost/sdk/impl/o;->j:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-lez v4, :cond_5a

    const-string v3, "Prefetcher"

    const-string v4, "Prefetch session is still active. Won\'t be making any new prefetch until the prefetch session expires"

    .line 30
    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_58} :catch_104
    .catchall {:try_start_33 .. :try_end_58} :catchall_102

    monitor-exit p0

    return-void

    :cond_5a
    :try_start_5a
    const-string v4, "Prefetcher"

    const-string v7, "Change state to IDLE"

    .line 33
    invoke-static {v4, v7}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iput v6, p0, Lcom/chartboost/sdk/impl/o;->h:I

    .line 35
    iput v5, p0, Lcom/chartboost/sdk/impl/o;->i:I

    .line 36
    iput-wide v9, p0, Lcom/chartboost/sdk/impl/o;->j:J

    .line 39
    :cond_67
    iget v4, p0, Lcom/chartboost/sdk/impl/o;->h:I
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_69} :catch_104
    .catchall {:try_start_5a .. :try_end_69} :catchall_102

    if-eq v4, v6, :cond_6d

    monitor-exit p0

    return-void

    .line 42
    :cond_6d
    :try_start_6d
    iget-boolean v4, v3, Lcom/chartboost/sdk/Model/h;->w:Z

    if-eqz v4, :cond_ac

    .line 43
    new-instance v4, Lcom/chartboost/sdk/impl/q0;

    iget-object v8, v3, Lcom/chartboost/sdk/Model/h;->D:Ljava/lang/String;

    iget-object v9, p0, Lcom/chartboost/sdk/impl/o;->d:Lcom/chartboost/sdk/Model/g;

    iget-object v10, p0, Lcom/chartboost/sdk/impl/o;->e:Lcom/chartboost/sdk/Tracking/a;

    const/4 v11, 0x2

    iget-object v13, p0, Lcom/chartboost/sdk/impl/o;->g:Lcom/chartboost/sdk/impl/u0;

    move-object v7, v4

    move-object v12, p0

    invoke-direct/range {v7 .. v13}, Lcom/chartboost/sdk/impl/q0;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/Model/g;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/p0$a;Lcom/chartboost/sdk/impl/u0;)V

    .line 50
    iget-object v7, p0, Lcom/chartboost/sdk/impl/o;->b:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v7}, Lcom/chartboost/sdk/Libraries/f;->d()Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "cache_assets"

    .line 51
    invoke-virtual {v4, v8, v7, v5}, Lcom/chartboost/sdk/impl/q0;->a(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 52
    iput-boolean v6, v4, Lcom/chartboost/sdk/impl/p0;->m:Z

    const-string v5, "Prefetcher"

    const-string v6, "Change state to AWAIT_PREFETCH_RESPONSE"

    .line 54
    invoke-static {v5, v6}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iput v2, p0, Lcom/chartboost/sdk/impl/o;->h:I

    .line 56
    iput v2, p0, Lcom/chartboost/sdk/impl/o;->i:I

    .line 57
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget v3, v3, Lcom/chartboost/sdk/Model/h;->A:I

    int-to-long v8, v3

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/chartboost/sdk/impl/o;->j:J

    .line 58
    iput-object v4, p0, Lcom/chartboost/sdk/impl/o;->k:Lcom/chartboost/sdk/impl/p0;

    goto :goto_ec

    .line 59
    :cond_ac
    iget-boolean v4, v3, Lcom/chartboost/sdk/Model/h;->e:Z

    if-eqz v4, :cond_f4

    .line 61
    new-instance v4, Lcom/chartboost/sdk/impl/p0;
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_b2} :catch_104
    .catchall {:try_start_6d .. :try_end_b2} :catchall_102

    :try_start_b2
    const-string v8, "https://live.chartboost.com"

    const-string v9, "/api/video-prefetch"
    :try_end_b6
    .catchall {:try_start_b2 .. :try_end_b6} :catchall_102

    :try_start_b6
    iget-object v10, p0, Lcom/chartboost/sdk/impl/o;->d:Lcom/chartboost/sdk/Model/g;

    iget-object v11, p0, Lcom/chartboost/sdk/impl/o;->e:Lcom/chartboost/sdk/Tracking/a;

    const/4 v12, 0x2

    iget-object v14, p0, Lcom/chartboost/sdk/impl/o;->g:Lcom/chartboost/sdk/impl/u0;

    move-object v7, v4

    move-object v13, p0

    invoke-direct/range {v7 .. v14}, Lcom/chartboost/sdk/impl/p0;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Model/g;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/p0$a;Lcom/chartboost/sdk/impl/u0;)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_c2} :catch_104
    .catchall {:try_start_b6 .. :try_end_c2} :catchall_102

    :try_start_c2
    const-string v5, "local-videos"
    :try_end_c4
    .catchall {:try_start_c2 .. :try_end_c4} :catchall_102

    .line 67
    :try_start_c4
    iget-object v7, p0, Lcom/chartboost/sdk/impl/o;->b:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v7}, Lcom/chartboost/sdk/Libraries/f;->c()Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    iput-boolean v6, v4, Lcom/chartboost/sdk/impl/p0;->m:Z

    const-string v5, "Prefetcher"

    const-string v7, "Change state to AWAIT_PREFETCH_RESPONSE"

    .line 70
    invoke-static {v5, v7}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iput v2, p0, Lcom/chartboost/sdk/impl/o;->h:I

    .line 72
    iput v6, p0, Lcom/chartboost/sdk/impl/o;->i:I

    .line 73
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget v3, v3, Lcom/chartboost/sdk/Model/h;->i:I

    int-to-long v8, v3

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/chartboost/sdk/impl/o;->j:J

    .line 74
    iput-object v4, p0, Lcom/chartboost/sdk/impl/o;->k:Lcom/chartboost/sdk/impl/p0;

    .line 80
    :goto_ec
    iget-object v3, p0, Lcom/chartboost/sdk/impl/o;->c:Lcom/chartboost/sdk/Networking/g;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/o;->k:Lcom/chartboost/sdk/impl/p0;

    invoke-virtual {v3, v4}, Lcom/chartboost/sdk/Networking/g;->a(Lcom/chartboost/sdk/Networking/c;)V

    goto :goto_11b

    :cond_f4
    const-string v3, "Prefetcher"

    const-string v4, "Did not prefetch because neither native nor webview are enabled."

    .line 81
    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_fb} :catch_104
    .catchall {:try_start_c4 .. :try_end_fb} :catchall_102

    monitor-exit p0

    return-void

    .line 82
    :cond_fd
    :goto_fd
    :try_start_fd
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/o;->a()V
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_100} :catch_104
    .catchall {:try_start_fd .. :try_end_100} :catchall_102

    monitor-exit p0

    return-void

    :catchall_102
    move-exception v0

    goto :goto_11d

    :catch_104
    move-exception v3

    .line 157
    :try_start_105
    iget v4, p0, Lcom/chartboost/sdk/impl/o;->h:I

    if-ne v4, v2, :cond_114

    const-string v2, "Prefetcher"

    const-string v4, "Change state to COOLDOWN"

    .line 158
    invoke-static {v2, v4}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iput v1, p0, Lcom/chartboost/sdk/impl/o;->h:I

    .line 160
    iput-object v0, p0, Lcom/chartboost/sdk/impl/o;->k:Lcom/chartboost/sdk/impl/p0;

    .line 162
    :cond_114
    const-class v0, Lcom/chartboost/sdk/impl/o;

    const-string v1, "prefetch"

    invoke-static {v0, v1, v3}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_11b
    .catchall {:try_start_105 .. :try_end_11b} :catchall_102

    :goto_11b
    monitor-exit p0

    return-void

    :goto_11d
    monitor-exit p0

    throw v0
.end method
