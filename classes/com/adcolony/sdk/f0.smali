.class Lcom/adcolony/sdk/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private d:J

.field private e:I

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z


# direct methods
.method constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    .line 2
    iput v0, p0, Lcom/adcolony/sdk/f0;->a:I

    const/16 v0, 0x3a98

    .line 3
    iput v0, p0, Lcom/adcolony/sdk/f0;->b:I

    const/16 v0, 0x3e8

    .line 4
    iput v0, p0, Lcom/adcolony/sdk/f0;->c:I

    const-wide/16 v0, 0x7530

    .line 5
    iput-wide v0, p0, Lcom/adcolony/sdk/f0;->d:J

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/adcolony/sdk/f0;->n:Z

    .line 16
    iput-boolean v0, p0, Lcom/adcolony/sdk/f0;->o:Z

    return-void
.end method

.method private a(J)V
    .registers 3

    .line 14
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/f0;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/adcolony/sdk/f0;->s:Z

    return p1
.end method

.method private f()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/f0;->a(Z)V

    return-void
.end method

.method private g()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/f0;->b(Z)V

    return-void
.end method


# virtual methods
.method a()I
    .registers 2

    .line 16
    iget v0, p0, Lcom/adcolony/sdk/f0;->e:I

    return v0
.end method

.method a(I)V
    .registers 4

    if-gtz p1, :cond_5

    .line 15
    iget-wide v0, p0, Lcom/adcolony/sdk/f0;->d:J

    goto :goto_8

    :cond_5
    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    :goto_8
    iput-wide v0, p0, Lcom/adcolony/sdk/f0;->d:J

    return-void
.end method

.method a(Z)V
    .registers 8

    .line 2
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->n()Lcom/adcolony/sdk/y;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/adcolony/sdk/y;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 4
    monitor-enter v0

    .line 5
    :try_start_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adcolony/sdk/a0;

    .line 6
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "from_window_focus"

    .line 7
    invoke-static {v3, v4, p1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 8
    new-instance v4, Lcom/adcolony/sdk/x;
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_3d

    const-string v5, "SessionInfo.on_pause"

    :try_start_2a
    invoke-interface {v2}, Lcom/adcolony/sdk/a0;->d()I

    move-result v2

    invoke-direct {v4, v5, v2, v3}, Lcom/adcolony/sdk/x;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v4}, Lcom/adcolony/sdk/x;->d()V

    goto :goto_11

    .line 10
    :cond_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_2a .. :try_end_36} :catchall_3d

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/adcolony/sdk/f0;->o:Z

    .line 12
    invoke-static {}, Lcom/adcolony/sdk/a;->g()V

    return-void

    :catchall_3d
    move-exception p1

    .line 13
    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p1

    return-void
.end method

.method b()V
    .registers 2

    .line 16
    iget v0, p0, Lcom/adcolony/sdk/f0;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adcolony/sdk/f0;->e:I

    return-void
.end method

.method b(Z)V
    .registers 9

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->n()Lcom/adcolony/sdk/y;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/adcolony/sdk/y;->b()Ljava/util/ArrayList;

    move-result-object v1

    .line 6
    monitor-enter v1

    .line 7
    :try_start_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adcolony/sdk/a0;

    .line 8
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "from_window_focus"

    .line 9
    invoke-static {v4, v5, p1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 10
    new-instance v5, Lcom/adcolony/sdk/x;
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_41

    const-string v6, "SessionInfo.on_resume"

    :try_start_2a
    invoke-interface {v3}, Lcom/adcolony/sdk/a0;->d()I

    move-result v3

    invoke-direct {v5, v6, v3, v4}, Lcom/adcolony/sdk/x;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v5}, Lcom/adcolony/sdk/x;->d()V

    goto :goto_11

    .line 12
    :cond_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_2a .. :try_end_36} :catchall_41

    .line 13
    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->m()Lcom/adcolony/sdk/w;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adcolony/sdk/w;->c()V

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/adcolony/sdk/f0;->o:Z

    return-void

    :catchall_41
    move-exception p1

    .line 15
    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p1

    return-void
.end method

.method public c()V
    .registers 3

    .line 1
    new-instance v0, Lcom/adcolony/sdk/f0$a;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/f0$a;-><init>(Lcom/adcolony/sdk/f0;)V

    const-string v1, "SessionInfo.stopped"

    invoke-static {v1, v0}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    return-void
.end method

