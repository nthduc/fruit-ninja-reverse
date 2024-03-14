.class public Lcom/chartboost/sdk/impl/k0;
.super Lcom/chartboost/sdk/impl/q1;
.source "SourceFile"


# instance fields
.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Path;

.field private f:Landroid/graphics/RectF;

.field private g:Landroid/graphics/RectF;

.field private h:I

.field private i:F

.field private j:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/q1;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/chartboost/sdk/impl/k0;->h:I

    .line 8
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/k0;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x40900000    # 4.5f

    mul-float v0, v0, p1

    .line 2
    iput v0, p0, Lcom/chartboost/sdk/impl/k0;->i:F

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/k0;->c:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k0;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k0;->c:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 8
    iget-object p1, p0, Lcom/chartboost/sdk/impl/k0;->c:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/k0;->d:Landroid/graphics/Paint;

    const v1, -0x33000001    # -1.3421772E8f

    .line 11
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    iget-object p1, p0, Lcom/chartboost/sdk/impl/k0;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    iget-object p1, p0, Lcom/chartboost/sdk/impl/k0;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 15
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/k0;->e:Landroid/graphics/Path;

    .line 17
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/k0;->g:Landroid/graphics/RectF;

    .line 18
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/k0;->f:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public a(F)V
    .registers 3

    .line 45
    iput p1, p0, Lcom/chartboost/sdk/impl/k0;->j:F

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_d

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_d
    return-void
.end method

.method public a(I)V
    .registers 2

    .line 43
    iput p1, p0, Lcom/chartboost/sdk/impl/k0;->h:I

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .registers 7

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 22
    iget-object v1, p0, Lcom/chartboost/sdk/impl/k0;->f:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    .line 23
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 24
    iget-object v1, p0, Lcom/chartboost/sdk/impl/k0;->f:Landroid/graphics/RectF;

    int-to-float v0, v0

    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 25
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k0;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k0;->e:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/k0;->f:Landroid/graphics/RectF;

    iget v2, p0, Lcom/chartboost/sdk/impl/k0;->i:F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 28
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 29
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k0;->e:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 32
    iget v0, p0, Lcom/chartboost/sdk/impl/k0;->h:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 35
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k0;->g:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/k0;->f:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 36
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k0;->g:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iget v3, p0, Lcom/chartboost/sdk/impl/k0;->j:F

    mul-float v1, v1, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 37
    iget-object v1, p0, Lcom/chartboost/sdk/impl/k0;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 39
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 42
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k0;->f:Landroid/graphics/RectF;

    iget v1, p0, Lcom/chartboost/sdk/impl/k0;->i:F

    iget-object v2, p0, Lcom/chartboost/sdk/impl/k0;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public b(F)V
    .registers 2

    .line 3
    iput p1, p0, Lcom/chartboost/sdk/impl/k0;->i:F

    return-void
.end method

.method public b(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k0;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public c(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k0;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
