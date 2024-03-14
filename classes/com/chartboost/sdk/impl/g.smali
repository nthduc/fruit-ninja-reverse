.class public Lcom/chartboost/sdk/impl/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/g$c;,
        Lcom/chartboost/sdk/impl/g$b;
    }
.end annotation


# instance fields
.field A:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final B:J

.field private final C:J

.field private final D:[Ljava/lang/String;

.field public final a:Ljava/util/concurrent/ScheduledExecutorService;

.field private final b:Lcom/chartboost/sdk/impl/n;

.field public final c:Lcom/chartboost/sdk/Libraries/f;

.field private final d:Lcom/chartboost/sdk/Networking/g;

.field private final e:Lcom/chartboost/sdk/Networking/h;

.field private final f:Lcom/chartboost/sdk/Model/g;

.field private final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/chartboost/sdk/Model/h;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/content/SharedPreferences;

.field final i:Lcom/chartboost/sdk/Libraries/i;

.field private final j:Lcom/chartboost/sdk/Tracking/a;

.field final k:Landroid/os/Handler;

.field final l:Lcom/chartboost/sdk/d;

.field private final m:Lcom/chartboost/sdk/Networking/i;

.field private final n:Lcom/chartboost/sdk/e;

.field private final o:Lcom/chartboost/sdk/Networking/j;

.field final p:Lcom/chartboost/sdk/impl/a;

.field protected q:Lcom/chartboost/sdk/ChartboostBanner;

.field private r:Lcom/chartboost/sdk/impl/u0;

.field s:I

.field private t:I

.field private u:Z

.field final v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/impl/h;",
            ">;"
        }
    .end annotation
.end field

.field final w:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Lcom/chartboost/sdk/impl/h;",
            ">;"
        }
    .end annotation
.end field

