.class public Lcom/chartboost/sdk/Model/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public a:I

.field public b:I

.field public final c:Lcom/chartboost/sdk/impl/a;

.field public final d:Lcom/chartboost/sdk/Libraries/f;

.field public final e:Lcom/chartboost/sdk/Networking/g;

.field public final f:Lcom/chartboost/sdk/Model/g;

.field public final g:Lcom/chartboost/sdk/Tracking/a;

.field public final h:Landroid/os/Handler;

.field public final i:Lcom/chartboost/sdk/d;

.field public final j:Lcom/chartboost/sdk/Networking/i;

.field public final k:Lcom/chartboost/sdk/e;

.field public final l:Lcom/chartboost/sdk/Networking/j;

.field public final m:Lcom/chartboost/sdk/Model/d;

.field public final n:Ljava/lang/String;

.field private o:Z

.field private p:Ljava/lang/Boolean;

.field public final q:Ljava/lang/String;

.field public final r:Lcom/chartboost/sdk/Model/a;

.field public final s:Landroid/content/SharedPreferences;

.field private t:Ljava/lang/Runnable;

.field private u:Lcom/chartboost/sdk/f;

.field private final v:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/RelativeLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Ljava/lang/Boolean;

.field private final x:Lcom/chartboost/sdk/impl/u0;

.field public y:Lcom/chartboost/sdk/impl/p0;

.field public z:Lcom/chartboost/sdk/impl/r1;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/d;Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/Networking/g;Lcom/chartboost/sdk/Model/g;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Tracking/a;Landroid/os/Handler;Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/Networking/i;Lcom/chartboost/sdk/e;Lcom/chartboost/sdk/Networking/j;Lcom/chartboost/sdk/impl/a;Ljava/lang/String;Ljava/lang/String;Landroid/widget/RelativeLayout;Lcom/chartboost/sdk/impl/u0;)V
    .registers 23

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Lcom/chartboost/sdk/Model/c;->p:Ljava/lang/Boolean;

    const/4 v1, 0x0

    .line 20
    iput-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->B:Z

    .line 24
    iput-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->D:Z

    .line 25
    iput-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->E:Z

    move-object v2, p1

    .line 44
    iput-object v2, v0, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    move-object/from16 v2, p13

    .line 45
    iput-object v2, v0, Lcom/chartboost/sdk/Model/c;->c:Lcom/chartboost/sdk/impl/a;

    move-object v2, p3

    .line 46
    iput-object v2, v0, Lcom/chartboost/sdk/Model/c;->d:Lcom/chartboost/sdk/Libraries/f;

    move-object v2, p4

    .line 47
    iput-object v2, v0, Lcom/chartboost/sdk/Model/c;->e:Lcom/chartboost/sdk/Networking/g;

    move-object v2, p5

    .line 48
    iput-object v2, v0, Lcom/chartboost/sdk/Model/c;->f:Lcom/chartboost/sdk/Model/g;

    move-object v2, p7

    .line 49
    iput-object v2, v0, Lcom/chartboost/sdk/Model/c;->g:Lcom/chartboost/sdk/Tracking/a;

    move-object v2, p8

    .line 50
    iput-object v2, v0, Lcom/chartboost/sdk/Model/c;->h:Landroid/os/Handler;

    move-object v2, p9

    .line 51
    iput-object v2, v0, Lcom/chartboost/sdk/Model/c;->i:Lcom/chartboost/sdk/d;

    move-object v2, p10

    .line 52
    iput-object v2, v0, Lcom/chartboost/sdk/Model/c;->j:Lcom/chartboost/sdk/Networking/i;

    move-object/from16 v2, p11

    .line 53
    iput-object v2, v0, Lcom/chartboost/sdk/Model/c;->k:Lcom/chartboost/sdk/e;

    move-object/from16 v2, p12

    .line 54
    iput-object v2, v0, Lcom/chartboost/sdk/Model/c;->l:Lcom/chartboost/sdk/Networking/j;

    move-object v2, p2

    .line 55
    iput-object v2, v0, Lcom/chartboost/sdk/Model/c;->m:Lcom/chartboost/sdk/Model/d;

    .line 56
    new-instance v2, Ljava/lang/ref/WeakReference;

    move-object/from16 v3, p16

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/chartboost/sdk/Model/c;->v:Ljava/lang/ref/WeakReference;

    .line 57
    iget-object v2, v0, Lcom/chartboost/sdk/Model/c;->c:Lcom/chartboost/sdk/impl/a;

    iget v2, v2, Lcom/chartboost/sdk/impl/a;->a:I

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_48

    const/4 v2, 0x1

    goto :goto_49

    :cond_48
    const/4 v2, 0x0

    :goto_49
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/chartboost/sdk/Model/c;->w:Ljava/lang/Boolean;

    .line 58
    iput v1, v0, Lcom/chartboost/sdk/Model/c;->b:I

    .line 59
    iput-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->A:Z

    .line 60
    iput-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->C:Z

    .line 61
    iput-boolean v3, v0, Lcom/chartboost/sdk/Model/c;->E:Z

    const/4 v1, 0x4

    .line 62
    iput v1, v0, Lcom/chartboost/sdk/Model/c;->a:I

    move-object/from16 v1, p14

    .line 63
    iput-object v1, v0, Lcom/chartboost/sdk/Model/c;->n:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 64
    iput-object v1, v0, Lcom/chartboost/sdk/Model/c;->q:Ljava/lang/String;

    .line 65
    iput-boolean v3, v0, Lcom/chartboost/sdk/Model/c;->o:Z

    move-object v1, p6

    .line 66
    iput-object v1, v0, Lcom/chartboost/sdk/Model/c;->s:Landroid/content/SharedPreferences;

    move-object/from16 v1, p17

    .line 67
    iput-object v1, v0, Lcom/chartboost/sdk/Model/c;->x:Lcom/chartboost/sdk/impl/u0;

    return-void
