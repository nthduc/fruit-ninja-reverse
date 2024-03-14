.class Lcom/applovin/impl/adview/AdViewControllerImpl$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/AdViewControllerImpl;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/AdViewControllerImpl;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/AdViewControllerImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$7;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$7;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->n(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/k;

    move-result-object v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$7;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->b(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/k;

    move-result-object v0

    if-eqz v0, :cond_5b

    :cond_10
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$7;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->n(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/k;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$7;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->n(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/adview/k;->a()Lcom/applovin/impl/sdk/ad/a;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$7;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v2}, Lcom/applovin/impl/adview/AdViewControllerImpl;->n(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/adview/k;->dismiss()V

    iget-object v2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$7;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v2, v1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Lcom/applovin/impl/adview/AdViewControllerImpl;Lcom/applovin/impl/adview/k;)Lcom/applovin/impl/adview/k;

    goto :goto_4a

    :cond_32
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$7;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->b(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/adview/k;->a()Lcom/applovin/impl/sdk/ad/a;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$7;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v2}, Lcom/applovin/impl/adview/AdViewControllerImpl;->b(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/adview/k;->dismiss()V

    iget-object v2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$7;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v2, v1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->b(Lcom/applovin/impl/adview/AdViewControllerImpl;Lcom/applovin/impl/adview/k;)Lcom/applovin/impl/adview/k;

    :goto_4a
    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$7;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->i(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/adview/AppLovinAdViewEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$7;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v2}, Lcom/applovin/impl/adview/AdViewControllerImpl;->h(Lcom/applovin/impl/adview/AdViewControllerImpl;)Landroid/view/ViewGroup;

    move-result-object v2

    check-cast v2, Lcom/applovin/adview/AppLovinAdView;

    invoke-static {v1, v0, v2}, Lcom/applovin/impl/sdk/utils/j;->b(Lcom/applovin/adview/AppLovinAdViewEventListener;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinAdView;)V

    :cond_5b
    return-void
.end method
