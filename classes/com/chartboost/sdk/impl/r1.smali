.class public Lcom/chartboost/sdk/impl/r1;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private a:Lcom/chartboost/sdk/f$b;

.field private b:Lcom/chartboost/sdk/impl/m1;

.field private c:Lcom/chartboost/sdk/impl/m1;

.field private final d:Lcom/chartboost/sdk/Model/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/chartboost/sdk/Model/c;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/chartboost/sdk/impl/r1;->d:Lcom/chartboost/sdk/Model/c;

    .line 3
    iget-object p2, p2, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget p2, p2, Lcom/chartboost/sdk/Model/a;->b:I

    if-nez p2, :cond_31

    .line 4
    new-instance p2, Lcom/chartboost/sdk/impl/m1;

    invoke-direct {p2, p1}, Lcom/chartboost/sdk/impl/m1;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/chartboost/sdk/impl/r1;->b:Lcom/chartboost/sdk/impl/m1;

    .line 5
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    new-instance p2, Lcom/chartboost/sdk/impl/m1;

    invoke-direct {p2, p1}, Lcom/chartboost/sdk/impl/m1;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/chartboost/sdk/impl/r1;->c:Lcom/chartboost/sdk/impl/m1;

    .line 8
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object p1, p0, Lcom/chartboost/sdk/impl/r1;->c:Lcom/chartboost/sdk/impl/m1;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_31
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public b()Lcom/chartboost/sdk/impl/m1;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r1;->b:Lcom/chartboost/sdk/impl/m1;

    return-object v0
.end method

.method public c()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r1;->a:Lcom/chartboost/sdk/f$b;

    return-object v0
.end method

.method public d()Lcom/chartboost/sdk/Model/c;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r1;->d:Lcom/chartboost/sdk/Model/c;

    return-object v0
.end method

.method public e()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r1;->a:Lcom/chartboost/sdk/f$b;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public f()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r1;->a:Lcom/chartboost/sdk/f$b;

    if-nez v0, :cond_1c

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r1;->d:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->f()Lcom/chartboost/sdk/f$b;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/r1;->a:Lcom/chartboost/sdk/f$b;

    if-eqz v0, :cond_1c

    .line 4
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r1;->a:Lcom/chartboost/sdk/f$b;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f$b;->b()V

    :cond_1c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/r1;->performClick()Z

    const/4 p1, 0x1

    return p1
.end method

.method public performClick()Z
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->performClick()Z

    const/4 v0, 0x1

    return v0
.end method
