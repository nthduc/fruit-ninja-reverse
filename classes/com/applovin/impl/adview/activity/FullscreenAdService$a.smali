.class Lcom/applovin/impl/adview/activity/FullscreenAdService$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/adview/activity/FullscreenAdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/adview/activity/FullscreenAdService$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/applovin/impl/adview/activity/FullscreenAdService$a;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    sget-object v0, Lcom/applovin/adview/AppLovinFullscreenActivity;->parentInterstitialWrapper:Lcom/applovin/impl/adview/o;

    if-nez v0, :cond_28

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/r;->a(I)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parentWrapper is null for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    invoke-virtual {v0}, Lcom/applovin/impl/adview/o;->b()Lcom/applovin/impl/sdk/ad/g;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/applovin/impl/adview/activity/FullscreenAdService$b;->a:Lcom/applovin/impl/adview/activity/FullscreenAdService$b;

    invoke-virtual {v3}, Lcom/applovin/impl/adview/activity/FullscreenAdService$b;->a()I

    move-result v3

    if-ne v2, v3, :cond_6f

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "raw_full_ad_response"

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/g;->getRawFullResponse()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ad_source"

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/g;->getSource()Lcom/applovin/impl/sdk/ad/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->a()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x0

    sget-object v2, Lcom/applovin/impl/adview/activity/FullscreenAdService$b;->a:Lcom/applovin/impl/adview/activity/FullscreenAdService$b;

    invoke-virtual {v2}, Lcom/applovin/impl/adview/activity/FullscreenAdService$b;->a()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5f} :catch_dc

    :try_start_5f
    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p1, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_64} :catch_66
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_64} :catch_dc

    goto/16 :goto_dc

    :catch_66
    move-exception p1

    :try_start_67
    const-string v0, "FullscreenAdService"

    const-string v1, "Failed to respond to Fullscreen Activity in another process with ad"

    invoke-static {v0, v1, p1}, Lcom/applovin/impl/sdk/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_dc

    :cond_6f
    iget v2, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/applovin/impl/adview/activity/FullscreenAdService$b;->b:Lcom/applovin/impl/adview/activity/FullscreenAdService$b;

    invoke-virtual {v3}, Lcom/applovin/impl/adview/activity/FullscreenAdService$b;->a()I

    move-result v3

    if-ne v2, v3, :cond_81

    invoke-virtual {v0}, Lcom/applovin/impl/adview/o;->d()Lcom/applovin/sdk/AppLovinAdDisplayListener;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/applovin/impl/sdk/utils/j;->a(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;)V

    goto :goto_dc

    :cond_81
    iget v2, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/applovin/impl/adview/activity/FullscreenAdService$b;->c:Lcom/applovin/impl/adview/activity/FullscreenAdService$b;

    invoke-virtual {v3}, Lcom/applovin/impl/adview/activity/FullscreenAdService$b;->a()I

    move-result v3

    if-ne v2, v3, :cond_93

    invoke-virtual {v0}, Lcom/applovin/impl/adview/o;->e()Lcom/applovin/sdk/AppLovinAdClickListener;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/applovin/impl/sdk/utils/j;->a(Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAd;)V

    goto :goto_dc

    :cond_93
    iget v2, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/applovin/impl/adview/activity/FullscreenAdService$b;->d:Lcom/applovin/impl/adview/activity/FullscreenAdService$b;

    invoke-virtual {v3}, Lcom/applovin/impl/adview/activity/FullscreenAdService$b;->a()I

    move-result v3

    if-ne v2, v3, :cond_a5

    invoke-virtual {v0}, Lcom/applovin/impl/adview/o;->c()Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/applovin/impl/sdk/utils/j;->a(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAd;)V

    goto :goto_dc

    :cond_a5
    iget v2, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/applovin/impl/adview/activity/FullscreenAdService$b;->e:Lcom/applovin/impl/adview/activity/FullscreenAdService$b;

    invoke-virtual {v3}, Lcom/applovin/impl/adview/activity/FullscreenAdService$b;->a()I

    move-result v3

    if-ne v2, v3, :cond_c7

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "percent_viewed"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-string v4, "fully_watched"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0}, Lcom/applovin/impl/adview/o;->c()Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    move-result-object v0

    invoke-static {v0, v1, v2, v3, p1}, Lcom/applovin/impl/sdk/utils/j;->a(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAd;DZ)V

    goto :goto_dc

    :cond_c7
    iget v2, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/applovin/impl/adview/activity/FullscreenAdService$b;->f:Lcom/applovin/impl/adview/activity/FullscreenAdService$b;

    invoke-virtual {v3}, Lcom/applovin/impl/adview/activity/FullscreenAdService$b;->a()I

    move-result v3

    if-ne v2, v3, :cond_d9

    invoke-virtual {v0}, Lcom/applovin/impl/adview/o;->d()Lcom/applovin/sdk/AppLovinAdDisplayListener;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/applovin/impl/sdk/utils/j;->b(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;)V

    goto :goto_dc

    :cond_d9
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_dc
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_dc} :catch_dc

    :catch_dc
    :goto_dc
    return-void
.end method
