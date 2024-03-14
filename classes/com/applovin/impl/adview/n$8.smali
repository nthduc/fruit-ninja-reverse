.class Lcom/applovin/impl/adview/n$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/n;->m()V
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

    iput-object p1, p0, Lcom/applovin/impl/adview/n$8;->a:Lcom/applovin/impl/adview/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/adview/n$8;->a:Lcom/applovin/impl/adview/n;

    invoke-static {v0}, Lcom/applovin/impl/adview/n;->s(Lcom/applovin/impl/adview/n;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/applovin/impl/adview/n$8;->a:Lcom/applovin/impl/adview/n;

    invoke-static {v0}, Lcom/applovin/impl/adview/n;->q(Lcom/applovin/impl/adview/n;)Lcom/applovin/impl/adview/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/h;->setVisibility(I)V

    goto :goto_75

    :cond_13
    iget-object v0, p0, Lcom/applovin/impl/adview/n$8;->a:Lcom/applovin/impl/adview/n;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/applovin/impl/adview/n;->a(Lcom/applovin/impl/adview/n;J)J

    iget-object v0, p0, Lcom/applovin/impl/adview/n$8;->a:Lcom/applovin/impl/adview/n;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/applovin/impl/adview/n;->a(Lcom/applovin/impl/adview/n;Z)Z

    iget-object v0, p0, Lcom/applovin/impl/adview/n$8;->a:Lcom/applovin/impl/adview/n;

    invoke-static {v0}, Lcom/applovin/impl/adview/n;->t(Lcom/applovin/impl/adview/n;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/applovin/impl/adview/n$8;->a:Lcom/applovin/impl/adview/n;

    invoke-static {v0}, Lcom/applovin/impl/adview/n;->u(Lcom/applovin/impl/adview/n;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/applovin/impl/adview/n$8;->a:Lcom/applovin/impl/adview/n;

    invoke-static {v0}, Lcom/applovin/impl/adview/n;->u(Lcom/applovin/impl/adview/n;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/applovin/impl/adview/n$8;->a:Lcom/applovin/impl/adview/n;

    invoke-static {v0}, Lcom/applovin/impl/adview/n;->u(Lcom/applovin/impl/adview/n;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_44
    iget-object v0, p0, Lcom/applovin/impl/adview/n$8;->a:Lcom/applovin/impl/adview/n;

    invoke-static {v0}, Lcom/applovin/impl/adview/n;->q(Lcom/applovin/impl/adview/n;)Lcom/applovin/impl/adview/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/h;->setVisibility(I)V

    iget-object v0, p0, Lcom/applovin/impl/adview/n$8;->a:Lcom/applovin/impl/adview/n;

    invoke-static {v0}, Lcom/applovin/impl/adview/n;->q(Lcom/applovin/impl/adview/n;)Lcom/applovin/impl/adview/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/adview/h;->bringToFront()V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    iget-object v1, p0, Lcom/applovin/impl/adview/n$8;->a:Lcom/applovin/impl/adview/n;

    invoke-static {v1}, Lcom/applovin/impl/adview/n;->q(Lcom/applovin/impl/adview/n;)Lcom/applovin/impl/adview/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/adview/h;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6f} :catch_70

    goto :goto_75

    :catch_70
    iget-object v0, p0, Lcom/applovin/impl/adview/n$8;->a:Lcom/applovin/impl/adview/n;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/n;->dismiss()V

    :goto_75
    return-void
.end method
