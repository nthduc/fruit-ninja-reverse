.class Lcom/applovin/impl/adview/activity/b/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/activity/b/a;-><init>(Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/adview/AppLovinFullscreenActivity;Lcom/applovin/impl/sdk/j;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/j;

.field final synthetic b:Lcom/applovin/impl/sdk/ad/g;

.field final synthetic c:Lcom/applovin/adview/AppLovinFullscreenActivity;

.field final synthetic d:Landroid/content/Intent;

.field final synthetic e:Lcom/applovin/impl/adview/activity/b/a;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/activity/b/a;Lcom/applovin/impl/sdk/j;Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/adview/AppLovinFullscreenActivity;Landroid/content/Intent;)V
    .registers 6

    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b/a$2;->e:Lcom/applovin/impl/adview/activity/b/a;

    iput-object p2, p0, Lcom/applovin/impl/adview/activity/b/a$2;->a:Lcom/applovin/impl/sdk/j;

    iput-object p3, p0, Lcom/applovin/impl/adview/activity/b/a$2;->b:Lcom/applovin/impl/sdk/ad/g;

    iput-object p4, p0, Lcom/applovin/impl/adview/activity/b/a$2;->c:Lcom/applovin/adview/AppLovinFullscreenActivity;

    iput-object p5, p0, Lcom/applovin/impl/adview/activity/b/a$2;->d:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Ljava/util/Map;)V
    .registers 4
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/a$2;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->o()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/impl/adview/activity/b/a$2;->b:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackAppKilled(Lcom/applovin/impl/sdk/ad/g;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/a$2;->c:Lcom/applovin/adview/AppLovinFullscreenActivity;

    iget-object p2, p0, Lcom/applovin/impl/adview/activity/b/a$2;->d:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Lcom/applovin/adview/AppLovinFullscreenActivity;->stopService(Landroid/content/Intent;)Z

    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/a$2;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->ag()Lcom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->unregisterReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;)V

    return-void
.end method
