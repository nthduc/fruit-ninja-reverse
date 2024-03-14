.class Lcom/applovin/impl/adview/d$1;
.super Lcom/applovin/impl/sdk/utils/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/d;->a(Landroid/net/Uri;Lcom/applovin/impl/adview/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/applovin/impl/adview/d;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/d;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/impl/adview/d$1;->b:Lcom/applovin/impl/adview/d;

    iput-object p2, p0, Lcom/applovin/impl/adview/d$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    instance-of p2, p1, Lcom/applovin/sdk/AppLovinWebViewActivity;

    if-eqz p2, :cond_2d

    check-cast p1, Lcom/applovin/sdk/AppLovinWebViewActivity;

    iget-object p2, p0, Lcom/applovin/impl/adview/d$1;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/applovin/sdk/AppLovinWebViewActivity;->loadUrl(Ljava/lang/String;Lcom/applovin/sdk/AppLovinWebViewActivity$EventListener;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/d$1;->b:Lcom/applovin/impl/adview/d;

    invoke-static {p1}, Lcom/applovin/impl/adview/d;->a(Lcom/applovin/impl/adview/d;)Lcom/applovin/impl/adview/AdViewControllerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->getAdViewEventListener()Lcom/applovin/adview/AppLovinAdViewEventListener;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/impl/adview/d$1;->b:Lcom/applovin/impl/adview/d;

    invoke-static {p2}, Lcom/applovin/impl/adview/d;->a(Lcom/applovin/impl/adview/d;)Lcom/applovin/impl/adview/AdViewControllerImpl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/impl/adview/AdViewControllerImpl;->getCurrentAd()Lcom/applovin/impl/sdk/ad/g;

    move-result-object p2

    iget-object v0, p0, Lcom/applovin/impl/adview/d$1;->b:Lcom/applovin/impl/adview/d;

    invoke-static {v0}, Lcom/applovin/impl/adview/d;->a(Lcom/applovin/impl/adview/d;)Lcom/applovin/impl/adview/AdViewControllerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->getParentView()Lcom/applovin/adview/AppLovinAdView;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/applovin/impl/sdk/utils/j;->a(Lcom/applovin/adview/AppLovinAdViewEventListener;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinAdView;)V

    :cond_2d
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 4

    instance-of p1, p1, Lcom/applovin/sdk/AppLovinWebViewActivity;

    if-eqz p1, :cond_32

    iget-object p1, p0, Lcom/applovin/impl/adview/d$1;->b:Lcom/applovin/impl/adview/d;

    invoke-static {p1}, Lcom/applovin/impl/adview/d;->a(Lcom/applovin/impl/adview/d;)Lcom/applovin/impl/adview/AdViewControllerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->getAdViewEventListener()Lcom/applovin/adview/AppLovinAdViewEventListener;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/adview/d$1;->b:Lcom/applovin/impl/adview/d;

    invoke-static {v0}, Lcom/applovin/impl/adview/d;->a(Lcom/applovin/impl/adview/d;)Lcom/applovin/impl/adview/AdViewControllerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->getCurrentAd()Lcom/applovin/impl/sdk/ad/g;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/d$1;->b:Lcom/applovin/impl/adview/d;

    invoke-static {v1}, Lcom/applovin/impl/adview/d;->a(Lcom/applovin/impl/adview/d;)Lcom/applovin/impl/adview/AdViewControllerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->getParentView()Lcom/applovin/adview/AppLovinAdView;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/j;->b(Lcom/applovin/adview/AppLovinAdViewEventListener;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinAdView;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/d$1;->b:Lcom/applovin/impl/adview/d;

    invoke-static {p1}, Lcom/applovin/impl/adview/d;->b(Lcom/applovin/impl/adview/d;)Lcom/applovin/impl/sdk/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->ab()Lcom/applovin/impl/sdk/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/applovin/impl/sdk/a;->b(Lcom/applovin/impl/sdk/utils/a;)V

    :cond_32
    return-void
.end method
