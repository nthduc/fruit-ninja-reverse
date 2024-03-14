.class public abstract Lcom/applovin/impl/adview/h;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/adview/h$a;
    }
.end annotation


# instance fields
.field protected a:F

.field protected final b:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/applovin/impl/adview/h;->a:F

    iput-object p1, p0, Lcom/applovin/impl/adview/h;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Lcom/applovin/impl/adview/h$a;Landroid/content/Context;)Lcom/applovin/impl/adview/h;
    .registers 3

    sget-object v0, Lcom/applovin/impl/adview/h$a;->c:Lcom/applovin/impl/adview/h$a;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/h$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance p0, Lcom/applovin/impl/adview/p;

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/p;-><init>(Landroid/content/Context;)V

    goto :goto_21

    :cond_e
    sget-object v0, Lcom/applovin/impl/adview/h$a;->b:Lcom/applovin/impl/adview/h$a;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/h$a;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    new-instance p0, Lcom/applovin/impl/adview/q;

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/q;-><init>(Landroid/content/Context;)V

    goto :goto_21

    :cond_1c
    new-instance p0, Lcom/applovin/impl/adview/w;

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/w;-><init>(Landroid/content/Context;)V

    :goto_21
    return-object p0
.end method


# virtual methods
.method public a(I)V
    .registers 3

    int-to-float p1, p1

    const/high16 v0, 0x41f00000    # 30.0f

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/h;->setViewScale(F)V

    invoke-virtual {p0}, Lcom/applovin/impl/adview/h;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Lcom/applovin/impl/adview/h;->getSize()F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/applovin/impl/adview/h;->getSize()F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1b
    return-void
.end method

.method public getSize()F
    .registers 3

    iget v0, p0, Lcom/applovin/impl/adview/h;->a:F

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float v0, v0, v1

    return v0
.end method

.method public abstract getStyle()Lcom/applovin/impl/adview/h$a;
.end method

.method public setViewScale(F)V
    .registers 2

    iput p1, p0, Lcom/applovin/impl/adview/h;->a:F

    return-void
.end method
