.class Lcom/applovin/impl/mediation/MediationServiceImpl$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/mediation/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/mediation/MediationServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/mediation/MediationServiceImpl;

.field private final b:Lcom/applovin/impl/mediation/a/a;

.field private c:Lcom/applovin/mediation/MaxAdListener;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/mediation/MediationServiceImpl;Lcom/applovin/impl/mediation/a/a;Lcom/applovin/mediation/MaxAdListener;)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lcom/applovin/impl/mediation/MediationServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lcom/applovin/impl/mediation/a/a;

    iput-object p3, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lcom/applovin/mediation/MaxAdListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/mediation/MediationServiceImpl;Lcom/applovin/impl/mediation/a/a;Lcom/applovin/mediation/MaxAdListener;Lcom/applovin/impl/mediation/MediationServiceImpl$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/mediation/MediationServiceImpl$a;-><init>(Lcom/applovin/impl/mediation/MediationServiceImpl;Lcom/applovin/impl/mediation/a/a;Lcom/applovin/mediation/MaxAdListener;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/MediationServiceImpl$a;)Lcom/applovin/mediation/MaxAdListener;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lcom/applovin/mediation/MaxAdListener;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/applovin/mediation/MaxAd;Lcom/applovin/impl/mediation/e;)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lcom/applovin/impl/mediation/MediationServiceImpl;

    iget-object v1, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lcom/applovin/impl/mediation/a/a;

    iget-object v2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lcom/applovin/mediation/MaxAdListener;

    invoke-static {v0, v1, p2, v2}, Lcom/applovin/impl/mediation/MediationServiceImpl;->b(Lcom/applovin/impl/mediation/MediationServiceImpl;Lcom/applovin/impl/mediation/a/a;Lcom/applovin/impl/mediation/e;Lcom/applovin/mediation/MaxAdListener;)V

    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object p2

    sget-object v0, Lcom/applovin/mediation/MaxAdFormat;->REWARDED:Lcom/applovin/mediation/MaxAdFormat;

    if-eq p2, v0, :cond_19

    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object p2

    sget-object v0, Lcom/applovin/mediation/MaxAdFormat;->REWARDED_INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    if-ne p2, v0, :cond_22

    :cond_19
    instance-of p2, p1, Lcom/applovin/impl/mediation/a/c;

    if-eqz p2, :cond_22

    check-cast p1, Lcom/applovin/impl/mediation/a/c;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/c;->v()V

    :cond_22
    return-void
.end method

.method public a(Lcom/applovin/mediation/MaxAdListener;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lcom/applovin/mediation/MaxAdListener;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/applovin/impl/mediation/e;)V
    .registers 5

    iget-object p1, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lcom/applovin/impl/mediation/a/a;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a;->i()V

    iget-object p1, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lcom/applovin/impl/mediation/MediationServiceImpl;

    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lcom/applovin/impl/mediation/a/a;

    iget-object v1, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lcom/applovin/mediation/MaxAdListener;

    invoke-static {p1, v0, p2, v1}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/impl/mediation/MediationServiceImpl;Lcom/applovin/impl/mediation/a/a;Lcom/applovin/impl/mediation/e;Lcom/applovin/mediation/MaxAdListener;)V

    return-void
.end method

