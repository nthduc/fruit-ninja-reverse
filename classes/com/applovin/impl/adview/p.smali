.class public final Lcom/applovin/impl/adview/p;
.super Lcom/applovin/impl/adview/h;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/h;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3

    int-to-float p1, p1

    const/high16 v0, 0x41f00000    # 30.0f

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/p;->setViewScale(F)V

    return-void
.end method

.method public getStyle()Lcom/applovin/impl/adview/h$a;
    .registers 2

    sget-object v0, Lcom/applovin/impl/adview/h$a;->c:Lcom/applovin/impl/adview/h$a;

    return-object v0
.end method
