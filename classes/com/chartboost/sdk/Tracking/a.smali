.class public Lcom/chartboost/sdk/Tracking/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/Libraries/b;


# static fields
.field private static f:Lcom/chartboost/sdk/Tracking/a;

.field private static final g:Ljava/lang/Long;


# instance fields
.field private final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/chartboost/sdk/Model/h;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Tracking/a;->g:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/chartboost/sdk/Model/h;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/chartboost/sdk/Tracking/a;->d:Z

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/chartboost/sdk/Tracking/a;->g:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:J

    .line 10
    sput-object p0, Lcom/chartboost/sdk/Tracking/a;->f:Lcom/chartboost/sdk/Tracking/a;

    .line 11
    iput-object p1, p0, Lcom/chartboost/sdk/Tracking/a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    .line 69
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    sget-object v0, Lcom/chartboost/sdk/Tracking/a;->f:Lcom/chartboost/sdk/Tracking/a;

    if-eqz v0, :cond_a

    .line 75
    invoke-direct {v0, p0, p1, p2}, Lcom/chartboost/sdk/Tracking/a;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_a
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 10

    .line 1
    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->e()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "session"

    move-object v1, p0

    move-object v3, p1

    .line 2
    invoke-direct/range {v1 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_11
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 16

    .line 78
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method private declared-synchronized b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 18

    move-object v10, p0

    monitor-enter p0

    .line 10
    :try_start_2
    iget-object v0, v10, Lcom/chartboost/sdk/Tracking/a;->c:Ljava/util/concurrent/atomic/AtomicReference;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_64

    if-nez v0, :cond_8

    monitor-exit p0

    return-void

    .line 11
    :cond_8
    :try_start_8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/h;

    if-eqz v0, :cond_62

    .line 12
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/h;->k:Z

    if-eqz v1, :cond_62

    iget-boolean v1, v10, Lcom/chartboost/sdk/Tracking/a;->d:Z

    if-nez v1, :cond_62

    const/4 v1, 0x1

    .line 13
    iput-boolean v1, v10, Lcom/chartboost/sdk/Tracking/a;->d:Z
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_64

    const/4 v11, 0x0

    .line 16
    :try_start_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 17
    iget-wide v1, v10, Lcom/chartboost/sdk/Tracking/a;->e:J

    sub-long v1, v12, v1

    sget-object v3, Lcom/chartboost/sdk/Tracking/a;->g:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-ltz v5, :cond_5c

    .line 18
    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/h;->p:Z

    if-eqz v0, :cond_37

    invoke-static/range {p3 .. p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_36} :catch_58
    .catchall {:try_start_1c .. :try_end_36} :catchall_56

    goto :goto_38

    :cond_37
    const/4 v0, 0x0

    :goto_38
    move-object v7, v0

    :try_start_39
    const-string v2, "exception"
    :try_end_3b
    .catchall {:try_start_39 .. :try_end_3b} :catchall_64

    .line 20
    :try_start_3b
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 22
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 23
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v1, p0

    move-object/from16 v4, p2

    .line 24
    invoke-virtual/range {v1 .. v9}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 32
    iput-wide v12, v10, Lcom/chartboost/sdk/Tracking/a;->e:J
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_55} :catch_58
    .catchall {:try_start_3b .. :try_end_55} :catchall_56

    goto :goto_5c

    :catchall_56
    move-exception v0

    goto :goto_5f

    :catch_58
    move-exception v0

    .line 35
    :try_start_59
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_56

    .line 37
    :cond_5c
    :goto_5c
    :try_start_5c
    iput-boolean v11, v10, Lcom/chartboost/sdk/Tracking/a;->d:Z

    goto :goto_62

    :goto_5f
    iput-boolean v11, v10, Lcom/chartboost/sdk/Tracking/a;->d:Z

    .line 38
    throw v0
    :try_end_62
    .catchall {:try_start_5c .. :try_end_62} :catchall_64

    :cond_62
    :goto_62
    monitor-exit p0

    return-void

    :catchall_64
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c()V
    .registers 11

    .line 1
    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->e()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v2, "session"

    const-string v3, "end"

    move-object v1, p0

    .line 2
    invoke-virtual/range {v1 .. v9}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    const-string v0, "did-become-active"

    .line 10
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method private d()Lcom/chartboost/sdk/Model/h;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz v0, :cond_b

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/h;

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method private e()Z
    .registers 2

    .line 5
    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->d()Lcom/chartboost/sdk/Model/h;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 7
    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/h;->m:Z

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method private f()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->d()Lcom/chartboost/sdk/Model/h;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 3
    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/h;->n:Z

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method private g()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->d()Lcom/chartboost/sdk/Model/h;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 3
    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/h;->o:Z

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a()V
    .registers 3

    const-string v0, "CBTrack"

    const-string v1, "endCurrentSession"

    .line 3
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->c()V

    return-void
