.class Lcom/applovin/impl/mediation/MediationServiceImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/MediationServiceImpl;->showFullscreenAd(Lcom/applovin/mediation/MaxAd;Ljava/lang/String;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/mediation/a/c;

.field final synthetic b:Lcom/applovin/impl/mediation/j;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/applovin/impl/mediation/MediationServiceImpl;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/MediationServiceImpl;Lcom/applovin/impl/mediation/a/c;Lcom/applovin/impl/mediation/j;Landroid/app/Activity;)V
    .registers 5

    iput-object p1, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$1;->d:Lcom/applovin/impl/mediation/MediationServiceImpl;

    iput-object p2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$1;->a:Lcom/applovin/impl/mediation/a/c;

    iput-object p3, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$1;->b:Lcom/applovin/impl/mediation/j;

    iput-object p4, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$1;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$1;->a:Lcom/applovin/impl/mediation/a/c;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/c;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->REWARDED:Lcom/applovin/mediation/MaxAdFormat;

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$1;->a:Lcom/applovin/impl/mediation/a/c;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/c;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->REWARDED_INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v0, v1, :cond_30

    :cond_14
    new-instance v0, Lcom/applovin/impl/mediation/b/h;

    iget-object v1, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$1;->a:Lcom/applovin/impl/mediation/a/c;

    iget-object v2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$1;->d:Lcom/applovin/impl/mediation/MediationServiceImpl;

    invoke-static {v2}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/impl/mediation/MediationServiceImpl;)Lcom/applovin/impl/sdk/j;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/mediation/b/h;-><init>(Lcom/applovin/impl/mediation/a/c;Lcom/applovin/impl/sdk/j;)V

    iget-object v1, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$1;->d:Lcom/applovin/impl/mediation/MediationServiceImpl;

    invoke-static {v1}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/impl/mediation/MediationServiceImpl;)Lcom/applovin/impl/sdk/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/d/s$a;->r:Lcom/applovin/impl/sdk/d/s$a;

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/s$a;)V

    :cond_30
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$1;->b:Lcom/applovin/impl/mediation/j;

    iget-object v1, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$1;->a:Lcom/applovin/impl/mediation/a/c;

    iget-object v2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$1;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/mediation/j;->a(Lcom/applovin/impl/mediation/a/a;Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$1;->d:Lcom/applovin/impl/mediation/MediationServiceImpl;

    invoke-static {v0}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/impl/mediation/MediationServiceImpl;)Lcom/applovin/impl/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->aa()Lcom/applovin/impl/sdk/p;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Z)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$1;->d:Lcom/applovin/impl/mediation/MediationServiceImpl;

    invoke-static {v0}, Lcom/applovin/impl/mediation/MediationServiceImpl;->b(Lcom/applovin/impl/mediation/MediationServiceImpl;)Lcom/applovin/impl/sdk/q;

    move-result-object v0

    const-string v1, "MediationService"

    const-string v2, "Scheduling impression for ad manually..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$1;->d:Lcom/applovin/impl/mediation/MediationServiceImpl;

    iget-object v1, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$1;->a:Lcom/applovin/impl/mediation/a/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/MediationServiceImpl;->maybeScheduleRawAdImpressionPostback(Lcom/applovin/impl/mediation/a/a;)V

    return-void
.end method
