.class Lcom/applovin/impl/adview/activity/b/d$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/adview/activity/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/activity/b/d;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/adview/activity/b/d;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b/d$b;->a:Lcom/applovin/impl/adview/activity/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/adview/activity/b/d;Lcom/applovin/impl/adview/activity/b/d$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/activity/b/d$b;-><init>(Lcom/applovin/impl/adview/activity/b/d;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d$b;->a:Lcom/applovin/impl/adview/activity/b/d;

    invoke-static {v0}, Lcom/applovin/impl/adview/activity/b/d;->g(Lcom/applovin/impl/adview/activity/b/d;)Lcom/applovin/impl/adview/l;

    move-result-object v0

    if-ne p1, v0, :cond_28

    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/d$b;->a:Lcom/applovin/impl/adview/activity/b/d;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/activity/b/d;->p()Z

    move-result p1

    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/d$b;->a:Lcom/applovin/impl/adview/activity/b/d;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/activity/b/d;->s()V

    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/d$b;->a:Lcom/applovin/impl/adview/activity/b/d;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/activity/b/d;->n()V

    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/d$b;->a:Lcom/applovin/impl/adview/activity/b/d;

    iget-object p1, p1, Lcom/applovin/impl/adview/activity/b/d;->o:Lcom/applovin/impl/sdk/a/b;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/a/b;->b()V

    goto :goto_50

    :cond_22
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/d$b;->a:Lcom/applovin/impl/adview/activity/b/d;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/activity/b/d;->t()V

    goto :goto_50

    :cond_28
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d$b;->a:Lcom/applovin/impl/adview/activity/b/d;

    invoke-static {v0}, Lcom/applovin/impl/adview/activity/b/d;->h(Lcom/applovin/impl/adview/activity/b/d;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_36

    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/d$b;->a:Lcom/applovin/impl/adview/activity/b/d;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/activity/b/d;->u()V

    goto :goto_50

    :cond_36
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d$b;->a:Lcom/applovin/impl/adview/activity/b/d;

    iget-object v0, v0, Lcom/applovin/impl/adview/activity/b/d;->c:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled click on widget: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "InterActivityV2"

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_50
    return-void
.end method
