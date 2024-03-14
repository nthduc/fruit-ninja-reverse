.class public final Lcom/chartboost/sdk/InPlay/CBInPlay;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/chartboost/sdk/impl/g;

.field public final appName:Ljava/lang/String;

.field private final b:Lcom/chartboost/sdk/Networking/g;

.field private final c:Lcom/chartboost/sdk/Model/g;

.field private final d:Lcom/chartboost/sdk/Tracking/a;

.field private final e:Lcom/chartboost/sdk/Networking/i;

.field private final f:Lcom/chartboost/sdk/impl/u0;

.field private final g:Lcom/chartboost/sdk/Model/a;

.field private h:Landroid/graphics/Bitmap;

.field public final largeAppIconFile:Ljava/io/File;

.field public final largeAppIconUrl:Ljava/lang/String;

.field public final location:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/chartboost/sdk/impl/g;Lcom/chartboost/sdk/Networking/g;Lcom/chartboost/sdk/Model/g;Lcom/chartboost/sdk/Tracking/a;Lcom/chartboost/sdk/Networking/i;Lcom/chartboost/sdk/Model/a;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/chartboost/sdk/impl/u0;)V
    .registers 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->a:Lcom/chartboost/sdk/impl/g;

    .line 4
    iput-object p2, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->b:Lcom/chartboost/sdk/Networking/g;

    .line 5
    iput-object p3, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->c:Lcom/chartboost/sdk/Model/g;

    .line 6
    iput-object p4, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->d:Lcom/chartboost/sdk/Tracking/a;

    .line 7
    iput-object p5, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->e:Lcom/chartboost/sdk/Networking/i;

    .line 8
    iput-object p10, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->f:Lcom/chartboost/sdk/impl/u0;

    .line 10
    iput-object p6, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->g:Lcom/chartboost/sdk/Model/a;

    .line 11
    iget-object p1, p6, Lcom/chartboost/sdk/Model/a;->q:Ljava/lang/String;

    iput-object p1, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->appName:Ljava/lang/String;

    .line 12
    iput-object p7, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->largeAppIconUrl:Ljava/lang/String;

    .line 13
    iput-object p8, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->largeAppIconFile:Ljava/io/File;

    .line 15
    iput-object p9, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->location:Ljava/lang/String;

    return-void
.end method

