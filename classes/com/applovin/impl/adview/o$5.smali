.class Lcom/applovin/impl/adview/o$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/o;->b(Lcom/applovin/sdk/AppLovinAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/sdk/AppLovinAd;

.field final synthetic b:Lcom/applovin/impl/adview/o;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/o;Lcom/applovin/sdk/AppLovinAd;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/impl/adview/o$5;->b:Lcom/applovin/impl/adview/o;

    iput-object p2, p0, Lcom/applovin/impl/adview/o$5;->a:Lcom/applovin/sdk/AppLovinAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/adview/o$5;->b:Lcom/applovin/impl/adview/o;

    invoke-static {v0}, Lcom/applovin/impl/adview/o;->a(Lcom/applovin/impl/adview/o;)Lcom/applovin/sdk/AppLovinAdLoadListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/applovin/impl/adview/o$5;->b:Lcom/applovin/impl/adview/o;

    invoke-static {v0}, Lcom/applovin/impl/adview/o;->a(Lcom/applovin/impl/adview/o;)Lcom/applovin/sdk/AppLovinAdLoadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/o$5;->a:Lcom/applovin/sdk/AppLovinAd;

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V

    :cond_13
    return-void
.end method