.field final x:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Lcom/chartboost/sdk/impl/h;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/a;Ljava/util/concurrent/ScheduledExecutorService;Lcom/chartboost/sdk/impl/n;Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/Networking/g;Lcom/chartboost/sdk/Networking/h;Lcom/chartboost/sdk/Model/g;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Libraries/i;Lcom/chartboost/sdk/Tracking/a;Landroid/os/Handler;Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/Networking/i;Lcom/chartboost/sdk/e;Lcom/chartboost/sdk/Networking/j;Lcom/chartboost/sdk/impl/u0;)V
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/a;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/chartboost/sdk/impl/n;",
            "Lcom/chartboost/sdk/Libraries/f;",
            "Lcom/chartboost/sdk/Networking/g;",
            "Lcom/chartboost/sdk/Networking/h;",
            "Lcom/chartboost/sdk/Model/g;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/chartboost/sdk/Model/h;",
            ">;",
            "Landroid/content/SharedPreferences;",
            "Lcom/chartboost/sdk/Libraries/i;",
            "Lcom/chartboost/sdk/Tracking/a;",
            "Landroid/os/Handler;",
            "Lcom/chartboost/sdk/d;",
            "Lcom/chartboost/sdk/Networking/i;",
            "Lcom/chartboost/sdk/e;",
            "Lcom/chartboost/sdk/Networking/j;",
            "Lcom/chartboost/sdk/impl/u0;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lcom/chartboost/sdk/impl/g;->s:I

    .line 17
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/chartboost/sdk/impl/g;->B:J

    .line 20
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/chartboost/sdk/impl/g;->C:J

    const-string v4, "ASKED_TO_CACHE"

    const-string v5, "ASKED_TO_SHOW"

    const-string v6, "REQUESTING_TO_CACHE"

    const-string v7, "REQUESTING_TO_SHOW"

    const-string v8, "DOWNLOADING_TO_CACHE"

    const-string v9, "DOWNLOADING_TO_SHOW"

    const-string v10, "READY"

    const-string v11, "ASKING_UI_TO_SHOW_AD"

    const-string v12, "DONE"

    .line 22
    filled-new-array/range {v4 .. v12}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/chartboost/sdk/impl/g;->D:[Ljava/lang/String;

    move-object v2, p2

    .line 51
    iput-object v2, v0, Lcom/chartboost/sdk/impl/g;->a:Ljava/util/concurrent/ScheduledExecutorService;

    move-object/from16 v2, p3

    .line 52
    iput-object v2, v0, Lcom/chartboost/sdk/impl/g;->b:Lcom/chartboost/sdk/impl/n;

    move-object/from16 v2, p4

    .line 53
    iput-object v2, v0, Lcom/chartboost/sdk/impl/g;->c:Lcom/chartboost/sdk/Libraries/f;

    move-object/from16 v2, p5

    .line 54
    iput-object v2, v0, Lcom/chartboost/sdk/impl/g;->d:Lcom/chartboost/sdk/Networking/g;

    move-object/from16 v2, p6

    .line 55
    iput-object v2, v0, Lcom/chartboost/sdk/impl/g;->e:Lcom/chartboost/sdk/Networking/h;

    move-object/from16 v2, p7

    .line 56
    iput-object v2, v0, Lcom/chartboost/sdk/impl/g;->f:Lcom/chartboost/sdk/Model/g;

    move-object/from16 v2, p8

    .line 57
    iput-object v2, v0, Lcom/chartboost/sdk/impl/g;->g:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v2, p9

    .line 58
    iput-object v2, v0, Lcom/chartboost/sdk/impl/g;->h:Landroid/content/SharedPreferences;

    move-object/from16 v2, p10

    .line 59
    iput-object v2, v0, Lcom/chartboost/sdk/impl/g;->i:Lcom/chartboost/sdk/Libraries/i;

    move-object/from16 v2, p11

    .line 60
    iput-object v2, v0, Lcom/chartboost/sdk/impl/g;->j:Lcom/chartboost/sdk/Tracking/a;

    move-object/from16 v2, p12

    .line 61
    iput-object v2, v0, Lcom/chartboost/sdk/impl/g;->k:Landroid/os/Handler;

    move-object/from16 v2, p13

    .line 62
    iput-object v2, v0, Lcom/chartboost/sdk/impl/g;->l:Lcom/chartboost/sdk/d;

    move-object/from16 v2, p14

    .line 63
    iput-object v2, v0, Lcom/chartboost/sdk/impl/g;->m:Lcom/chartboost/sdk/Networking/i;

    move-object/from16 v2, p15

    .line 64
    iput-object v2, v0, Lcom/chartboost/sdk/impl/g;->n:Lcom/chartboost/sdk/e;

    move-object/from16 v2, p16

    .line 65
    iput-object v2, v0, Lcom/chartboost/sdk/impl/g;->o:Lcom/chartboost/sdk/Networking/j;

    move-object/from16 v2, p17

    .line 66
    iput-object v2, v0, Lcom/chartboost/sdk/impl/g;->r:Lcom/chartboost/sdk/impl/u0;

    move-object v2, p1

    .line 67
    iput-object v2, v0, Lcom/chartboost/sdk/impl/g;->p:Lcom/chartboost/sdk/impl/a;

    const/4 v2, 0x1

    .line 69
    iput v2, v0, Lcom/chartboost/sdk/impl/g;->t:I

    .line 71
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/chartboost/sdk/impl/g;->v:Ljava/util/Map;

    .line 73
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    iput-object v2, v0, Lcom/chartboost/sdk/impl/g;->x:Ljava/util/SortedSet;

    .line 74
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    iput-object v2, v0, Lcom/chartboost/sdk/impl/g;->w:Ljava/util/SortedSet;

    .line 76
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/chartboost/sdk/impl/g;->y:Ljava/util/Map;

    .line 77
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/chartboost/sdk/impl/g;->z:Ljava/util/Map;

    .line 79
    iput-boolean v1, v0, Lcom/chartboost/sdk/impl/g;->u:Z

    return-void
.end method

.method private a(Lcom/chartboost/sdk/Events/ChartboostError;)I
    .registers 3

    if-eqz p1, :cond_b

    .line 168
    iget p1, p1, Lcom/chartboost/sdk/Events/ChartboostError;->actionType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    const/4 p1, 0x6

    goto :goto_c

    :cond_9
    const/4 p1, 0x7

    goto :goto_c

    :cond_b
    const/4 p1, 0x4

    :goto_c
    return p1
.end method

.method private a(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/Model/CBError$CBImpressionError;
    .registers 4

    .line 145
    iget v0, p1, Lcom/chartboost/sdk/Model/a;->b:I

    if-nez v0, :cond_24

    .line 146
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g;->p:Lcom/chartboost/sdk/impl/a;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/a;->g:Z

    if-nez v0, :cond_14

    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->p:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 147
    :cond_14
    iget-object p1, p1, Lcom/chartboost/sdk/Model/a;->a:Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/g;->a(Lorg/json/JSONObject;)Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    move-result-object p1

    if-eqz p1, :cond_25

    const-string v0, "AdUnitManager"

    const-string v1, "Video media unavailable for the impression"

    .line 149
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :cond_25
    :goto_25
    return-object p1
.end method

.method private a(Lcom/chartboost/sdk/Model/a;Ljava/io/File;)Lcom/chartboost/sdk/Model/CBError$CBImpressionError;
    .registers 6

    .line 150
    iget-object p1, p1, Lcom/chartboost/sdk/Model/a;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_b
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/Model/b;

    .line 151
    invoke-virtual {v1, p2}, Lcom/chartboost/sdk/Model/b;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_b

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asset does not exist: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdUnitManager"

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ASSET_MISSING:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    goto :goto_b

    :cond_3c
    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/Model/CBError$CBImpressionError;
    .registers 3

    if-nez p1, :cond_a

    .line 154
    iget p1, p2, Lcom/chartboost/sdk/Model/a;->b:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_a

    .line 155
    sget-object p1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_LOADING_WEB_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return-object p1
.end method

.method private a(Lcom/chartboost/sdk/impl/h;Ljava/lang/String;)Lcom/chartboost/sdk/Model/c;
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v17, p2

    .line 156
    new-instance v20, Lcom/chartboost/sdk/Model/c;

    move-object/from16 v2, v20

    iget-object v3, v1, Lcom/chartboost/sdk/impl/h;->d:Lcom/chartboost/sdk/Model/a;

    new-instance v5, Lcom/chartboost/sdk/impl/f;

    move-object v4, v5

    invoke-direct {v5, v0, v1}, Lcom/chartboost/sdk/impl/f;-><init>(Lcom/chartboost/sdk/impl/g;Lcom/chartboost/sdk/impl/h;)V

    iget-object v5, v0, Lcom/chartboost/sdk/impl/g;->c:Lcom/chartboost/sdk/Libraries/f;

    iget-object v6, v0, Lcom/chartboost/sdk/impl/g;->d:Lcom/chartboost/sdk/Networking/g;

    iget-object v7, v0, Lcom/chartboost/sdk/impl/g;->f:Lcom/chartboost/sdk/Model/g;

    iget-object v8, v0, Lcom/chartboost/sdk/impl/g;->h:Landroid/content/SharedPreferences;

    iget-object v9, v0, Lcom/chartboost/sdk/impl/g;->j:Lcom/chartboost/sdk/Tracking/a;

    iget-object v10, v0, Lcom/chartboost/sdk/impl/g;->k:Landroid/os/Handler;

    iget-object v11, v0, Lcom/chartboost/sdk/impl/g;->l:Lcom/chartboost/sdk/d;

    iget-object v12, v0, Lcom/chartboost/sdk/impl/g;->m:Lcom/chartboost/sdk/Networking/i;

    iget-object v13, v0, Lcom/chartboost/sdk/impl/g;->n:Lcom/chartboost/sdk/e;

    iget-object v14, v0, Lcom/chartboost/sdk/impl/g;->o:Lcom/chartboost/sdk/Networking/j;

    iget-object v15, v0, Lcom/chartboost/sdk/impl/g;->p:Lcom/chartboost/sdk/impl/a;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/h;->b:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/chartboost/sdk/impl/g;->q:Lcom/chartboost/sdk/ChartboostBanner;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/chartboost/sdk/impl/g;->r:Lcom/chartboost/sdk/impl/u0;

    move-object/from16 v19, v1

    invoke-direct/range {v2 .. v19}, Lcom/chartboost/sdk/Model/c;-><init>(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/d;Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/Networking/g;Lcom/chartboost/sdk/Model/g;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Tracking/a;Landroid/os/Handler;Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/Networking/i;Lcom/chartboost/sdk/e;Lcom/chartboost/sdk/Networking/j;Lcom/chartboost/sdk/impl/a;Ljava/lang/String;Ljava/lang/String;Landroid/widget/RelativeLayout;Lcom/chartboost/sdk/impl/u0;)V

    return-object v20
.end method

.method private a(Lcom/chartboost/sdk/impl/h;ILjava/lang/String;)V
    .registers 29

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 28
    :try_start_4
    iget-object v0, v9, Lcom/chartboost/sdk/impl/g;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/h;

    .line 29
    iget-object v1, v9, Lcom/chartboost/sdk/impl/g;->p:Lcom/chartboost/sdk/impl/a;

    iget v1, v1, Lcom/chartboost/sdk/impl/a;->a:I

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ne v1, v11, :cond_17

    const/4 v14, 0x1

    goto :goto_18

    :cond_17
    const/4 v14, 0x0

    .line 30
    :goto_18
    iget-object v1, v9, Lcom/chartboost/sdk/impl/g;->p:Lcom/chartboost/sdk/impl/a;

    iget v1, v1, Lcom/chartboost/sdk/impl/a;->a:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_21

    const/4 v15, 0x1

    goto :goto_22

    :cond_21
    const/4 v15, 0x0

    .line 31
    :goto_22
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/h;->w:Z

    if-eqz v1, :cond_2b

    if-nez v14, :cond_2b

    const/16 v16, 0x1

    goto :goto_2d

    :cond_2b
    const/16 v16, 0x0

    .line 33
    :goto_2d
    iget-object v1, v9, Lcom/chartboost/sdk/impl/g;->i:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v4

    .line 35
    new-instance v23, Lcom/chartboost/sdk/impl/g$a;

    move-object/from16 v1, v23

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move v6, v14

    move v7, v15

    move/from16 v8, v16

    invoke-direct/range {v1 .. v8}, Lcom/chartboost/sdk/impl/g$a;-><init>(Lcom/chartboost/sdk/impl/g;Lcom/chartboost/sdk/impl/h;JZZZ)V

    .line 66
    iget v1, v10, Lcom/chartboost/sdk/impl/h;->c:I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_44} :catch_177

    if-ne v1, v11, :cond_48

    const/4 v1, 0x1

    goto :goto_49

    :cond_48
    const/4 v1, 0x0

    :goto_49
    const-string v2, "cache"

    const-string v3, "location"

    if-eqz v14, :cond_8b

    .line 68
    :try_start_4f
    new-instance v0, Lcom/chartboost/sdk/impl/p0;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_51} :catch_177

    const-string v18, "https://live.chartboost.com"

    :try_start_53
    iget-object v4, v9, Lcom/chartboost/sdk/impl/g;->p:Lcom/chartboost/sdk/impl/a;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/a;->d:Ljava/lang/String;

    iget-object v5, v9, Lcom/chartboost/sdk/impl/g;->f:Lcom/chartboost/sdk/Model/g;

    iget-object v6, v9, Lcom/chartboost/sdk/impl/g;->j:Lcom/chartboost/sdk/Tracking/a;

    iget-object v7, v9, Lcom/chartboost/sdk/impl/g;->r:Lcom/chartboost/sdk/impl/u0;

    move-object/from16 v17, v0

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v22, p2

    move-object/from16 v24, v7

    invoke-direct/range {v17 .. v24}, Lcom/chartboost/sdk/impl/p0;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Model/g;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/p0$a;Lcom/chartboost/sdk/impl/u0;)V

    .line 69
    iput-boolean v13, v0, Lcom/chartboost/sdk/impl/p0;->m:Z

    .line 70
    iget-object v4, v10, Lcom/chartboost/sdk/impl/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_7a} :catch_177

    const-string v1, "raw"

    .line 72
    :try_start_7c
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v10, Lcom/chartboost/sdk/impl/h;->e:Ljava/lang/Integer;

    goto/16 :goto_158

    :cond_8b
    if-eqz v15, :cond_d5

    .line 75
    new-instance v0, Lcom/chartboost/sdk/Model/e;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_8f} :catch_177

    const-string v18, "https://da.chartboost.com"

    :try_start_91
    iget-object v1, v9, Lcom/chartboost/sdk/impl/g;->p:Lcom/chartboost/sdk/impl/a;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/a;->e:Ljava/lang/String;

    iget-object v2, v9, Lcom/chartboost/sdk/impl/g;->f:Lcom/chartboost/sdk/Model/g;

    iget-object v3, v9, Lcom/chartboost/sdk/impl/g;->j:Lcom/chartboost/sdk/Tracking/a;

    move-object/from16 v17, v0

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move/from16 v22, p2

    invoke-direct/range {v17 .. v23}, Lcom/chartboost/sdk/Model/e;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Model/g;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/p0$a;)V

    .line 76
    new-instance v1, Lcom/chartboost/sdk/Networking/a;

    iget-object v2, v9, Lcom/chartboost/sdk/impl/g;->p:Lcom/chartboost/sdk/impl/a;

    iget v2, v2, Lcom/chartboost/sdk/impl/a;->a:I

    iget-object v3, v9, Lcom/chartboost/sdk/impl/g;->q:Lcom/chartboost/sdk/ChartboostBanner;

    invoke-virtual {v3}, Lcom/chartboost/sdk/ChartboostBanner;->getBannerHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v9, Lcom/chartboost/sdk/impl/g;->q:Lcom/chartboost/sdk/ChartboostBanner;

    invoke-virtual {v4}, Lcom/chartboost/sdk/ChartboostBanner;->getBannerWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v10, Lcom/chartboost/sdk/impl/h;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/chartboost/sdk/Networking/a;-><init>(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 77
    new-instance v2, Lcom/chartboost/sdk/impl/r0;

    iget-object v3, v9, Lcom/chartboost/sdk/impl/g;->r:Lcom/chartboost/sdk/impl/u0;

    invoke-direct {v2, v0, v1, v3}, Lcom/chartboost/sdk/impl/r0;-><init>(Lcom/chartboost/sdk/Model/e;Lcom/chartboost/sdk/Networking/a;Lcom/chartboost/sdk/impl/u0;)V

    .line 78
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v10, Lcom/chartboost/sdk/impl/h;->e:Ljava/lang/Integer;

    move-object v0, v2

    goto/16 :goto_158

    :cond_d5
    if-eqz v16, :cond_11c

    .line 80
    iget-object v4, v9, Lcom/chartboost/sdk/impl/g;->p:Lcom/chartboost/sdk/impl/a;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/a;->e:Ljava/lang/String;

    new-array v5, v13, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/h;->C:Ljava/lang/String;

    aput-object v0, v5, v12

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 81
    new-instance v0, Lcom/chartboost/sdk/impl/q0;

    iget-object v4, v9, Lcom/chartboost/sdk/impl/g;->f:Lcom/chartboost/sdk/Model/g;

    iget-object v5, v9, Lcom/chartboost/sdk/impl/g;->j:Lcom/chartboost/sdk/Tracking/a;

    iget-object v6, v9, Lcom/chartboost/sdk/impl/g;->r:Lcom/chartboost/sdk/impl/u0;

    move-object/from16 v17, v0

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move/from16 v21, p2

    move-object/from16 v22, v23

    move-object/from16 v23, v6

    invoke-direct/range {v17 .. v23}, Lcom/chartboost/sdk/impl/q0;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/Model/g;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/p0$a;Lcom/chartboost/sdk/impl/u0;)V

    .line 82
    iget-object v4, v9, Lcom/chartboost/sdk/impl/g;->c:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v4}, Lcom/chartboost/sdk/Libraries/f;->d()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "cache_assets"

    .line 83
    invoke-virtual {v0, v5, v4, v12}, Lcom/chartboost/sdk/impl/q0;->a(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 84
    iget-object v4, v10, Lcom/chartboost/sdk/impl/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v12}, Lcom/chartboost/sdk/impl/q0;->a(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 85
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v12}, Lcom/chartboost/sdk/impl/q0;->a(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 86
    iput-boolean v13, v0, Lcom/chartboost/sdk/impl/p0;->m:Z

    .line 88
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v10, Lcom/chartboost/sdk/impl/h;->e:Ljava/lang/Integer;

    goto :goto_158

    .line 90
    :cond_11c
    new-instance v0, Lcom/chartboost/sdk/impl/p0;
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_11e} :catch_177

    const-string v18, "https://live.chartboost.com"

    :try_start_120
    iget-object v4, v9, Lcom/chartboost/sdk/impl/g;->p:Lcom/chartboost/sdk/impl/a;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/a;->d:Ljava/lang/String;

    iget-object v5, v9, Lcom/chartboost/sdk/impl/g;->f:Lcom/chartboost/sdk/Model/g;

    iget-object v6, v9, Lcom/chartboost/sdk/impl/g;->j:Lcom/chartboost/sdk/Tracking/a;

    iget-object v7, v9, Lcom/chartboost/sdk/impl/g;->r:Lcom/chartboost/sdk/impl/u0;

    move-object/from16 v17, v0

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v22, p2

    move-object/from16 v24, v7

    invoke-direct/range {v17 .. v24}, Lcom/chartboost/sdk/impl/p0;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Model/g;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/p0$a;Lcom/chartboost/sdk/impl/u0;)V
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_139} :catch_177

    const-string v4, "local-videos"

    .line 91
    :try_start_13b
    iget-object v5, v9, Lcom/chartboost/sdk/impl/g;->c:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v5}, Lcom/chartboost/sdk/Libraries/f;->c()Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    iput-boolean v13, v0, Lcom/chartboost/sdk/impl/p0;->m:Z

    .line 93
    iget-object v4, v10, Lcom/chartboost/sdk/impl/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v10, Lcom/chartboost/sdk/impl/h;->e:Ljava/lang/Integer;

    .line 98
    :goto_158
    iput v13, v0, Lcom/chartboost/sdk/Networking/c;->i:I

    .line 100
    iput v11, v9, Lcom/chartboost/sdk/impl/g;->s:I

    .line 101
    iget-object v1, v9, Lcom/chartboost/sdk/impl/g;->d:Lcom/chartboost/sdk/Networking/g;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/Networking/g;->a(Lcom/chartboost/sdk/Networking/c;)V

    .line 103
    iget-object v0, v9, Lcom/chartboost/sdk/impl/g;->j:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, v9, Lcom/chartboost/sdk/impl/g;->p:Lcom/chartboost/sdk/impl/a;

    iget-object v2, v10, Lcom/chartboost/sdk/impl/h;->e:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/a;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v10, Lcom/chartboost/sdk/impl/h;->b:Ljava/lang/String;

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v3, v2}, Lcom/chartboost/sdk/Tracking/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_176
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_176} :catch_177

    goto :goto_18d

    :catch_177
    move-exception v0

    .line 105
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "sendAdGetRequest"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 106
    new-instance v0, Lcom/chartboost/sdk/Model/CBError;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$b;->a:Lcom/chartboost/sdk/Model/CBError$b;

    const-string v2, "error sending ad-get request"

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$b;Ljava/lang/String;)V

    invoke-virtual {v9, v10, v0}, Lcom/chartboost/sdk/impl/g;->a(Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Model/CBError;)V

    :goto_18d
    return-void
