.class public Lcom/chartboost/sdk/impl/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/chartboost/sdk/Networking/g;

.field private final c:Lcom/chartboost/sdk/Networking/h;

.field private final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/chartboost/sdk/Model/h;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/chartboost/sdk/Libraries/i;

.field private final f:Lcom/chartboost/sdk/Tracking/a;

.field private final g:Lcom/chartboost/sdk/Libraries/f;

.field h:I

.field private i:Lcom/chartboost/sdk/impl/m;

.field private final j:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/chartboost/sdk/impl/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/Networking/g;Lcom/chartboost/sdk/Networking/h;Ljava/util/concurrent/atomic/AtomicReference;Lcom/chartboost/sdk/Libraries/i;Lcom/chartboost/sdk/Tracking/a;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/chartboost/sdk/Libraries/f;",
            "Lcom/chartboost/sdk/Networking/g;",
            "Lcom/chartboost/sdk/Networking/h;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/chartboost/sdk/Model/h;",
            ">;",
            "Lcom/chartboost/sdk/Libraries/i;",
            "Lcom/chartboost/sdk/Tracking/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/chartboost/sdk/impl/n;->h:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/chartboost/sdk/impl/n;->i:Lcom/chartboost/sdk/impl/m;

    .line 14
    iput-object p1, p0, Lcom/chartboost/sdk/impl/n;->a:Ljava/util/concurrent/Executor;

    .line 15
    iput-object p2, p0, Lcom/chartboost/sdk/impl/n;->g:Lcom/chartboost/sdk/Libraries/f;

    .line 16
    iput-object p3, p0, Lcom/chartboost/sdk/impl/n;->b:Lcom/chartboost/sdk/Networking/g;

    .line 17
    iput-object p4, p0, Lcom/chartboost/sdk/impl/n;->c:Lcom/chartboost/sdk/Networking/h;

    .line 18
    iput-object p5, p0, Lcom/chartboost/sdk/impl/n;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 19
    iput-object p6, p0, Lcom/chartboost/sdk/impl/n;->e:Lcom/chartboost/sdk/Libraries/i;

    .line 20
    iput-object p7, p0, Lcom/chartboost/sdk/impl/n;->f:Lcom/chartboost/sdk/Tracking/a;

    .line 22
    new-instance p1, Ljava/util/PriorityQueue;

    invoke-direct {p1}, Ljava/util/PriorityQueue;-><init>()V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/n;->j:Ljava/util/PriorityQueue;

    return-void
.end method

