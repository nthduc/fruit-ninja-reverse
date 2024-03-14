.class public abstract Lcom/chartboost/sdk/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/f$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lcom/chartboost/sdk/d;

.field public c:Z

.field private d:Z

.field protected e:Lorg/json/JSONObject;

.field private f:Lcom/chartboost/sdk/f$b;

.field public final g:Lcom/chartboost/sdk/Model/c;

.field protected h:I

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected j:Z

.field protected k:Z


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Model/c;Landroid/os/Handler;Lcom/chartboost/sdk/d;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/chartboost/sdk/f;->c:Z

    .line 170
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v1, p0, Lcom/chartboost/sdk/f;->i:Ljava/util/Map;

    const/4 v1, 0x1

    .line 172
    iput-boolean v1, p0, Lcom/chartboost/sdk/f;->j:Z

    iput-boolean v1, p0, Lcom/chartboost/sdk/f;->k:Z

    .line 175
    iput-object p2, p0, Lcom/chartboost/sdk/f;->a:Landroid/os/Handler;

    .line 176
    iput-object p3, p0, Lcom/chartboost/sdk/f;->b:Lcom/chartboost/sdk/d;

    .line 177
    iput-object p1, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    const/4 p1, 0x0

    .line 178
    iput-object p1, p0, Lcom/chartboost/sdk/f;->f:Lcom/chartboost/sdk/f$b;

    .line 179
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->e()I

    move-result p1

    iput p1, p0, Lcom/chartboost/sdk/f;->h:I

    .line 180
    iput-boolean v0, p0, Lcom/chartboost/sdk/f;->d:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_77

    const-string v1, "#"

    .line 53
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 55
    :try_start_b
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_f} :catch_10

    return p0

    .line 60
    :catch_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 63
    :cond_1f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5b

    .line 64
    :cond_2d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 65
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 66
    :goto_3e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_57

    add-int/lit8 v1, v1, 0x1

    .line 67
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3e

    .line 70
    :cond_57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 73
    :cond_5b
    :try_start_5b
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0
    :try_end_5f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5b .. :try_end_5f} :catch_60

    return p0

    :catch_60
    move-exception v1

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error parsing color "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "CBViewProtocol"

    invoke-static {v2, p0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_77
    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x4

    if-lt p0, v0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method


# virtual methods
.method public a(Landroid/widget/RelativeLayout;)Lcom/chartboost/sdk/Model/CBError$CBImpressionError;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/f;->f:Lcom/chartboost/sdk/f$b;

    if-nez v0, :cond_1a

    if-eqz p1, :cond_17

    .line 2
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 3
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/f;->a(Landroid/content/Context;)Lcom/chartboost/sdk/f$b;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/f;->f:Lcom/chartboost/sdk/f$b;

    goto :goto_1a

    .line 5
    :cond_17
    sget-object p1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_CREATING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    return-object p1

    :cond_1a
    :goto_1a
    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract a(Landroid/content/Context;)Lcom/chartboost/sdk/f$b;
.end method

.method public a()V
    .registers 2

    .line 7
    iget-boolean v0, p0, Lcom/chartboost/sdk/f;->d:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/chartboost/sdk/f;->d:Z

    .line 10
    iget-object v0, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->l()V

    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .registers 8

    .line 45
    iget-object v0, p0, Lcom/chartboost/sdk/f;->i:Ljava/util/Map;

    monitor-enter v0

    .line 46
    :try_start_3
    iget-object v1, p0, Lcom/chartboost/sdk/f;->i:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_12

    .line 48
    iget-object v2, p0, Lcom/chartboost/sdk/f;->a:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 49
    :cond_12
    iget-object v1, p0, Lcom/chartboost/sdk/f;->i:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1e

    .line 51
    iget-object p1, p0, Lcom/chartboost/sdk/f;->a:Landroid/os/Handler;

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_1e
    move-exception p1

    .line 52
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .registers 3

    .line 6
    iget-object v0, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/Model/c;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    .line 12
    iget-object v0, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0, p1, p2}, Lcom/chartboost/sdk/Model/c;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(ZLandroid/view/View;)V
    .registers 4

    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, p1, p2, v0}, Lcom/chartboost/sdk/f;->a(ZLandroid/view/View;Z)V

    return-void
.end method

