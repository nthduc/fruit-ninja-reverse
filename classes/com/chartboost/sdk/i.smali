.class public Lcom/chartboost/sdk/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/i$b;
    }
.end annotation


# static fields
.field private static D:Lcom/chartboost/sdk/i;

.field private static E:Lcom/chartboost/sdk/impl/u0;


# instance fields
.field public final A:Lcom/chartboost/sdk/Networking/i;

.field private B:Ljava/lang/Runnable;

.field private final C:Lcom/chartboost/sdk/impl/p0$a;

.field private final a:Lcom/chartboost/sdk/impl/x;

.field final b:Lcom/chartboost/sdk/Libraries/f;

.field final c:Lcom/chartboost/sdk/Networking/h;

.field final d:Lcom/chartboost/sdk/Libraries/i;

.field final e:Lcom/chartboost/sdk/e;

.field final f:Lcom/chartboost/sdk/Networking/j;

.field final g:Lcom/chartboost/sdk/impl/n;

.field public h:Lcom/chartboost/sdk/b;

.field final i:Landroid/content/SharedPreferences;

.field public j:Lcom/chartboost/sdk/impl/o;

.field k:Z

.field l:Z

.field public final m:Ljava/util/concurrent/Executor;

.field public final n:Lcom/chartboost/sdk/Libraries/d;

.field public final o:Lcom/chartboost/sdk/impl/g;

.field public final p:Lcom/chartboost/sdk/impl/a;

.field public final q:Lcom/chartboost/sdk/impl/g;

.field public final r:Lcom/chartboost/sdk/impl/a;

.field public final s:Lcom/chartboost/sdk/Networking/g;

.field public final t:Lcom/chartboost/sdk/Model/g;

.field public final u:Lcom/chartboost/sdk/impl/g;

.field public final v:Lcom/chartboost/sdk/impl/a;

.field public final w:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/chartboost/sdk/Model/h;",
            ">;"
        }
    .end annotation
.end field

.field public final x:Lcom/chartboost/sdk/Tracking/a;

.field public final y:Landroid/os/Handler;

