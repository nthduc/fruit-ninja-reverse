.class final Lcom/applovin/impl/adview/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    invoke-static {}, Lcom/applovin/impl/adview/c;->c()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Landroid/webkit/WebView;

    invoke-static {}, Lcom/applovin/impl/sdk/j;->G()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/applovin/impl/adview/c;->a(Landroid/webkit/WebView;)Landroid/webkit/WebView;

    invoke-static {}, Lcom/applovin/impl/adview/c;->c()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-static {}, Lcom/applovin/impl/adview/c;->c()Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "<html><head>\n<script type=\"text/javascript\">\n    window.al_firePostback = function(postback) {\n    setTimeout(function() {\n        var img = new Image();\n        img.src = postback;\n    }, 100);\n};\n</script></head>\n<body></body></html>"

    const-string v2, "text/html"

    const-string v3, "UTF-8"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/applovin/impl/adview/c;->c()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/adview/c$1$1;

    invoke-direct {v1, p0}, Lcom/applovin/impl/adview/c$1$1;-><init>(Lcom/applovin/impl/adview/c$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method