.method c(Z)V
    .registers 7

    .line 2
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    .line 3
    iget-boolean v1, p0, Lcom/adcolony/sdk/f0;->q:Z

    if-eqz v1, :cond_9

    return-void

    .line 7
    :cond_9
    iget-boolean v1, p0, Lcom/adcolony/sdk/f0;->r:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 8
    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/h;->c(Z)V

    .line 9
    iput-boolean v2, p0, Lcom/adcolony/sdk/f0;->r:Z

    .line 11
    :cond_13
    iput v2, p0, Lcom/adcolony/sdk/f0;->e:I

    const-wide/16 v3, 0x0

    .line 12
    iput-wide v3, p0, Lcom/adcolony/sdk/f0;->f:J

    .line 13
    iput-wide v3, p0, Lcom/adcolony/sdk/f0;->g:J

    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lcom/adcolony/sdk/f0;->q:Z

    .line 15
    iput-boolean v1, p0, Lcom/adcolony/sdk/f0;->n:Z

    .line 16
    iput-boolean v2, p0, Lcom/adcolony/sdk/f0;->s:Z

    .line 17
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    if-eqz p1, :cond_5e

    .line 19
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONObject;

    move-result-object p1

    .line 20
    invoke-static {}, Lcom/adcolony/sdk/k0;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-static {p1, v3, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 21
    new-instance v2, Lcom/adcolony/sdk/x;

    const-string v3, "SessionInfo.on_start"

    invoke-direct {v2, v3, v1, p1}, Lcom/adcolony/sdk/x;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v2}, Lcom/adcolony/sdk/x;->d()V

    .line 22
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adcolony/sdk/h;->n()Lcom/adcolony/sdk/y;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/adcolony/sdk/y;->c()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/adcolony/sdk/m0;

    if-eqz p1, :cond_5e

    .line 25
    invoke-virtual {p1}, Lcom/adcolony/sdk/m0;->w()V

    .line 30
    :cond_5e
    sget-object p1, Lcom/adcolony/sdk/AdColony;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result p1

    if-eqz p1, :cond_6c

    .line 31
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    sput-object p1, Lcom/adcolony/sdk/AdColony;->a:Ljava/util/concurrent/ExecutorService;

    .line 35
    :cond_6c
    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->m()Lcom/adcolony/sdk/w;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adcolony/sdk/w;->c()V

    return-void
.end method

