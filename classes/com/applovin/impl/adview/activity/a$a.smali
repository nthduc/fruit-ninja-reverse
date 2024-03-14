.class Lcom/applovin/impl/adview/activity/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdClickListener;
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;
.implements Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/adview/activity/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/activity/a;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/adview/activity/a;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/activity/a$a;->a:Lcom/applovin/impl/adview/activity/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/adview/activity/a;Lcom/applovin/impl/adview/activity/a$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/activity/a$a;-><init>(Lcom/applovin/impl/adview/activity/a;)V

    return-void
.end method

.method private a(Landroid/os/Bundle;Lcom/applovin/impl/adview/activity/FullscreenAdService$b;)V
    .registers 6

    invoke-virtual {p2}, Lcom/applovin/impl/adview/activity/FullscreenAdService$b;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    if-eqz p1, :cond_e

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_e
    :try_start_e
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/a$a;->a:Lcom/applovin/impl/adview/activity/a;

    invoke-static {p1}, Lcom/applovin/impl/adview/activity/a;->d(Lcom/applovin/impl/adview/activity/a;)Landroid/os/Messenger;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_18

    goto :goto_3e

    :catch_18
    move-exception p1

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/a$a;->a:Lcom/applovin/impl/adview/activity/a;

    invoke-static {v0}, Lcom/applovin/impl/adview/activity/a;->b(Lcom/applovin/impl/adview/activity/a;)Lcom/applovin/impl/sdk/q;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to forward callback ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/applovin/impl/adview/activity/FullscreenAdService$b;->a()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "InterActivityV2"

    invoke-virtual {v0, v1, p2, p1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3e
    return-void
.end method

.method private a(Lcom/applovin/impl/adview/activity/FullscreenAdService$b;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/adview/activity/a$a;->a(Landroid/os/Bundle;Lcom/applovin/impl/adview/activity/FullscreenAdService$b;)V

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/applovin/sdk/AppLovinAd;)V
    .registers 2

    sget-object p1, Lcom/applovin/impl/adview/activity/FullscreenAdService$b;->c:Lcom/applovin/impl/adview/activity/FullscreenAdService$b;

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/activity/a$a;->a(Lcom/applovin/impl/adview/activity/FullscreenAdService$b;)V

    return-void
.end method

.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .registers 2

    sget-object p1, Lcom/applovin/impl/adview/activity/FullscreenAdService$b;->b:Lcom/applovin/impl/adview/activity/FullscreenAdService$b;

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/activity/a$a;->a(Lcom/applovin/impl/adview/activity/FullscreenAdService$b;)V

    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .registers 2

    sget-object p1, Lcom/applovin/impl/adview/activity/FullscreenAdService$b;->f:Lcom/applovin/impl/adview/activity/FullscreenAdService$b;

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/activity/a$a;->a(Lcom/applovin/impl/adview/activity/FullscreenAdService$b;)V

    return-void
.end method

.method public videoPlaybackBegan(Lcom/applovin/sdk/AppLovinAd;)V
    .registers 2

    sget-object p1, Lcom/applovin/impl/adview/activity/FullscreenAdService$b;->d:Lcom/applovin/impl/adview/activity/FullscreenAdService$b;

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/activity/a$a;->a(Lcom/applovin/impl/adview/activity/FullscreenAdService$b;)V

    return-void
.end method

.method public videoPlaybackEnded(Lcom/applovin/sdk/AppLovinAd;DZ)V
    .registers 6

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "percent_viewed"

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string p2, "fully_watched"

    invoke-virtual {p1, p2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object p2, Lcom/applovin/impl/adview/activity/FullscreenAdService$b;->e:Lcom/applovin/impl/adview/activity/FullscreenAdService$b;

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/adview/activity/a$a;->a(Landroid/os/Bundle;Lcom/applovin/impl/adview/activity/FullscreenAdService$b;)V

    return-void
.end method
