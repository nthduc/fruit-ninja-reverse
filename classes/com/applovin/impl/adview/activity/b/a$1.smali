.class Lcom/applovin/impl/adview/activity/b/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/activity/b/a;-><init>(Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/adview/AppLovinFullscreenActivity;Lcom/applovin/impl/sdk/j;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/activity/b/a;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/activity/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b/a$1;->a:Lcom/applovin/impl/adview/activity/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .registers 4

    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/a$1;->a:Lcom/applovin/impl/adview/activity/b/a;

    iget-object p1, p1, Lcom/applovin/impl/adview/activity/b/a;->c:Lcom/applovin/impl/sdk/q;

    const-string v0, "InterActivityV2"

    const-string v1, "Web content rendered"

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .registers 4

    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/a$1;->a:Lcom/applovin/impl/adview/activity/b/a;

    iget-object p1, p1, Lcom/applovin/impl/adview/activity/b/a;->c:Lcom/applovin/impl/sdk/q;

    const-string v0, "InterActivityV2"

    const-string v1, "Closing from WebView"

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/a$1;->a:Lcom/applovin/impl/adview/activity/b/a;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/activity/b/a;->f()V

    return-void
.end method
