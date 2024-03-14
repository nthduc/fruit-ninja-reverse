.class Lcom/applovin/impl/adview/AdViewControllerImpl$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/AdViewControllerImpl;->expandAd(Landroid/graphics/PointF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/PointF;

.field final synthetic b:Lcom/applovin/impl/adview/AdViewControllerImpl;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/AdViewControllerImpl;Landroid/graphics/PointF;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$3;->b:Lcom/applovin/impl/adview/AdViewControllerImpl;

    iput-object p2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$3;->a:Landroid/graphics/PointF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$3;->b:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->b(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/k;

    move-result-object v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$3;->b:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->e(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/sdk/ad/g;

    move-result-object v0

    instance-of v0, v0, Lcom/applovin/impl/sdk/ad/a;

    if-nez v0, :cond_14

    return-void

    :cond_14
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$3;->b:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/c;

    move-result-object v0

    if-nez v0, :cond_1d

    return-void

    :cond_1d
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$3;->b:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->e(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/sdk/ad/g;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/applovin/impl/sdk/ad/a;

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$3;->b:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->f(Lcom/applovin/impl/adview/AdViewControllerImpl;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$3;->b:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->f(Lcom/applovin/impl/adview/AdViewControllerImpl;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_49

    :cond_39
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$3;->b:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/c;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$3;->b:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->g(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/sdk/j;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/r;->a(Landroid/view/View;Lcom/applovin/impl/sdk/j;)Landroid/app/Activity;

    move-result-object v0

    :goto_49
    if-eqz v0, :cond_b6

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$3;->b:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->h(Lcom/applovin/impl/adview/AdViewControllerImpl;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_62

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$3;->b:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->h(Lcom/applovin/impl/adview/AdViewControllerImpl;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v3, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$3;->b:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v3}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/c;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_62
    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$3;->b:Lcom/applovin/impl/adview/AdViewControllerImpl;

    new-instance v3, Lcom/applovin/impl/adview/k;

    invoke-static {v1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/c;

    move-result-object v4

    iget-object v5, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$3;->b:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v5}, Lcom/applovin/impl/adview/AdViewControllerImpl;->g(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/sdk/j;

    move-result-object v5

    invoke-direct {v3, v2, v4, v0, v5}, Lcom/applovin/impl/adview/k;-><init>(Lcom/applovin/impl/sdk/ad/a;Lcom/applovin/impl/adview/c;Landroid/app/Activity;Lcom/applovin/impl/sdk/j;)V

    invoke-static {v1, v3}, Lcom/applovin/impl/adview/AdViewControllerImpl;->b(Lcom/applovin/impl/adview/AdViewControllerImpl;Lcom/applovin/impl/adview/k;)Lcom/applovin/impl/adview/k;

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$3;->b:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->b(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/k;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/adview/AdViewControllerImpl$3$1;

    invoke-direct {v1, p0}, Lcom/applovin/impl/adview/AdViewControllerImpl$3$1;-><init>(Lcom/applovin/impl/adview/AdViewControllerImpl$3;)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/k;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$3;->b:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->b(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/adview/k;->show()V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$3;->b:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->i(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/adview/AppLovinAdViewEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$3;->b:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->e(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/sdk/ad/g;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$3;->b:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v2}, Lcom/applovin/impl/adview/AdViewControllerImpl;->h(Lcom/applovin/impl/adview/AdViewControllerImpl;)Landroid/view/ViewGroup;

    move-result-object v2

    check-cast v2, Lcom/applovin/adview/AppLovinAdView;

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/j;->a(Lcom/applovin/adview/AppLovinAdViewEventListener;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinAdView;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$3;->b:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->j(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/sdk/c/d;

    move-result-object v0

    if-eqz v0, :cond_f2

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$3;->b:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->j(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/sdk/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c/d;->d()V

    goto :goto_f2

    :cond_b6
    const-string v0, "AppLovinAdView"

    const-string v1, "Unable to expand ad. No Activity found."

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/a;->h()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_e7

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$3;->b:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->k(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object v1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$3;->b:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->getParentView()Lcom/applovin/adview/AppLovinAdView;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$3;->b:Lcom/applovin/impl/adview/AdViewControllerImpl;

    iget-object v6, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$3;->a:Landroid/graphics/PointF;

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackAndLaunchClick(Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/AdViewControllerImpl;Landroid/net/Uri;Landroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$3;->b:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->j(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/sdk/c/d;

    move-result-object v0

    if-eqz v0, :cond_e7

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$3;->b:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->j(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/sdk/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c/d;->b()V

    :cond_e7
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$3;->b:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/c;

    move-result-object v0

    const-string v1, "javascript:al_onFailedExpand();"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/c;->a(Ljava/lang/String;)V

    :cond_f2
    :goto_f2
    return-void
.end method
