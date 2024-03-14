.class Lcom/applovin/impl/adview/n$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/n;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/ad/g;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/applovin/impl/adview/n;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/n;Lcom/applovin/impl/sdk/ad/g;Landroid/content/Intent;)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/impl/adview/n$1;->c:Lcom/applovin/impl/adview/n;

    iput-object p2, p0, Lcom/applovin/impl/adview/n$1;->a:Lcom/applovin/impl/sdk/ad/g;

    iput-object p3, p0, Lcom/applovin/impl/adview/n$1;->b:Landroid/content/Intent;

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

    iget-object p1, p0, Lcom/applovin/impl/adview/n$1;->c:Lcom/applovin/impl/adview/n;

    iget-object p1, p1, Lcom/applovin/impl/adview/n;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->o()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/impl/adview/n$1;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackAppKilled(Lcom/applovin/impl/sdk/ad/g;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/n$1;->c:Lcom/applovin/impl/adview/n;

    iget-object p2, p0, Lcom/applovin/impl/adview/n$1;->b:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/adview/n;->stopService(Landroid/content/Intent;)Z

    iget-object p1, p0, Lcom/applovin/impl/adview/n$1;->c:Lcom/applovin/impl/adview/n;

    iget-object p1, p1, Lcom/applovin/impl/adview/n;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->ag()Lcom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->unregisterReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;)V

    return-void
.end method
