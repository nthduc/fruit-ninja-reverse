.class public Lcom/applovin/impl/adview/activity/b/b;
.super Lcom/applovin/impl/adview/activity/b/a;


# instance fields
.field private final q:Lcom/applovin/impl/adview/activity/a/b;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/adview/AppLovinFullscreenActivity;Lcom/applovin/impl/sdk/j;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/applovin/impl/adview/activity/b/a;-><init>(Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/adview/AppLovinFullscreenActivity;Lcom/applovin/impl/sdk/j;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    new-instance p1, Lcom/applovin/impl/adview/activity/a/b;

    iget-object p2, p0, Lcom/applovin/impl/adview/activity/b/b;->a:Lcom/applovin/impl/sdk/ad/g;

    iget-object p3, p0, Lcom/applovin/impl/adview/activity/b/b;->d:Lcom/applovin/adview/AppLovinFullscreenActivity;

    iget-object p4, p0, Lcom/applovin/impl/adview/activity/b/b;->b:Lcom/applovin/impl/sdk/j;

    invoke-direct {p1, p2, p3, p4}, Lcom/applovin/impl/adview/activity/a/b;-><init>(Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/adview/AppLovinFullscreenActivity;Lcom/applovin/impl/sdk/j;)V

    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b/b;->q:Lcom/applovin/impl/adview/activity/a/b;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public c()V
    .registers 7

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/b;->q:Lcom/applovin/impl/adview/activity/a/b;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/b;->g:Lcom/applovin/impl/adview/l;

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/b;->f:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/adview/activity/a/b;->a(Lcom/applovin/impl/adview/l;Lcom/applovin/adview/AppLovinAdView;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/activity/b/b;->a(Z)V

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/b;->f:Lcom/applovin/adview/AppLovinAdView;

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/b;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v1, v2}, Lcom/applovin/adview/AppLovinAdView;->renderAd(Lcom/applovin/sdk/AppLovinAd;)V

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/b;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/g;->Q()I

    move-result v1

    int-to-long v1, v1

    const-string v3, "javascript:al_onPoststitialShow();"

    invoke-virtual {p0, v3, v1, v2}, Lcom/applovin/impl/adview/activity/b/b;->a(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/b;->g:Lcom/applovin/impl/adview/l;

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/b;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/g;->s()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_41

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/b;->g:Lcom/applovin/impl/adview/l;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/b;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/g;->s()J

    move-result-wide v1

    new-instance v3, Lcom/applovin/impl/adview/activity/b/b$1;

    invoke-direct {v3, p0}, Lcom/applovin/impl/adview/activity/b/b$1;-><init>(Lcom/applovin/impl/adview/activity/b/b;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/applovin/impl/adview/activity/b/b;->a(Lcom/applovin/impl/adview/l;JLjava/lang/Runnable;)V

    goto :goto_46

    :cond_41
    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/b;->g:Lcom/applovin/impl/adview/l;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/adview/l;->setVisibility(I)V

    :cond_46
    :goto_46
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/b;->q()V

    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/b;->r()Z

    move-result v0

    invoke-super {p0, v0}, Lcom/applovin/impl/adview/activity/b/a;->b(Z)V

    return-void
.end method

.method public f()V
    .registers 1

    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/b;->l()V

    invoke-super {p0}, Lcom/applovin/impl/adview/activity/b/a;->f()V

    return-void
.end method

.method protected l()V
    .registers 7

    const/16 v1, 0x64

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, -0x2

    move-object v0, p0

    invoke-super/range {v0 .. v5}, Lcom/applovin/impl/adview/activity/b/a;->a(IZZJ)V

    return-void
.end method

.method protected p()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected q()V
    .registers 7

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/b;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->ac()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_14

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/b;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->ad()I

    move-result v0

    if-ltz v0, :cond_69

    :cond_14
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/b;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->ac()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_25

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/b;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->ac()J

    move-result-wide v0

    goto :goto_66

    :cond_25
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/b;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->ae()Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/b;->a:Lcom/applovin/impl/sdk/ad/g;

    check-cast v0, Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->j()F

    move-result v0

    float-to-int v0, v0

    if-lez v0, :cond_41

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    :goto_3f
    add-long/2addr v2, v0

    goto :goto_52

    :cond_41
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/b;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->s()J

    move-result-wide v0

    long-to-int v1, v0

    if-lez v1, :cond_52

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    goto :goto_3f

    :cond_52
    :goto_52
    long-to-double v0, v2

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/b;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/g;->ad()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-long v0, v0

    :goto_66
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/adview/activity/b/b;->a(J)V

    :cond_69
    return-void
.end method
