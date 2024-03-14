.class Lcom/applovin/impl/adview/AdViewControllerImpl$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/adview/AdViewControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/AdViewControllerImpl;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/adview/AdViewControllerImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/adview/AdViewControllerImpl;Lcom/applovin/impl/adview/AdViewControllerImpl$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/AdViewControllerImpl$b;-><init>(Lcom/applovin/impl/adview/AdViewControllerImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->e(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/sdk/ad/g;

    move-result-object v0

    if-eqz v0, :cond_fc

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/c;

    move-result-object v0

    const-string v1, "AppLovinAdView"

    if-eqz v0, :cond_d9

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->o(Lcom/applovin/impl/adview/AdViewControllerImpl;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->c(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/sdk/q;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rendering advertisement ad for #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v3}, Lcom/applovin/impl/adview/AdViewControllerImpl;->e(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/sdk/ad/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/ad/g;->getAdIdNumber()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/c;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->e(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/sdk/ad/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/g;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Landroid/view/View;Lcom/applovin/sdk/AppLovinAdSize;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/c;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->e(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/sdk/ad/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/c;->a(Lcom/applovin/impl/sdk/ad/g;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->e(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/sdk/ad/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    if-eq v0, v1, :cond_ae

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->p(Lcom/applovin/impl/adview/AdViewControllerImpl;)Z

    move-result v0

    if-nez v0, :cond_ae

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    new-instance v1, Lcom/applovin/impl/sdk/c/d;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->e(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/sdk/ad/g;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v3}, Lcom/applovin/impl/adview/AdViewControllerImpl;->g(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/sdk/j;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/applovin/impl/sdk/c/d;-><init>(Lcom/applovin/impl/sdk/AppLovinAdBase;Lcom/applovin/impl/sdk/j;)V

    invoke-static {v0, v1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Lcom/applovin/impl/adview/AdViewControllerImpl;Lcom/applovin/impl/sdk/c/d;)Lcom/applovin/impl/sdk/c/d;

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->j(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/sdk/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c/d;->a()V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/c;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->j(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/sdk/c/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/c;->setStatsManagerHelper(Lcom/applovin/impl/sdk/c/d;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->e(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/sdk/ad/g;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ad/g;->setHasShown(Z)V

    :cond_ae
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/adview/c;->getStatsManagerHelper()Lcom/applovin/impl/sdk/c/d;

    move-result-object v0

    if-eqz v0, :cond_fc

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->e(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/sdk/ad/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->x()Z

    move-result v0

    if-eqz v0, :cond_c9

    const-wide/16 v0, 0x0

    goto :goto_cb

    :cond_c9
    const-wide/16 v0, 0x1

    :goto_cb
    iget-object v2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v2}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/adview/c;->getStatsManagerHelper()Lcom/applovin/impl/sdk/c/d;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/applovin/impl/sdk/c/d;->a(J)V

    goto :goto_fc

    :cond_d9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to render advertisement for ad #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v2}, Lcom/applovin/impl/adview/AdViewControllerImpl;->e(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/sdk/ad/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/g;->getAdIdNumber()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ". Please make sure you are not calling AppLovinAdView.destroy() prematurely."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_fc
    :goto_fc
    return-void
.end method