.end method

.method public a(Ljava/lang/String;JJJ)V
    .registers 20

    .line 56
    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->g()Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x3

    .line 57
    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    .line 64
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "processingMs"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 65
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "getResposeCodeMs"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 66
    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "readDataMs"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 67
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-string v4, "download-asset-success"

    move-object v3, p0

    move-object v5, p1

    .line 68
    invoke-virtual/range {v3 .. v11}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    :cond_40
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 38
    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->d()Lcom/chartboost/sdk/Model/h;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 39
    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->f()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 41
    invoke-static {v0}, Lcom/chartboost/sdk/c;->a(Lcom/chartboost/sdk/Model/h;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v3, "download-asset-start"

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    .line 42
    invoke-virtual/range {v2 .. v10}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    :cond_1c
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JJJ)V
    .registers 21

    .line 43
    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->g()Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x3

    .line 44
    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    .line 51
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "processingMs"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 52
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "getResponseCodeMs"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 53
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "readDataMs"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 54
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-string v4, "download-asset-failure"

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    .line 55
    invoke-virtual/range {v3 .. v11}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    :cond_40
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 10
    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->f()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "ad-click"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 11
    invoke-direct/range {v1 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_11
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 32
    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->f()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 36
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p3, "empty-adid"

    :cond_e
    move-object v4, p3

    const/4 v6, 0x0

    const-string v1, "ad-warning"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    .line 37
    invoke-direct/range {v0 .. v6}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_19
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20

    .line 18
    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->d()Lcom/chartboost/sdk/Model/h;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 19
    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/h;->l:Z

    if-eqz v0, :cond_3f

    const/4 v0, 0x3

    .line 20
    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "adId"

    move-object/from16 v2, p5

    .line 27
    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "location"

    move-object/from16 v2, p6

    .line 28
    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "state"

    move-object/from16 v2, p7

    .line 29
    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 30
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v10

    const/4 v9, 0x0

    const/4 v11, 0x1

    const-string v4, "ad-unit-error"

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    .line 31
    invoke-virtual/range {v3 .. v11}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    :cond_3f
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 18

    .line 76
    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->f()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 77
    invoke-virtual/range {v1 .. v9}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    :cond_14
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V
    .registers 9

    .line 79
    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->f()Z

    move-result p2

    if-eqz p2, :cond_10

    if-eqz p1, :cond_9

    goto :goto_b

    :cond_9
    const-string p1, "unknown event"

    :goto_b
    const-string p2, "CBTrack"

    .line 80
    invoke-static {p2, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 13

    .line 12
    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->f()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 16
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p3, "empty-adid"

    :cond_e
    move-object v4, p3

    const-string v1, "ad-error"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move v6, p5

    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_19
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 13

    .line 5
    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->d()Lcom/chartboost/sdk/Model/h;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 6
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/h;->n:Z

    if-eqz v1, :cond_1a

    .line 8
    invoke-static {v0}, Lcom/chartboost/sdk/c;->a(Lcom/chartboost/sdk/Model/h;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-string v3, "folder"

    move-object v2, p0

    move-object v9, p1

    .line 9
    invoke-virtual/range {v2 .. v10}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    :cond_1a
    return-void
.end method

.method public b()V
    .registers 3

    const-string v0, "CBTrack"

    const-string v1, "trackSessionStart"

    .line 1
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "start"

    .line 2
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;)V

    const-string v0, "did-become-active"

    .line 3
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 8
    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->f()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "playback-complete"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    .line 9
    invoke-direct/range {v1 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_11
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 6
    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->f()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "ad-close"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 7
    invoke-direct/range {v1 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_11
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 4
    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->f()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v2, "webview-track"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 5
    invoke-virtual/range {v1 .. v9}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    :cond_13
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 13
    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->f()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "playback-stop"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    .line 14
    invoke-direct/range {v1 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_11
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 11
    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->f()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "ad-dismiss"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 12
    invoke-direct/range {v1 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_11
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 3
    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->f()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "replay"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    .line 4
    invoke-direct/range {v1 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_11
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 1
    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->f()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "ad-show"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 2
    invoke-direct/range {v1 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_11
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 3
    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->f()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "playback-start"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    .line 4
    invoke-direct/range {v1 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_11
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 1
    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->f()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "load"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 2
    invoke-direct/range {v1 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_11
    return-void
.end method
