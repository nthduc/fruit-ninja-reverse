.class Lcom/applovin/impl/adview/n$16;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/adview/u$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/n;->w()Lcom/applovin/impl/adview/t;
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

    iput-object p1, p0, Lcom/applovin/impl/adview/n$16;->a:Lcom/applovin/impl/adview/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/adview/t;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/adview/n$16;->a:Lcom/applovin/impl/adview/n;

    iget-object v0, v0, Lcom/applovin/impl/adview/n;->logger:Lcom/applovin/impl/sdk/q;

    const-string v1, "InterActivity"

    const-string v2, "Clicking through from video button..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/n$16;->a:Lcom/applovin/impl/adview/n;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/t;->getAndClearLastClickLocation()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/applovin/impl/adview/n;->clickThroughFromVideo(Landroid/graphics/PointF;)V

    return-void
.end method

.method public b(Lcom/applovin/impl/adview/t;)V
    .registers 4

    iget-object p1, p0, Lcom/applovin/impl/adview/n$16;->a:Lcom/applovin/impl/adview/n;

    iget-object p1, p1, Lcom/applovin/impl/adview/n;->logger:Lcom/applovin/impl/sdk/q;

    const-string v0, "InterActivity"

    const-string v1, "Closing ad from video button..."

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/n$16;->a:Lcom/applovin/impl/adview/n;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/n;->dismiss()V

    return-void
.end method

.method public c(Lcom/applovin/impl/adview/t;)V
    .registers 4

    iget-object p1, p0, Lcom/applovin/impl/adview/n$16;->a:Lcom/applovin/impl/adview/n;

    iget-object p1, p1, Lcom/applovin/impl/adview/n;->logger:Lcom/applovin/impl/sdk/q;

    const-string v0, "InterActivity"

    const-string v1, "Skipping video from video button..."

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/n$16;->a:Lcom/applovin/impl/adview/n;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/n;->skipVideo()V

    return-void
.end method
