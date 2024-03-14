.class Lcom/applovin/impl/adview/n$19;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdClickListener;


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

    iput-object p1, p0, Lcom/applovin/impl/adview/n$19;->a:Lcom/applovin/impl/adview/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/applovin/sdk/AppLovinAd;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/adview/n$19;->a:Lcom/applovin/impl/adview/n;

    invoke-static {v0}, Lcom/applovin/impl/adview/n;->E(Lcom/applovin/impl/adview/n;)Lcom/applovin/impl/adview/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/adview/o;->e()Lcom/applovin/sdk/AppLovinAdClickListener;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/j;->a(Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method
