.class Lcom/applovin/impl/adview/n$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/n;->o()V
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

    iput-object p1, p0, Lcom/applovin/impl/adview/n$9;->a:Lcom/applovin/impl/adview/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/adview/n$9;->a:Lcom/applovin/impl/adview/n;

    invoke-static {v0}, Lcom/applovin/impl/adview/n;->v(Lcom/applovin/impl/adview/n;)Z

    move-result v0

    if-nez v0, :cond_87

    iget-object v0, p0, Lcom/applovin/impl/adview/n$9;->a:Lcom/applovin/impl/adview/n;

    invoke-static {v0}, Lcom/applovin/impl/adview/n;->r(Lcom/applovin/impl/adview/n;)Lcom/applovin/impl/adview/h;

    move-result-object v0

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/applovin/impl/adview/n$9;->a:Lcom/applovin/impl/adview/n;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/adview/n;->b(Lcom/applovin/impl/adview/n;J)J

    iget-object v0, p0, Lcom/applovin/impl/adview/n$9;->a:Lcom/applovin/impl/adview/n;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/adview/n;->c(Lcom/applovin/impl/adview/n;J)J

    iget-object v0, p0, Lcom/applovin/impl/adview/n$9;->a:Lcom/applovin/impl/adview/n;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/applovin/impl/adview/n;->b(Lcom/applovin/impl/adview/n;Z)Z

    iget-object v0, p0, Lcom/applovin/impl/adview/n$9;->a:Lcom/applovin/impl/adview/n;

    invoke-static {v0}, Lcom/applovin/impl/adview/n;->r(Lcom/applovin/impl/adview/n;)Lcom/applovin/impl/adview/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/h;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    iget-object v2, p0, Lcom/applovin/impl/adview/n$9;->a:Lcom/applovin/impl/adview/n;

    invoke-static {v2}, Lcom/applovin/impl/adview/n;->r(Lcom/applovin/impl/adview/n;)Lcom/applovin/impl/adview/h;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/applovin/impl/adview/h;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/n$9;->a:Lcom/applovin/impl/adview/n;

    invoke-static {v0}, Lcom/applovin/impl/adview/n;->t(Lcom/applovin/impl/adview/n;)Z

    move-result v0

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/applovin/impl/adview/n$9;->a:Lcom/applovin/impl/adview/n;

    invoke-static {v0}, Lcom/applovin/impl/adview/n;->w(Lcom/applovin/impl/adview/n;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/applovin/impl/adview/n$9;->a:Lcom/applovin/impl/adview/n;

    invoke-static {v0}, Lcom/applovin/impl/adview/n;->w(Lcom/applovin/impl/adview/n;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/applovin/impl/adview/n$9;->a:Lcom/applovin/impl/adview/n;

    invoke-static {v0}, Lcom/applovin/impl/adview/n;->w(Lcom/applovin/impl/adview/n;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6b} :catch_6c

    goto :goto_87

    :catch_6c
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/n$9;->a:Lcom/applovin/impl/adview/n;

    iget-object v1, v1, Lcom/applovin/impl/adview/n;->logger:Lcom/applovin/impl/sdk/q;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to show skip button: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "InterActivity"

    invoke-virtual {v1, v2, v0}, Lcom/applovin/impl/sdk/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_87
    :goto_87
    return-void
.end method