.method public static cacheInPlay(Ljava/lang/String;)V
    .registers 10

    .line 1
    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 2
    invoke-static {}, Lcom/chartboost/sdk/c;->c()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_76

    .line 5
    :cond_d
    invoke-static {}, Lcom/chartboost/sdk/impl/x;->c()Lcom/chartboost/sdk/impl/x;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/chartboost/sdk/impl/x;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    const-string v1, "CBInPlay"

    const-string v2, "cacheInPlay location cannot be empty"

    .line 6
    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v1, v0, Lcom/chartboost/sdk/i;->y:Landroid/os/Handler;

    new-instance v8, Lcom/chartboost/sdk/impl/a$a;

    iget-object v3, v0, Lcom/chartboost/sdk/i;->p:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/4 v4, 0x4

    const/4 v7, 0x0

    move-object v2, v8

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;Lcom/chartboost/sdk/Events/ChartboostError;)V

    invoke-virtual {v1, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 15
    :cond_34
    iget-object v1, v0, Lcom/chartboost/sdk/i;->w:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/Model/h;

    .line 16
    iget-boolean v2, v1, Lcom/chartboost/sdk/Model/h;->w:Z

    if-eqz v2, :cond_44

    iget-boolean v2, v1, Lcom/chartboost/sdk/Model/h;->x:Z

    if-nez v2, :cond_4c

    :cond_44
    iget-boolean v2, v1, Lcom/chartboost/sdk/Model/h;->e:Z

    if-eqz v2, :cond_61

    iget-boolean v1, v1, Lcom/chartboost/sdk/Model/h;->f:Z

    if-eqz v1, :cond_61

    .line 17
    :cond_4c
    new-instance v1, Lcom/chartboost/sdk/impl/g$b;

    iget-object v3, v0, Lcom/chartboost/sdk/i;->o:Lcom/chartboost/sdk/impl/g;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/g$b;-><init>(Lcom/chartboost/sdk/impl/g;ILjava/lang/String;Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 18
    iget-object p0, v0, Lcom/chartboost/sdk/i;->m:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_76

    .line 20
    :cond_61
    iget-object v1, v0, Lcom/chartboost/sdk/i;->y:Landroid/os/Handler;

    new-instance v8, Lcom/chartboost/sdk/impl/a$a;

    iget-object v3, v0, Lcom/chartboost/sdk/i;->p:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/4 v4, 0x4

    const/4 v7, 0x0

    move-object v2, v8

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;Lcom/chartboost/sdk/Events/ChartboostError;)V

    invoke-virtual {v1, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_76
    :goto_76
    return-void
.end method

.method public static getInPlay(Ljava/lang/String;)Lcom/chartboost/sdk/InPlay/CBInPlay;
    .registers 16

    .line 1
    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d5

    .line 2
    invoke-static {}, Lcom/chartboost/sdk/c;->c()Z

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_d5

    .line 5
    :cond_f
    invoke-static {}, Lcom/chartboost/sdk/impl/x;->c()Lcom/chartboost/sdk/impl/x;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/chartboost/sdk/impl/x;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_36

    const-string v2, "CBInPlay"

    const-string v3, "Inplay location cannot be empty"

    .line 6
    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v2, v0, Lcom/chartboost/sdk/i;->y:Landroid/os/Handler;

    new-instance v9, Lcom/chartboost/sdk/impl/a$a;

    iget-object v4, v0, Lcom/chartboost/sdk/i;->p:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/4 v5, 0x4

    const/4 v8, 0x0

    move-object v3, v9

    move-object v6, p0

    invoke-direct/range {v3 .. v8}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;Lcom/chartboost/sdk/Events/ChartboostError;)V

    invoke-virtual {v2, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v1

    .line 16
    :cond_36
    iget-object v2, v0, Lcom/chartboost/sdk/i;->w:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/Model/h;

    .line 17
    sget-object v3, Lcom/chartboost/sdk/j;->l:Landroid/content/Context;

    invoke-static {v3}, Lcom/chartboost/sdk/i;->a(Landroid/content/Context;)Lcom/chartboost/sdk/impl/u0;

    move-result-object v14

    .line 19
    sget-object v3, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_AD_FOUND:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 20
    iget-boolean v4, v2, Lcom/chartboost/sdk/Model/h;->w:Z

    if-eqz v4, :cond_4e

    iget-boolean v4, v2, Lcom/chartboost/sdk/Model/h;->x:Z

    if-nez v4, :cond_56

    :cond_4e
    iget-boolean v4, v2, Lcom/chartboost/sdk/Model/h;->e:Z

    if-eqz v4, :cond_bf

    iget-boolean v2, v2, Lcom/chartboost/sdk/Model/h;->f:Z

    if-eqz v2, :cond_bf

    .line 21
    :cond_56
    iget-object v2, v0, Lcom/chartboost/sdk/i;->o:Lcom/chartboost/sdk/impl/g;

    invoke-virtual {v2, p0}, Lcom/chartboost/sdk/impl/g;->d(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;

    move-result-object v10

    if-eqz v10, :cond_a9

    .line 23
    iget-object v2, v10, Lcom/chartboost/sdk/Model/a;->c:Ljava/util/Map;

    const-string v4, "lg"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/Model/b;

    if-eqz v2, :cond_94

    .line 26
    iget-object v4, v0, Lcom/chartboost/sdk/i;->o:Lcom/chartboost/sdk/impl/g;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/g;->c:Lcom/chartboost/sdk/Libraries/f;

    .line 27
    invoke-virtual {v4}, Lcom/chartboost/sdk/Libraries/f;->a()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v4

    iget-object v4, v4, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    invoke-virtual {v2, v4}, Lcom/chartboost/sdk/Model/b;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v12

    .line 29
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_81

    .line 30
    sget-object v3, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ASSET_MISSING:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    goto :goto_94

    .line 32
    :cond_81
    new-instance v1, Lcom/chartboost/sdk/InPlay/CBInPlay;

    iget-object v5, v0, Lcom/chartboost/sdk/i;->o:Lcom/chartboost/sdk/impl/g;

    iget-object v6, v0, Lcom/chartboost/sdk/i;->s:Lcom/chartboost/sdk/Networking/g;

    iget-object v7, v0, Lcom/chartboost/sdk/i;->t:Lcom/chartboost/sdk/Model/g;

    iget-object v8, v0, Lcom/chartboost/sdk/i;->x:Lcom/chartboost/sdk/Tracking/a;

    iget-object v9, v0, Lcom/chartboost/sdk/i;->A:Lcom/chartboost/sdk/Networking/i;

    iget-object v11, v2, Lcom/chartboost/sdk/Model/b;->c:Ljava/lang/String;

    move-object v4, v1

    move-object v13, p0

    invoke-direct/range {v4 .. v14}, Lcom/chartboost/sdk/InPlay/CBInPlay;-><init>(Lcom/chartboost/sdk/impl/g;Lcom/chartboost/sdk/Networking/g;Lcom/chartboost/sdk/Model/g;Lcom/chartboost/sdk/Tracking/a;Lcom/chartboost/sdk/Networking/i;Lcom/chartboost/sdk/Model/a;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/chartboost/sdk/impl/u0;)V

    .line 46
    :cond_94
    :goto_94
    iget-object v2, v0, Lcom/chartboost/sdk/i;->m:Ljava/util/concurrent/Executor;

    new-instance v10, Lcom/chartboost/sdk/impl/g$b;

    iget-object v5, v0, Lcom/chartboost/sdk/i;->o:Lcom/chartboost/sdk/impl/g;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v10

    move-object v7, p0

    invoke-direct/range {v4 .. v9}, Lcom/chartboost/sdk/impl/g$b;-><init>(Lcom/chartboost/sdk/impl/g;ILjava/lang/String;Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-interface {v2, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_a9
    if-nez v1, :cond_bf

    .line 49
    iget-object v2, v0, Lcom/chartboost/sdk/i;->m:Ljava/util/concurrent/Executor;

    new-instance v10, Lcom/chartboost/sdk/impl/g$b;

    iget-object v5, v0, Lcom/chartboost/sdk/i;->o:Lcom/chartboost/sdk/impl/g;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v10

    move-object v7, p0

    invoke-direct/range {v4 .. v9}, Lcom/chartboost/sdk/impl/g$b;-><init>(Lcom/chartboost/sdk/impl/g;ILjava/lang/String;Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-interface {v2, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_bf
    move-object v6, v3

    if-nez v1, :cond_d5

    .line 54
    iget-object v8, v0, Lcom/chartboost/sdk/i;->y:Landroid/os/Handler;

    new-instance v9, Lcom/chartboost/sdk/impl/a$a;

    iget-object v3, v0, Lcom/chartboost/sdk/i;->p:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x4

    const/4 v7, 0x0

    move-object v2, v9

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;Lcom/chartboost/sdk/Events/ChartboostError;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_d5
    :goto_d5
    return-object v1
.end method

.method public static hasInPlay(Ljava/lang/String;)Z
    .registers 11

    .line 1
    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    .line 2
    invoke-static {}, Lcom/chartboost/sdk/c;->c()Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_3e

    .line 5
    :cond_e
    invoke-static {}, Lcom/chartboost/sdk/impl/x;->c()Lcom/chartboost/sdk/impl/x;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/chartboost/sdk/impl/x;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_35

    const-string v2, "CBInPlay"

    const-string v3, "hasInPlay location cannot be empty"

    .line 6
    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v2, v0, Lcom/chartboost/sdk/i;->y:Landroid/os/Handler;

    new-instance v9, Lcom/chartboost/sdk/impl/a$a;

    iget-object v4, v0, Lcom/chartboost/sdk/i;->p:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/4 v5, 0x4

    const/4 v8, 0x0

    move-object v3, v9

    move-object v6, p0

    invoke-direct/range {v3 .. v8}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;Lcom/chartboost/sdk/Events/ChartboostError;)V

    invoke-virtual {v2, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1

    .line 15
    :cond_35
    iget-object v0, v0, Lcom/chartboost/sdk/i;->o:Lcom/chartboost/sdk/impl/g;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/g;->d(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;

    move-result-object p0

    if-eqz p0, :cond_3e

    const/4 v1, 0x1

    :cond_3e
    :goto_3e
    return v1
.end method


# virtual methods
.method public click()V
    .registers 16

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->g:Lcom/chartboost/sdk/Model/a;

    iget-object v1, v0, Lcom/chartboost/sdk/Model/a;->j:Ljava/lang/String;

    .line 2
    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->i:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    .line 4
    iget-object v2, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->e:Lcom/chartboost/sdk/Networking/i;

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/Networking/i;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    move-object v6, v0

    goto :goto_17

    :cond_16
    move-object v6, v1

    .line 8
    :goto_17
    new-instance v0, Lcom/chartboost/sdk/impl/p0;

    iget-object v10, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->c:Lcom/chartboost/sdk/Model/g;

    iget-object v11, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->d:Lcom/chartboost/sdk/Tracking/a;

    iget-object v14, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->f:Lcom/chartboost/sdk/impl/u0;

    const/4 v12, 0x2

    const/4 v13, 0x0

    const-string v8, "https://live.chartboost.com"

    const-string v9, "/api/click"

    move-object v7, v0

    invoke-direct/range {v7 .. v14}, Lcom/chartboost/sdk/impl/p0;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Model/g;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/p0$a;Lcom/chartboost/sdk/impl/u0;)V

    .line 14
    iget-object v1, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->location:Ljava/lang/String;

    const-string v2, "location"

    invoke-virtual {v0, v2, v1}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    iget-object v1, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->g:Lcom/chartboost/sdk/Model/a;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/a;->m:Ljava/lang/String;

    const-string v2, "to"

    invoke-virtual {v0, v2, v1}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    iget-object v1, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->g:Lcom/chartboost/sdk/Model/a;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/a;->g:Ljava/lang/String;

    const-string v2, "cgn"

    invoke-virtual {v0, v2, v1}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    iget-object v1, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->g:Lcom/chartboost/sdk/Model/a;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/a;->h:Ljava/lang/String;

    const-string v2, "creative"

    invoke-virtual {v0, v2, v1}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    iget-object v1, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->g:Lcom/chartboost/sdk/Model/a;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    const-string v2, "ad_id"

    invoke-virtual {v0, v2, v1}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "type"

    const-string v2, "native"

    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v6, :cond_6a

    .line 21
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6a

    .line 22
    iget-object v1, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->e:Lcom/chartboost/sdk/Networking/i;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v6, v0}, Lcom/chartboost/sdk/Networking/i;->a(Lcom/chartboost/sdk/Model/c;Ljava/lang/String;Lcom/chartboost/sdk/impl/p0;)V

    goto :goto_74

    .line 24
    :cond_6a
    iget-object v3, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->e:Lcom/chartboost/sdk/Networking/i;

    sget-object v7, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_INVALID:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v8, v0

    invoke-virtual/range {v3 .. v8}, Lcom/chartboost/sdk/Networking/i;->a(Lcom/chartboost/sdk/Model/c;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/impl/p0;)V

    :goto_74
    return-void
.end method

.method public getAppIcon()Landroid/graphics/Bitmap;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "CBInPlay"

    .line 1
    iget-object v1, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->h:Landroid/graphics/Bitmap;

    if-nez v1, :cond_81

    .line 3
    :try_start_6
    iget-object v1, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->largeAppIconFile:Ljava/io/File;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/x1;->b(Ljava/io/File;)[B

    move-result-object v1

    if-eqz v1, :cond_18

    .line 5
    invoke-static {}, Lcom/chartboost/sdk/impl/x;->c()Lcom/chartboost/sdk/impl/x;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/impl/x;->a([B)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->h:Landroid/graphics/Bitmap;

    .line 7
    :cond_18
    iget-object v1, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->h:Landroid/graphics/Bitmap;

    if-nez v1, :cond_81

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error decoding inplay bitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->largeAppIconFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->largeAppIconFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_58

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to delete corrupt inplay bitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->largeAppIconFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_58
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "decodeByteArrayToBitmap returned null"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_60
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_60} :catch_60

    :catch_60
    move-exception v1

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Out of memory decoding inplay bitmap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->largeAppIconFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 19
    :cond_81
    iget-object v0, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->h:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->location:Ljava/lang/String;

    return-object v0
.end method

.method public show()V
    .registers 10

    .line 1
    new-instance v6, Lcom/chartboost/sdk/impl/i;

    iget-object v0, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->a:Lcom/chartboost/sdk/impl/g;

    iget-object v1, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->location:Ljava/lang/String;

    invoke-direct {v6, v0, v1}, Lcom/chartboost/sdk/impl/i;-><init>(Lcom/chartboost/sdk/impl/g;Ljava/lang/String;)V

    .line 3
    new-instance v8, Lcom/chartboost/sdk/impl/p0;

    iget-object v3, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->c:Lcom/chartboost/sdk/Model/g;

    iget-object v4, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->d:Lcom/chartboost/sdk/Tracking/a;

    iget-object v7, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->f:Lcom/chartboost/sdk/impl/u0;

    const-string v1, "https://live.chartboost.com"

    const-string v2, "/inplay/show"

    const/4 v5, 0x2

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/impl/p0;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Model/g;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/p0$a;Lcom/chartboost/sdk/impl/u0;)V

    const/4 v0, 0x1

    .line 9
    iput v0, v8, Lcom/chartboost/sdk/Networking/c;->i:I

    .line 11
    iget-object v0, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->g:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->a:Lorg/json/JSONObject;

    const-string v1, "inplay-dictionary"

    invoke-virtual {v8, v1, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->location:Ljava/lang/String;

    const-string v1, "location"

    invoke-virtual {v8, v1, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->b:Lcom/chartboost/sdk/Networking/g;

    invoke-virtual {v0, v8}, Lcom/chartboost/sdk/Networking/g;->a(Lcom/chartboost/sdk/Networking/c;)V

    return-void
.end method
