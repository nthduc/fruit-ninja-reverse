.class Lcom/applovin/impl/adview/n$25;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/n;->a(Landroid/view/View;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Z

.field final synthetic c:Lcom/applovin/impl/adview/n;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/n;Landroid/view/View;Z)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/impl/adview/n$25;->c:Lcom/applovin/impl/adview/n;

    iput-object p2, p0, Lcom/applovin/impl/adview/n$25;->a:Landroid/view/View;

    iput-boolean p3, p0, Lcom/applovin/impl/adview/n$25;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    iget-boolean p1, p0, Lcom/applovin/impl/adview/n$25;->b:Z

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/applovin/impl/adview/n$25;->a:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 3

    iget-object p1, p0, Lcom/applovin/impl/adview/n$25;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