.method public onAdClicked(Lcom/applovin/mediation/MaxAd;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lcom/applovin/impl/mediation/MediationServiceImpl;

    invoke-static {v0}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/impl/mediation/MediationServiceImpl;)Lcom/applovin/impl/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->ad()Lcom/applovin/impl/sdk/f;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/applovin/impl/mediation/a/a;

    const-string v2, "DID_CLICKED"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/f;->a(Lcom/applovin/impl/mediation/a/a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lcom/applovin/impl/mediation/MediationServiceImpl;

    iget-object v1, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lcom/applovin/impl/mediation/a/a;

    invoke-static {v0, v1}, Lcom/applovin/impl/mediation/MediationServiceImpl;->b(Lcom/applovin/impl/mediation/MediationServiceImpl;Lcom/applovin/impl/mediation/a/a;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lcom/applovin/mediation/MaxAdListener;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/j;->d(Lcom/applovin/mediation/MaxAdListener;Lcom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method public onAdCollapsed(Lcom/applovin/mediation/MaxAd;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lcom/applovin/mediation/MaxAdListener;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/j;->h(Lcom/applovin/mediation/MaxAdListener;Lcom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method public onAdDisplayFailed(Lcom/applovin/mediation/MaxAd;I)V
    .registers 5

    iget-object p1, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lcom/applovin/impl/mediation/MediationServiceImpl;

    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lcom/applovin/impl/mediation/a/a;

    new-instance v1, Lcom/applovin/impl/mediation/e;

    invoke-direct {v1, p2}, Lcom/applovin/impl/mediation/e;-><init>(I)V

    iget-object p2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lcom/applovin/mediation/MaxAdListener;

    invoke-static {p1, v0, v1, p2}, Lcom/applovin/impl/mediation/MediationServiceImpl;->b(Lcom/applovin/impl/mediation/MediationServiceImpl;Lcom/applovin/impl/mediation/a/a;Lcom/applovin/impl/mediation/e;Lcom/applovin/mediation/MaxAdListener;)V

    return-void
.end method

.method public onAdDisplayed(Lcom/applovin/mediation/MaxAd;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lcom/applovin/impl/mediation/MediationServiceImpl;

    invoke-static {v0}, Lcom/applovin/impl/mediation/MediationServiceImpl;->b(Lcom/applovin/impl/mediation/MediationServiceImpl;)Lcom/applovin/impl/sdk/q;

    move-result-object v0

    const-string v1, "MediationService"

    const-string v2, "Scheduling impression for ad via callback..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lcom/applovin/impl/mediation/MediationServiceImpl;

    iget-object v1, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lcom/applovin/impl/mediation/a/a;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/MediationServiceImpl;->maybeScheduleCallbackAdImpressionPostback(Lcom/applovin/impl/mediation/a/a;)V

    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/mediation/c/c;->c(Lcom/applovin/mediation/MaxAdFormat;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lcom/applovin/impl/mediation/MediationServiceImpl;

    invoke-static {v0}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/impl/mediation/MediationServiceImpl;)Lcom/applovin/impl/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->aa()Lcom/applovin/impl/sdk/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/Object;)V

    :cond_2b
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lcom/applovin/mediation/MaxAdListener;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/j;->b(Lcom/applovin/mediation/MaxAdListener;Lcom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method public onAdExpanded(Lcom/applovin/mediation/MaxAd;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lcom/applovin/mediation/MaxAdListener;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/j;->g(Lcom/applovin/mediation/MaxAdListener;Lcom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method public onAdHidden(Lcom/applovin/mediation/MaxAd;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lcom/applovin/impl/mediation/MediationServiceImpl;

    invoke-static {v0}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/impl/mediation/MediationServiceImpl;)Lcom/applovin/impl/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->ad()Lcom/applovin/impl/sdk/f;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/applovin/impl/mediation/a/a;

    const-string v2, "DID_HIDE"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/f;->a(Lcom/applovin/impl/mediation/a/a;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/applovin/impl/mediation/a/c;

    if-eqz v0, :cond_1e

    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/mediation/a/c;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/c;->r()J

    move-result-wide v0

    goto :goto_20

    :cond_1e
    const-wide/16 v0, 0x0

    :goto_20
    new-instance v2, Lcom/applovin/impl/mediation/MediationServiceImpl$a$1;

    invoke-direct {v2, p0, p1}, Lcom/applovin/impl/mediation/MediationServiceImpl$a$1;-><init>(Lcom/applovin/impl/mediation/MediationServiceImpl$a;Lcom/applovin/mediation/MaxAd;)V

    invoke-static {v2, v0, v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onAdLoadFailed(Ljava/lang/String;I)V
    .registers 5

    iget-object p1, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lcom/applovin/impl/mediation/a/a;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a;->i()V

    iget-object p1, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lcom/applovin/impl/mediation/MediationServiceImpl;

    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lcom/applovin/impl/mediation/a/a;

    new-instance v1, Lcom/applovin/impl/mediation/e;

    invoke-direct {v1, p2}, Lcom/applovin/impl/mediation/e;-><init>(I)V

    iget-object p2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lcom/applovin/mediation/MaxAdListener;

    invoke-static {p1, v0, v1, p2}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/impl/mediation/MediationServiceImpl;Lcom/applovin/impl/mediation/a/a;Lcom/applovin/impl/mediation/e;Lcom/applovin/mediation/MaxAdListener;)V

    return-void
.end method

.method public onAdLoaded(Lcom/applovin/mediation/MaxAd;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lcom/applovin/impl/mediation/a/a;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/a;->i()V

    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lcom/applovin/impl/mediation/MediationServiceImpl;

    iget-object v1, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lcom/applovin/impl/mediation/a/a;

    invoke-static {v0, v1}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/impl/mediation/MediationServiceImpl;Lcom/applovin/impl/mediation/a/a;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lcom/applovin/mediation/MaxAdListener;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/j;->a(Lcom/applovin/mediation/MaxAdListener;Lcom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method public onRewardedVideoCompleted(Lcom/applovin/mediation/MaxAd;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lcom/applovin/mediation/MaxAdListener;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/j;->f(Lcom/applovin/mediation/MaxAdListener;Lcom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method public onRewardedVideoStarted(Lcom/applovin/mediation/MaxAd;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lcom/applovin/mediation/MaxAdListener;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/j;->e(Lcom/applovin/mediation/MaxAdListener;Lcom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method public onUserRewarded(Lcom/applovin/mediation/MaxAd;Lcom/applovin/mediation/MaxReward;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lcom/applovin/mediation/MaxAdListener;

    invoke-static {v0, p1, p2}, Lcom/applovin/impl/sdk/utils/j;->a(Lcom/applovin/mediation/MaxAdListener;Lcom/applovin/mediation/MaxAd;Lcom/applovin/mediation/MaxReward;)V

    new-instance p2, Lcom/applovin/impl/mediation/b/g;

    check-cast p1, Lcom/applovin/impl/mediation/a/c;

    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lcom/applovin/impl/mediation/MediationServiceImpl;

    invoke-static {v0}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/impl/mediation/MediationServiceImpl;)Lcom/applovin/impl/sdk/j;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/applovin/impl/mediation/b/g;-><init>(Lcom/applovin/impl/mediation/a/c;Lcom/applovin/impl/sdk/j;)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lcom/applovin/impl/mediation/MediationServiceImpl;

    invoke-static {p1}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/impl/mediation/MediationServiceImpl;)Lcom/applovin/impl/sdk/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object p1

    sget-object v0, Lcom/applovin/impl/sdk/d/s$a;->r:Lcom/applovin/impl/sdk/d/s$a;

    invoke-virtual {p1, p2, v0}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/s$a;)V

    return-void
.end method
