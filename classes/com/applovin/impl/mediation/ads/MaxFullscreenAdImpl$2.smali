.class Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->loadAd(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$2;->b:Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    iput-object p2, p0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$2;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$2;->a:Landroid/app/Activity;

    if-eqz v0, :cond_5

    goto :goto_d

    :cond_5
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$2;->b:Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    iget-object v0, v0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->ai()Landroid/app/Activity;

    move-result-object v0

    :goto_d
    move-object v5, v0

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$2;->b:Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    iget-object v0, v0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->y()Lcom/applovin/impl/mediation/MediationServiceImpl;

    move-result-object v1

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$2;->b:Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    iget-object v2, v0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->adUnitId:Ljava/lang/String;

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$2;->b:Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    iget-object v3, v0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->adFormat:Lcom/applovin/mediation/MaxAdFormat;

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$2;->b:Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    iget-object v0, v0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->loadRequestBuilder:Lcom/applovin/impl/mediation/f$a;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/f$a;->a()Lcom/applovin/impl/mediation/f;

    move-result-object v4

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$2;->b:Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    iget-object v6, v0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->listenerWrapper:Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/impl/mediation/MediationServiceImpl;->loadAd(Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/impl/mediation/f;Landroid/app/Activity;Lcom/applovin/mediation/MaxAdListener;)V

    return-void
.end method
