.class public final Lcom/applovin/impl/adview/w;
.super Lcom/applovin/impl/adview/h;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static final c:Landroid/graphics/Paint;

.field private static final d:Landroid/graphics/Paint;

.field private static final e:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/applovin/impl/adview/w;->c:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/applovin/impl/adview/w;->d:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/applovin/impl/adview/w;->e:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/h;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/applovin/impl/adview/w;->c:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p1, Lcom/applovin/impl/adview/w;->d:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p1, Lcom/applovin/impl/adview/w;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p1, Lcom/applovin/impl/adview/w;->e:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method protected getCenter()F
    .registers 3

    invoke-virtual {p0}, Lcom/applovin/impl/adview/w;->getSize()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method protected getCrossOffset()F
    .registers 3

    iget v0, p0, Lcom/applovin/impl/adview/w;->a:F

    const/high16 v1, 0x41200000    # 10.0f

    mul-float v0, v0, v1

    return v0
.end method

.method protected getInnerCircleOffset()F
    .registers 3

    iget v0, p0, Lcom/applovin/impl/adview/w;->a:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    return v0
.end method

.method protected getInnerCircleRadius()F
    .registers 3

    invoke-virtual {p0}, Lcom/applovin/impl/adview/w;->getCenter()F

    move-result v0

    invoke-virtual {p0}, Lcom/applovin/impl/adview/w;->getInnerCircleOffset()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method protected getStrokeWidth()F
    .registers 3

    iget v0, p0, Lcom/applovin/impl/adview/w;->a:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v0, v0, v1

    return v0
.end method

.method public getStyle()Lcom/applovin/impl/adview/h$a;
    .registers 2

    sget-object v0, Lcom/applovin/impl/adview/h$a;->a:Lcom/applovin/impl/adview/h$a;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 11

    invoke-super {p0, p1}, Lcom/applovin/impl/adview/h;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/applovin/impl/adview/w;->getCenter()F

    move-result v0

    sget-object v1, Lcom/applovin/impl/adview/w;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/applovin/impl/adview/w;->getInnerCircleRadius()F

    move-result v1

    sget-object v2, Lcom/applovin/impl/adview/w;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/applovin/impl/adview/w;->getCrossOffset()F

    move-result v0

    invoke-virtual {p0}, Lcom/applovin/impl/adview/w;->getSize()F

    move-result v1

    sub-float/2addr v1, v0

    sget-object v2, Lcom/applovin/impl/adview/w;->e:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/applovin/impl/adview/w;->getStrokeWidth()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v8, Lcom/applovin/impl/adview/w;->e:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v0

    move v5, v0

    move v6, v1

    move v7, v1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sget-object v8, Lcom/applovin/impl/adview/w;->e:Landroid/graphics/Paint;

    move v5, v1

    move v7, v0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
