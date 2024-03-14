.class Lcom/applovin/impl/adview/AdViewControllerImpl$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/adview/AdViewControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/AdViewControllerImpl;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/adview/AdViewControllerImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$a;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/adview/AdViewControllerImpl;Lcom/applovin/impl/adview/AdViewControllerImpl$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/AdViewControllerImpl$a;-><init>(Lcom/applovin/impl/adview/AdViewControllerImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$a;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/c;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$a;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/c;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/c;->setVisibility(I)V

    :cond_13
    return-void
.end method
