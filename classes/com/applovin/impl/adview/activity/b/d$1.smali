.class Lcom/applovin/impl/adview/activity/b/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/adview/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/activity/b/d;-><init>(Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/adview/AppLovinFullscreenActivity;Lcom/applovin/impl/sdk/j;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/activity/b/d;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/activity/b/d;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b/d$1;->a:Lcom/applovin/impl/adview/activity/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d$1;->a:Lcom/applovin/impl/adview/activity/b/d;

    iget-boolean v0, v0, Lcom/applovin/impl/adview/activity/b/d;->u:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d$1;->a:Lcom/applovin/impl/adview/activity/b/d;

    invoke-static {v0}, Lcom/applovin/impl/adview/activity/b/d;->a(Lcom/applovin/impl/adview/activity/b/d;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_30

    :cond_12
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d$1;->a:Lcom/applovin/impl/adview/activity/b/d;

    iget-object v0, v0, Lcom/applovin/impl/adview/activity/b/d;->q:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->getCurrentPosition()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/d$1;->a:Lcom/applovin/impl/adview/activity/b/d;

    iget-wide v1, v1, Lcom/applovin/impl/adview/activity/b/d;->t:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x461c4000    # 10000.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/d$1;->a:Lcom/applovin/impl/adview/activity/b/d;

    invoke-static {v1}, Lcom/applovin/impl/adview/activity/b/d;->a(Lcom/applovin/impl/adview/activity/b/d;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_30
    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d$1;->a:Lcom/applovin/impl/adview/activity/b/d;

    iget-boolean v0, v0, Lcom/applovin/impl/adview/activity/b/d;->u:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