.end method

.method private A()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->p:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private B()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget v0, v0, Lcom/chartboost/sdk/Model/a;->b:I

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private C()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->p:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private D()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 3
    iget-object v0, v0, Lcom/chartboost/sdk/i;->h:Lcom/chartboost/sdk/b;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->c:Lcom/chartboost/sdk/impl/a;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/b;->d(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method private E()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->c:Lcom/chartboost/sdk/impl/a;

    iget v0, v0, Lcom/chartboost/sdk/impl/a;->a:I

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    goto :goto_17

    .line 11
    :cond_d
    iput v1, p0, Lcom/chartboost/sdk/Model/c;->a:I

    goto :goto_17

    .line 12
    :cond_10
    invoke-direct {p0}, Lcom/chartboost/sdk/Model/c;->G()V

    goto :goto_17

    .line 13
    :cond_14
    invoke-direct {p0}, Lcom/chartboost/sdk/Model/c;->F()V

    :goto_17
    return-void
.end method

.method private F()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->p:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/chartboost/sdk/Model/c;->a:I

    .line 4
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/c;->o:Z

    goto :goto_15

    .line 12
    :cond_13
    iput v1, p0, Lcom/chartboost/sdk/Model/c;->a:I

    :goto_15
    return-void
.end method

.method private G()V
    .registers 5

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lcom/chartboost/sdk/Model/c;->a:I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/c;->o:Z

    .line 3
    invoke-direct {p0}, Lcom/chartboost/sdk/Model/c;->B()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4
    new-instance v0, Lcom/chartboost/sdk/impl/i0;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->d:Lcom/chartboost/sdk/Libraries/f;

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->h:Landroid/os/Handler;

    iget-object v3, p0, Lcom/chartboost/sdk/Model/c;->i:Lcom/chartboost/sdk/d;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/chartboost/sdk/impl/i0;-><init>(Lcom/chartboost/sdk/Model/c;Lcom/chartboost/sdk/Libraries/f;Landroid/os/Handler;Lcom/chartboost/sdk/d;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/c;->u:Lcom/chartboost/sdk/f;

    :cond_19
    return-void
.end method

.method private H()V
    .registers 14

    .line 1
    invoke-direct {p0}, Lcom/chartboost/sdk/Model/c;->B()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->c:Lcom/chartboost/sdk/impl/a;

    iget v0, v0, Lcom/chartboost/sdk/impl/a;->a:I

    if-nez v0, :cond_32

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->p:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 4
    new-instance v0, Lcom/chartboost/sdk/impl/i0;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->d:Lcom/chartboost/sdk/Libraries/f;

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->h:Landroid/os/Handler;

    iget-object v3, p0, Lcom/chartboost/sdk/Model/c;->i:Lcom/chartboost/sdk/d;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/chartboost/sdk/impl/i0;-><init>(Lcom/chartboost/sdk/Model/c;Lcom/chartboost/sdk/Libraries/f;Landroid/os/Handler;Lcom/chartboost/sdk/d;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/c;->u:Lcom/chartboost/sdk/f;

    goto :goto_5a

    .line 6
    :cond_26
    new-instance v0, Lcom/chartboost/sdk/impl/h0;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->h:Landroid/os/Handler;

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->i:Lcom/chartboost/sdk/d;

    invoke-direct {v0, p0, v1, v2}, Lcom/chartboost/sdk/impl/h0;-><init>(Lcom/chartboost/sdk/Model/c;Landroid/os/Handler;Lcom/chartboost/sdk/d;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/c;->u:Lcom/chartboost/sdk/f;

    goto :goto_5a

    :cond_32
    const/4 v1, 0x1

    if-ne v0, v1, :cond_5a

    .line 9
    new-instance v0, Lcom/chartboost/sdk/impl/i0;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->d:Lcom/chartboost/sdk/Libraries/f;

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->h:Landroid/os/Handler;

    iget-object v3, p0, Lcom/chartboost/sdk/Model/c;->i:Lcom/chartboost/sdk/d;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/chartboost/sdk/impl/i0;-><init>(Lcom/chartboost/sdk/Model/c;Lcom/chartboost/sdk/Libraries/f;Landroid/os/Handler;Lcom/chartboost/sdk/d;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/c;->u:Lcom/chartboost/sdk/f;

    goto :goto_5a

    .line 12
    :cond_43
    new-instance v0, Lcom/chartboost/sdk/impl/u1;

    iget-object v6, p0, Lcom/chartboost/sdk/Model/c;->d:Lcom/chartboost/sdk/Libraries/f;

    iget-object v7, p0, Lcom/chartboost/sdk/Model/c;->e:Lcom/chartboost/sdk/Networking/g;

    iget-object v8, p0, Lcom/chartboost/sdk/Model/c;->s:Landroid/content/SharedPreferences;

    iget-object v9, p0, Lcom/chartboost/sdk/Model/c;->g:Lcom/chartboost/sdk/Tracking/a;

    iget-object v10, p0, Lcom/chartboost/sdk/Model/c;->h:Landroid/os/Handler;

    iget-object v11, p0, Lcom/chartboost/sdk/Model/c;->i:Lcom/chartboost/sdk/d;

    iget-object v12, p0, Lcom/chartboost/sdk/Model/c;->k:Lcom/chartboost/sdk/e;

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v12}, Lcom/chartboost/sdk/impl/u1;-><init>(Lcom/chartboost/sdk/Model/c;Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/Networking/g;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Tracking/a;Landroid/os/Handler;Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/e;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/c;->u:Lcom/chartboost/sdk/f;

    :cond_5a
    :goto_5a
    return-void
.end method

.method private a(Lcom/chartboost/sdk/impl/p0;Lorg/json/JSONObject;)Lcom/chartboost/sdk/impl/p0;
    .registers 11

    .line 67
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 68
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    const-string v1, "ad_id"

    invoke-virtual {p1, v1, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    :cond_13
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 70
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->m:Ljava/lang/String;

    const-string v1, "to"

    invoke-virtual {p1, v1, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    :cond_26
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    .line 72
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->g:Ljava/lang/String;

    const-string v1, "cgn"

    invoke-virtual {p1, v1, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    :cond_39
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "creative"

    if-nez v0, :cond_4c

    .line 74
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->h:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    :cond_4c
    iget v0, p0, Lcom/chartboost/sdk/Model/c;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5e

    if-ne v0, v2, :cond_55

    goto :goto_5e

    :cond_55
    const/4 v2, 0x3

    if-ne v0, v2, :cond_cd

    const-string v0, ""

    .line 96
    invoke-virtual {p1, v1, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_cd

    :cond_5e
    :goto_5e
    const/4 v0, 0x0

    .line 97
    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget v1, v1, Lcom/chartboost/sdk/Model/a;->b:I

    if-nez v1, :cond_70

    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/c;->f()Lcom/chartboost/sdk/f$b;

    move-result-object v1

    if-eqz v1, :cond_70

    .line 98
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/c;->g()Lcom/chartboost/sdk/f;

    move-result-object v0

    goto :goto_80

    .line 99
    :cond_70
    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget v1, v1, Lcom/chartboost/sdk/Model/a;->b:I

    if-ne v1, v3, :cond_80

    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/c;->f()Lcom/chartboost/sdk/f$b;

    move-result-object v1

    if-eqz v1, :cond_80

    .line 100
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/c;->g()Lcom/chartboost/sdk/f;

    move-result-object v0

    :cond_80
    :goto_80
    if-eqz v0, :cond_cd

    .line 104
    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->h()F

    move-result v1

    .line 105
    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->g()F

    move-result v0

    .line 106
    const-class v4, Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v2, v7

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v2, v3

    const-string v3, "TotalDuration: %f PlaybackTime: %f"

    invoke-static {v5, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    .line 107
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "total_time"

    invoke-virtual {p1, v4, v3}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x0

    const-string v4, "playback_time"

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_c5

    .line 110
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_cd

    :cond_c5
    div-float/2addr v1, v2

    .line 112
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_cd
    :goto_cd
    if-eqz p2, :cond_d4

    const-string v0, "click_coordinates"

    .line 120
    invoke-virtual {p1, v0, p2}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    :cond_d4
    iget-object p2, p0, Lcom/chartboost/sdk/Model/c;->n:Ljava/lang/String;

    const-string v0, "location"

    invoke-virtual {p1, v0, p2}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    invoke-direct {p0}, Lcom/chartboost/sdk/Model/c;->C()Z

    move-result p2

    if-eqz p2, :cond_ee

    .line 125
    invoke-direct {p0}, Lcom/chartboost/sdk/Model/c;->A()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "retarget_reinstall"

    invoke-virtual {p1, v0, p2}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_ee
    return-object p1
.end method

.method private a(Ljava/lang/String;)Z
    .registers 3

    .line 66
    invoke-static {}, Lcom/chartboost/sdk/impl/x;->c()Lcom/chartboost/sdk/impl/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/x;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private b(Lorg/json/JSONObject;)Lcom/chartboost/sdk/impl/p0;
    .registers 11

    .line 12
    new-instance v8, Lcom/chartboost/sdk/impl/p0;

    iget-object v3, p0, Lcom/chartboost/sdk/Model/c;->f:Lcom/chartboost/sdk/Model/g;

    iget-object v4, p0, Lcom/chartboost/sdk/Model/c;->g:Lcom/chartboost/sdk/Tracking/a;

    iget-object v7, p0, Lcom/chartboost/sdk/Model/c;->x:Lcom/chartboost/sdk/impl/u0;

    const-string v1, "https://live.chartboost.com"

    const-string v2, "/api/click"

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/impl/p0;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Model/g;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/p0$a;Lcom/chartboost/sdk/impl/u0;)V

    .line 18
    invoke-direct {p0, v8, p1}, Lcom/chartboost/sdk/Model/c;->a(Lcom/chartboost/sdk/impl/p0;Lorg/json/JSONObject;)Lcom/chartboost/sdk/impl/p0;

    move-result-object p1

    return-object p1
.end method

.method private z()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/Model/c;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->i:Lcom/chartboost/sdk/d;

    invoke-virtual {v0}, Lcom/chartboost/sdk/d;->c()Lcom/chartboost/sdk/e;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 4
    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/e;->a(Lcom/chartboost/sdk/Model/c;)V

    :cond_10
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/RelativeLayout;)Lcom/chartboost/sdk/Model/CBError$CBImpressionError;
    .registers 4

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_24

    .line 41
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/c;->e()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 42
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/f;->a(Landroid/widget/RelativeLayout;)Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    move-result-object p1

    return-object p1

    .line 44
    :cond_15
    iget-object p1, p0, Lcom/chartboost/sdk/Model/c;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {p1}, Lcom/chartboost/sdk/f;->n()Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    move-result-object p1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    return-object p1

    :catch_1c
    move-exception p1

    .line 48
    const-class v0, Lcom/chartboost/sdk/Model/c;

    const-string v1, "tryCreatingView"

    invoke-static {v0, v1, p1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 50
    :cond_24
    sget-object p1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_CREATING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    return-object p1
.end method

.method public a()V
    .registers 5

    .line 25
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->z:Lcom/chartboost/sdk/impl/r1;

    const-string v1, "CBImpression"

    if-eqz v0, :cond_3d

    .line 26
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/r1;->a()V

    .line 28
    :try_start_9
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->i()Lcom/chartboost/sdk/f$b;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->i()Lcom/chartboost/sdk/f$b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 29
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->z:Lcom/chartboost/sdk/impl/r1;

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v2}, Lcom/chartboost/sdk/f;->i()Lcom/chartboost/sdk/f$b;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2c} :catch_2d

    goto :goto_3a

    :catch_2d
    move-exception v0

    const-string v2, "Exception raised while cleaning up views"

    .line 31
    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    const-class v2, Lcom/chartboost/sdk/Model/c;

    const-string v3, "cleanUpViews"

    invoke-static {v2, v3, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_3a
    :goto_3a
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/chartboost/sdk/Model/c;->z:Lcom/chartboost/sdk/impl/r1;

    .line 36
    :cond_3d
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_44

    .line 37
    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->c()V

    :cond_44
    const-string v0, "Destroying the view"

    .line 39
    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .registers 3

    .line 24
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->m:Lcom/chartboost/sdk/Model/d;

    invoke-interface {v0, p0, p1}, Lcom/chartboost/sdk/Model/d;->a(Lcom/chartboost/sdk/Model/c;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/chartboost/sdk/Model/c;->t:Ljava/lang/Runnable;

    return-void
.end method

.method a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 11

    .line 52
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->h:Landroid/os/Handler;

    new-instance v7, Lcom/chartboost/sdk/impl/a$a;

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->c:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lcom/chartboost/sdk/Model/c;->n:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;Lcom/chartboost/sdk/Events/ChartboostError;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/c;->w()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 54
    invoke-direct {p0}, Lcom/chartboost/sdk/Model/c;->z()V

    .line 57
    :cond_1e
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/Model/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 58
    invoke-direct {p0, p2}, Lcom/chartboost/sdk/Model/c;->b(Lorg/json/JSONObject;)Lcom/chartboost/sdk/impl/p0;

    move-result-object p2

    iput-object p2, p0, Lcom/chartboost/sdk/Model/c;->y:Lcom/chartboost/sdk/impl/p0;

    .line 59
    iget-object p2, p0, Lcom/chartboost/sdk/Model/c;->j:Lcom/chartboost/sdk/Networking/i;

    const/4 v0, 0x0

    invoke-virtual {p2, p0, p1, v0}, Lcom/chartboost/sdk/Networking/i;->a(Lcom/chartboost/sdk/Model/c;Ljava/lang/String;Lcom/chartboost/sdk/impl/p0;)V

    goto :goto_3c

    .line 61
    :cond_31
    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->j:Lcom/chartboost/sdk/Networking/i;

    sget-object v5, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_INVALID:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/chartboost/sdk/Networking/i;->a(Lcom/chartboost/sdk/Model/c;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/impl/p0;)V

    .line 65
    :goto_3c
    iget-object p1, p0, Lcom/chartboost/sdk/Model/c;->g:Lcom/chartboost/sdk/Tracking/a;

    iget-object p2, p0, Lcom/chartboost/sdk/Model/c;->c:Lcom/chartboost/sdk/impl/a;

    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget v0, v0, Lcom/chartboost/sdk/Model/a;->b:I

    invoke-virtual {p2, v0}, Lcom/chartboost/sdk/impl/a;->a(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->n:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)Z
    .registers 8

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/Model/c;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_45

    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/c;->B:Z

    if-eqz v0, :cond_b

    goto :goto_45

    .line 4
    :cond_b
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget-object v2, v0, Lcom/chartboost/sdk/Model/a;->j:Ljava/lang/String;

    .line 5
    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->i:Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_37

    .line 8
    :try_start_17
    iget-object v3, p0, Lcom/chartboost/sdk/Model/c;->j:Lcom/chartboost/sdk/Networking/i;

    invoke-virtual {v3, v0}, Lcom/chartboost/sdk/Networking/i;->a(Ljava/lang/String;)Z

    move-result v3
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1d} :catch_2f

    if-eqz v3, :cond_2a

    .line 10
    :try_start_1f
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/chartboost/sdk/Model/c;->p:Ljava/lang/Boolean;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_23} :catch_25

    move-object v2, v0

    goto :goto_37

    :catch_25
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_30

    .line 12
    :cond_2a
    :try_start_2a
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/chartboost/sdk/Model/c;->p:Ljava/lang/Boolean;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2e} :catch_2f

    goto :goto_37

    :catch_2f
    move-exception v0

    .line 16
    :goto_30
    const-class v3, Lcom/chartboost/sdk/Model/c;

    const-string v4, "onClick"

    invoke-static {v3, v4, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 19
    :cond_37
    :goto_37
    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/c;->C:Z

    if-eqz v0, :cond_3c

    return v1

    :cond_3c
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/c;->C:Z

    .line 22
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/c;->E:Z

    .line 23
    invoke-virtual {p0, v2, p1}, Lcom/chartboost/sdk/Model/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return v0

    :cond_45
    :goto_45
    return v1
.end method

.method public b()V
    .registers 3

    .line 4
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/c;->a()V

    .line 5
    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/c;->A:Z

    if-nez v0, :cond_8

    return-void

    .line 8
    :cond_8
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_f

    .line 9
    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->b()V

    :cond_f
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/chartboost/sdk/Model/c;->u:Lcom/chartboost/sdk/f;

    const-string v0, "CBImpression"

    const-string v1, "Destroying the view and view data"

    .line 11
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/Model/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2
    iget-object p1, p0, Lcom/chartboost/sdk/Model/c;->c:Lcom/chartboost/sdk/impl/a;

    iget p1, p1, Lcom/chartboost/sdk/impl/a;->a:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_d

    .line 3
    invoke-direct {p0}, Lcom/chartboost/sdk/Model/c;->D()V

    :cond_d
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d()Landroid/widget/RelativeLayout;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public e()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->w:Ljava/lang/Boolean;

    return-object v0
.end method

.method public f()Lcom/chartboost/sdk/f$b;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->i()Lcom/chartboost/sdk/f$b;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Lcom/chartboost/sdk/f;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->u:Lcom/chartboost/sdk/f;

    return-object v0
.end method

.method public h()V
    .registers 4

    .line 1
    sget-object v0, Lcom/chartboost/sdk/j;->d:Lcom/chartboost/sdk/a;

    if-eqz v0, :cond_1e

    .line 2
    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->c:Lcom/chartboost/sdk/impl/a;

    if-eqz v1, :cond_1e

    .line 3
    iget v1, v1, Lcom/chartboost/sdk/impl/a;->a:I

    if-nez v1, :cond_12

    .line 5
    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->n:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/a;->didCompleteInterstitial(Ljava/lang/String;)V

    goto :goto_1e

    :cond_12
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    .line 7
    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget v2, v2, Lcom/chartboost/sdk/Model/a;->k:I

    invoke-interface {v0, v1, v2}, Lcom/chartboost/sdk/a;->didCompleteRewardedVideo(Ljava/lang/String;I)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public i()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/c;->B:Z

    return-void
.end method

.method public j()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->t:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    .line 2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/chartboost/sdk/Model/c;->t:Ljava/lang/Runnable;

    :cond_a
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/c;->B:Z

    return-void
.end method

.method public k()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->j()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public l()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/c;->E:Z

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->i:Lcom/chartboost/sdk/d;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/c;)V

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->m:Lcom/chartboost/sdk/Model/d;

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/Model/d;->a(Lcom/chartboost/sdk/Model/c;)V

    return-void
.end method

.method public m()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->m:Lcom/chartboost/sdk/Model/d;

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/Model/d;->b(Lcom/chartboost/sdk/Model/c;)V

    return-void
.end method

.method public n()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->i()Lcom/chartboost/sdk/f$b;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->i()Lcom/chartboost/sdk/f$b;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_15
    return-void
.end method

.method public o()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_e

    iget-boolean v1, p0, Lcom/chartboost/sdk/Model/c;->D:Z

    if-nez v1, :cond_e

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/c;->D:Z

    .line 3
    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->k()V

    :cond_e
    return-void
.end method

.method public p()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/c;->o:Z

    return-void
.end method

.method public q()V
    .registers 1

    return-void
.end method

.method public r()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/c;->C:Z

    .line 2
    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->u:Lcom/chartboost/sdk/f;

    if-eqz v1, :cond_10

    iget-boolean v2, p0, Lcom/chartboost/sdk/Model/c;->D:Z

    if-eqz v2, :cond_10

    .line 3
    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/c;->D:Z

    .line 4
    invoke-virtual {v1}, Lcom/chartboost/sdk/f;->l()V

    :cond_10
    return-void
.end method

.method public s()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/c;->C:Z

    return-void
.end method

.method public t()Z
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/chartboost/sdk/Model/c;->b:I

    .line 2
    invoke-direct {p0}, Lcom/chartboost/sdk/Model/c;->E()V

    .line 3
    invoke-direct {p0}, Lcom/chartboost/sdk/Model/c;->H()V

    .line 4
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->u:Lcom/chartboost/sdk/f;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/a;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/f;->b(Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method public u()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->u:Lcom/chartboost/sdk/f;

    const-string v1, "CBImpression"

    if-eqz v0, :cond_13

    .line 2
    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->m()V

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->i()Lcom/chartboost/sdk/f$b;

    move-result-object v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_13
    const-string v0, "reinitializing -- no view protocol exists!!"

    .line 6
    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    const-string v0, "reinitializing -- view not yet created"

    .line 8
    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public v()V
    .registers 10

    .line 1
    new-instance v8, Lcom/chartboost/sdk/impl/p0;

    iget-object v3, p0, Lcom/chartboost/sdk/Model/c;->f:Lcom/chartboost/sdk/Model/g;

    iget-object v4, p0, Lcom/chartboost/sdk/Model/c;->g:Lcom/chartboost/sdk/Tracking/a;

    iget-object v7, p0, Lcom/chartboost/sdk/Model/c;->x:Lcom/chartboost/sdk/impl/u0;

    const-string v1, "https://live.chartboost.com"

    const-string v2, "/api/video-complete"

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/impl/p0;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Model/g;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/p0$a;Lcom/chartboost/sdk/impl/u0;)V

    .line 7
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->n:Ljava/lang/String;

    const-string v1, "location"

    invoke-virtual {v8, v1, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget v0, v0, Lcom/chartboost/sdk/Model/a;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "reward"

    invoke-virtual {v8, v1, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->l:Ljava/lang/String;

    const-string v1, "currency-name"

    invoke-virtual {v8, v1, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/c;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad_id"

    invoke-virtual {v8, v1, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "force_close"

    invoke-virtual {v8, v2, v1}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/a;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_55

    .line 13
    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/a;->g:Ljava/lang/String;

    const-string v2, "cgn"

    invoke-virtual {v8, v2, v1}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    :cond_55
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/c;->f()Lcom/chartboost/sdk/f$b;

    move-result-object v1

    if-eqz v1, :cond_60

    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/c;->g()Lcom/chartboost/sdk/f;

    move-result-object v1

    goto :goto_61

    :cond_60
    const/4 v1, 0x0

    :goto_61
    if-eqz v1, :cond_af

    .line 17
    invoke-virtual {v1}, Lcom/chartboost/sdk/f;->h()F

    move-result v2

    .line 18
    invoke-virtual {v1}, Lcom/chartboost/sdk/f;->g()F

    move-result v1

    .line 19
    const-class v3, Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const-string v0, "TotalDuration: %f PlaybackTime: %f"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v1, v0

    .line 20
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "total_time"

    invoke-virtual {v8, v4, v3}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x0

    const-string v4, "playback_time"

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_a7

    .line 23
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v8, v4, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_af

    :cond_a7
    div-float/2addr v2, v0

    .line 25
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v8, v4, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    :cond_af
    :goto_af
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->e:Lcom/chartboost/sdk/Networking/g;

    invoke-virtual {v0, v8}, Lcom/chartboost/sdk/Networking/g;->a(Lcom/chartboost/sdk/Networking/c;)V

    .line 28
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->g:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->c:Lcom/chartboost/sdk/impl/a;

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget v2, v2, Lcom/chartboost/sdk/Model/a;->b:I

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public w()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/c;->o:Z

    return v0
.end method

.method public x()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->m:Lcom/chartboost/sdk/Model/d;

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/Model/d;->c(Lcom/chartboost/sdk/Model/c;)V

    return-void
.end method

.method public y()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/c;->E:Z

    return v0
.end method