.field public final z:Lcom/chartboost/sdk/d;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/x;Ljava/util/concurrent/ScheduledExecutorService;Landroid/os/Handler;Ljava/util/concurrent/Executor;)V
    .registers 35

    move-object/from16 v7, p0

    move-object/from16 v6, p5

    move-object/from16 v5, p6

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/chartboost/sdk/b;

    invoke-direct {v0}, Lcom/chartboost/sdk/b;-><init>()V

    iput-object v0, v7, Lcom/chartboost/sdk/i;->h:Lcom/chartboost/sdk/b;

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, v7, Lcom/chartboost/sdk/i;->k:Z

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, v7, Lcom/chartboost/sdk/i;->l:Z

    .line 170
    new-instance v0, Lcom/chartboost/sdk/i$a;

    invoke-direct {v0, v7}, Lcom/chartboost/sdk/i$a;-><init>(Lcom/chartboost/sdk/i;)V

    iput-object v0, v7, Lcom/chartboost/sdk/i;->C:Lcom/chartboost/sdk/impl/p0$a;

    .line 171
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v4

    .line 172
    sput-object p1, Lcom/chartboost/sdk/j;->l:Landroid/content/Context;

    .line 174
    new-instance v0, Lcom/chartboost/sdk/Libraries/d;

    invoke-direct {v0}, Lcom/chartboost/sdk/Libraries/d;-><init>()V

    invoke-virtual {v4, v0}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Libraries/d;

    iput-object v0, v7, Lcom/chartboost/sdk/i;->n:Lcom/chartboost/sdk/Libraries/d;

    .line 175
    new-instance v0, Lcom/chartboost/sdk/Networking/h;

    invoke-direct {v0}, Lcom/chartboost/sdk/Networking/h;-><init>()V

    invoke-virtual {v4, v0}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Networking/h;

    iput-object v0, v7, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/Networking/h;

    .line 177
    new-instance v0, Lcom/chartboost/sdk/Libraries/i;

    invoke-direct {v0}, Lcom/chartboost/sdk/Libraries/i;-><init>()V

    invoke-virtual {v4, v0}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Libraries/i;

    iput-object v0, v7, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Libraries/i;

    .line 179
    new-instance v0, Lcom/chartboost/sdk/Networking/m;

    invoke-direct {v0}, Lcom/chartboost/sdk/Networking/m;-><init>()V

    invoke-virtual {v4, v0}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/chartboost/sdk/Networking/m;

    .line 180
    new-instance v0, Lcom/chartboost/sdk/Networking/g;

    iget-object v11, v7, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/Networking/h;

    iget-object v12, v7, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Libraries/i;

    move-object v8, v0

    move-object/from16 v9, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    invoke-direct/range {v8 .. v14}, Lcom/chartboost/sdk/Networking/g;-><init>(Ljava/util/concurrent/Executor;Lcom/chartboost/sdk/Networking/m;Lcom/chartboost/sdk/Networking/h;Lcom/chartboost/sdk/Libraries/i;Landroid/os/Handler;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v4, v0}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Networking/g;

    iput-object v0, v7, Lcom/chartboost/sdk/i;->s:Lcom/chartboost/sdk/Networking/g;

    .line 187
    sget-object v0, Lcom/chartboost/sdk/j;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/chartboost/sdk/i;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    :try_start_74
    const-string v0, "config"

    const-string v1, "{}"

    .line 191
    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_81} :catch_82

    goto :goto_92

    :catch_82
    move-exception v0

    const-string v1, "Sdk"

    const-string v2, "Unable to process config"

    .line 194
    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 199
    :goto_92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 200
    invoke-static {v0, v1, v3}, Lcom/chartboost/sdk/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Lorg/json/JSONObject;Landroid/content/SharedPreferences;)Z

    move-result v1

    if-nez v1, :cond_ab

    .line 201
    new-instance v1, Lcom/chartboost/sdk/Model/h;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v1, v2}, Lcom/chartboost/sdk/Model/h;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_ab
    move-object/from16 v1, p4

    .line 204
    iput-object v1, v7, Lcom/chartboost/sdk/i;->a:Lcom/chartboost/sdk/impl/x;

    .line 205
    iput-object v6, v7, Lcom/chartboost/sdk/i;->m:Ljava/util/concurrent/Executor;

    .line 206
    iput-object v0, v7, Lcom/chartboost/sdk/i;->w:Ljava/util/concurrent/atomic/AtomicReference;

    .line 207
    iput-object v3, v7, Lcom/chartboost/sdk/i;->i:Landroid/content/SharedPreferences;

    .line 208
    iput-object v5, v7, Lcom/chartboost/sdk/i;->y:Landroid/os/Handler;

    .line 210
    new-instance v1, Lcom/chartboost/sdk/Libraries/f;

    sget-object v2, Lcom/chartboost/sdk/j;->l:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/f;-><init>(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicReference;)V

    iput-object v1, v7, Lcom/chartboost/sdk/i;->b:Lcom/chartboost/sdk/Libraries/f;

    .line 212
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/Model/h;

    iget-boolean v1, v1, Lcom/chartboost/sdk/Model/h;->w:Z

    if-nez v1, :cond_cf

    const-string v1, ""

    .line 213
    sput-object v1, Lcom/chartboost/sdk/j;->r:Ljava/lang/String;

    goto :goto_d4

    .line 215
    :cond_cf
    sget-object v1, Lcom/chartboost/sdk/j;->l:Landroid/content/Context;

    invoke-static {v1}, Lcom/chartboost/sdk/i;->c(Landroid/content/Context;)V

    .line 218
    :goto_d4
    new-instance v1, Lcom/chartboost/sdk/impl/d1;

    invoke-direct {v1}, Lcom/chartboost/sdk/impl/d1;-><init>()V

    invoke-virtual {v4, v1}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/chartboost/sdk/impl/d1;

    .line 221
    new-instance v1, Lcom/chartboost/sdk/Model/g;

    sget-object v9, Lcom/chartboost/sdk/j;->l:Landroid/content/Context;

    iget-object v11, v7, Lcom/chartboost/sdk/i;->n:Lcom/chartboost/sdk/Libraries/d;

    iget-object v12, v7, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/Networking/h;

    iget-object v15, v7, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Libraries/i;

    move-object v8, v1

    move-object/from16 v10, p2

    move-object v13, v0

    move-object v14, v3

    invoke-direct/range {v8 .. v16}, Lcom/chartboost/sdk/Model/g;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/chartboost/sdk/Libraries/d;Lcom/chartboost/sdk/Networking/h;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Libraries/i;Lcom/chartboost/sdk/impl/d1;)V

    invoke-virtual {v4, v1}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/Model/g;

    iput-object v1, v7, Lcom/chartboost/sdk/i;->t:Lcom/chartboost/sdk/Model/g;

    .line 223
    new-instance v1, Lcom/chartboost/sdk/Tracking/a;

    invoke-direct {v1, v0}, Lcom/chartboost/sdk/Tracking/a;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v4, v1}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/chartboost/sdk/Tracking/a;

    iput-object v15, v7, Lcom/chartboost/sdk/i;->x:Lcom/chartboost/sdk/Tracking/a;

    .line 225
    new-instance v1, Lcom/chartboost/sdk/impl/n;

    iget-object v10, v7, Lcom/chartboost/sdk/i;->b:Lcom/chartboost/sdk/Libraries/f;

    iget-object v11, v7, Lcom/chartboost/sdk/i;->s:Lcom/chartboost/sdk/Networking/g;

    iget-object v12, v7, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/Networking/h;

    iget-object v14, v7, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Libraries/i;

    move-object v8, v1

    move-object/from16 v9, p5

    invoke-direct/range {v8 .. v15}, Lcom/chartboost/sdk/impl/n;-><init>(Ljava/util/concurrent/Executor;Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/Networking/g;Lcom/chartboost/sdk/Networking/h;Ljava/util/concurrent/atomic/AtomicReference;Lcom/chartboost/sdk/Libraries/i;Lcom/chartboost/sdk/Tracking/a;)V

    invoke-virtual {v4, v1}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/impl/n;

    iput-object v1, v7, Lcom/chartboost/sdk/i;->g:Lcom/chartboost/sdk/impl/n;

    .line 227
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v1

    new-instance v2, Lcom/chartboost/sdk/impl/l1;

    invoke-direct {v2, v5}, Lcom/chartboost/sdk/impl/l1;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/impl/l1;

    .line 229
    new-instance v2, Lcom/chartboost/sdk/e;

    iget-object v8, v7, Lcom/chartboost/sdk/i;->g:Lcom/chartboost/sdk/impl/n;

    invoke-direct {v2, v1, v8, v0, v5}, Lcom/chartboost/sdk/e;-><init>(Lcom/chartboost/sdk/impl/l1;Lcom/chartboost/sdk/impl/n;Ljava/util/concurrent/atomic/AtomicReference;Landroid/os/Handler;)V

    invoke-virtual {v4, v2}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/e;

    iput-object v1, v7, Lcom/chartboost/sdk/i;->e:Lcom/chartboost/sdk/e;

    .line 231
    new-instance v1, Lcom/chartboost/sdk/Networking/i;

    iget-object v2, v7, Lcom/chartboost/sdk/i;->s:Lcom/chartboost/sdk/Networking/g;

    iget-object v8, v7, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/Networking/h;

    invoke-direct {v1, v6, v2, v8, v5}, Lcom/chartboost/sdk/Networking/i;-><init>(Ljava/util/concurrent/Executor;Lcom/chartboost/sdk/Networking/g;Lcom/chartboost/sdk/Networking/h;Landroid/os/Handler;)V

    invoke-virtual {v4, v1}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/Networking/i;

    iput-object v1, v7, Lcom/chartboost/sdk/i;->A:Lcom/chartboost/sdk/Networking/i;

    .line 233
    new-instance v8, Lcom/chartboost/sdk/d;

    iget-object v2, v7, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/Networking/h;

    iget-object v9, v7, Lcom/chartboost/sdk/i;->x:Lcom/chartboost/sdk/Tracking/a;

    iget-object v10, v7, Lcom/chartboost/sdk/i;->e:Lcom/chartboost/sdk/e;

    move-object v1, v8

    move-object/from16 v26, v3

    move-object/from16 v3, p0

    move-object v15, v4

    move-object v4, v9

    move-object/from16 v5, p6

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/chartboost/sdk/d;-><init>(Lcom/chartboost/sdk/Networking/h;Lcom/chartboost/sdk/i;Lcom/chartboost/sdk/Tracking/a;Landroid/os/Handler;Lcom/chartboost/sdk/e;)V

    invoke-virtual {v15, v8}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/d;

    iput-object v1, v7, Lcom/chartboost/sdk/i;->z:Lcom/chartboost/sdk/d;

    .line 235
    new-instance v1, Lcom/chartboost/sdk/Networking/j;

    iget-object v2, v7, Lcom/chartboost/sdk/i;->b:Lcom/chartboost/sdk/Libraries/f;

    invoke-direct {v1, v2}, Lcom/chartboost/sdk/Networking/j;-><init>(Lcom/chartboost/sdk/Libraries/f;)V

    invoke-virtual {v15, v1}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/Networking/j;

    iput-object v1, v7, Lcom/chartboost/sdk/i;->f:Lcom/chartboost/sdk/Networking/j;

    .line 237
    invoke-static {}, Lcom/chartboost/sdk/impl/a;->a()Lcom/chartboost/sdk/impl/a;

    move-result-object v1

    iput-object v1, v7, Lcom/chartboost/sdk/i;->p:Lcom/chartboost/sdk/impl/a;

    .line 238
    invoke-static {}, Lcom/chartboost/sdk/impl/a;->b()Lcom/chartboost/sdk/impl/a;

    move-result-object v1

    iput-object v1, v7, Lcom/chartboost/sdk/i;->r:Lcom/chartboost/sdk/impl/a;

    .line 239
    invoke-static {}, Lcom/chartboost/sdk/impl/a;->c()Lcom/chartboost/sdk/impl/a;

    move-result-object v1

    iput-object v1, v7, Lcom/chartboost/sdk/i;->v:Lcom/chartboost/sdk/impl/a;

    .line 241
    invoke-static/range {p1 .. p1}, Lcom/chartboost/sdk/i;->a(Landroid/content/Context;)Lcom/chartboost/sdk/impl/u0;

    move-result-object v1

    sput-object v1, Lcom/chartboost/sdk/i;->E:Lcom/chartboost/sdk/impl/u0;

    .line 242
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1a7

    .line 243
    sget-object v1, Lcom/chartboost/sdk/i;->E:Lcom/chartboost/sdk/impl/u0;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/Model/h;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/h;->F:Lcom/chartboost/sdk/Model/h$b;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/u0;->a(Lcom/chartboost/sdk/Model/h$b;)V

    .line 246
    :cond_1a7
    new-instance v1, Lcom/chartboost/sdk/impl/g;

    move-object v8, v1

    iget-object v9, v7, Lcom/chartboost/sdk/i;->p:Lcom/chartboost/sdk/impl/a;

    iget-object v11, v7, Lcom/chartboost/sdk/i;->g:Lcom/chartboost/sdk/impl/n;

    iget-object v12, v7, Lcom/chartboost/sdk/i;->b:Lcom/chartboost/sdk/Libraries/f;

    iget-object v13, v7, Lcom/chartboost/sdk/i;->s:Lcom/chartboost/sdk/Networking/g;

    iget-object v14, v7, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/Networking/h;

    iget-object v2, v7, Lcom/chartboost/sdk/i;->t:Lcom/chartboost/sdk/Model/g;

    move-object v3, v15

    move-object v15, v2

    iget-object v2, v7, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Libraries/i;

    move-object/from16 v18, v2

    iget-object v2, v7, Lcom/chartboost/sdk/i;->x:Lcom/chartboost/sdk/Tracking/a;

    move-object/from16 v19, v2

    iget-object v2, v7, Lcom/chartboost/sdk/i;->z:Lcom/chartboost/sdk/d;

    move-object/from16 v21, v2

    iget-object v2, v7, Lcom/chartboost/sdk/i;->A:Lcom/chartboost/sdk/Networking/i;

    move-object/from16 v22, v2

    iget-object v2, v7, Lcom/chartboost/sdk/i;->e:Lcom/chartboost/sdk/e;

    move-object/from16 v23, v2

    iget-object v2, v7, Lcom/chartboost/sdk/i;->f:Lcom/chartboost/sdk/Networking/j;

    move-object/from16 v24, v2

    sget-object v25, Lcom/chartboost/sdk/i;->E:Lcom/chartboost/sdk/impl/u0;

    move-object/from16 v10, p5

    move-object/from16 v16, v0

    move-object/from16 v17, v26

    move-object/from16 v20, p6

    invoke-direct/range {v8 .. v25}, Lcom/chartboost/sdk/impl/g;-><init>(Lcom/chartboost/sdk/impl/a;Ljava/util/concurrent/ScheduledExecutorService;Lcom/chartboost/sdk/impl/n;Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/Networking/g;Lcom/chartboost/sdk/Networking/h;Lcom/chartboost/sdk/Model/g;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Libraries/i;Lcom/chartboost/sdk/Tracking/a;Landroid/os/Handler;Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/Networking/i;Lcom/chartboost/sdk/e;Lcom/chartboost/sdk/Networking/j;Lcom/chartboost/sdk/impl/u0;)V

    invoke-virtual {v3, v1}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/impl/g;

    iput-object v1, v7, Lcom/chartboost/sdk/i;->o:Lcom/chartboost/sdk/impl/g;

    .line 247
    new-instance v1, Lcom/chartboost/sdk/impl/g;

    move-object v8, v1

    iget-object v9, v7, Lcom/chartboost/sdk/i;->r:Lcom/chartboost/sdk/impl/a;

    iget-object v11, v7, Lcom/chartboost/sdk/i;->g:Lcom/chartboost/sdk/impl/n;

    iget-object v12, v7, Lcom/chartboost/sdk/i;->b:Lcom/chartboost/sdk/Libraries/f;

    iget-object v13, v7, Lcom/chartboost/sdk/i;->s:Lcom/chartboost/sdk/Networking/g;

    iget-object v14, v7, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/Networking/h;

    iget-object v15, v7, Lcom/chartboost/sdk/i;->t:Lcom/chartboost/sdk/Model/g;

    iget-object v2, v7, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Libraries/i;

    move-object/from16 v18, v2

    iget-object v2, v7, Lcom/chartboost/sdk/i;->x:Lcom/chartboost/sdk/Tracking/a;

    move-object/from16 v19, v2

    iget-object v2, v7, Lcom/chartboost/sdk/i;->z:Lcom/chartboost/sdk/d;

    move-object/from16 v21, v2

    iget-object v2, v7, Lcom/chartboost/sdk/i;->A:Lcom/chartboost/sdk/Networking/i;

    move-object/from16 v22, v2

    iget-object v2, v7, Lcom/chartboost/sdk/i;->e:Lcom/chartboost/sdk/e;

    move-object/from16 v23, v2

    iget-object v2, v7, Lcom/chartboost/sdk/i;->f:Lcom/chartboost/sdk/Networking/j;

    move-object/from16 v24, v2

    sget-object v25, Lcom/chartboost/sdk/i;->E:Lcom/chartboost/sdk/impl/u0;

    invoke-direct/range {v8 .. v25}, Lcom/chartboost/sdk/impl/g;-><init>(Lcom/chartboost/sdk/impl/a;Ljava/util/concurrent/ScheduledExecutorService;Lcom/chartboost/sdk/impl/n;Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/Networking/g;Lcom/chartboost/sdk/Networking/h;Lcom/chartboost/sdk/Model/g;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Libraries/i;Lcom/chartboost/sdk/Tracking/a;Landroid/os/Handler;Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/Networking/i;Lcom/chartboost/sdk/e;Lcom/chartboost/sdk/Networking/j;Lcom/chartboost/sdk/impl/u0;)V

    invoke-virtual {v3, v1}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/impl/g;

    iput-object v1, v7, Lcom/chartboost/sdk/i;->q:Lcom/chartboost/sdk/impl/g;

    .line 248
    new-instance v1, Lcom/chartboost/sdk/impl/g;

    move-object v8, v1

    iget-object v9, v7, Lcom/chartboost/sdk/i;->v:Lcom/chartboost/sdk/impl/a;

    iget-object v11, v7, Lcom/chartboost/sdk/i;->g:Lcom/chartboost/sdk/impl/n;

    iget-object v12, v7, Lcom/chartboost/sdk/i;->b:Lcom/chartboost/sdk/Libraries/f;

    iget-object v13, v7, Lcom/chartboost/sdk/i;->s:Lcom/chartboost/sdk/Networking/g;

    iget-object v14, v7, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/Networking/h;

    iget-object v15, v7, Lcom/chartboost/sdk/i;->t:Lcom/chartboost/sdk/Model/g;

    iget-object v2, v7, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Libraries/i;

    move-object/from16 v18, v2

    iget-object v2, v7, Lcom/chartboost/sdk/i;->x:Lcom/chartboost/sdk/Tracking/a;

    move-object/from16 v19, v2

    iget-object v2, v7, Lcom/chartboost/sdk/i;->z:Lcom/chartboost/sdk/d;

    move-object/from16 v21, v2

    iget-object v2, v7, Lcom/chartboost/sdk/i;->A:Lcom/chartboost/sdk/Networking/i;

    move-object/from16 v22, v2

    iget-object v2, v7, Lcom/chartboost/sdk/i;->e:Lcom/chartboost/sdk/e;

    move-object/from16 v23, v2

    iget-object v2, v7, Lcom/chartboost/sdk/i;->f:Lcom/chartboost/sdk/Networking/j;

    move-object/from16 v24, v2

    sget-object v25, Lcom/chartboost/sdk/i;->E:Lcom/chartboost/sdk/impl/u0;

    invoke-direct/range {v8 .. v25}, Lcom/chartboost/sdk/impl/g;-><init>(Lcom/chartboost/sdk/impl/a;Ljava/util/concurrent/ScheduledExecutorService;Lcom/chartboost/sdk/impl/n;Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/Networking/g;Lcom/chartboost/sdk/Networking/h;Lcom/chartboost/sdk/Model/g;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Libraries/i;Lcom/chartboost/sdk/Tracking/a;Landroid/os/Handler;Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/Networking/i;Lcom/chartboost/sdk/e;Lcom/chartboost/sdk/Networking/j;Lcom/chartboost/sdk/impl/u0;)V

    invoke-virtual {v3, v1}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/impl/g;

    iput-object v1, v7, Lcom/chartboost/sdk/i;->u:Lcom/chartboost/sdk/impl/g;

    .line 250
    new-instance v1, Lcom/chartboost/sdk/impl/o;

    iget-object v9, v7, Lcom/chartboost/sdk/i;->g:Lcom/chartboost/sdk/impl/n;

    iget-object v10, v7, Lcom/chartboost/sdk/i;->b:Lcom/chartboost/sdk/Libraries/f;

    iget-object v11, v7, Lcom/chartboost/sdk/i;->s:Lcom/chartboost/sdk/Networking/g;

    iget-object v12, v7, Lcom/chartboost/sdk/i;->t:Lcom/chartboost/sdk/Model/g;

    iget-object v13, v7, Lcom/chartboost/sdk/i;->x:Lcom/chartboost/sdk/Tracking/a;

    sget-object v15, Lcom/chartboost/sdk/i;->E:Lcom/chartboost/sdk/impl/u0;

    move-object v8, v1

    move-object v14, v0

    invoke-direct/range {v8 .. v15}, Lcom/chartboost/sdk/impl/o;-><init>(Lcom/chartboost/sdk/impl/n;Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/Networking/g;Lcom/chartboost/sdk/Model/g;Lcom/chartboost/sdk/Tracking/a;Ljava/util/concurrent/atomic/AtomicReference;Lcom/chartboost/sdk/impl/u0;)V

    invoke-virtual {v3, v1}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/o;

    iput-object v0, v7, Lcom/chartboost/sdk/i;->j:Lcom/chartboost/sdk/impl/o;

    .line 252
    sput-object p2, Lcom/chartboost/sdk/j;->j:Ljava/lang/String;

    .line 253
    sput-object p3, Lcom/chartboost/sdk/j;->k:Ljava/lang/String;

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Lcom/chartboost/sdk/Privacy/model/DataUseConsent;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 44
    invoke-static {p0}, Lcom/chartboost/sdk/i;->a(Landroid/content/Context;)Lcom/chartboost/sdk/impl/u0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/u0;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Privacy/model/DataUseConsent;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/chartboost/sdk/impl/u0;
    .registers 10

    .line 19
    sget-object v0, Lcom/chartboost/sdk/i;->E:Lcom/chartboost/sdk/impl/u0;

    if-nez v0, :cond_37

    .line 20
    invoke-static {p0}, Lcom/chartboost/sdk/i;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 21
    new-instance v1, Lcom/chartboost/sdk/impl/v0;

    invoke-static {p0}, Lcom/chartboost/sdk/i;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/v0;-><init>(Landroid/content/SharedPreferences;)V

    .line 22
    new-instance v3, Lcom/chartboost/sdk/impl/z0;

    invoke-direct {v3, v1}, Lcom/chartboost/sdk/impl/z0;-><init>(Lcom/chartboost/sdk/impl/v0;)V

    .line 23
    new-instance v4, Lcom/chartboost/sdk/impl/w0;

    invoke-direct {v4, v1}, Lcom/chartboost/sdk/impl/w0;-><init>(Lcom/chartboost/sdk/impl/v0;)V

    .line 24
    new-instance v5, Lcom/chartboost/sdk/impl/a1;

    invoke-direct {v5, v1}, Lcom/chartboost/sdk/impl/a1;-><init>(Lcom/chartboost/sdk/impl/v0;)V

    .line 25
    new-instance v6, Lcom/chartboost/sdk/impl/x0;

    invoke-direct {v6}, Lcom/chartboost/sdk/impl/x0;-><init>()V

    .line 26
    new-instance v7, Lcom/chartboost/sdk/impl/y0;

    invoke-direct {v7, v1}, Lcom/chartboost/sdk/impl/y0;-><init>(Lcom/chartboost/sdk/impl/v0;)V

    .line 27
    new-instance v8, Lcom/chartboost/sdk/impl/b1;

    invoke-direct {v8, v1, v0}, Lcom/chartboost/sdk/impl/b1;-><init>(Lcom/chartboost/sdk/impl/v0;Landroid/content/SharedPreferences;)V

    .line 28
    new-instance p0, Lcom/chartboost/sdk/impl/u0;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/chartboost/sdk/impl/u0;-><init>(Lcom/chartboost/sdk/impl/z0;Lcom/chartboost/sdk/impl/w0;Lcom/chartboost/sdk/impl/a1;Lcom/chartboost/sdk/impl/x0;Lcom/chartboost/sdk/impl/y0;Lcom/chartboost/sdk/impl/b1;)V

    sput-object p0, Lcom/chartboost/sdk/i;->E:Lcom/chartboost/sdk/impl/u0;

    .line 35
    :cond_37
    sget-object p0, Lcom/chartboost/sdk/i;->E:Lcom/chartboost/sdk/impl/u0;

    return-object p0
