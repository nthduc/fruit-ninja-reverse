.class public Lcom/chartboost/sdk/impl/n0;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/chartboost/sdk/impl/n0;->b:I

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float p1, p1, v1

    .line 7
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 8
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 11
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/n0;->a:Landroid/graphics/Paint;

    .line 12
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/chartboost/sdk/impl/n0;->b:I

    return-void
.end method

.method public b(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/n0;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 12

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 4
    iget v1, p0, Lcom/chartboost/sdk/impl/n0;->b:I

    and-int/lit8 v1, v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    if-lez v1, :cond_28

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v6, v1

    mul-float v7, v0, v2

    iget-object v8, p0, Lcom/chartboost/sdk/impl/n0;->a:Landroid/graphics/Paint;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 6
    :cond_28
    iget v1, p0, Lcom/chartboost/sdk/impl/n0;->b:I

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_48

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v3, v0, v2

    sub-float v5, v1, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v8, v1

    iget-object v9, p0, Lcom/chartboost/sdk/impl/n0;->a:Landroid/graphics/Paint;

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 8
    :cond_48
    iget v1, p0, Lcom/chartboost/sdk/impl/n0;->b:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_68

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v3, v0, v2

    sub-float v6, v1, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v8, v1

    iget-object v9, p0, Lcom/chartboost/sdk/impl/n0;->a:Landroid/graphics/Paint;

    const/4 v5, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 10
    :cond_68
    iget v1, p0, Lcom/chartboost/sdk/impl/n0;->b:I

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_7d

    mul-float v6, v0, v2

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v7, v0

    iget-object v8, p0, Lcom/chartboost/sdk/impl/n0;->a:Landroid/graphics/Paint;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_7d
    return-void
.end method
