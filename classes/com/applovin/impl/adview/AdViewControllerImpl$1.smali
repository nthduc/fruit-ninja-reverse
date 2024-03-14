.class Lcom/applovin/impl/adview/AdViewControllerImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/AdViewControllerImpl;->attachNewAdView(Lcom/applovin/sdk/AppLovinAdSize;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/AdViewControllerImpl;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/AdViewControllerImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$1;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$1;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/c;

    move-result-object v1

    const-string v2, "/"

    const-string v3, "<html></html>"

    const-string v4, "text/html"

    const/4 v5, 0x0

    const-string v6, ""

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/impl/adview/c;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
