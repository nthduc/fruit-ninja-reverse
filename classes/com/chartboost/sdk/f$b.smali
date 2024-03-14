.class public abstract Lcom/chartboost/sdk/f$b;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "b"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field f:Ljava/lang/Integer;

.field final synthetic g:Lcom/chartboost/sdk/f;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/f;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/f$b;->g:Lcom/chartboost/sdk/f;

    .line 2
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/chartboost/sdk/f$b;->a:Z

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/chartboost/sdk/f$b;->b:I

    iput p1, p0, Lcom/chartboost/sdk/f$b;->c:I

    .line 5
    iput p1, p0, Lcom/chartboost/sdk/f$b;->d:I

    iput p1, p0, Lcom/chartboost/sdk/f$b;->e:I

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/chartboost/sdk/f$b;->f:Ljava/lang/Integer;

    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    .line 12
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestFocus()Z

    return-void
.end method

.method private b(II)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/f$b;->g:Lcom/chartboost/sdk/f;

    iget-object v0, v0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    iget-object v0, v0, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget v0, v0, Lcom/chartboost/sdk/Model/a;->b:I

    if-ne v0, v1, :cond_e

    return v1

    .line 4
    :cond_e
    iget-boolean v0, p0, Lcom/chartboost/sdk/f$b;->a:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    return v2

    .line 7
    :cond_14
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->e()I

    move-result v0

    .line 8
    iget v3, p0, Lcom/chartboost/sdk/f$b;->b:I

    if-ne v3, p1, :cond_2b

    iget v3, p0, Lcom/chartboost/sdk/f$b;->c:I

    if-ne v3, p2, :cond_2b

    iget-object v3, p0, Lcom/chartboost/sdk/f$b;->f:Ljava/lang/Integer;

    if-eqz v3, :cond_2b

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_2b

    return v1

    .line 11
    :cond_2b
    iput-boolean v1, p0, Lcom/chartboost/sdk/f$b;->a:Z

    .line 14
    :try_start_2d
    iget-object v3, p0, Lcom/chartboost/sdk/f$b;->g:Lcom/chartboost/sdk/f;

    iget-boolean v3, v3, Lcom/chartboost/sdk/f;->j:Z

    if-eqz v3, :cond_3e

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->b(I)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 15
    iget-object v3, p0, Lcom/chartboost/sdk/f$b;->g:Lcom/chartboost/sdk/f;

    iput v0, v3, Lcom/chartboost/sdk/f;->h:I

    goto :goto_4e

    .line 16
    :cond_3e
    iget-object v3, p0, Lcom/chartboost/sdk/f$b;->g:Lcom/chartboost/sdk/f;

    iget-boolean v3, v3, Lcom/chartboost/sdk/f;->k:Z

    if-eqz v3, :cond_4e

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(I)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 17
    iget-object v3, p0, Lcom/chartboost/sdk/f$b;->g:Lcom/chartboost/sdk/f;

    iput v0, v3, Lcom/chartboost/sdk/f;->h:I

    .line 18
    :cond_4e
    :goto_4e
    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/f$b;->a(II)V

    .line 19
    new-instance v3, Lcom/chartboost/sdk/f$b$a;

    invoke-direct {v3, p0}, Lcom/chartboost/sdk/f$b$a;-><init>(Lcom/chartboost/sdk/f$b;)V

    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 25
    iput p1, p0, Lcom/chartboost/sdk/f$b;->b:I

    .line 26
    iput p2, p0, Lcom/chartboost/sdk/f$b;->c:I

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/f$b;->f:Ljava/lang/Integer;
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_63} :catch_64

    goto :goto_76

    :catch_64
    move-exception p1

    const-string p2, "CBViewProtocol"

    const-string v0, "Exception raised while layouting Subviews"

    .line 30
    invoke-static {p2, v0, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v0, "tryLayout"

    invoke-static {p2, v0, p1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v1, 0x0

    .line 33
    :goto_76
    iput-boolean v2, p0, Lcom/chartboost/sdk/f$b;->a:Z

    return v1
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method protected abstract a(II)V
.end method

.method public final a(Landroid/view/View;)V
    .registers 4

    .line 30
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v1, v0, :cond_a

    const/16 v1, 0xc9

    .line 32
    :cond_a
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_e
    if-eqz v0, :cond_17

    add-int/lit8 v1, v1, 0x1

    .line 34
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_e

    .line 36
    :cond_17
    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setSaveEnabled(Z)V

    return-void
.end method

.method public final a(Z)V
    .registers 2

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/f$b;->f:Ljava/lang/Integer;

    .line 2
    :cond_5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/f$b;->a(Landroid/app/Activity;)Z

    return-void
.end method

.method public a(Landroid/app/Activity;)Z
    .registers 5

    .line 3
    iget v0, p0, Lcom/chartboost/sdk/f$b;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    iget v0, p0, Lcom/chartboost/sdk/f$b;->e:I

    if-ne v0, v1, :cond_57

    .line 6
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    .line 7
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    if-eqz v0, :cond_15

    if-nez v1, :cond_38

    .line 9
    :cond_15
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 11
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 12
    :cond_2a
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_32} :catch_36

    move v2, v1

    move v1, v0

    move v0, v2

    goto :goto_38

    :catch_36
    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_38
    :goto_38
    if-eqz v0, :cond_3f

    if-nez v1, :cond_3d

    goto :goto_3f

    :cond_3d
    move p1, v0

    goto :goto_53

    .line 19
    :cond_3f
    :goto_3f
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 21
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 22
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 25
    :goto_53
    iput p1, p0, Lcom/chartboost/sdk/f$b;->d:I

    .line 26
    iput v1, p0, Lcom/chartboost/sdk/f$b;->e:I

    .line 29
    :cond_57
    iget p1, p0, Lcom/chartboost/sdk/f$b;->d:I

    iget v0, p0, Lcom/chartboost/sdk/f$b;->e:I

    invoke-direct {p0, p1, v0}, Lcom/chartboost/sdk/f$b;->b(II)Z

    move-result p1

    return p1
.end method

.method public final b()V
    .registers 2

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/f$b;->a(Z)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 5

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/f$b;->g:Lcom/chartboost/sdk/f;

    iget-object v0, v0, Lcom/chartboost/sdk/f;->i:Ljava/util/Map;

    monitor-enter v0

    .line 3
    :try_start_8
    iget-object v1, p0, Lcom/chartboost/sdk/f$b;->g:Lcom/chartboost/sdk/f;

    iget-object v1, v1, Lcom/chartboost/sdk/f;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 4
    iget-object v3, p0, Lcom/chartboost/sdk/f$b;->g:Lcom/chartboost/sdk/f;

    iget-object v3, v3, Lcom/chartboost/sdk/f;->a:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_14

    .line 6
    :cond_28
    iget-object v1, p0, Lcom/chartboost/sdk/f$b;->g:Lcom/chartboost/sdk/f;

    iget-object v1, v1, Lcom/chartboost/sdk/f;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 7
    monitor-exit v0

    return-void

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_8 .. :try_end_33} :catchall_31

    throw v1

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 2
    iput p1, p0, Lcom/chartboost/sdk/f$b;->d:I

    .line 3
    iput p2, p0, Lcom/chartboost/sdk/f$b;->e:I

    .line 5
    iget p1, p0, Lcom/chartboost/sdk/f$b;->b:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1f

    iget p1, p0, Lcom/chartboost/sdk/f$b;->c:I

    if-eq p1, p2, :cond_1f

    iget-object p1, p0, Lcom/chartboost/sdk/f$b;->g:Lcom/chartboost/sdk/f;

    iget-object p1, p1, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    if-eqz p1, :cond_1f

    iget-object p1, p1, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget p1, p1, Lcom/chartboost/sdk/Model/a;->b:I

    if-nez p1, :cond_1f

    .line 6
    invoke-virtual {p0}, Lcom/chartboost/sdk/f$b;->b()V

    :cond_1f
    return-void
.end method
