.class Lcom/applovin/impl/adview/n$18;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/n;->J()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/n;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/n;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/n$18;->a:Lcom/applovin/impl/adview/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/adview/n$18;->a:Lcom/applovin/impl/adview/n;

    invoke-static {v0}, Lcom/applovin/impl/adview/n;->D(Lcom/applovin/impl/adview/n;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/applovin/impl/adview/n$18;->a:Lcom/applovin/impl/adview/n;

    invoke-static {v0, p1}, Lcom/applovin/impl/adview/n;->b(Lcom/applovin/impl/adview/n;Lcom/applovin/sdk/AppLovinAd;)V

    :cond_d
    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/adview/n$18;->a:Lcom/applovin/impl/adview/n;

    invoke-static {v0, p1}, Lcom/applovin/impl/adview/n;->a(Lcom/applovin/impl/adview/n;Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method
