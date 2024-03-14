.class public Lcom/chartboost/sdk/impl/h0$a;
.super Lcom/chartboost/sdk/f$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field protected h:Lcom/chartboost/sdk/impl/n1;

.field protected i:Lcom/chartboost/sdk/impl/o1;

.field private j:Z

.field protected k:Lcom/chartboost/sdk/impl/o1;

.field protected l:Landroid/widget/ImageView;

.field final synthetic m:Lcom/chartboost/sdk/impl/h0;


# direct methods
.method protected constructor <init>(Lcom/chartboost/sdk/impl/h0;Landroid/content/Context;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/h0$a;->m:Lcom/chartboost/sdk/impl/h0;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/f$b;-><init>(Lcom/chartboost/sdk/f;Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/h0$a;->j:Z

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 7
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 11
    new-instance v2, Lcom/chartboost/sdk/impl/n1;

    invoke-direct {v2, p2}, Lcom/chartboost/sdk/impl/n1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/impl/n1;

    iput-object v2, p0, Lcom/chartboost/sdk/impl/h0$a;->h:Lcom/chartboost/sdk/impl/n1;

    .line 13
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    new-instance v1, Lcom/chartboost/sdk/impl/h0$a$a;

    invoke-direct {v1, p0, p2, p1}, Lcom/chartboost/sdk/impl/h0$a$a;-><init>(Lcom/chartboost/sdk/impl/h0$a;Landroid/content/Context;Lcom/chartboost/sdk/impl/h0;)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chartboost/sdk/impl/o1;

    iput-object p1, p0, Lcom/chartboost/sdk/impl/h0$a;->k:Lcom/chartboost/sdk/impl/o1;

    .line 23
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/f$b;->a(Landroid/view/View;)V

    .line 24
    iget-object p1, p0, Lcom/chartboost/sdk/impl/h0$a;->k:Lcom/chartboost/sdk/impl/o1;

    const-string v1, "CBAd"

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 29
    new-instance p1, Landroid/widget/ImageView;

    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/chartboost/sdk/impl/h0$a;->l:Landroid/widget/ImageView;

    const/high16 p2, -0x1000000

    .line 30
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 31
    iget-object p1, p0, Lcom/chartboost/sdk/impl/h0$a;->l:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 33
    iget-object p1, p0, Lcom/chartboost/sdk/impl/h0$a;->k:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 100
    invoke-super {p0}, Lcom/chartboost/sdk/f$b;->a()V

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/chartboost/sdk/impl/h0$a;->h:Lcom/chartboost/sdk/impl/n1;

    .line 102
    iput-object v0, p0, Lcom/chartboost/sdk/impl/h0$a;->i:Lcom/chartboost/sdk/impl/o1;

    .line 104
    iput-object v0, p0, Lcom/chartboost/sdk/impl/h0$a;->k:Lcom/chartboost/sdk/impl/o1;

    .line 105
    iput-object v0, p0, Lcom/chartboost/sdk/impl/h0$a;->l:Landroid/widget/ImageView;

    return-void
.end method

.method protected a(FFFF)V
    .registers 7

    const/4 v0, 0x4

    .line 1
    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "x"

    invoke-static {v1, p1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 3
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "y"

    invoke-static {p2, p1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 4
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "w"

    invoke-static {p2, p1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    .line 5
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "h"

    invoke-static {p2, p1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    .line 6
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/chartboost/sdk/impl/h0$a;->m:Lcom/chartboost/sdk/impl/h0;

    invoke-virtual {p2, p1}, Lcom/chartboost/sdk/f;->a(Lorg/json/JSONObject;)Z

    return-void
.end method

.method protected a(II)V
    .registers 16

    .line 12
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/h0$a;->j:Z

    if-nez v0, :cond_a

    .line 13
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/h0$a;->d()V

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/h0$a;->j:Z

    .line 17
    :cond_a
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h0$a;->m:Lcom/chartboost/sdk/impl/h0;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->f()I

    move-result v0

    .line 19
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 21
    iget-object v1, p0, Lcom/chartboost/sdk/impl/h0$a;->m:Lcom/chartboost/sdk/impl/h0;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/h0;->l:Lcom/chartboost/sdk/Libraries/h;

    goto :goto_1f

    :cond_1b
    iget-object v1, p0, Lcom/chartboost/sdk/impl/h0$a;->m:Lcom/chartboost/sdk/impl/h0;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/h0;->m:Lcom/chartboost/sdk/Libraries/h;

    :goto_1f
    if-eqz v0, :cond_26

    .line 22
    iget-object v2, p0, Lcom/chartboost/sdk/impl/h0$a;->m:Lcom/chartboost/sdk/impl/h0;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/h0;->n:Lcom/chartboost/sdk/Libraries/h;

    goto :goto_2a

    :cond_26
    iget-object v2, p0, Lcom/chartboost/sdk/impl/h0$a;->m:Lcom/chartboost/sdk/impl/h0;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/h0;->o:Lcom/chartboost/sdk/Libraries/h;

    .line 24
    :goto_2a
    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/h;->e()Z

    move-result v3

    if-nez v3, :cond_3a

    .line 25
    iget-object v3, p0, Lcom/chartboost/sdk/impl/h0$a;->m:Lcom/chartboost/sdk/impl/h0;

    iget-object v4, v3, Lcom/chartboost/sdk/impl/h0;->l:Lcom/chartboost/sdk/Libraries/h;

    if-ne v1, v4, :cond_39

    .line 26
    iget-object v1, v3, Lcom/chartboost/sdk/impl/h0;->m:Lcom/chartboost/sdk/Libraries/h;

    goto :goto_3a

    :cond_39
    move-object v1, v4

    .line 31
    :cond_3a
    :goto_3a
    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/h;->e()Z

    move-result v3

    if-nez v3, :cond_4a

    .line 32
    iget-object v3, p0, Lcom/chartboost/sdk/impl/h0$a;->m:Lcom/chartboost/sdk/impl/h0;

    iget-object v4, v3, Lcom/chartboost/sdk/impl/h0;->n:Lcom/chartboost/sdk/Libraries/h;

    if-ne v2, v4, :cond_49

    .line 33
    iget-object v2, v3, Lcom/chartboost/sdk/impl/h0;->o:Lcom/chartboost/sdk/Libraries/h;

    goto :goto_4a

    :cond_49
    move-object v2, v4

    .line 38
    :cond_4a
    :goto_4a
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 40
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44
    iget-object v6, p0, Lcom/chartboost/sdk/impl/h0$a;->m:Lcom/chartboost/sdk/impl/h0;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v3, v1, v7}, Lcom/chartboost/sdk/impl/h0;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/h;F)V

    int-to-float v6, p1

    .line 45
    iget v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v8, v8

    div-float/2addr v6, v8

    int-to-float v8, p2

    iget v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 47
    iget-object v8, p0, Lcom/chartboost/sdk/impl/h0$a;->m:Lcom/chartboost/sdk/impl/h0;

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, v8, Lcom/chartboost/sdk/impl/h0;->r:F

    .line 48
    iget v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v6, v6

    iget-object v8, p0, Lcom/chartboost/sdk/impl/h0$a;->m:Lcom/chartboost/sdk/impl/h0;

    iget v9, v8, Lcom/chartboost/sdk/impl/h0;->r:F

    mul-float v6, v6, v9

    float-to-int v6, v6

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 49
    iget v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v6, v6

    mul-float v6, v6, v9

    float-to-int v6, v6

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-eqz v0, :cond_8b

    const-string v6, "frame-portrait"

    goto :goto_8d

    :cond_8b
    const-string v6, "frame-landscape"

    .line 51
    :goto_8d
    invoke-virtual {v8, v6}, Lcom/chartboost/sdk/impl/h0;->b(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v6

    .line 52
    iget v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int v8, p1, v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    iget v10, v6, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/h;->a()F

    move-result v11

    div-float/2addr v10, v11

    iget-object v11, p0, Lcom/chartboost/sdk/impl/h0$a;->m:Lcom/chartboost/sdk/impl/h0;

    iget v11, v11, Lcom/chartboost/sdk/impl/h0;->r:F

    mul-float v10, v10, v11

    add-float/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 53
    iget v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int v8, p2, v8

    int-to-float v8, v8

    div-float/2addr v8, v9

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/h;->a()F

    move-result v10

    div-float/2addr v6, v10

    iget-object v10, p0, Lcom/chartboost/sdk/impl/h0$a;->m:Lcom/chartboost/sdk/impl/h0;

    iget v10, v10, Lcom/chartboost/sdk/impl/h0;->r:F

    mul-float v6, v6, v10

    add-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 56
    iget-object v6, p0, Lcom/chartboost/sdk/impl/h0$a;->m:Lcom/chartboost/sdk/impl/h0;

    invoke-virtual {v6, v5, v2, v7}, Lcom/chartboost/sdk/impl/h0;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/h;F)V

    .line 57
    iget-object v6, p0, Lcom/chartboost/sdk/impl/h0$a;->m:Lcom/chartboost/sdk/impl/h0;

    if-eqz v0, :cond_d5

    const-string v7, "close-portrait"

    goto :goto_d7

    :cond_d5
    const-string v7, "close-landscape"

    :goto_d7
    invoke-virtual {v6, v7}, Lcom/chartboost/sdk/impl/h0;->b(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v6

    .line 59
    iget v7, v6, Landroid/graphics/Point;->x:I

    if-nez v7, :cond_ff

    iget v7, v6, Landroid/graphics/Point;->y:I

    if-nez v7, :cond_ff

    .line 61
    iget v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    add-int/2addr v6, v7

    iget v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    neg-int v7, v7

    int-to-float v7, v7

    div-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v6, v7

    .line 62
    iget v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    neg-int v8, v8

    int-to-float v8, v8

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_12c

    .line 64
    :cond_ff
    iget v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    int-to-float v7, v7

    iget v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v8, v8

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    iget v8, v6, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v8, v8

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 65
    iget v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    int-to-float v8, v8

    iget v10, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v10, v10

    div-float/2addr v10, v9

    add-float/2addr v8, v10

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    add-float/2addr v8, v6

    iget v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v6, v6

    div-float/2addr v6, v9

    sub-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    move v12, v7

    move v7, v6

    move v6, v12

    :goto_12c
    const/4 v8, 0x0

    .line 67
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v10, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int v10, p1, v10

    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 68
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int v7, p2, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 71
    iget-object v6, p0, Lcom/chartboost/sdk/impl/h0$a;->h:Lcom/chartboost/sdk/impl/n1;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object v3, p0, Lcom/chartboost/sdk/impl/h0$a;->i:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    iget-object v3, p0, Lcom/chartboost/sdk/impl/h0$a;->h:Lcom/chartboost/sdk/impl/n1;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 76
    iget-object v3, p0, Lcom/chartboost/sdk/impl/h0$a;->h:Lcom/chartboost/sdk/impl/n1;

    invoke-virtual {v3, v1}, Lcom/chartboost/sdk/impl/n1;->a(Lcom/chartboost/sdk/Libraries/h;)V

    .line 77
    iget-object v1, p0, Lcom/chartboost/sdk/impl/h0$a;->i:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/o1;->a(Lcom/chartboost/sdk/Libraries/h;)V

    if-eqz v0, :cond_16b

    .line 80
    iget-object v1, p0, Lcom/chartboost/sdk/impl/h0$a;->m:Lcom/chartboost/sdk/impl/h0;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/h0;->p:Lcom/chartboost/sdk/Libraries/h;

    goto :goto_16f

    :cond_16b
    iget-object v1, p0, Lcom/chartboost/sdk/impl/h0$a;->m:Lcom/chartboost/sdk/impl/h0;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/h0;->q:Lcom/chartboost/sdk/Libraries/h;

    .line 82
    :goto_16f
    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/h;->e()Z

    move-result v2

    if-nez v2, :cond_17f

    .line 83
    iget-object v2, p0, Lcom/chartboost/sdk/impl/h0$a;->m:Lcom/chartboost/sdk/impl/h0;

    iget-object v3, v2, Lcom/chartboost/sdk/impl/h0;->p:Lcom/chartboost/sdk/Libraries/h;

    if-ne v1, v3, :cond_17e

    .line 84
    iget-object v1, v2, Lcom/chartboost/sdk/impl/h0;->q:Lcom/chartboost/sdk/Libraries/h;

    goto :goto_17f

    :cond_17e
    move-object v1, v3

    .line 89
    :cond_17f
    :goto_17f
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 91
    iget-object v3, p0, Lcom/chartboost/sdk/impl/h0$a;->m:Lcom/chartboost/sdk/impl/h0;

    iget v4, v3, Lcom/chartboost/sdk/impl/h0;->r:F

    invoke-virtual {v3, v2, v1, v4}, Lcom/chartboost/sdk/impl/h0;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/h;F)V

    .line 92
    iget-object v3, p0, Lcom/chartboost/sdk/impl/h0$a;->m:Lcom/chartboost/sdk/impl/h0;

    if-eqz v0, :cond_192

    const-string v0, "ad-portrait"

    goto :goto_194

    :cond_192
    const-string v0, "ad-landscape"

    :goto_194
    invoke-virtual {v3, v0}, Lcom/chartboost/sdk/impl/h0;->b(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v0

    .line 93
    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int/2addr p1, v3

    int-to-float p1, p1

    div-float/2addr p1, v9

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/h;->a()F

    move-result v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/chartboost/sdk/impl/h0$a;->m:Lcom/chartboost/sdk/impl/h0;

    iget v4, v4, Lcom/chartboost/sdk/impl/h0;->r:F

    mul-float v3, v3, v4

    add-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 94
    iget p1, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr p2, p1

    int-to-float p1, p2

    div-float/2addr p1, v9

    iget p2, v0, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/h;->a()F

    move-result v0

    div-float/2addr p2, v0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/h0$a;->m:Lcom/chartboost/sdk/impl/h0;

    iget v0, v0, Lcom/chartboost/sdk/impl/h0;->r:F

    mul-float p2, p2, v0

    add-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 96
    iget-object p1, p0, Lcom/chartboost/sdk/impl/h0$a;->l:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget-object p1, p0, Lcom/chartboost/sdk/impl/h0$a;->k:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object p1, p0, Lcom/chartboost/sdk/impl/h0$a;->k:Lcom/chartboost/sdk/impl/o1;

    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Lcom/chartboost/sdk/impl/o1;->a(Landroid/widget/ImageView$ScaleType;)V

    .line 99
    iget-object p1, p0, Lcom/chartboost/sdk/impl/h0$a;->k:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {p1, v1}, Lcom/chartboost/sdk/impl/o1;->a(Lcom/chartboost/sdk/Libraries/h;)V

    return-void
.end method

.method protected c()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h0$a;->m:Lcom/chartboost/sdk/impl/h0;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->a()V

    return-void
.end method

.method protected d()V
    .registers 3

    .line 1
    new-instance v0, Lcom/chartboost/sdk/impl/h0$a$b;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/chartboost/sdk/impl/h0$a$b;-><init>(Lcom/chartboost/sdk/impl/h0$a;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/h0$a;->i:Lcom/chartboost/sdk/impl/o1;

    const-string v1, "CBClose"

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h0$a;->i:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method
