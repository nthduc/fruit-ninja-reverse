.class Lcom/applovin/impl/adview/k$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/k$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/k$6;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/k$6;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/k$6$1;->a:Lcom/applovin/impl/adview/k$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    iget-object p1, p0, Lcom/applovin/impl/adview/k$6$1;->a:Lcom/applovin/impl/adview/k$6;

    iget-object p1, p1, Lcom/applovin/impl/adview/k$6;->a:Lcom/applovin/impl/adview/k;

    invoke-static {p1}, Lcom/applovin/impl/adview/k;->e(Lcom/applovin/impl/adview/k;)Lcom/applovin/impl/adview/h;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/applovin/impl/adview/h;->setClickable(Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method