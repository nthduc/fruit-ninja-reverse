.class public Lcom/chartboost/sdk/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final a:I

.field b:Ljava/lang/String;

.field c:Z

.field d:Z

.field e:Lcom/chartboost/sdk/ChartboostBanner;

.field final synthetic f:Lcom/chartboost/sdk/i;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/i;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/i$b;->f:Lcom/chartboost/sdk/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/i$b;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/chartboost/sdk/i$b;->c:Z

    .line 4
    iput-boolean v0, p0, Lcom/chartboost/sdk/i$b;->d:Z

    .line 5
    iput-object p1, p0, Lcom/chartboost/sdk/i$b;->e:Lcom/chartboost/sdk/ChartboostBanner;

    .line 8
    iput p2, p0, Lcom/chartboost/sdk/i$b;->a:I

    return-void
.end method

.method private a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/i$b;->f:Lcom/chartboost/sdk/i;

    iget-object v0, v0, Lcom/chartboost/sdk/i;->w:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/i$b;->f:Lcom/chartboost/sdk/i;

    iget-object v0, v0, Lcom/chartboost/sdk/i;->w:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/h;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    const-string v1, "Sdk"

    .line 4
    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method private b()V
    .registers 23

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v1

    new-instance v15, Lcom/chartboost/sdk/Banner/a;

    move-object v2, v15

    iget-object v3, v0, Lcom/chartboost/sdk/i$b;->e:Lcom/chartboost/sdk/ChartboostBanner;

    .line 2
    invoke-static {v3}, Lcom/chartboost/sdk/impl/d;->a(Lcom/chartboost/sdk/impl/c;)Lcom/chartboost/sdk/impl/d;

    move-result-object v3

    iget-object v14, v0, Lcom/chartboost/sdk/i$b;->f:Lcom/chartboost/sdk/i;

    iget-object v4, v14, Lcom/chartboost/sdk/i;->m:Ljava/util/concurrent/Executor;

    check-cast v4, Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v5, v14, Lcom/chartboost/sdk/i;->g:Lcom/chartboost/sdk/impl/n;

    iget-object v6, v14, Lcom/chartboost/sdk/i;->b:Lcom/chartboost/sdk/Libraries/f;

    iget-object v7, v14, Lcom/chartboost/sdk/i;->s:Lcom/chartboost/sdk/Networking/g;

    iget-object v8, v14, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/Networking/h;

    iget-object v9, v14, Lcom/chartboost/sdk/i;->t:Lcom/chartboost/sdk/Model/g;

    iget-object v10, v14, Lcom/chartboost/sdk/i;->w:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v11, v14, Lcom/chartboost/sdk/i;->i:Landroid/content/SharedPreferences;

    iget-object v12, v14, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Libraries/i;

    iget-object v13, v14, Lcom/chartboost/sdk/i;->x:Lcom/chartboost/sdk/Tracking/a;

    move-object/from16 v16, v15

    iget-object v15, v14, Lcom/chartboost/sdk/i;->y:Landroid/os/Handler;

    move-object v0, v14

    move-object v14, v15

    iget-object v15, v0, Lcom/chartboost/sdk/i;->z:Lcom/chartboost/sdk/d;

    move-object/from16 v20, v1

    move-object/from16 v1, v16

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/chartboost/sdk/i;->A:Lcom/chartboost/sdk/Networking/i;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/chartboost/sdk/i;->e:Lcom/chartboost/sdk/e;

    move-object/from16 v17, v1

    iget-object v0, v0, Lcom/chartboost/sdk/i;->f:Lcom/chartboost/sdk/Networking/j;

    move-object/from16 v18, v0

    .line 6
    invoke-static {}, Lcom/chartboost/sdk/i;->l()Lcom/chartboost/sdk/impl/u0;

    move-result-object v19

    invoke-direct/range {v2 .. v19}, Lcom/chartboost/sdk/Banner/a;-><init>(Lcom/chartboost/sdk/impl/d;Ljava/util/concurrent/ScheduledExecutorService;Lcom/chartboost/sdk/impl/n;Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/Networking/g;Lcom/chartboost/sdk/Networking/h;Lcom/chartboost/sdk/Model/g;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Libraries/i;Lcom/chartboost/sdk/Tracking/a;Landroid/os/Handler;Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/Networking/i;Lcom/chartboost/sdk/e;Lcom/chartboost/sdk/Networking/j;Lcom/chartboost/sdk/impl/u0;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    .line 7
    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Banner/a;

    move-object/from16 v7, p0

    .line 13
    iget-object v1, v7, Lcom/chartboost/sdk/i$b;->e:Lcom/chartboost/sdk/ChartboostBanner;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Banner/a;->a(Lcom/chartboost/sdk/ChartboostBanner;)V

    .line 14
    iget-object v1, v7, Lcom/chartboost/sdk/i$b;->f:Lcom/chartboost/sdk/i;

    iget-object v8, v1, Lcom/chartboost/sdk/i;->m:Ljava/util/concurrent/Executor;

    new-instance v9, Lcom/chartboost/sdk/impl/g$b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/chartboost/sdk/impl/g$b;-><init>(Lcom/chartboost/sdk/impl/g;ILjava/lang/String;Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 15
    iget-object v1, v7, Lcom/chartboost/sdk/i$b;->f:Lcom/chartboost/sdk/i;

    iget-object v1, v1, Lcom/chartboost/sdk/i;->h:Lcom/chartboost/sdk/b;

    iget-object v2, v7, Lcom/chartboost/sdk/i$b;->e:Lcom/chartboost/sdk/ChartboostBanner;

    invoke-virtual {v2}, Lcom/chartboost/sdk/ChartboostBanner;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/chartboost/sdk/b;->a(Ljava/lang/String;Lcom/chartboost/sdk/Banner/a;)V

    return-void
.end method

.method private c()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/i$b;->f:Lcom/chartboost/sdk/i;

    iget-object v0, v0, Lcom/chartboost/sdk/i;->j:Lcom/chartboost/sdk/impl/o;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/o;->b()V

    :cond_9
    return-void
.end method

.method private d()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/chartboost/sdk/i$b;->c()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 1
    :try_start_0
    iget v0, p0, Lcom/chartboost/sdk/i$b;->a:I

    packed-switch v0, :pswitch_data_10c

    goto/16 :goto_10a

    .line 52
    :pswitch_7
    invoke-direct {p0}, Lcom/chartboost/sdk/i$b;->b()V

    goto/16 :goto_10a

    .line 53
    :pswitch_c
    sget-object v0, Lcom/chartboost/sdk/j;->d:Lcom/chartboost/sdk/a;

    if-eqz v0, :cond_10a

    .line 54
    sget-object v0, Lcom/chartboost/sdk/j;->d:Lcom/chartboost/sdk/a;

    iget-object v1, p0, Lcom/chartboost/sdk/i$b;->b:Ljava/lang/String;

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, v1, v2}, Lcom/chartboost/sdk/a;->didFailToLoadMoreApps(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto/16 :goto_10a

    .line 55
    :pswitch_1b
    iget-object v0, p0, Lcom/chartboost/sdk/i$b;->f:Lcom/chartboost/sdk/i;

    iget-object v0, v0, Lcom/chartboost/sdk/i;->j:Lcom/chartboost/sdk/impl/o;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/o;->b()V

    goto/16 :goto_10a

    .line 56
    :pswitch_24
    invoke-direct {p0}, Lcom/chartboost/sdk/i$b;->a()V

    .line 58
    invoke-static {}, Lcom/chartboost/sdk/i;->l()Lcom/chartboost/sdk/impl/u0;

    move-result-object v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/chartboost/sdk/i$b;->f:Lcom/chartboost/sdk/i;

    iget-object v0, v0, Lcom/chartboost/sdk/i;->w:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/chartboost/sdk/i$b;->f:Lcom/chartboost/sdk/i;

    iget-object v0, v0, Lcom/chartboost/sdk/i;->w:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 59
    invoke-static {}, Lcom/chartboost/sdk/i;->l()Lcom/chartboost/sdk/impl/u0;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/i$b;->f:Lcom/chartboost/sdk/i;

    iget-object v1, v1, Lcom/chartboost/sdk/i;->w:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/Model/h;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/h;->F:Lcom/chartboost/sdk/Model/h$b;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/u0;->a(Lcom/chartboost/sdk/Model/h$b;)V

    .line 63
    :cond_50
    new-instance v0, Lcom/chartboost/sdk/impl/p0;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_52} :catch_ec

    const-string v2, "https://live.chartboost.com"

    const-string v3, "/api/install"

    :try_start_56
    iget-object v1, p0, Lcom/chartboost/sdk/i$b;->f:Lcom/chartboost/sdk/i;

    iget-object v4, v1, Lcom/chartboost/sdk/i;->t:Lcom/chartboost/sdk/Model/g;

    iget-object v1, p0, Lcom/chartboost/sdk/i$b;->f:Lcom/chartboost/sdk/i;

    iget-object v5, v1, Lcom/chartboost/sdk/i;->x:Lcom/chartboost/sdk/Tracking/a;

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 68
    invoke-static {}, Lcom/chartboost/sdk/i;->l()Lcom/chartboost/sdk/impl/u0;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/chartboost/sdk/impl/p0;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Model/g;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/p0$a;Lcom/chartboost/sdk/impl/u0;)V

    const/4 v1, 0x1

    .line 69
    iput-boolean v1, v0, Lcom/chartboost/sdk/impl/p0;->m:Z

    .line 70
    iget-object v1, p0, Lcom/chartboost/sdk/i$b;->f:Lcom/chartboost/sdk/i;

    iget-object v1, v1, Lcom/chartboost/sdk/i;->s:Lcom/chartboost/sdk/Networking/g;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/Networking/g;->a(Lcom/chartboost/sdk/Networking/c;)V

    .line 71
    iget-object v0, p0, Lcom/chartboost/sdk/i$b;->f:Lcom/chartboost/sdk/i;

    iget-object v0, v0, Lcom/chartboost/sdk/i;->m:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/chartboost/sdk/impl/g$b;

    iget-object v1, p0, Lcom/chartboost/sdk/i$b;->f:Lcom/chartboost/sdk/i;

    iget-object v2, v1, Lcom/chartboost/sdk/i;->o:Lcom/chartboost/sdk/impl/g;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/chartboost/sdk/impl/g$b;-><init>(Lcom/chartboost/sdk/impl/g;ILjava/lang/String;Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 72
    iget-object v0, p0, Lcom/chartboost/sdk/i$b;->f:Lcom/chartboost/sdk/i;

    iget-object v0, v0, Lcom/chartboost/sdk/i;->m:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/chartboost/sdk/impl/g$b;

    iget-object v1, p0, Lcom/chartboost/sdk/i$b;->f:Lcom/chartboost/sdk/i;

    iget-object v2, v1, Lcom/chartboost/sdk/i;->q:Lcom/chartboost/sdk/impl/g;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/chartboost/sdk/impl/g$b;-><init>(Lcom/chartboost/sdk/impl/g;ILjava/lang/String;Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 73
    iget-object v0, p0, Lcom/chartboost/sdk/i$b;->f:Lcom/chartboost/sdk/i;

    iget-object v0, v0, Lcom/chartboost/sdk/i;->m:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/chartboost/sdk/impl/g$b;

    iget-object v1, p0, Lcom/chartboost/sdk/i$b;->f:Lcom/chartboost/sdk/i;

    iget-object v2, v1, Lcom/chartboost/sdk/i;->u:Lcom/chartboost/sdk/impl/g;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/chartboost/sdk/impl/g$b;-><init>(Lcom/chartboost/sdk/impl/g;ILjava/lang/String;Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 74
    invoke-direct {p0}, Lcom/chartboost/sdk/i$b;->d()V

    .line 75
    iget-object v0, p0, Lcom/chartboost/sdk/i$b;->f:Lcom/chartboost/sdk/i;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/chartboost/sdk/i;->l:Z

    goto :goto_10a

    .line 76
    :pswitch_c3
    iget-boolean v0, p0, Lcom/chartboost/sdk/i$b;->d:Z

    sput-boolean v0, Lcom/chartboost/sdk/j;->q:Z

    .line 78
    iget-boolean v0, p0, Lcom/chartboost/sdk/i$b;->d:Z

    if-eqz v0, :cond_d9

    invoke-static {}, Lcom/chartboost/sdk/i;->o()Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 79
    iget-object v0, p0, Lcom/chartboost/sdk/i$b;->f:Lcom/chartboost/sdk/i;

    iget-object v0, v0, Lcom/chartboost/sdk/i;->j:Lcom/chartboost/sdk/impl/o;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/o;->b()V

    goto :goto_10a

    .line 81
    :cond_d9
    iget-object v0, p0, Lcom/chartboost/sdk/i$b;->f:Lcom/chartboost/sdk/i;

    iget-object v0, v0, Lcom/chartboost/sdk/i;->j:Lcom/chartboost/sdk/impl/o;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/o;->a()V

    goto :goto_10a

    .line 82
    :pswitch_e1
    iget-boolean v0, p0, Lcom/chartboost/sdk/i$b;->c:Z

    sput-boolean v0, Lcom/chartboost/sdk/j;->o:Z

    goto :goto_10a

    .line 83
    :pswitch_e6
    iget-object v0, p0, Lcom/chartboost/sdk/i$b;->f:Lcom/chartboost/sdk/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/i;->b()V
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_eb} :catch_ec

    goto :goto_10a

    :catch_ec
    move-exception v0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/chartboost/sdk/i$b;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/chartboost/sdk/i$b;

    invoke-static {v2, v1, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_10a
    :goto_10a
    return-void

    nop

    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_e6
        :pswitch_e1
        :pswitch_c3
        :pswitch_24
        :pswitch_1b
        :pswitch_c
        :pswitch_7
    .end packed-switch
.end method
