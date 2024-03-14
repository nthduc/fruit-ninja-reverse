.class public Lcom/chartboost/sdk/impl/k1;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/k1$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/k1;->b()V

    return-void
.end method

.method private b()V
    .registers 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/k1;->b:Z

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Choosing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/chartboost/sdk/impl/k1;->b:Z

    if-eqz v2, :cond_14

    const-string v2, "texture"

    goto :goto_16

    :cond_14
    const-string v2, "surface"

    :goto_16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " solution for video playback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoInit"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v1

    .line 4
    iget-boolean v2, p0, Lcom/chartboost/sdk/impl/k1;->b:Z

    if-eqz v2, :cond_41

    .line 5
    new-instance v2, Lcom/chartboost/sdk/impl/j1;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/chartboost/sdk/impl/j1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/chartboost/sdk/impl/k1;->a:Landroid/view/View;

    goto :goto_52

    .line 7
    :cond_41
    new-instance v2, Lcom/chartboost/sdk/impl/i1;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/chartboost/sdk/impl/i1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/chartboost/sdk/impl/k1;->a:Landroid/view/View;

    .line 8
    :goto_52
    iget-object v1, p0, Lcom/chartboost/sdk/impl/k1;->a:Landroid/view/View;

    const-string v2, "CBVideo"

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v1, p0, Lcom/chartboost/sdk/impl/k1;->a:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-boolean v1, p0, Lcom/chartboost/sdk/impl/k1;->b:Z

    if-nez v1, :cond_6f

    .line 12
    iget-object v1, p0, Lcom/chartboost/sdk/impl/k1;->a:Landroid/view/View;

    check-cast v1, Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    :cond_6f
    return-void
.end method


# virtual methods
.method public a()Lcom/chartboost/sdk/impl/k1$a;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k1;->a:Landroid/view/View;

    check-cast v0, Lcom/chartboost/sdk/impl/k1$a;

    return-object v0
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/k1;->a()Lcom/chartboost/sdk/impl/k1$a;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/chartboost/sdk/impl/k1$a;->a(II)V

    return-void
.end method
