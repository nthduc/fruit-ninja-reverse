.class public Lcom/applovin/impl/adview/l;
.super Landroid/widget/FrameLayout;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/adview/h;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/adview/h$a;Landroid/app/Activity;)V
    .registers 4

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/l;->setBackgroundColor(I)V

    invoke-static {p1, p2}, Lcom/applovin/impl/adview/h;->a(Lcom/applovin/impl/adview/h$a;Landroid/content/Context;)Lcom/applovin/impl/adview/h;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/adview/l;->a:Lcom/applovin/impl/adview/h;

    iget-object p1, p0, Lcom/applovin/impl/adview/l;->a:Lcom/applovin/impl/adview/h;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/l;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(IIII)V
    .registers 6

    add-int/2addr p2, p1

    add-int/2addr p2, p3

    invoke-virtual {p0}, Lcom/applovin/impl/adview/l;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_d

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_15

    :cond_d
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/l;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_15
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p1, p1, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p3, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object p3, p0, Lcom/applovin/impl/adview/l;->a:Lcom/applovin/impl/adview/h;

    invoke-virtual {p3, p2}, Lcom/applovin/impl/adview/h;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/applovin/impl/adview/l;->a:Lcom/applovin/impl/adview/h;

    invoke-virtual {p2, p1}, Lcom/applovin/impl/adview/h;->a(I)V

    return-void
.end method
