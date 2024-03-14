.class Lcom/applovin/impl/adview/n$15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/n;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/s;

.field final synthetic b:Lcom/applovin/impl/adview/n;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/n;Lcom/applovin/impl/adview/s;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/impl/adview/n$15;->b:Lcom/applovin/impl/adview/n;

    iput-object p2, p0, Lcom/applovin/impl/adview/n$15;->a:Lcom/applovin/impl/adview/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/adview/n$15;->a:Lcom/applovin/impl/adview/s;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/s;->h()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/adview/n$15;->b:Lcom/applovin/impl/adview/n;

    invoke-static {v2}, Lcom/applovin/impl/adview/n;->C(Lcom/applovin/impl/adview/n;)Lcom/applovin/impl/adview/t;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v0, v1}, Lcom/applovin/impl/adview/n;->a(Lcom/applovin/impl/adview/n;Landroid/view/View;ZJ)V

    return-void
.end method
