.class Lcom/applovin/impl/adview/n$22;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/n;->a(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/applovin/impl/adview/n;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/n;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/impl/adview/n$22;->b:Lcom/applovin/impl/adview/n;

    iput-object p2, p0, Lcom/applovin/impl/adview/n$22;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/adview/n$22;->b:Lcom/applovin/impl/adview/n;

    invoke-static {v0}, Lcom/applovin/impl/adview/n;->G(Lcom/applovin/impl/adview/n;)Lcom/applovin/impl/adview/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/adview/m;->getAdViewController()Lcom/applovin/adview/AdViewController;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->getAdWebView()Lcom/applovin/impl/adview/c;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/applovin/impl/adview/n$22;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/applovin/impl/adview/n$22;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/c;->a(Ljava/lang/String;)V

    :cond_1f
    return-void
.end method