.method public a(ZLandroid/view/View;Z)V
    .registers 7

    const/16 v0, 0x8

    if-eqz p1, :cond_a

    .line 14
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_12

    :cond_a
    if-nez p1, :cond_24

    .line 15
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_24

    .line 16
    :cond_12
    iget-object v1, p0, Lcom/chartboost/sdk/f;->i:Ljava/util/Map;

    monitor-enter v1

    .line 17
    :try_start_15
    iget-object v2, p0, Lcom/chartboost/sdk/f;->i:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 18
    monitor-exit v1

    return-void

    .line 19
    :cond_1f
    monitor-exit v1

    goto :goto_24

    :catchall_21
    move-exception p1

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_21

    throw p1

    :cond_24
    :goto_24
    if-nez p3, :cond_30

    if-eqz p1, :cond_29

    const/4 v0, 0x0

    .line 23
    :cond_29
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 24
    invoke-virtual {p2, p1}, Landroid/view/View;->setClickable(Z)V

    return-void

    .line 27
    :cond_30
    new-instance p3, Lcom/chartboost/sdk/f$a;

    invoke-direct {p3, p0, p1, p2}, Lcom/chartboost/sdk/f$a;-><init>(Lcom/chartboost/sdk/f;ZLandroid/view/View;)V

    .line 39
    iget-object v0, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget v0, v0, Lcom/chartboost/sdk/Model/a;->b:I

    const-wide/16 v0, 0x1f4

    .line 42
    iget-object v2, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/c;->k:Lcom/chartboost/sdk/e;

    iget-object v2, v2, Lcom/chartboost/sdk/e;->a:Lcom/chartboost/sdk/impl/l1;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/chartboost/sdk/impl/l1;->a(ZLandroid/view/View;J)V

    .line 44
    invoke-virtual {p0, p2, p3, v0, v1}, Lcom/chartboost/sdk/f;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)Z
    .registers 3

    .line 11
    iget-object v0, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/Model/c;->a(Lorg/json/JSONObject;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .registers 5

    .line 7
    invoke-virtual {p0}, Lcom/chartboost/sdk/f;->c()V

    .line 9
    iget-object v0, p0, Lcom/chartboost/sdk/f;->i:Ljava/util/Map;

    monitor-enter v0

    .line 10
    :try_start_6
    iget-object v1, p0, Lcom/chartboost/sdk/f;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 11
    iget-object v3, p0, Lcom/chartboost/sdk/f;->a:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_10

    .line 13
    :cond_22
    iget-object v1, p0, Lcom/chartboost/sdk/f;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 14
    monitor-exit v0

    return-void

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_29

    throw v1

    return-void
.end method

.method public b(Lorg/json/JSONObject;)Z
    .registers 3

    const-string v0, "assets"

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/f;->e:Lorg/json/JSONObject;

    if-nez p1, :cond_23

    .line 4
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/chartboost/sdk/f;->e:Lorg/json/JSONObject;

    const-string p1, "CBViewProtocol"

    const-string v0, "Media got from the response is null or empty"

    .line 5
    invoke-static {p1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object p1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_RESPONSE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/f;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    const/4 p1, 0x0

    return p1

    :cond_23
    const/4 p1, 0x1

    return p1
.end method

.method public c()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/f;->f:Lcom/chartboost/sdk/f$b;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lcom/chartboost/sdk/f$b;->a()V

    :cond_7
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/chartboost/sdk/f;->f:Lcom/chartboost/sdk/f$b;

    return-void
.end method

.method protected d()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->m()V

    return-void
.end method

.method public e()Lorg/json/JSONObject;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/f;->e:Lorg/json/JSONObject;

    return-object v0
.end method

.method public f()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/f;->h:I

    return v0
.end method

.method public g()F
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public h()F
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public i()Lcom/chartboost/sdk/f$b;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/f;->f:Lcom/chartboost/sdk/f$b;

    return-object v0
.end method

.method public j()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public k()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/chartboost/sdk/f;->c:Z

    return-void
.end method

.method public l()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/chartboost/sdk/f;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 2
    iput-boolean v1, p0, Lcom/chartboost/sdk/f;->c:Z

    .line 3
    :cond_7
    invoke-virtual {p0}, Lcom/chartboost/sdk/f;->i()Lcom/chartboost/sdk/f$b;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 4
    iget-object v2, v0, Lcom/chartboost/sdk/f$b;->f:Ljava/lang/Integer;

    if-eqz v2, :cond_1d

    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->e()I

    move-result v2

    iget-object v3, v0, Lcom/chartboost/sdk/f$b;->f:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_20

    .line 5
    :cond_1d
    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/f$b;->a(Z)V

    :cond_20
    return-void
.end method

.method public m()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/f;->d()V

    return-void
.end method

.method public n()Lcom/chartboost/sdk/Model/CBError$CBImpressionError;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/f;->b:Lcom/chartboost/sdk/d;

    invoke-virtual {v0}, Lcom/chartboost/sdk/d;->d()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 3
    iput-object v1, p0, Lcom/chartboost/sdk/f;->f:Lcom/chartboost/sdk/f$b;

    .line 5
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    return-object v0

    .line 8
    :cond_e
    iget-boolean v2, p0, Lcom/chartboost/sdk/f;->k:Z

    if-nez v2, :cond_19

    iget-boolean v2, p0, Lcom/chartboost/sdk/f;->j:Z

    if-nez v2, :cond_19

    .line 9
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->WRONG_ORIENTATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    return-object v0

    .line 12
    :cond_19
    iget-object v2, p0, Lcom/chartboost/sdk/f;->f:Lcom/chartboost/sdk/f$b;

    if-nez v2, :cond_23

    .line 13
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/f;->a(Landroid/content/Context;)Lcom/chartboost/sdk/f$b;

    move-result-object v2

    iput-object v2, p0, Lcom/chartboost/sdk/f;->f:Lcom/chartboost/sdk/f$b;

    .line 14
    :cond_23
    iget-object v2, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget v2, v2, Lcom/chartboost/sdk/Model/a;->b:I

    if-nez v2, :cond_39

    .line 15
    iget-object v2, p0, Lcom/chartboost/sdk/f;->f:Lcom/chartboost/sdk/f$b;

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/f$b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_34

    return-object v1

    .line 18
    :cond_34
    iput-object v1, p0, Lcom/chartboost/sdk/f;->f:Lcom/chartboost/sdk/f$b;

    .line 19
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_CREATING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    return-object v0

    :cond_39
    return-object v1
.end method