.method private d()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/n;->i:Lcom/chartboost/sdk/impl/m;

    if-eqz v0, :cond_2a

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/n;->j:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/l;

    if-eqz v0, :cond_2a

    .line 3
    iget-object v1, p0, Lcom/chartboost/sdk/impl/n;->i:Lcom/chartboost/sdk/impl/m;

    iget-object v2, v1, Lcom/chartboost/sdk/impl/m;->l:Lcom/chartboost/sdk/impl/l;

    iget v2, v2, Lcom/chartboost/sdk/impl/l;->b:I

    iget v0, v0, Lcom/chartboost/sdk/impl/l;->b:I

    if-le v2, v0, :cond_2a

    .line 4
    invoke-virtual {v1}, Lcom/chartboost/sdk/Networking/c;->b()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/n;->j:Ljava/util/PriorityQueue;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/n;->i:Lcom/chartboost/sdk/impl/m;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/m;->l:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/chartboost/sdk/impl/n;->i:Lcom/chartboost/sdk/impl/m;

    .line 13
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/chartboost/sdk/impl/n;->i:Lcom/chartboost/sdk/impl/m;

    const-string v1, "Downloader"

    const/4 v2, 0x1

    if-nez v0, :cond_b5

    iget-object v0, p0, Lcom/chartboost/sdk/impl/n;->j:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/l;

    if-eqz v0, :cond_b5

    .line 15
    iget-object v3, v0, Lcom/chartboost/sdk/impl/l;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-gtz v3, :cond_44

    goto :goto_2a

    .line 19
    :cond_44
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/n;->g:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v4}, Lcom/chartboost/sdk/Libraries/f;->a()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v4

    iget-object v4, v4, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    iget-object v5, v0, Lcom/chartboost/sdk/impl/l;->e:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_84

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_84

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_84

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create directory "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Lcom/chartboost/sdk/impl/n;->a:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/l;->a(Ljava/util/concurrent/Executor;Z)V

    goto :goto_2a

    .line 28
    :cond_84
    new-instance v1, Ljava/io/File;

    iget-object v4, v0, Lcom/chartboost/sdk/impl/l;->c:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 30
    iget-object v3, p0, Lcom/chartboost/sdk/impl/n;->g:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v3, v1}, Lcom/chartboost/sdk/Libraries/f;->c(Ljava/io/File;)V

    .line 31
    iget-object v1, p0, Lcom/chartboost/sdk/impl/n;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/l;->a(Ljava/util/concurrent/Executor;Z)V

    goto :goto_2a

    .line 35
    :cond_9c
    new-instance v2, Lcom/chartboost/sdk/impl/m;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/n;->c:Lcom/chartboost/sdk/Networking/h;

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/chartboost/sdk/impl/m;-><init>(Lcom/chartboost/sdk/impl/n;Lcom/chartboost/sdk/Networking/h;Lcom/chartboost/sdk/impl/l;Ljava/io/File;)V

    iput-object v2, p0, Lcom/chartboost/sdk/impl/n;->i:Lcom/chartboost/sdk/impl/m;

    .line 36
    iget-object v1, p0, Lcom/chartboost/sdk/impl/n;->b:Lcom/chartboost/sdk/Networking/g;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Networking/g;->a(Lcom/chartboost/sdk/Networking/c;)V

    .line 37
    iget-object v1, p0, Lcom/chartboost/sdk/impl/n;->f:Lcom/chartboost/sdk/Tracking/a;

    iget-object v2, v0, Lcom/chartboost/sdk/impl/l;->d:Ljava/lang/String;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2a

    .line 40
    :cond_b5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/n;->i:Lcom/chartboost/sdk/impl/m;

    if-eqz v0, :cond_c6

    .line 41
    iget v0, p0, Lcom/chartboost/sdk/impl/n;->h:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_d1

    const-string v0, "Change state to DOWNLOADING"

    .line 42
    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iput v2, p0, Lcom/chartboost/sdk/impl/n;->h:I

    goto :goto_d1

    .line 45
    :cond_c6
    iget v0, p0, Lcom/chartboost/sdk/impl/n;->h:I

    if-eq v0, v2, :cond_d1

    const-string v0, "Change state to IDLE"

    .line 46
    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iput v2, p0, Lcom/chartboost/sdk/impl/n;->h:I

    :cond_d1
    :goto_d1
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 4

    monitor-enter p0

    .line 33
    :try_start_1
    iget v0, p0, Lcom/chartboost/sdk/impl/n;->h:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq v0, v1, :cond_34

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    goto :goto_3d

    .line 40
    :cond_b
    iget-object v0, p0, Lcom/chartboost/sdk/impl/n;->i:Lcom/chartboost/sdk/impl/m;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Networking/c;->b()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 41
    iget-object v0, p0, Lcom/chartboost/sdk/impl/n;->j:Ljava/util/PriorityQueue;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/n;->i:Lcom/chartboost/sdk/impl/m;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/m;->l:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/chartboost/sdk/impl/n;->i:Lcom/chartboost/sdk/impl/m;

    const-string v0, "Downloader"

    const-string v1, "Change state to PAUSED"

    .line 43
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iput v2, p0, Lcom/chartboost/sdk/impl/n;->h:I

    goto :goto_3d

    :cond_29
    const-string v0, "Downloader"

    const-string v1, "Change state to PAUSING"

    .line 46
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 47
    iput v0, p0, Lcom/chartboost/sdk/impl/n;->h:I

    goto :goto_3d

    :cond_34
    const-string v0, "Downloader"

    const-string v1, "Change state to PAUSED"

    .line 48
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iput v2, p0, Lcom/chartboost/sdk/impl/n;->h:I
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3f

    :goto_3d
    monitor-exit p0

    return-void

    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(ILjava/util/Map;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/chartboost/sdk/impl/j;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/Model/b;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Lcom/chartboost/sdk/impl/j;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1
    :try_start_3
    iget-object v0, v1, Lcom/chartboost/sdk/impl/n;->e:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v13

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 3
    new-instance v15, Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v2, p4

    invoke-direct {v15, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1d
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/Model/b;

    .line 5
    new-instance v12, Lcom/chartboost/sdk/impl/l;

    iget-object v3, v1, Lcom/chartboost/sdk/impl/n;->e:Lcom/chartboost/sdk/Libraries/i;

    iget-object v5, v2, Lcom/chartboost/sdk/Model/b;->b:Ljava/lang/String;

    iget-object v6, v2, Lcom/chartboost/sdk/Model/b;->c:Ljava/lang/String;

    iget-object v7, v2, Lcom/chartboost/sdk/Model/b;->a:Ljava/lang/String;

    move-object v2, v12

    move/from16 v4, p1

    move-object/from16 v8, p3

    move-object v9, v15

    move-wide v10, v13

    move-wide/from16 v17, v13

    move-object v13, v12

    move-object v12, v0

    invoke-direct/range {v2 .. v12}, Lcom/chartboost/sdk/impl/l;-><init>(Lcom/chartboost/sdk/Libraries/i;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;JLjava/util/concurrent/atomic/AtomicInteger;)V

    .line 13
    iget-object v2, v1, Lcom/chartboost/sdk/impl/n;->j:Ljava/util/PriorityQueue;

    invoke-virtual {v2, v13}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    move-wide/from16 v13, v17

    goto :goto_1d

    .line 15
    :cond_49
    iget v0, v1, Lcom/chartboost/sdk/impl/n;->h:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_51

    const/4 v2, 0x2

    if-ne v0, v2, :cond_54

    .line 16
    :cond_51
    invoke-direct/range {p0 .. p0}, Lcom/chartboost/sdk/impl/n;->d()V
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_56

    :cond_54
    monitor-exit p0

    return-void

    :catchall_56
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method declared-synchronized a(Lcom/chartboost/sdk/impl/m;Lcom/chartboost/sdk/Model/CBError;Lcom/chartboost/sdk/Networking/f;)V
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    monitor-enter p0

    .line 50
    :try_start_7
    iget v3, v1, Lcom/chartboost/sdk/impl/n;->h:I

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eq v3, v4, :cond_11

    if-eq v3, v5, :cond_11

    goto/16 :goto_d3

    .line 56
    :cond_11
    iget-object v3, v1, Lcom/chartboost/sdk/impl/n;->i:Lcom/chartboost/sdk/impl/m;
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_d5

    if-eq v0, v3, :cond_17

    monitor-exit p0

    return-void

    .line 59
    :cond_17
    :try_start_17
    iget-object v3, v0, Lcom/chartboost/sdk/impl/m;->l:Lcom/chartboost/sdk/impl/l;

    const/4 v4, 0x0

    .line 61
    iput-object v4, v1, Lcom/chartboost/sdk/impl/n;->i:Lcom/chartboost/sdk/impl/m;

    .line 63
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v6, v0, Lcom/chartboost/sdk/Networking/c;->f:J

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    .line 65
    iget-object v4, v3, Lcom/chartboost/sdk/impl/l;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    long-to-int v6, v11

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 67
    iget-object v4, v1, Lcom/chartboost/sdk/impl/n;->a:Ljava/util/concurrent/Executor;

    if-nez p2, :cond_30

    const/4 v6, 0x1

    goto :goto_31

    :cond_30
    const/4 v6, 0x0

    :goto_31
    invoke-virtual {v3, v4, v6}, Lcom/chartboost/sdk/impl/l;->a(Ljava/util/concurrent/Executor;Z)V

    .line 69
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v6, v0, Lcom/chartboost/sdk/Networking/c;->g:J

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    .line 70
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v6, v0, Lcom/chartboost/sdk/Networking/c;->h:J

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v15

    if-nez p2, :cond_69

    .line 73
    iget-object v8, v1, Lcom/chartboost/sdk/impl/n;->f:Lcom/chartboost/sdk/Tracking/a;

    iget-object v9, v3, Lcom/chartboost/sdk/impl/l;->d:Ljava/lang/String;

    move-wide v10, v11

    move-wide v12, v13

    move-wide v14, v15

    invoke-virtual/range {v8 .. v15}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;JJJ)V

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloaded "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/chartboost/sdk/impl/l;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Downloader"

    invoke-static {v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c1

    .line 81
    :cond_69
    invoke-virtual/range {p2 .. p2}, Lcom/chartboost/sdk/Model/CBError;->b()Ljava/lang/String;

    move-result-object v0

    .line 82
    iget-object v8, v1, Lcom/chartboost/sdk/impl/n;->f:Lcom/chartboost/sdk/Tracking/a;

    iget-object v9, v3, Lcom/chartboost/sdk/impl/l;->d:Ljava/lang/String;

    move-object v10, v0

    invoke-virtual/range {v8 .. v16}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;JJJ)V

    const-string v4, "Downloader"

    .line 89
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to download "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/l;->d:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_9c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Status code="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/chartboost/sdk/Networking/f;->a:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_9e

    :cond_9c
    const-string v2, ""

    :goto_9e
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_b5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Error message="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b7

    :cond_b5
    const-string v0, ""

    :goto_b7
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :goto_c1
    iget v0, v1, Lcom/chartboost/sdk/impl/n;->h:I

    if-ne v0, v5, :cond_d0

    const-string v0, "Downloader"

    const-string v2, "Change state to PAUSED"

    .line 95
    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 96
    iput v0, v1, Lcom/chartboost/sdk/impl/n;->h:I

    goto :goto_d3

    .line 98
    :cond_d0
    invoke-direct/range {p0 .. p0}, Lcom/chartboost/sdk/impl/n;->d()V
    :try_end_d3
    .catchall {:try_start_17 .. :try_end_d3} :catchall_d5

    :goto_d3
    monitor-exit p0

    return-void

    :catchall_d5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .registers 4

    monitor-enter p0

    const/16 v0, -0x2710

    .line 17
    :try_start_3
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 19
    iget v0, p0, Lcom/chartboost/sdk/impl/n;->h:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    goto :goto_27

    .line 27
    :cond_c
    iget-object v0, p0, Lcom/chartboost/sdk/impl/n;->i:Lcom/chartboost/sdk/impl/m;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/m;->l:Lcom/chartboost/sdk/impl/l;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    if-ne v0, p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    if-eqz p1, :cond_27

    .line 30
    iget-object p1, p0, Lcom/chartboost/sdk/impl/n;->i:Lcom/chartboost/sdk/impl/m;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Networking/c;->b()Z

    move-result p1

    if-eqz p1, :cond_27

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/chartboost/sdk/impl/n;->i:Lcom/chartboost/sdk/impl/m;

    .line 32
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/n;->d()V
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_29

    :cond_27
    :goto_27
    monitor-exit p0

    return-void

    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()V
    .registers 25

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1
    :try_start_3
    iget v0, v1, Lcom/chartboost/sdk/impl/n;->h:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_19e

    const/4 v2, 0x1

    if-eq v0, v2, :cond_a

    monitor-exit p0

    return-void

    :cond_a
    :try_start_a
    const-string v0, "Downloader"

    const-string v3, "########### Trimming the disk cache"

    .line 6
    invoke-static {v0, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, v1, Lcom/chartboost/sdk/impl/n;->g:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->a()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_65

    .line 12
    array-length v6, v4

    if-lez v6, :cond_65

    .line 13
    array-length v6, v4

    const/4 v7, 0x0

    :goto_29
    if-ge v7, v6, :cond_65

    aget-object v8, v4, v7

    const-string v9, "requests"

    .line 14
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_62

    const-string v9, "track"

    .line 15
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_62

    const-string v9, "session"

    .line 16
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_62

    const-string v9, "videoCompletionEvents"

    .line 17
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_62

    const-string v9, "."

    .line 18
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_56

    goto :goto_62

    .line 22
    :cond_56
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v9, v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Ljava/io/File;Z)Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_62
    :goto_62
    add-int/lit8 v7, v7, 0x1

    goto :goto_29

    .line 26
    :cond_65
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Ljava/io/File;

    .line 27
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    if-le v0, v2, :cond_78

    .line 31
    new-instance v3, Lcom/chartboost/sdk/impl/n$a;

    invoke-direct {v3, v1}, Lcom/chartboost/sdk/impl/n$a;-><init>(Lcom/chartboost/sdk/impl/n;)V

    invoke-static {v4, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_78
    if-lez v0, :cond_188

    .line 39
    iget-object v3, v1, Lcom/chartboost/sdk/impl/n;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chartboost/sdk/Model/h;

    .line 40
    iget v6, v3, Lcom/chartboost/sdk/Model/h;->s:I

    int-to-long v6, v6

    .line 41
    iget-object v8, v1, Lcom/chartboost/sdk/impl/n;->g:Lcom/chartboost/sdk/Libraries/f;

    iget-object v9, v1, Lcom/chartboost/sdk/impl/n;->g:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v9}, Lcom/chartboost/sdk/Libraries/f;->a()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v9

    iget-object v9, v9, Lcom/chartboost/sdk/Libraries/g;->d:Ljava/io/File;

    invoke-virtual {v8, v9}, Lcom/chartboost/sdk/Libraries/f;->a(Ljava/io/File;)J

    move-result-wide v8

    .line 42
    iget-object v10, v1, Lcom/chartboost/sdk/impl/n;->e:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v10}, Lcom/chartboost/sdk/Libraries/i;->a()J

    move-result-wide v10

    .line 43
    iget-object v12, v3, Lcom/chartboost/sdk/Model/h;->d:Ljava/util/List;
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_9b} :catch_194
    .catchall {:try_start_a .. :try_end_9b} :catchall_19e

    :try_start_9b
    const-string v13, "Downloader"
    :try_end_9d
    .catchall {:try_start_9b .. :try_end_9d} :catchall_19e

    .line 44
    :try_start_9d
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Total local file count:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_b1} :catch_194
    .catchall {:try_start_9d .. :try_end_b1} :catchall_19e

    :try_start_b1
    const-string v13, "Downloader"
    :try_end_b3
    .catchall {:try_start_b1 .. :try_end_b3} :catchall_19e

    .line 45
    :try_start_b3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Video Folder Size in bytes :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_c7} :catch_194
    .catchall {:try_start_b3 .. :try_end_c7} :catchall_19e

    :try_start_c7
    const-string v13, "Downloader"
    :try_end_c9
    .catchall {:try_start_c7 .. :try_end_c9} :catchall_19e

    .line 46
    :try_start_c9
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Max Bytes allowed:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v13, v8

    const/4 v8, 0x0

    :goto_df
    if-ge v8, v0, :cond_188

    .line 47
    aget-object v9, v4, v8

    .line 48
    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v16

    move-wide/from16 v18, v6

    sub-long v5, v10, v16

    invoke-virtual {v15, v5, v6}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v5

    .line 49
    iget v7, v3, Lcom/chartboost/sdk/Model/h;->u:I

    move-object/from16 v16, v3

    int-to-long v2, v7

    cmp-long v7, v5, v2

    if-ltz v7, :cond_fc

    const/4 v2, 0x1

    goto :goto_fd

    :cond_fc
    const/4 v2, 0x0

    .line 50
    :goto_fd
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, ".tmp"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    .line 51
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 52
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/videos"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    cmp-long v7, v13, v18

    if-lez v7, :cond_11d

    if-eqz v6, :cond_11d

    const/4 v7, 0x1

    goto :goto_11e

    :cond_11d
    const/4 v7, 0x0

    .line 55
    :goto_11e
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v17, v20, v22

    if-eqz v17, :cond_13b

    if-nez v3, :cond_13b

    if-nez v2, :cond_13b

    .line 58
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13b

    if-eqz v7, :cond_139

    goto :goto_13b

    :cond_139
    const/4 v2, 0x0

    goto :goto_13c

    :cond_13b
    :goto_13b
    const/4 v2, 0x1

    :goto_13c
    if-eqz v2, :cond_17f

    if-eqz v6, :cond_145

    .line 62
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v2
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_144} :catch_194
    .catchall {:try_start_c9 .. :try_end_144} :catchall_19e

    sub-long/2addr v13, v2

    :cond_145
    :try_start_145
    const-string v2, "Downloader"
    :try_end_147
    .catchall {:try_start_145 .. :try_end_147} :catchall_19e

    .line 63
    :try_start_147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting file at path:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v2
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_163} :catch_194
    .catchall {:try_start_147 .. :try_end_163} :catchall_19e

    if-nez v2, :cond_17f

    :try_start_165
    const-string v2, "Downloader"
    :try_end_167
    .catchall {:try_start_165 .. :try_end_167} :catchall_19e

    .line 65
    :try_start_167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to delete "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17f
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, v16

    move-wide/from16 v6, v18

    const/4 v2, 0x1

    goto/16 :goto_df

    .line 71
    :cond_188
    iget-object v0, v1, Lcom/chartboost/sdk/impl/n;->g:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 72
    iget-object v2, v1, Lcom/chartboost/sdk/impl/n;->f:Lcom/chartboost/sdk/Tracking/a;

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Lorg/json/JSONObject;)V
    :try_end_193
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_193} :catch_194
    .catchall {:try_start_167 .. :try_end_193} :catchall_19e

    goto :goto_19c

    :catch_194
    move-exception v0

    .line 74
    :try_start_195
    const-class v2, Lcom/chartboost/sdk/impl/n;

    const-string v3, "reduceCacheSize"

    invoke-static {v2, v3, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_19c
    .catchall {:try_start_195 .. :try_end_19c} :catchall_19e

    :goto_19c
    monitor-exit p0

    return-void

    :catchall_19e
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method public declared-synchronized c()V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget v0, p0, Lcom/chartboost/sdk/impl/n;->h:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_18

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    goto :goto_22

    :cond_a
    const-string v0, "Downloader"

    const-string v1, "Change state to IDLE"

    .line 14
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 15
    iput v0, p0, Lcom/chartboost/sdk/impl/n;->h:I

    .line 16
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/n;->d()V

    goto :goto_22

    :cond_18
    const-string v0, "Downloader"

    const-string v1, "Change state to DOWNLOADING"

    .line 17
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 18
    iput v0, p0, Lcom/chartboost/sdk/impl/n;->h:I
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    :goto_22
    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method
