.class public Lcom/applovin/impl/adview/activity/a/c;
.super Lcom/applovin/impl/adview/activity/a/a;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/adview/AppLovinFullscreenActivity;Lcom/applovin/impl/sdk/j;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/adview/activity/a/a;-><init>(Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/adview/AppLovinFullscreenActivity;Lcom/applovin/impl/sdk/j;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;Lcom/applovin/impl/adview/l;Lcom/applovin/impl/adview/a;Landroid/widget/ProgressBar;Lcom/applovin/impl/adview/AppLovinVideoViewV2;Lcom/applovin/adview/AppLovinAdView;)V
    .registers 8

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/a/c;->e:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p5, v0}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/a/c;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p5, p0, Lcom/applovin/impl/adview/activity/a/c;->e:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p6, p5}, Lcom/applovin/adview/AppLovinAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p5, p0, Lcom/applovin/impl/adview/activity/a/c;->d:Landroid/view/ViewGroup;

    invoke-virtual {p5, p6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p5, 0x4

    invoke-virtual {p6, p5}, Lcom/applovin/adview/AppLovinAdView;->setVisibility(I)V

    if-eqz p2, :cond_30

    iget-object p5, p0, Lcom/applovin/impl/adview/activity/a/c;->c:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {p5}, Lcom/applovin/impl/sdk/ad/g;->ab()Z

    move-result p5

    if-eqz p5, :cond_24

    const/4 p5, 0x3

    goto :goto_25

    :cond_24
    const/4 p5, 0x5

    :goto_25
    or-int/lit8 p5, p5, 0x30

    iget-object p6, p0, Lcom/applovin/impl/adview/activity/a/c;->c:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {p6}, Lcom/applovin/impl/sdk/ad/g;->W()Lcom/applovin/impl/sdk/ad/g$c;

    move-result-object p6

    invoke-virtual {p0, p6, p5, p2}, Lcom/applovin/impl/adview/activity/a/c;->a(Lcom/applovin/impl/sdk/ad/g$c;ILcom/applovin/impl/adview/l;)V

    :cond_30
    if-eqz p1, :cond_75

    iget-object p2, p0, Lcom/applovin/impl/adview/activity/a/c;->b:Lcom/applovin/adview/AppLovinFullscreenActivity;

    iget-object p5, p0, Lcom/applovin/impl/adview/activity/a/c;->a:Lcom/applovin/impl/sdk/j;

    sget-object p6, Lcom/applovin/impl/sdk/b/b;->cR:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p5, p6}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    invoke-static {p2, p5}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result p2

    new-instance p5, Landroid/widget/FrameLayout$LayoutParams;

    iget-object p6, p0, Lcom/applovin/impl/adview/activity/a/c;->a:Lcom/applovin/impl/sdk/j;

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->cT:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p6, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Integer;

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    invoke-direct {p5, p2, p2, p6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object p2, p0, Lcom/applovin/impl/adview/activity/a/c;->b:Lcom/applovin/adview/AppLovinFullscreenActivity;

    iget-object p6, p0, Lcom/applovin/impl/adview/activity/a/c;->a:Lcom/applovin/impl/sdk/j;

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->cS:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p6, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Integer;

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    invoke-static {p2, p6}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p5, p2, p2, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object p2, p0, Lcom/applovin/impl/adview/activity/a/c;->d:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_75
    if-eqz p3, :cond_7e

    iget-object p1, p0, Lcom/applovin/impl/adview/activity/a/c;->d:Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/applovin/impl/adview/activity/a/c;->e:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7e
    if-eqz p4, :cond_a1

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    const/16 p3, 0x14

    const/16 p5, 0x50

    invoke-direct {p1, p2, p3, p5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object p2, p0, Lcom/applovin/impl/adview/activity/a/c;->a:Lcom/applovin/impl/sdk/j;

    sget-object p3, Lcom/applovin/impl/sdk/b/b;->cX:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p2, p3}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p3, p2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object p2, p0, Lcom/applovin/impl/adview/activity/a/c;->d:Landroid/view/ViewGroup;

    invoke-virtual {p2, p4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a1
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/a/c;->b:Lcom/applovin/adview/AppLovinFullscreenActivity;

    iget-object p2, p0, Lcom/applovin/impl/adview/activity/a/c;->d:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/applovin/adview/AppLovinFullscreenActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public a(Lcom/applovin/impl/adview/l;Landroid/view/View;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/a/c;->d:Landroid/view/ViewGroup;

    invoke-static {v0, p2}, Lcom/applovin/impl/sdk/utils/b;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    if-eqz p1, :cond_21

    iget-object p2, p0, Lcom/applovin/impl/adview/activity/a/c;->c:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/ad/g;->aa()Z

    move-result p2

    if-eqz p2, :cond_15

    const/4 p2, 0x3

    goto :goto_16

    :cond_15
    const/4 p2, 0x5

    :goto_16
    or-int/lit8 p2, p2, 0x30

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/a/c;->c:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->W()Lcom/applovin/impl/sdk/ad/g$c;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p1}, Lcom/applovin/impl/adview/activity/a/c;->a(Lcom/applovin/impl/sdk/ad/g$c;ILcom/applovin/impl/adview/l;)V

    :cond_21
    return-void
.end method
