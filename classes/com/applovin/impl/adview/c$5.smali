.class final Lcom/applovin/impl/adview/c$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/c;->a(J)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/c$5;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/applovin/impl/adview/c;->d()V

    invoke-static {}, Lcom/applovin/impl/adview/c;->e()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/adview/c$5$1;

    invoke-direct {v1, p0}, Lcom/applovin/impl/adview/c$5$1;-><init>(Lcom/applovin/impl/adview/c$5;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-static {}, Lcom/applovin/impl/adview/c;->e()Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "https://blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_21

    :catch_19
    move-exception v0

    const-string v1, "AdWebView"

    const-string v2, "Failed to collect WebView HTTP headers"

    invoke-static {v1, v2, v0}, Lcom/applovin/impl/sdk/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_21
    return-void
.end method
