.class Lcom/applovin/impl/adview/c$1$1;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/c$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/c$1;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/c$1;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/c$1$1;->a:Lcom/applovin/impl/adview/c$1;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 3

    invoke-static {}, Lcom/applovin/impl/adview/c;->c()Landroid/webkit/WebView;

    move-result-object p2

    if-ne p1, p2, :cond_14

    invoke-static {}, Lcom/applovin/impl/adview/c;->c()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/applovin/impl/adview/c;->a(Landroid/webkit/WebView;)Landroid/webkit/WebView;

    invoke-static {}, Lcom/applovin/impl/adview/c;->a()V

    :cond_14
    const/4 p1, 0x1

    return p1
.end method