.end method

.method private a(Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Model/c;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .registers 6

    if-nez p3, :cond_25

    const/4 p3, 0x7

    .line 137
    iput p3, p1, Lcom/chartboost/sdk/impl/h;->c:I

    .line 138
    new-instance p3, Lcom/chartboost/sdk/d$a;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/g;->l:Lcom/chartboost/sdk/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0xa

    invoke-direct {p3, v0, v1}, Lcom/chartboost/sdk/d$a;-><init>(Lcom/chartboost/sdk/d;I)V

    .line 139
    iput-object p2, p3, Lcom/chartboost/sdk/d$a;->c:Lcom/chartboost/sdk/Model/c;

    .line 140
    iget-object p2, p0, Lcom/chartboost/sdk/impl/g;->i:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p1, Lcom/chartboost/sdk/impl/h;->j:Ljava/lang/Long;

    .line 141
    iget-object p1, p0, Lcom/chartboost/sdk/impl/g;->k:Landroid/os/Handler;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2b

    .line 143
    :cond_25
    invoke-direct {p0, p1, p3}, Lcom/chartboost/sdk/impl/g;->c(Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 144
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/g;->i(Lcom/chartboost/sdk/impl/h;)V

    :goto_2b
    return-void
.end method

.method private a(Ljava/util/SortedSet;IIILjava/lang/String;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet<",
            "Lcom/chartboost/sdk/impl/h;",
            ">;III",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/h;

    .line 4
    iget v1, v0, Lcom/chartboost/sdk/impl/h;->c:I

    if-ne v1, p2, :cond_45

    iget-object v1, v0, Lcom/chartboost/sdk/impl/h;->d:Lcom/chartboost/sdk/Model/a;

    if-eqz v1, :cond_19

    goto :goto_45

    .line 9
    :cond_19
    iget-object v1, v0, Lcom/chartboost/sdk/impl/h;->b:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/chartboost/sdk/impl/g;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_4

    .line 12
    :cond_22
    iget-object v1, p0, Lcom/chartboost/sdk/impl/g;->p:Lcom/chartboost/sdk/impl/a;

    iget-object v2, v0, Lcom/chartboost/sdk/impl/h;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/a;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3b

    const/16 v1, 0x8

    .line 13
    iput v1, v0, Lcom/chartboost/sdk/impl/h;->c:I

    .line 14
    iget-object v1, p0, Lcom/chartboost/sdk/impl/g;->v:Ljava/util/Map;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/h;->b:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 19
    :cond_3b
    iput p3, v0, Lcom/chartboost/sdk/impl/h;->c:I

    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 21
    invoke-direct {p0, v0, p4, p5}, Lcom/chartboost/sdk/impl/g;->a(Lcom/chartboost/sdk/impl/h;ILjava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 22
    :cond_45
    :goto_45
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    :cond_49
    const/4 p1, 0x0

    return p1
.end method

.method private b(Lcom/chartboost/sdk/Model/a;Ljava/io/File;)Ljava/lang/String;
    .registers 5

    .line 49
    iget v0, p1, Lcom/chartboost/sdk/Model/a;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/impl/g;->c(Lcom/chartboost/sdk/Model/a;Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return-object p1
.end method

.method private b(Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .registers 12
    .param p2    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "show"

    const-string v1, "cache"

    if-eqz p1, :cond_15

    .line 51
    iget-object v2, p1, Lcom/chartboost/sdk/impl/h;->b:Ljava/lang/String;

    .line 52
    iget p1, p1, Lcom/chartboost/sdk/impl/h;->c:I

    if-eqz p1, :cond_17

    const/4 v3, 0x2

    if-eq p1, v3, :cond_17

    const/4 v3, 0x4

    if-ne p1, v3, :cond_13

    goto :goto_17

    :cond_13
    move-object v1, v0

    goto :goto_17

    :cond_15
    const-string v2, ""

    :cond_17
    :goto_17
    move-object v6, v2

    .line 58
    iget-object v4, p0, Lcom/chartboost/sdk/impl/g;->p:Lcom/chartboost/sdk/impl/a;

    iget p1, v4, Lcom/chartboost/sdk/impl/a;->a:I

    const/4 v2, 0x3

    if-ne p1, v2, :cond_45

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 61
    invoke-static {p2}, Lcom/chartboost/sdk/Events/BannerErrorMap;->mapImpressionErrorToBannerShowError(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)Lcom/chartboost/sdk/Events/ChartboostError;

    move-result-object p1

    goto :goto_2e

    .line 63
    :cond_2a
    invoke-static {p2}, Lcom/chartboost/sdk/Events/BannerErrorMap;->mapImpressionErrorToBannerCacheError(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)Lcom/chartboost/sdk/Events/ChartboostError;

    move-result-object p1

    :goto_2e
    move-object v8, p1

    .line 65
    invoke-direct {p0, v8}, Lcom/chartboost/sdk/impl/g;->a(Lcom/chartboost/sdk/Events/ChartboostError;)I

    move-result v5

    .line 66
    iget-object p1, p0, Lcom/chartboost/sdk/impl/g;->k:Landroid/os/Handler;

    new-instance p2, Lcom/chartboost/sdk/impl/a$a;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/g;->p:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    move-object v3, p2

    invoke-direct/range {v3 .. v8}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;Lcom/chartboost/sdk/Events/ChartboostError;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_56

    .line 68
    :cond_45
    iget-object p1, p0, Lcom/chartboost/sdk/impl/g;->k:Landroid/os/Handler;

    new-instance v0, Lcom/chartboost/sdk/impl/a$a;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x4

    const/4 v8, 0x0

    move-object v3, v0

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;Lcom/chartboost/sdk/Events/ChartboostError;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_56
    return-void
.end method

.method private b(Lcom/chartboost/sdk/impl/h;Ljava/lang/String;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 69
    iget-object v2, v0, Lcom/chartboost/sdk/impl/g;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/Model/h;

    iget-boolean v2, v2, Lcom/chartboost/sdk/Model/h;->o:Z

    if-nez v2, :cond_11

    return-void

    .line 73
    :cond_11
    iget-object v2, v1, Lcom/chartboost/sdk/impl/h;->d:Lcom/chartboost/sdk/Model/a;

    const/4 v3, 0x0

    if-eqz v2, :cond_19

    iget-object v2, v2, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    goto :goto_1a

    :cond_19
    move-object v2, v3

    .line 75
    :goto_1a
    iget v4, v1, Lcom/chartboost/sdk/impl/h;->c:I

    const/4 v5, 0x4

    const/4 v6, 0x2

    if-eqz v4, :cond_28

    if-eq v4, v6, :cond_28

    if-ne v4, v5, :cond_25

    goto :goto_28

    :cond_25
    const-string v4, "show"

    goto :goto_2a

    :cond_28
    :goto_28
    const-string v4, "cache"

    :goto_2a
    move-object v10, v4

    .line 81
    iget-object v4, v1, Lcom/chartboost/sdk/impl/h;->d:Lcom/chartboost/sdk/Model/a;

    if-eqz v4, :cond_36

    .line 82
    iget v4, v4, Lcom/chartboost/sdk/Model/a;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_38

    .line 84
    :cond_36
    iget-object v4, v1, Lcom/chartboost/sdk/impl/h;->e:Ljava/lang/Integer;

    :goto_38
    if-eqz v4, :cond_45

    .line 87
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_43

    const-string v3, "native"

    goto :goto_45

    :cond_43
    const-string v3, "web"

    :cond_45
    :goto_45
    move-object v11, v3

    .line 90
    iget v3, v1, Lcom/chartboost/sdk/impl/h;->c:I

    if-ltz v3, :cond_52

    iget-object v4, v0, Lcom/chartboost/sdk/impl/g;->D:[Ljava/lang/String;

    array-length v7, v4

    if-ge v3, v7, :cond_52

    aget-object v3, v4, v3

    goto :goto_65

    :cond_52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/chartboost/sdk/impl/h;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_65
    const/16 v4, 0xb

    .line 93
    new-array v4, v4, [Lcom/chartboost/sdk/Libraries/e$a;

    iget-object v7, v1, Lcom/chartboost/sdk/impl/h;->p:Ljava/lang/Integer;

    const-string v8, "adGetRequestSubmitToCallbackMs"

    .line 94
    invoke-static {v8, v7}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v4, v8

    iget-object v7, v1, Lcom/chartboost/sdk/impl/h;->n:Ljava/lang/Integer;

    const-string v8, "downloadRequestToCompletionMs"

    .line 95
    invoke-static {v8, v7}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v4, v8

    iget-object v7, v1, Lcom/chartboost/sdk/impl/h;->o:Ljava/lang/Integer;

    const-string v8, "downloadAccumulatedProcessingMs"

    .line 96
    invoke-static {v8, v7}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v7

    aput-object v7, v4, v6

    iget-object v6, v1, Lcom/chartboost/sdk/impl/h;->q:Ljava/lang/Integer;

    const-string v7, "adGetRequestGetResponseCodeMs"

    .line 97
    invoke-static {v7, v6}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v4, v7

    iget-object v6, v1, Lcom/chartboost/sdk/impl/h;->r:Ljava/lang/Integer;

    const-string v7, "adGetRequestReadDataMs"

    .line 98
    invoke-static {v7, v6}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v5, v1, Lcom/chartboost/sdk/impl/h;->k:Ljava/lang/Integer;

    const-string v6, "cacheRequestToReadyMs"

    .line 99
    invoke-static {v6, v5}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v4, v6

    iget-object v5, v1, Lcom/chartboost/sdk/impl/h;->l:Ljava/lang/Integer;

    const-string v6, "showRequestToReadyMs"

    .line 100
    invoke-static {v6, v5}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v5

    const/4 v6, 0x6

    aput-object v5, v4, v6

    iget-object v5, v1, Lcom/chartboost/sdk/impl/h;->m:Ljava/lang/Integer;

    const-string v6, "showRequestToShownMs"

    .line 101
    invoke-static {v6, v5}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v5

    const/4 v6, 0x7

    aput-object v5, v4, v6

    const-string v5, "adId"

    .line 102
    invoke-static {v5, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    const/16 v5, 0x8

    aput-object v2, v4, v5

    iget-object v1, v1, Lcom/chartboost/sdk/impl/h;->b:Ljava/lang/String;

    const-string v2, "location"

    .line 103
    invoke-static {v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v4, v2

    const-string v1, "state"

    .line 104
    invoke-static {v1, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v4, v2

    .line 105
    invoke-static {v4}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v14

    .line 119
    iget-object v7, v0, Lcom/chartboost/sdk/impl/g;->j:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, v0, Lcom/chartboost/sdk/impl/g;->p:Lcom/chartboost/sdk/impl/a;

    iget-object v9, v1, Lcom/chartboost/sdk/impl/a;->b:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v8, p2

    invoke-virtual/range {v7 .. v15}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method private synthetic b(Lcom/chartboost/sdk/impl/h;ZII)V
    .registers 5

    .line 48
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/chartboost/sdk/impl/g;->a(Lcom/chartboost/sdk/impl/h;ZII)V

    return-void
.end method

.method private b(Lcom/chartboost/sdk/Model/a;)Z
    .registers 5

    .line 44
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g;->c:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->a()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    .line 45
    iget-object p1, p1, Lcom/chartboost/sdk/Model/a;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/Model/b;

    .line 46
    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/Model/b;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_12

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Asset does not exist: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/chartboost/sdk/Model/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdUnitManager"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_42
    const/4 p1, 0x1

    return p1
.end method

.method private c(Lcom/chartboost/sdk/impl/h;)Lcom/chartboost/sdk/impl/g$c;
    .registers 6

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-object v1, p1, Lcom/chartboost/sdk/impl/h;->d:Lcom/chartboost/sdk/Model/a;

    .line 2
    iget-object v2, p0, Lcom/chartboost/sdk/impl/g;->c:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/f;->a()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v2

    iget-object v2, v2, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    .line 4
    invoke-direct {p0, v1}, Lcom/chartboost/sdk/impl/g;->a(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    move-result-object v3

    if-nez v3, :cond_15

    .line 7
    invoke-direct {p0, v1, v2}, Lcom/chartboost/sdk/impl/g;->a(Lcom/chartboost/sdk/Model/a;Ljava/io/File;)Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    move-result-object v3

    :cond_15
    if-nez v3, :cond_20

    .line 11
    invoke-direct {p0, v1, v2}, Lcom/chartboost/sdk/impl/g;->b(Lcom/chartboost/sdk/Model/a;Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-direct {p0, v2, v1}, Lcom/chartboost/sdk/impl/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    move-result-object v3

    goto :goto_21

    :cond_20
    move-object v2, v0

    :goto_21
    if-nez v3, :cond_34

    .line 16
    invoke-direct {p0, p1, v2}, Lcom/chartboost/sdk/impl/g;->a(Lcom/chartboost/sdk/impl/h;Ljava/lang/String;)Lcom/chartboost/sdk/Model/c;

    move-result-object v0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_28

    goto :goto_34

    :catch_28
    move-exception p1

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "showReady"

    invoke-static {v1, v2, p1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 20
    sget-object v3, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 23
    :cond_34
    :goto_34
    new-instance p1, Lcom/chartboost/sdk/impl/g$c;

    invoke-direct {p1, p0, v0, v3}, Lcom/chartboost/sdk/impl/g$c;-><init>(Lcom/chartboost/sdk/impl/g;Lcom/chartboost/sdk/Model/c;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    return-object p1
.end method

.method private c(Lcom/chartboost/sdk/Model/a;Ljava/io/File;)Ljava/lang/String;
    .registers 7

    .line 24
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Model/b;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    const-string p1, "AdUnitManager"

    const-string p2, "AdUnit does not have a template body"

    .line 25
    invoke-static {p1, p2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 29
    :cond_d
    invoke-virtual {v0, p2}, Lcom/chartboost/sdk/Model/b;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    .line 31
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 33
    iget-object p1, p1, Lcom/chartboost/sdk/Model/a;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 34
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/Model/b;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/b;->b:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 38
    :cond_3e
    :try_start_3e
    invoke-static {p2, v0}, Lcom/chartboost/sdk/impl/p;->a(Ljava/io/File;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_42} :catch_43

    return-object p1

    :catch_43
    move-exception p1

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v0, "loadTemplateHtml"

    invoke-static {p2, v0, p1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v1
.end method

.method private c(Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .registers 13

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/impl/g;->b(Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 43
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_AD_FOUND:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    if-ne p2, v0, :cond_8

    return-void

    .line 46
    :cond_8
    iget-object v0, p1, Lcom/chartboost/sdk/impl/h;->d:Lcom/chartboost/sdk/Model/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    move-object v7, v0

    goto :goto_12

    :cond_11
    move-object v7, v1

    .line 47
    :goto_12
    iget v0, p1, Lcom/chartboost/sdk/impl/h;->c:I

    if-eqz v0, :cond_20

    const/4 v2, 0x2

    if-eq v0, v2, :cond_20

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1d

    goto :goto_20

    :cond_1d
    const-string v0, "show"

    goto :goto_22

    :cond_20
    :goto_20
    const-string v0, "cache"

    :goto_22
    move-object v4, v0

    .line 50
    iget-object v0, p1, Lcom/chartboost/sdk/impl/h;->d:Lcom/chartboost/sdk/Model/a;

    if-eqz v0, :cond_2a

    iget v0, v0, Lcom/chartboost/sdk/Model/a;->b:I

    goto :goto_30

    :cond_2a
    iget-object v0, p1, Lcom/chartboost/sdk/impl/h;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 53
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3f

    const-string v1, "native"

    goto :goto_41

    :cond_3f
    const-string v1, "web"

    :cond_41
    :goto_41
    move-object v5, v1

    .line 56
    iget v0, p1, Lcom/chartboost/sdk/impl/h;->c:I

    if-ltz v0, :cond_4e

    iget-object v1, p0, Lcom/chartboost/sdk/impl/g;->D:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_4e

    aget-object v0, v1, v0

    goto :goto_61

    :cond_4e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/chartboost/sdk/impl/h;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_61
    move-object v9, v0

    .line 59
    iget-object v2, p0, Lcom/chartboost/sdk/impl/g;->j:Lcom/chartboost/sdk/Tracking/a;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/g;->p:Lcom/chartboost/sdk/impl/a;

    iget-object v3, v0, Lcom/chartboost/sdk/impl/a;->b:Ljava/lang/String;

    .line 62
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p1, Lcom/chartboost/sdk/impl/h;->b:Ljava/lang/String;

    .line 63
    invoke-virtual/range {v2 .. v9}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d(Lcom/chartboost/sdk/impl/h;)V
    .registers 8

    .line 6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/h;

    .line 8
    iget-wide v1, v0, Lcom/chartboost/sdk/Model/h;->q:J

    .line 9
    iget v0, v0, Lcom/chartboost/sdk/Model/h;->r:I

    .line 11
    iget-object v3, p0, Lcom/chartboost/sdk/impl/g;->z:Ljava/util/Map;

    iget-object v4, p1, Lcom/chartboost/sdk/impl/h;->b:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_1d

    const/4 v3, 0x0

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 15
    :cond_1d
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 16
    iget-object v3, p0, Lcom/chartboost/sdk/impl/g;->z:Ljava/util/Map;

    iget-object v4, p1, Lcom/chartboost/sdk/impl/h;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    shl-long v0, v1, v0

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 18
    iget-object v2, p0, Lcom/chartboost/sdk/impl/g;->y:Ljava/util/Map;

    iget-object p1, p1, Lcom/chartboost/sdk/impl/h;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/g;->i:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v3}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v3

    add-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private e(Lcom/chartboost/sdk/impl/h;)V
    .registers 7

    .line 4
    iget-object v0, p1, Lcom/chartboost/sdk/impl/h;->d:Lcom/chartboost/sdk/Model/a;

    if-eqz v0, :cond_38

    iget v0, p1, Lcom/chartboost/sdk/impl/h;->c:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_d

    const/4 v2, 0x4

    if-eq v0, v2, :cond_d

    goto :goto_38

    .line 8
    :cond_d
    iget v0, p1, Lcom/chartboost/sdk/impl/h;->c:I

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x2

    .line 9
    :goto_14
    iget v1, p1, Lcom/chartboost/sdk/impl/h;->g:I

    if-gt v1, v0, :cond_19

    return-void

    .line 13
    :cond_19
    new-instance v1, Lcom/chartboost/sdk/impl/-$$Lambda$g$qnHPDkjebk5A9Ejv71ZOmM-xcF8;

    invoke-direct {v1, p0, p1}, Lcom/chartboost/sdk/impl/-$$Lambda$g$qnHPDkjebk5A9Ejv71ZOmM-xcF8;-><init>(Lcom/chartboost/sdk/impl/g;Lcom/chartboost/sdk/impl/h;)V

    .line 16
    iput v0, p1, Lcom/chartboost/sdk/impl/h;->g:I

    .line 17
    iget-object v2, p0, Lcom/chartboost/sdk/impl/g;->b:Lcom/chartboost/sdk/impl/n;

    iget-object p1, p1, Lcom/chartboost/sdk/impl/h;->d:Lcom/chartboost/sdk/Model/a;

    iget-object p1, p1, Lcom/chartboost/sdk/Model/a;->c:Ljava/util/Map;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 21
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/impl/j;

    .line 22
    invoke-virtual {v2, v0, p1, v3, v1}, Lcom/chartboost/sdk/impl/n;->a(ILjava/util/Map;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/chartboost/sdk/impl/j;)V

    :cond_38
    :goto_38
    return-void
.end method

.method private f(Lcom/chartboost/sdk/impl/h;)V
    .registers 12

    .line 16
    iget-object v0, p1, Lcom/chartboost/sdk/impl/h;->d:Lcom/chartboost/sdk/Model/a;

    .line 17
    iget-object v1, v0, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    .line 18
    iget-object p1, p1, Lcom/chartboost/sdk/impl/h;->b:Ljava/lang/String;

    .line 19
    new-instance v7, Lcom/chartboost/sdk/impl/i;

    invoke-direct {v7, p0, p1}, Lcom/chartboost/sdk/impl/i;-><init>(Lcom/chartboost/sdk/impl/g;Ljava/lang/String;)V

    .line 20
    new-instance v9, Lcom/chartboost/sdk/impl/s0;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/g;->p:Lcom/chartboost/sdk/impl/a;

    iget-object v3, v2, Lcom/chartboost/sdk/impl/a;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/g;->j:Lcom/chartboost/sdk/Tracking/a;

    iget-object v5, p0, Lcom/chartboost/sdk/impl/g;->f:Lcom/chartboost/sdk/Model/g;

    new-instance v6, Lcom/chartboost/sdk/Networking/requests/models/ShowParamsModel;

    invoke-direct {v6, v1, p1}, Lcom/chartboost/sdk/Networking/requests/models/ShowParamsModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/chartboost/sdk/impl/g;->r:Lcom/chartboost/sdk/impl/u0;

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/chartboost/sdk/impl/s0;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/Tracking/a;Lcom/chartboost/sdk/Model/g;Lcom/chartboost/sdk/Networking/requests/models/ShowParamsModel;Lcom/chartboost/sdk/impl/p0$a;Lcom/chartboost/sdk/impl/u0;)V

    .line 21
    iget-object v2, p0, Lcom/chartboost/sdk/impl/g;->d:Lcom/chartboost/sdk/Networking/g;

    invoke-virtual {v2, v9}, Lcom/chartboost/sdk/Networking/g;->a(Lcom/chartboost/sdk/Networking/c;)V

    .line 22
    iget-object v2, p0, Lcom/chartboost/sdk/impl/g;->j:Lcom/chartboost/sdk/Tracking/a;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/g;->p:Lcom/chartboost/sdk/impl/a;

    iget v0, v0, Lcom/chartboost/sdk/Model/a;->b:I

    invoke-virtual {v3, v0}, Lcom/chartboost/sdk/impl/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, p1, v1}, Lcom/chartboost/sdk/Tracking/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private f(Ljava/lang/String;)Z
    .registers 3

    .line 15
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g;->y:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private g()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g;->i:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/chartboost/sdk/impl/g;->y:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 5
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v0, v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_10

    .line 6
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_10

    :cond_2c
    return-void
.end method

.method private g(Lcom/chartboost/sdk/impl/h;)V
    .registers 3

    .line 7
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ASSETS_DOWNLOAD_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {p0, p1, v0}, Lcom/chartboost/sdk/impl/g;->c(Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 8
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/g;->i(Lcom/chartboost/sdk/impl/h;)V

    .line 9
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/g;->d(Lcom/chartboost/sdk/impl/h;)V

    return-void
.end method

.method private h()V
    .registers 13

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/impl/g;->s:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_54

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g;->i:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v3

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g;->y:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v5, v2

    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 5
    iget-object v8, p0, Lcom/chartboost/sdk/impl/g;->v:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/chartboost/sdk/impl/h;

    if-nez v7, :cond_34

    goto :goto_17

    .line 10
    :cond_34
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 11
    iget-wide v8, p0, Lcom/chartboost/sdk/impl/g;->B:J

    sub-long/2addr v6, v3

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    if-eqz v5, :cond_4f

    .line 12
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-gez v10, :cond_17

    .line 13
    :cond_4f
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_17

    :cond_54
    move-object v5, v2

    :cond_55
    const/4 v0, 0x0

    if-eqz v5, :cond_78

    .line 17
    iget-object v3, p0, Lcom/chartboost/sdk/impl/g;->A:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v3, :cond_78

    .line 18
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v6, p0, Lcom/chartboost/sdk/impl/g;->A:Ljava/util/concurrent/ScheduledFuture;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v7}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    sub-long/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 19
    iget-wide v6, p0, Lcom/chartboost/sdk/impl/g;->B:J

    cmp-long v8, v3, v6

    if-gtz v8, :cond_74

    goto :goto_75

    :cond_74
    const/4 v1, 0x0

    :goto_75
    if-eqz v1, :cond_78

    return-void

    .line 24
    :cond_78
    iget-object v1, p0, Lcom/chartboost/sdk/impl/g;->A:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_81

    .line 25
    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 26
    iput-object v2, p0, Lcom/chartboost/sdk/impl/g;->A:Ljava/util/concurrent/ScheduledFuture;

    :cond_81
    if-eqz v5, :cond_9c

    .line 30
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/chartboost/sdk/impl/g$b;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v1

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/chartboost/sdk/impl/g$b;-><init>(Lcom/chartboost/sdk/impl/g;ILjava/lang/String;Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 32
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 33
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/g;->A:Ljava/util/concurrent/ScheduledFuture;

    :cond_9c
    return-void
.end method

.method private h(Lcom/chartboost/sdk/impl/h;)V
    .registers 11

    .line 34
    iget v0, p1, Lcom/chartboost/sdk/impl/h;->c:I

    .line 36
    iget-object v1, p0, Lcom/chartboost/sdk/impl/g;->i:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v1

    .line 37
    iget-object v3, p1, Lcom/chartboost/sdk/impl/h;->h:Ljava/lang/Long;

    if-eqz v3, :cond_1f

    .line 38
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v1, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    long-to-int v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p1, Lcom/chartboost/sdk/impl/h;->k:Ljava/lang/Integer;

    .line 39
    :cond_1f
    iget-object v3, p1, Lcom/chartboost/sdk/impl/h;->i:Ljava/lang/Long;

    if-eqz v3, :cond_35

    .line 40
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v1, v5

    invoke-virtual {v4, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    long-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p1, Lcom/chartboost/sdk/impl/h;->l:Ljava/lang/Integer;

    :cond_35
    const-string v1, "ad-unit-cached"

    .line 42
    invoke-direct {p0, p1, v1}, Lcom/chartboost/sdk/impl/g;->b(Lcom/chartboost/sdk/impl/h;Ljava/lang/String;)V

    const/4 v1, 0x6

    .line 44
    iput v1, p1, Lcom/chartboost/sdk/impl/h;->c:I

    .line 46
    iget-boolean v1, p1, Lcom/chartboost/sdk/impl/h;->f:Z

    if-eqz v1, :cond_56

    .line 47
    iget-object v1, p0, Lcom/chartboost/sdk/impl/g;->k:Landroid/os/Handler;

    new-instance v8, Lcom/chartboost/sdk/impl/a$a;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/g;->p:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p1, Lcom/chartboost/sdk/impl/h;->b:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;Lcom/chartboost/sdk/Events/ChartboostError;)V

    invoke-virtual {v1, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_56
    const/4 v1, 0x5

    if-ne v0, v1, :cond_5c

    .line 52
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/g;->j(Lcom/chartboost/sdk/impl/h;)V

    :cond_5c
    return-void
.end method

.method private i(Lcom/chartboost/sdk/impl/h;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g;->v:Ljava/util/Map;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/h;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x8

    .line 3
    iput v0, p1, Lcom/chartboost/sdk/impl/h;->c:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Lcom/chartboost/sdk/impl/h;->d:Lcom/chartboost/sdk/Model/a;

    return-void
.end method

.method private i()Z
    .registers 4

    .line 5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g;->p:Lcom/chartboost/sdk/impl/a;

    iget v0, v0, Lcom/chartboost/sdk/impl/a;->a:I

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 8
    :cond_8
    sget-boolean v0, Lcom/chartboost/sdk/j;->p:Z

    if-eqz v0, :cond_d

    return v1

    .line 11
    :cond_d
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g;->h:Landroid/content/SharedPreferences;

    const-string v2, "cbPrefSessionCount"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method private j(Lcom/chartboost/sdk/impl/h;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g;->e:Lcom/chartboost/sdk/Networking/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Networking/h;->d()Z

    move-result v0

    if-nez v0, :cond_e

    .line 3
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNET_UNAVAILABLE_AT_SHOW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {p0, p1, v0}, Lcom/chartboost/sdk/impl/g;->b(Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    return-void

    .line 7
    :cond_e
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/g;->c(Lcom/chartboost/sdk/impl/h;)Lcom/chartboost/sdk/impl/g$c;

    move-result-object v0

    .line 8
    iget-object v1, v0, Lcom/chartboost/sdk/impl/g$c;->a:Lcom/chartboost/sdk/Model/c;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/g$c;->b:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {p0, p1, v1, v0}, Lcom/chartboost/sdk/impl/g;->a(Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Model/c;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    return-void
.end method

.method public static synthetic lambda$qnHPDkjebk5A9Ejv71ZOmM-xcF8(Lcom/chartboost/sdk/impl/g;Lcom/chartboost/sdk/impl/h;ZII)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/chartboost/sdk/impl/g;->b(Lcom/chartboost/sdk/impl/h;ZII)V

    return-void
.end method


# virtual methods
.method a(Lorg/json/JSONObject;)Lcom/chartboost/sdk/Model/CBError$CBImpressionError;
    .registers 4

    if-nez p1, :cond_5

    .line 183
    sget-object p1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_RESPONSE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    return-object p1

    :cond_5
    const-string v0, "assets"

    .line 186
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_10

    .line 190
    sget-object p1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_RESPONSE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    return-object p1

    .line 193
    :cond_10
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->e()I

    move-result v0

    .line 194
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "video-portrait"

    goto :goto_1f

    :cond_1d
    const-string v0, "video-landscape"

    .line 195
    :goto_1f
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_28

    .line 199
    sget-object p1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_UNAVAILABLE_FOR_CURRENT_ORIENTATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    return-object p1

    :cond_28
    const-string v0, "id"

    .line 202
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 203
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 205
    sget-object p1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_ID_MISSING:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    return-object p1

    .line 208
    :cond_37
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/g;->c:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/f;->a()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v1

    iget-object v1, v1, Lcom/chartboost/sdk/Libraries/g;->d:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4c

    const/4 p1, 0x0

    goto :goto_4e

    :cond_4c
    sget-object p1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    :goto_4e
    return-object p1
.end method

.method a(Lcom/chartboost/sdk/impl/h;)V
    .registers 10

    .line 169
    iget v0, p1, Lcom/chartboost/sdk/impl/h;->c:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_51

    .line 171
    iget-object v0, p1, Lcom/chartboost/sdk/impl/h;->i:Ljava/lang/Long;

    if-eqz v0, :cond_27

    iget-object v0, p1, Lcom/chartboost/sdk/impl/h;->m:Ljava/lang/Integer;

    if-nez v0, :cond_27

    .line 172
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/g;->i:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v1

    iget-object v3, p1, Lcom/chartboost/sdk/impl/h;->i:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/chartboost/sdk/impl/h;->m:Ljava/lang/Integer;

    :cond_27
    const-string v0, "ad-unit-shown"

    .line 174
    invoke-direct {p0, p1, v0}, Lcom/chartboost/sdk/impl/g;->b(Lcom/chartboost/sdk/impl/h;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g;->z:Ljava/util/Map;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/h;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g;->k:Landroid/os/Handler;

    new-instance v7, Lcom/chartboost/sdk/impl/a$a;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/g;->p:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p1, Lcom/chartboost/sdk/impl/h;->b:Ljava/lang/String;

    const/4 v3, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;Lcom/chartboost/sdk/Events/ChartboostError;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 179
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/g;->f(Lcom/chartboost/sdk/impl/h;)V

    .line 181
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/g;->i(Lcom/chartboost/sdk/impl/h;)V

    .line 182
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/g;->f()V

    :cond_51
    return-void
.end method

.method a(Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .registers 5

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/impl/g;->c(Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 158
    iget v0, p1, Lcom/chartboost/sdk/impl/h;->c:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_20

    .line 159
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    if-ne p2, v0, :cond_17

    const/4 p2, 0x6

    .line 160
    iput p2, p1, Lcom/chartboost/sdk/impl/h;->c:I

    const/4 p2, 0x0

    .line 161
    iput-object p2, p1, Lcom/chartboost/sdk/impl/h;->j:Ljava/lang/Long;

    .line 162
    iput-object p2, p1, Lcom/chartboost/sdk/impl/h;->i:Ljava/lang/Long;

    .line 163
    iput-object p2, p1, Lcom/chartboost/sdk/impl/h;->m:Ljava/lang/Integer;

    goto :goto_20

    .line 165
    :cond_17
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/g;->d(Lcom/chartboost/sdk/impl/h;)V

    .line 166
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/g;->i(Lcom/chartboost/sdk/impl/h;)V

    .line 167
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/g;->f()V

    :cond_20
    :goto_20
    return-void
.end method

.method declared-synchronized a(Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Model/CBError;)V
    .registers 4

    monitor-enter p0

    .line 126
    :try_start_1
    iget v0, p0, Lcom/chartboost/sdk/impl/g;->s:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1c

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 129
    :try_start_8
    iput v0, p0, Lcom/chartboost/sdk/impl/g;->s:I

    .line 131
    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError;->c()Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/impl/g;->c(Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 132
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/g;->i(Lcom/chartboost/sdk/impl/h;)V

    .line 134
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/g;->d(Lcom/chartboost/sdk/impl/h;)V

    .line 136
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/g;->f()V
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized a(Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Model/a;)V
    .registers 5

    monitor-enter p0

    const/4 v0, 0x1

    .line 107
    :try_start_2
    iput v0, p0, Lcom/chartboost/sdk/impl/g;->s:I

    .line 109
    iget v0, p1, Lcom/chartboost/sdk/impl/h;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x4

    goto :goto_c

    :cond_b
    const/4 v0, 0x5

    :goto_c
    iput v0, p1, Lcom/chartboost/sdk/impl/h;->c:I

    .line 110
    iput-object p2, p1, Lcom/chartboost/sdk/impl/h;->d:Lcom/chartboost/sdk/Model/a;

    .line 112
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/g;->e(Lcom/chartboost/sdk/impl/h;)V

    .line 114
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/g;->f()V
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized a(Lcom/chartboost/sdk/impl/h;ZII)V
    .registers 7

    monitor-enter p0

    .line 115
    :try_start_1
    iget v0, p1, Lcom/chartboost/sdk/impl/h;->c:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1e

    .line 116
    :cond_9
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, p1, Lcom/chartboost/sdk/impl/h;->n:Ljava/lang/Integer;

    .line 117
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, p1, Lcom/chartboost/sdk/impl/h;->o:Ljava/lang/Integer;

    if-eqz p2, :cond_1b

    .line 119
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/g;->h(Lcom/chartboost/sdk/impl/h;)V

    goto :goto_1e

    .line 121
    :cond_1b
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/g;->g(Lcom/chartboost/sdk/impl/h;)V

    .line 125
    :cond_1e
    :goto_1e
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/g;->f()V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/chartboost/sdk/impl/y;)Z
    .registers 6

    monitor-enter p0

    .line 23
    :try_start_1
    new-instance v0, Lcom/chartboost/sdk/impl/h;

    iget v1, p0, Lcom/chartboost/sdk/impl/g;->t:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/chartboost/sdk/impl/g;->t:I

    const/4 v2, 0x6

    invoke-direct {v0, v1, p1, v2}, Lcom/chartboost/sdk/impl/h;-><init>(ILjava/lang/String;I)V

    const/4 v1, 0x1

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/chartboost/sdk/impl/h;->e:Ljava/lang/Integer;

    .line 25
    iput-object p2, v0, Lcom/chartboost/sdk/impl/h;->d:Lcom/chartboost/sdk/Model/a;

    .line 26
    iget-object p2, p0, Lcom/chartboost/sdk/impl/g;->v:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object p1, p0, Lcom/chartboost/sdk/impl/g;->w:Ljava/util/SortedSet;

    invoke-interface {p1, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    monitor-exit p0

    return v1

    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method b(Lcom/chartboost/sdk/impl/h;)V
    .registers 4

    .line 120
    iget v0, p1, Lcom/chartboost/sdk/impl/h;->c:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_f

    const/4 v0, 0x6

    .line 121
    iput v0, p1, Lcom/chartboost/sdk/impl/h;->c:I

    const/4 v0, 0x0

    .line 122
    iput-object v0, p1, Lcom/chartboost/sdk/impl/h;->j:Ljava/lang/Long;

    .line 123
    iput-object v0, p1, Lcom/chartboost/sdk/impl/h;->i:Ljava/lang/Long;

    .line 124
    iput-object v0, p1, Lcom/chartboost/sdk/impl/h;->m:Ljava/lang/Integer;

    :cond_f
    return-void
.end method

.method b(Ljava/lang/String;)V
    .registers 10

    .line 1
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/g;->i()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2
    new-instance v0, Lcom/chartboost/sdk/impl/a$a;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/g;->p:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->FIRST_SESSION_INTERSTITIALS_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/4 v3, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;Lcom/chartboost/sdk/Events/ChartboostError;)V

    .line 3
    iget-object p1, p0, Lcom/chartboost/sdk/impl/g;->k:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/chartboost/sdk/impl/g;->C:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 6
    :cond_1e
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/h;

    const/4 v1, 0x6

    if-eqz v0, :cond_3b

    .line 10
    iget v2, v0, Lcom/chartboost/sdk/impl/h;->c:I

    if-ne v2, v1, :cond_3b

    iget-object v2, v0, Lcom/chartboost/sdk/impl/h;->d:Lcom/chartboost/sdk/Model/a;

    .line 11
    invoke-direct {p0, v2}, Lcom/chartboost/sdk/impl/g;->b(Lcom/chartboost/sdk/Model/a;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 12
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :cond_3b
    if-nez v0, :cond_53

    .line 17
    new-instance v0, Lcom/chartboost/sdk/impl/h;

    iget v2, p0, Lcom/chartboost/sdk/impl/g;->t:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/chartboost/sdk/impl/g;->t:I

    const/4 v3, 0x0

    invoke-direct {v0, v2, p1, v3}, Lcom/chartboost/sdk/impl/h;-><init>(ILjava/lang/String;I)V

    .line 18
    iget-object v2, p0, Lcom/chartboost/sdk/impl/g;->v:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v2, p0, Lcom/chartboost/sdk/impl/g;->w:Ljava/util/SortedSet;

    invoke-interface {v2, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    :cond_53
    const/4 v2, 0x1

    .line 21
    iput-boolean v2, v0, Lcom/chartboost/sdk/impl/h;->f:Z

    .line 22
    iget-object v2, v0, Lcom/chartboost/sdk/impl/h;->h:Ljava/lang/Long;

    if-nez v2, :cond_66

    .line 23
    iget-object v2, p0, Lcom/chartboost/sdk/impl/g;->i:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/chartboost/sdk/impl/h;->h:Ljava/lang/Long;

    .line 26
    :cond_66
    iget v0, v0, Lcom/chartboost/sdk/impl/h;->c:I

    if-eq v0, v1, :cond_6e

    const/4 v1, 0x7

    if-eq v0, v1, :cond_6e

    goto :goto_82

    .line 37
    :cond_6e
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g;->k:Landroid/os/Handler;

    new-instance v7, Lcom/chartboost/sdk/impl/a$a;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/g;->p:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;Lcom/chartboost/sdk/Events/ChartboostError;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    :goto_82
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/g;->f()V

    return-void
.end method

.method c(Ljava/lang/String;)V
    .registers 4

    .line 64
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chartboost/sdk/impl/h;

    if-eqz p1, :cond_15

    .line 65
    iget v0, p1, Lcom/chartboost/sdk/impl/h;->c:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_15

    .line 66
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/g;->i(Lcom/chartboost/sdk/impl/h;)V

    .line 67
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/g;->f()V

    :cond_15
    return-void
.end method

.method public declared-synchronized d(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chartboost/sdk/impl/h;

    if-eqz p1, :cond_17

    .line 2
    iget v0, p1, Lcom/chartboost/sdk/impl/h;->c:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_13

    const/4 v1, 0x7

    if-ne v0, v1, :cond_17

    .line 5
    :cond_13
    iget-object p1, p1, Lcom/chartboost/sdk/impl/h;->d:Lcom/chartboost/sdk/Model/a;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1a

    monitor-exit p0

    return-object p1

    :cond_17
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method e()V
    .registers 2

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/impl/g;->s:I

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/chartboost/sdk/impl/g;->s:I

    .line 3
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/g;->f()V

    :cond_a
    return-void
.end method

.method e(Ljava/lang/String;)V
    .registers 9

    .line 23
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/g;->i()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 24
    new-instance v0, Lcom/chartboost/sdk/impl/a$a;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/g;->p:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->FIRST_SESSION_INTERSTITIALS_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/4 v3, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;Lcom/chartboost/sdk/Events/ChartboostError;)V

    .line 25
    iget-object p1, p0, Lcom/chartboost/sdk/impl/g;->k:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/chartboost/sdk/impl/g;->C:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 29
    :cond_1e
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/h;

    const/4 v1, 0x1

    if-nez v0, :cond_3e

    .line 31
    new-instance v0, Lcom/chartboost/sdk/impl/h;

    iget v2, p0, Lcom/chartboost/sdk/impl/g;->t:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/chartboost/sdk/impl/g;->t:I

    invoke-direct {v0, v2, p1, v1}, Lcom/chartboost/sdk/impl/h;-><init>(ILjava/lang/String;I)V

    .line 32
    iget-object v2, p0, Lcom/chartboost/sdk/impl/g;->v:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object p1, p0, Lcom/chartboost/sdk/impl/g;->x:Ljava/util/SortedSet;

    invoke-interface {p1, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_3e
    iget-object p1, v0, Lcom/chartboost/sdk/impl/h;->i:Ljava/lang/Long;

    if-nez p1, :cond_4e

    .line 37
    iget-object p1, p0, Lcom/chartboost/sdk/impl/g;->i:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lcom/chartboost/sdk/impl/h;->i:Ljava/lang/Long;

    .line 40
    :cond_4e
    iget p1, v0, Lcom/chartboost/sdk/impl/h;->c:I

    if-eqz p1, :cond_6b

    const/4 v1, 0x2

    if-eq p1, v1, :cond_67

    const/4 v1, 0x4

    if-eq p1, v1, :cond_60

    const/4 v1, 0x6

    if-eq p1, v1, :cond_5c

    goto :goto_77

    .line 66
    :cond_5c
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/g;->j(Lcom/chartboost/sdk/impl/h;)V

    goto :goto_77

    :cond_60
    const/4 p1, 0x5

    .line 67
    iput p1, v0, Lcom/chartboost/sdk/impl/h;->c:I

    .line 68
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/g;->e(Lcom/chartboost/sdk/impl/h;)V

    goto :goto_77

    :cond_67
    const/4 p1, 0x3

    .line 69
    iput p1, v0, Lcom/chartboost/sdk/impl/h;->c:I

    goto :goto_77

    .line 70
    :cond_6b
    iget-object p1, p0, Lcom/chartboost/sdk/impl/g;->w:Ljava/util/SortedSet;

    invoke-interface {p1, v0}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 71
    iget-object p1, p0, Lcom/chartboost/sdk/impl/g;->x:Ljava/util/SortedSet;

    invoke-interface {p1, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 72
    iput v1, v0, Lcom/chartboost/sdk/impl/h;->c:I

    .line 103
    :goto_77
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/g;->f()V

    return-void
.end method

.method f()V
    .registers 10

    .line 1
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/g;->u:Z

    if-nez v0, :cond_32

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    :try_start_6
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/g;->u:Z

    .line 4
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/g;->g()V

    .line 6
    iget v2, p0, Lcom/chartboost/sdk/impl/g;->s:I

    if-ne v2, v1, :cond_28

    .line 7
    iget-object v4, p0, Lcom/chartboost/sdk/impl/g;->x:Ljava/util/SortedSet;

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x1

    const-string v8, "show"

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/chartboost/sdk/impl/g;->a(Ljava/util/SortedSet;IIILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 8
    iget-object v3, p0, Lcom/chartboost/sdk/impl/g;->w:Ljava/util/SortedSet;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x2

    const-string v7, "cache"

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/g;->a(Ljava/util/SortedSet;IIILjava/lang/String;)Z

    .line 11
    :cond_28
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/g;->h()V
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_2e

    .line 13
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/g;->u:Z

    goto :goto_32

    :catchall_2e
    move-exception v1

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/g;->u:Z

    .line 14
    throw v1

    :cond_32
    :goto_32
    return-void
.end method