.method d(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/adcolony/sdk/f0;->n:Z

    return-void
.end method

.method d()Z
    .registers 2

    .line 2
    iget-boolean v0, p0, Lcom/adcolony/sdk/f0;->n:Z

    return v0
.end method

.method e(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/adcolony/sdk/f0;->p:Z

    return-void
.end method

.method e()Z
    .registers 2

    .line 2
    iget-boolean v0, p0, Lcom/adcolony/sdk/f0;->q:Z

    return v0
.end method

.method f(Z)V
    .registers 2

    .line 2
    iput-boolean p1, p0, Lcom/adcolony/sdk/f0;->t:Z

    return-void
.end method

.method h()V
    .registers 6

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->m()Lcom/adcolony/sdk/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/w;->a()Lcom/adcolony/sdk/e0;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lcom/adcolony/sdk/f0;->q:Z

    .line 3
    iput-boolean v1, p0, Lcom/adcolony/sdk/f0;->n:Z

    if-eqz v0, :cond_16

    .line 7
    invoke-virtual {v0}, Lcom/adcolony/sdk/e0;->b()V

    .line 10
    :cond_16
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 11
    iget-wide v1, p0, Lcom/adcolony/sdk/f0;->f:J

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    const-string v3, "session_length"

    invoke-static {v0, v3, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;D)Z

    .line 12
    new-instance v1, Lcom/adcolony/sdk/x;

    const/4 v2, 0x1

    const-string v3, "SessionInfo.on_stop"

    invoke-direct {v1, v3, v2, v0}, Lcom/adcolony/sdk/x;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/x;->d()V

    .line 14
    invoke-static {}, Lcom/adcolony/sdk/a;->g()V

    .line 17
    sget-object v0, Lcom/adcolony/sdk/AdColony;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public run()V
    .registers 10

    .line 1
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adcolony/sdk/f0;->i:J

    .line 4
    invoke-static {}, Lcom/adcolony/sdk/a;->g()V

    .line 7
    iget-wide v0, p0, Lcom/adcolony/sdk/f0;->g:J

    iget-wide v2, p0, Lcom/adcolony/sdk/f0;->d:J

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-lez v5, :cond_54

    .line 58
    new-instance v0, Lcom/adcolony/sdk/u$a;

    invoke-direct {v0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v1, "AdColony session ending, releasing Context."

    .line 59
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    .line 60
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    .line 61
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/adcolony/sdk/h;->c(Z)V

    const/4 v0, 0x0

    .line 62
    invoke-static {v0}, Lcom/adcolony/sdk/a;->a(Landroid/content/Context;)V

    .line 63
    iput-boolean v4, p0, Lcom/adcolony/sdk/f0;->r:Z

    .line 64
    iput-boolean v4, p0, Lcom/adcolony/sdk/f0;->t:Z

    .line 65
    invoke-virtual {p0}, Lcom/adcolony/sdk/f0;->h()V

    .line 70
    new-instance v0, Lcom/adcolony/sdk/k0$b;

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/k0$b;-><init>(D)V

    .line 71
    :goto_3b
    iget-boolean v1, p0, Lcom/adcolony/sdk/f0;->s:Z

    if-nez v1, :cond_53

    invoke-virtual {v0}, Lcom/adcolony/sdk/k0$b;->a()Z

    move-result v1

    if-nez v1, :cond_53

    .line 72
    iget-boolean v1, p0, Lcom/adcolony/sdk/f0;->t:Z

    if-nez v1, :cond_4a

    goto :goto_53

    .line 75
    :cond_4a
    invoke-static {}, Lcom/adcolony/sdk/a;->g()V

    const-wide/16 v1, 0x64

    .line 76
    invoke-direct {p0, v1, v2}, Lcom/adcolony/sdk/f0;->a(J)V

    goto :goto_3b

    :cond_53
    :goto_53
    return-void

    .line 77
    :cond_54
    iget-boolean v0, p0, Lcom/adcolony/sdk/f0;->n:Z

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-nez v0, :cond_83

    .line 79
    iget-boolean v0, p0, Lcom/adcolony/sdk/f0;->p:Z

    if-eqz v0, :cond_68

    iget-boolean v0, p0, Lcom/adcolony/sdk/f0;->o:Z

    if-nez v0, :cond_68

    .line 80
    iput-boolean v1, p0, Lcom/adcolony/sdk/f0;->p:Z

    .line 81
    invoke-direct {p0}, Lcom/adcolony/sdk/f0;->f()V

    .line 83
    :cond_68
    iget-wide v0, p0, Lcom/adcolony/sdk/f0;->g:J

    iget-wide v5, p0, Lcom/adcolony/sdk/f0;->m:J

    cmp-long v7, v5, v2

    if-nez v7, :cond_72

    move-wide v5, v2

    goto :goto_79

    .line 84
    :cond_72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/adcolony/sdk/f0;->m:J

    sub-long/2addr v5, v7

    :goto_79
    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/adcolony/sdk/f0;->g:J

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adcolony/sdk/f0;->m:J

    goto :goto_94

    .line 88
    :cond_83
    iget-boolean v0, p0, Lcom/adcolony/sdk/f0;->p:Z

    if-eqz v0, :cond_90

    iget-boolean v0, p0, Lcom/adcolony/sdk/f0;->o:Z

    if-eqz v0, :cond_90

    .line 89
    iput-boolean v1, p0, Lcom/adcolony/sdk/f0;->p:Z

    .line 90
    invoke-direct {p0}, Lcom/adcolony/sdk/f0;->g()V

    .line 92
    :cond_90
    iput-wide v2, p0, Lcom/adcolony/sdk/f0;->g:J

    .line 93
    iput-wide v2, p0, Lcom/adcolony/sdk/f0;->m:J

    :goto_94
    const-wide/16 v0, 0x11

    .line 96
    iput-wide v0, p0, Lcom/adcolony/sdk/f0;->h:J

    .line 97
    invoke-direct {p0, v0, v1}, Lcom/adcolony/sdk/f0;->a(J)V

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/adcolony/sdk/f0;->i:J

    sub-long/2addr v0, v5

    iput-wide v0, p0, Lcom/adcolony/sdk/f0;->j:J

    cmp-long v5, v0, v2

    if-lez v5, :cond_b3

    const-wide/16 v2, 0x1770

    cmp-long v5, v0, v2

    if-gez v5, :cond_b3

    .line 100
    iget-wide v2, p0, Lcom/adcolony/sdk/f0;->f:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/adcolony/sdk/f0;->f:J

    .line 105
    :cond_b3
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 107
    iget-wide v5, p0, Lcom/adcolony/sdk/f0;->l:J

    sub-long v5, v1, v5

    const-wide/16 v7, 0x3a98

    cmp-long v3, v5, v7

    if-lez v3, :cond_c7

    .line 108
    iput-wide v1, p0, Lcom/adcolony/sdk/f0;->l:J

    .line 110
    :cond_c7
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-wide v5, p0, Lcom/adcolony/sdk/f0;->k:J

    sub-long v5, v1, v5

    const-wide/16 v7, 0x3e8

    cmp-long v3, v5, v7

    if-lez v3, :cond_0

    .line 111
    iput-wide v1, p0, Lcom/adcolony/sdk/f0;->k:J

    .line 112
    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->o()Lcom/adcolony/sdk/b0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/b0;->a()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/h;->b(Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONObject;

    move-result-object v1

    .line 116
    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->p()Ljava/lang/String;

    move-result-object v0

    const-string v2, "network_type"

    invoke-static {v1, v2, v0}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 117
    new-instance v0, Lcom/adcolony/sdk/x;

    const-string v2, "Network.on_status_change"

    invoke-direct {v0, v2, v4, v1}, Lcom/adcolony/sdk/x;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/x;->d()V

    goto/16 :goto_0
.end method