.end method

.method static synthetic a(Lcom/chartboost/sdk/i;)Ljava/lang/Runnable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/chartboost/sdk/i;->B:Ljava/lang/Runnable;

    return-object p0
.end method

.method static a(Landroid/content/Context;Lcom/chartboost/sdk/Privacy/model/DataUseConsent;)V
    .registers 3

    .line 36
    invoke-interface {p1}, Lcom/chartboost/sdk/Privacy/model/DataUseConsent;->getPrivacyStandard()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {p1}, Lcom/chartboost/sdk/Privacy/model/DataUseConsent;->getConsent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_15

    .line 41
    :cond_d
    invoke-static {p0}, Lcom/chartboost/sdk/i;->a(Landroid/content/Context;)Lcom/chartboost/sdk/impl/u0;

    move-result-object p0

    .line 42
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/u0;->a(Lcom/chartboost/sdk/Privacy/model/DataUseConsent;)V

    return-void

    :cond_15
    :goto_15
    const-string p0, "Sdk"

    const-string p1, "addDataUseConsent failed"

    .line 43
    invoke-static {p0, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 4

    if-eqz p1, :cond_21

    .line 14
    iget-object v0, p0, Lcom/chartboost/sdk/i;->w:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/chartboost/sdk/i;->i:Landroid/content/SharedPreferences;

    invoke-static {v0, p1, v1}, Lcom/chartboost/sdk/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Lorg/json/JSONObject;Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 15
    iget-object v0, p0, Lcom/chartboost/sdk/i;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 17
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "config"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_21
    return-void
.end method

.method private static b(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    const-string v0, "cbPrefs"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Lcom/chartboost/sdk/Privacy/model/DataUseConsent;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/chartboost/sdk/i;->a(Landroid/content/Context;)Lcom/chartboost/sdk/impl/u0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/u0;->b(Ljava/lang/String;)Lcom/chartboost/sdk/Privacy/model/DataUseConsent;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/chartboost/sdk/i;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/chartboost/sdk/i;->D:Lcom/chartboost/sdk/i;

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .registers 2

    const-string v0, "http.agent"

    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    :try_start_6
    invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a} :catch_a

    .line 10
    :catch_a
    sput-object v0, Lcom/chartboost/sdk/j;->r:Ljava/lang/String;

    return-void
.end method

.method private c(Ljava/lang/Runnable;)V
    .registers 2

    if-eqz p1, :cond_5

    .line 1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_5
    return-void
.end method

.method public static d(Ljava/lang/Runnable;)V
    .registers 3

    .line 2
    invoke-static {}, Lcom/chartboost/sdk/impl/x;->c()Lcom/chartboost/sdk/impl/x;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/x;->b()Z

    move-result v1

    if-nez v1, :cond_10

    .line 5
    iget-object v0, v0, Lcom/chartboost/sdk/impl/x;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_13

    .line 7
    :cond_10
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_13
    return-void
.end method

.method static synthetic l()Lcom/chartboost/sdk/impl/u0;
    .registers 1

    .line 1
    sget-object v0, Lcom/chartboost/sdk/i;->E:Lcom/chartboost/sdk/impl/u0;

    return-object v0
.end method

.method public static m()Lcom/chartboost/sdk/i;
    .registers 1

    .line 1
    sget-object v0, Lcom/chartboost/sdk/i;->D:Lcom/chartboost/sdk/i;

    return-object v0
.end method

.method public static n()Lcom/chartboost/sdk/b;
    .registers 1

    .line 1
    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 3
    iget-object v0, v0, Lcom/chartboost/sdk/i;->h:Lcom/chartboost/sdk/b;

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public static o()Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 2
    invoke-virtual {v0}, Lcom/chartboost/sdk/i;->g()Lcom/chartboost/sdk/Model/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/h;->b()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_1f

    .line 4
    :cond_11
    :try_start_11
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Chartboost Integration Warning: your account has been disabled for this session. This app has no active publishing campaigns, please create a publishing campaign in the Chartboost dashboard and wait at least 30 minutes to re-enable. If you need assistance, please visit http://chartboo.st/publishing ."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_19} :catch_19

    :catch_19
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    return v0
.end method

.method private p()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/chartboost/sdk/i;->k:Z

    if-nez v0, :cond_e

    .line 2
    sget-object v0, Lcom/chartboost/sdk/j;->d:Lcom/chartboost/sdk/a;

    if-eqz v0, :cond_b

    .line 4
    invoke-interface {v0}, Lcom/chartboost/sdk/a;->didInitialize()V

    :cond_b
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/chartboost/sdk/i;->k:Z

    :cond_e
    return-void
.end method


# virtual methods
.method a()V
    .registers 5

    .line 18
    iget-object v0, p0, Lcom/chartboost/sdk/i;->y:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/i$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/chartboost/sdk/i$b;-><init>(Lcom/chartboost/sdk/i;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method a(Landroid/app/Activity;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/i;->a:Lcom/chartboost/sdk/impl/x;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/x;->a(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3
    invoke-static {p1}, Lcom/chartboost/sdk/c;->b(Landroid/content/Context;)Z

    .line 5
    :cond_d
    iget-boolean p1, p0, Lcom/chartboost/sdk/i;->l:Z

    if-nez p1, :cond_1e

    .line 6
    iget-object p1, p0, Lcom/chartboost/sdk/i;->z:Lcom/chartboost/sdk/d;

    invoke-virtual {p1}, Lcom/chartboost/sdk/d;->f()Z

    move-result p1

    if-nez p1, :cond_1e

    .line 7
    iget-object p1, p0, Lcom/chartboost/sdk/i;->g:Lcom/chartboost/sdk/impl/n;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/n;->b()V

    :cond_1e
    return-void
.end method

.method a(Ljava/lang/Runnable;)V
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 12
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/i;->c(Ljava/lang/Runnable;)V

    .line 13
    invoke-direct {p0}, Lcom/chartboost/sdk/i;->p()V

    return-void
.end method

.method a(Ljava/lang/Runnable;Lorg/json/JSONObject;)V
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "response"

    .line 8
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 9
    invoke-direct {p0, p2}, Lcom/chartboost/sdk/i;->a(Lorg/json/JSONObject;)V

    .line 10
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/i;->c(Ljava/lang/Runnable;)V

    .line 11
    invoke-direct {p0}, Lcom/chartboost/sdk/i;->p()V

    return-void
.end method

.method b()V
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/chartboost/sdk/i;->x:Lcom/chartboost/sdk/Tracking/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Tracking/a;->a()V

    return-void
.end method

.method b(Ljava/lang/Runnable;)V
    .registers 10

    .line 3
    iput-object p1, p0, Lcom/chartboost/sdk/i;->B:Ljava/lang/Runnable;

    .line 4
    new-instance p1, Lcom/chartboost/sdk/impl/p0;

    iget-object v3, p0, Lcom/chartboost/sdk/i;->t:Lcom/chartboost/sdk/Model/g;

    iget-object v4, p0, Lcom/chartboost/sdk/i;->x:Lcom/chartboost/sdk/Tracking/a;

    iget-object v6, p0, Lcom/chartboost/sdk/i;->C:Lcom/chartboost/sdk/impl/p0$a;

    sget-object v7, Lcom/chartboost/sdk/i;->E:Lcom/chartboost/sdk/impl/u0;

    const-string v1, "https://live.chartboost.com"

    const-string v2, "/api/config"

    const/4 v5, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/impl/p0;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Model/g;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/p0$a;Lcom/chartboost/sdk/impl/u0;)V

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p1, Lcom/chartboost/sdk/impl/p0;->m:Z

    .line 11
    iget-object v0, p0, Lcom/chartboost/sdk/i;->s:Lcom/chartboost/sdk/Networking/g;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/Networking/g;->a(Lcom/chartboost/sdk/Networking/c;)V

    return-void
.end method

.method public c()Lcom/chartboost/sdk/impl/g;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/i;->q:Lcom/chartboost/sdk/impl/g;

    return-object v0
.end method

.method public d()Lcom/chartboost/sdk/impl/a;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/i;->r:Lcom/chartboost/sdk/impl/a;

    return-object v0
.end method

.method public e()Lcom/chartboost/sdk/impl/g;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/i;->u:Lcom/chartboost/sdk/impl/g;

    return-object v0
.end method

.method public f()Lcom/chartboost/sdk/impl/a;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/i;->v:Lcom/chartboost/sdk/impl/a;

    return-object v0
.end method

.method public g()Lcom/chartboost/sdk/Model/h;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/i;->w:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/h;

    return-object v0
.end method

.method public h()Landroid/os/Handler;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/i;->y:Landroid/os/Handler;

    return-object v0
.end method

.method public i()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/chartboost/sdk/i;->k:Z

    return v0
.end method

.method j()V
    .registers 3

    .line 1
    sget-object v0, Lcom/chartboost/sdk/j;->l:Landroid/content/Context;

    if-nez v0, :cond_c

    const-string v0, "Sdk"

    const-string v1, "The context must be set through the Chartboost method onCreate() before calling startSession()."

    .line 2
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_c
    iget-object v0, p0, Lcom/chartboost/sdk/i;->x:Lcom/chartboost/sdk/Tracking/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Tracking/a;->b()V

    return-void
.end method

.method public k()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/i;->g:Lcom/chartboost/sdk/impl/n;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/n;->c()V

    return-void
.end method
