.class Lcom/applovin/impl/mediation/j$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/j;->a(Ljava/lang/String;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lcom/applovin/impl/mediation/a/a;Landroid/app/Activity;Lcom/applovin/impl/mediation/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/applovin/impl/mediation/j;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/j;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/impl/mediation/j$6;->c:Lcom/applovin/impl/mediation/j;

    iput-object p2, p0, Lcom/applovin/impl/mediation/j$6;->a:Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

    iput-object p3, p0, Lcom/applovin/impl/mediation/j$6;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$6;->c:Lcom/applovin/impl/mediation/j;

    invoke-static {v0}, Lcom/applovin/impl/mediation/j;->c(Lcom/applovin/impl/mediation/j;)Lcom/applovin/mediation/adapter/MaxAdapter;

    move-result-object v0

    check-cast v0, Lcom/applovin/mediation/adapter/MaxInterstitialAdapter;

    iget-object v1, p0, Lcom/applovin/impl/mediation/j$6;->a:Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

    iget-object v2, p0, Lcom/applovin/impl/mediation/j$6;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/applovin/impl/mediation/j$6;->c:Lcom/applovin/impl/mediation/j;

    invoke-static {v3}, Lcom/applovin/impl/mediation/j;->d(Lcom/applovin/impl/mediation/j;)Lcom/applovin/impl/mediation/j$a;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/applovin/mediation/adapter/MaxInterstitialAdapter;->loadInterstitialAd(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;)V

    return-void
.end method
