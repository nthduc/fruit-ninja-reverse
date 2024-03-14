.class public Lcom/applovin/impl/adview/t;
.super Lcom/applovin/impl/adview/g;


# static fields
.field private static a:Lcom/applovin/impl/adview/t;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/adview/u;Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0, p2}, Lcom/applovin/impl/adview/g;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/applovin/impl/adview/t;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/applovin/impl/adview/t;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/t;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance p1, Landroid/webkit/WebChromeClient;

    invoke-direct {p1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/t;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p0, p2}, Lcom/applovin/impl/adview/t;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, p2}, Lcom/applovin/impl/adview/t;->setHorizontalScrollBarEnabled(Z)V

    const/high16 p1, 0x2000000

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/t;->setScrollBarStyle(I)V

    return-void
.end method

.method public static a(Lcom/applovin/impl/sdk/j;Lcom/applovin/impl/adview/u;Landroid/content/Context;)Lcom/applovin/impl/adview/t;
    .registers 4

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->eK:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2c

    sget-object p0, Lcom/applovin/impl/adview/t;->a:Lcom/applovin/impl/adview/t;

    if-nez p0, :cond_1a

    new-instance p0, Lcom/applovin/impl/adview/t;

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/adview/t;-><init>(Lcom/applovin/impl/adview/u;Landroid/content/Context;)V

    sput-object p0, Lcom/applovin/impl/adview/t;->a:Lcom/applovin/impl/adview/t;

    goto :goto_29

    :cond_1a
    const-string p2, "about:blank"

    invoke-virtual {p0, p2}, Lcom/applovin/impl/adview/t;->loadUrl(Ljava/lang/String;)V

    sget-object p0, Lcom/applovin/impl/adview/t;->a:Lcom/applovin/impl/adview/t;

    invoke-virtual {p0}, Lcom/applovin/impl/adview/t;->clearHistory()V

    sget-object p0, Lcom/applovin/impl/adview/t;->a:Lcom/applovin/impl/adview/t;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/t;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :goto_29
    sget-object p0, Lcom/applovin/impl/adview/t;->a:Lcom/applovin/impl/adview/t;

    return-object p0

    :cond_2c
    new-instance p0, Lcom/applovin/impl/adview/t;

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/adview/t;-><init>(Lcom/applovin/impl/adview/u;Landroid/content/Context;)V

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 8

    const-string v1, "/"

    const-string v3, "text/html"

    const/4 v4, 0x0

    const-string v5, ""

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/impl/adview/t;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
