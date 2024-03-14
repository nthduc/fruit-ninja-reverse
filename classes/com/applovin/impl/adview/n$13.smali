.class Lcom/applovin/impl/adview/n$13;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/adview/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/n;->u()V
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

    iput-object p1, p0, Lcom/applovin/impl/adview/n$13;->a:Lcom/applovin/impl/adview/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/adview/n$13;->a:Lcom/applovin/impl/adview/n;

    invoke-static {v0}, Lcom/applovin/impl/adview/n;->B(Lcom/applovin/impl/adview/n;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/applovin/impl/adview/n$13;->a:Lcom/applovin/impl/adview/n;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/n;->shouldContinueFullLengthVideoCountdown()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/applovin/impl/adview/n$13;->a:Lcom/applovin/impl/adview/n;

    iget-object v0, v0, Lcom/applovin/impl/adview/n;->sdk:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->cW:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/applovin/impl/adview/n$13;->a:Lcom/applovin/impl/adview/n;

    iget-object v1, v1, Lcom/applovin/impl/adview/n;->videoView:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v1}, Lcom/applovin/impl/adview/AppLovinVideoView;->getCurrentPosition()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/applovin/impl/adview/n$13;->a:Lcom/applovin/impl/adview/n;

    iget-object v2, v2, Lcom/applovin/impl/adview/n;->videoView:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v2}, Lcom/applovin/impl/adview/AppLovinVideoView;->getDuration()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v0, v0

    mul-float v1, v1, v0

    float-to-int v0, v1

    iget-object v1, p0, Lcom/applovin/impl/adview/n$13;->a:Lcom/applovin/impl/adview/n;

    invoke-static {v1}, Lcom/applovin/impl/adview/n;->B(Lcom/applovin/impl/adview/n;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_4c

    :cond_41
    iget-object v0, p0, Lcom/applovin/impl/adview/n$13;->a:Lcom/applovin/impl/adview/n;

    invoke-static {v0}, Lcom/applovin/impl/adview/n;->B(Lcom/applovin/impl/adview/n;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/n$13;->a:Lcom/applovin/impl/adview/n;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/n;->shouldContinueFullLengthVideoCountdown()Z

    move-result v0

    return v0
.end method
