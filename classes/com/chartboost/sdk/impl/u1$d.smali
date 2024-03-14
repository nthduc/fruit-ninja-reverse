.class public Lcom/chartboost/sdk/impl/u1$d;
.super Lcom/chartboost/sdk/f$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/u1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public h:Lcom/chartboost/sdk/impl/t1;

.field public i:Lcom/chartboost/sdk/impl/s1;

.field public j:Landroid/widget/RelativeLayout;

.field public k:Landroid/widget/RelativeLayout;

.field final synthetic l:Lcom/chartboost/sdk/impl/u1;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/u1;Landroid/content/Context;Ljava/lang/String;)V
    .registers 12

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/u1$d;->l:Lcom/chartboost/sdk/impl/u1;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/f$b;-><init>(Lcom/chartboost/sdk/f;Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 5
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v1

    .line 6
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/chartboost/sdk/impl/u1$d;->j:Landroid/widget/RelativeLayout;

    .line 7
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/chartboost/sdk/impl/u1$d;->k:Landroid/widget/RelativeLayout;

    .line 8
    new-instance v2, Lcom/chartboost/sdk/impl/t1;

    invoke-direct {v2, p2}, Lcom/chartboost/sdk/impl/t1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/impl/t1;

    iput-object v2, p0, Lcom/chartboost/sdk/impl/u1$d;->h:Lcom/chartboost/sdk/impl/t1;

    .line 9
    invoke-static {p2}, Lcom/chartboost/sdk/i;->c(Landroid/content/Context;)V

    .line 11
    iget-object v2, p0, Lcom/chartboost/sdk/impl/u1$d;->h:Lcom/chartboost/sdk/impl/t1;

    new-instance v3, Lcom/chartboost/sdk/impl/u1$c;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/chartboost/sdk/impl/u1$c;-><init>(Lcom/chartboost/sdk/impl/u1;Lcom/chartboost/sdk/impl/u1$a;)V

    invoke-virtual {v1, v3}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebViewClient;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 12
    new-instance v2, Lcom/chartboost/sdk/impl/s1;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/u1$d;->j:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/u1$d;->k:Landroid/widget/RelativeLayout;

    iget-object v5, p1, Lcom/chartboost/sdk/f;->a:Landroid/os/Handler;

    invoke-direct {v2, v3, v4, p1, v5}, Lcom/chartboost/sdk/impl/s1;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Lcom/chartboost/sdk/impl/u1;Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/impl/s1;

    iput-object v1, p0, Lcom/chartboost/sdk/impl/u1$d;->i:Lcom/chartboost/sdk/impl/s1;

    .line 13
    iget-object v2, p0, Lcom/chartboost/sdk/impl/u1$d;->h:Lcom/chartboost/sdk/impl/t1;

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/impl/t1;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 14
    invoke-static {}, Lcom/chartboost/sdk/impl/x;->c()Lcom/chartboost/sdk/impl/x;

    move-result-object v1

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/x;->a(I)Z

    move-result v1

    if-eqz v1, :cond_70

    const/4 v1, 0x1

    .line 15
    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 17
    :cond_70
    iget-object v2, p0, Lcom/chartboost/sdk/impl/u1$d;->h:Lcom/chartboost/sdk/impl/t1;

    invoke-static {p1}, Lcom/chartboost/sdk/impl/u1;->a(Lcom/chartboost/sdk/impl/u1;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    const-string v5, "text/html"

    const-string v6, "utf-8"

    move-object v4, p3

    invoke-virtual/range {v2 .. v7}, Lcom/chartboost/sdk/impl/t1;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object p3, p0, Lcom/chartboost/sdk/impl/u1$d;->j:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/u1$d;->h:Lcom/chartboost/sdk/impl/t1;

    invoke-virtual {p3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 19
    iget-object p3, p0, Lcom/chartboost/sdk/impl/u1$d;->h:Lcom/chartboost/sdk/impl/t1;

    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 21
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p3, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 23
    iget-object v2, p0, Lcom/chartboost/sdk/impl/u1$d;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    iget-object v2, p0, Lcom/chartboost/sdk/impl/u1$d;->h:Lcom/chartboost/sdk/impl/t1;

    invoke-virtual {v2, p3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    iget-object v2, p0, Lcom/chartboost/sdk/impl/u1$d;->h:Lcom/chartboost/sdk/impl/t1;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 29
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u1$d;->k:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 30
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u1$d;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    iget-object p3, p0, Lcom/chartboost/sdk/impl/u1$d;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 33
    iget-object p3, p0, Lcom/chartboost/sdk/impl/u1$d;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/chartboost/sdk/impl/u1;->a(Lcom/chartboost/sdk/impl/u1;J)J

    .line 36
    instance-of p3, p2, Landroid/app/Activity;

    if-eqz p3, :cond_ce

    .line 37
    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p2

    iput p2, p1, Lcom/chartboost/sdk/impl/u1;->P:I

    goto :goto_d0

    .line 39
    :cond_ce
    iput v1, p1, Lcom/chartboost/sdk/impl/u1;->P:I

    .line 43
    :goto_d0
    iget-object p1, p1, Lcom/chartboost/sdk/f;->a:Landroid/os/Handler;

    new-instance p2, Lcom/chartboost/sdk/impl/-$$Lambda$u1$d$MuoNlEbTjIAbG4JA9wH10vL9u04;

    invoke-direct {p2, p0}, Lcom/chartboost/sdk/impl/-$$Lambda$u1$d$MuoNlEbTjIAbG4JA9wH10vL9u04;-><init>(Lcom/chartboost/sdk/impl/u1$d;)V

    const-wide/16 v0, 0x3a98

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic c()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u1$d;->l:Lcom/chartboost/sdk/impl/u1;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/u1;->c(Lcom/chartboost/sdk/impl/u1;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "CBWebViewProtocol"

    const-string v1, "Webview seems to be taking more time loading the html content, so closing the view."

    .line 2
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u1$d;->l:Lcom/chartboost/sdk/impl/u1;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->WEB_VIEW_PAGE_LOAD_TIMEOUT:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/f;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    :cond_16
    return-void
.end method

.method public static synthetic lambda$MuoNlEbTjIAbG4JA9wH10vL9u04(Lcom/chartboost/sdk/impl/u1$d;)V
    .registers 1

    invoke-direct {p0}, Lcom/chartboost/sdk/impl/u1$d;->c()V

    return-void
.end method


# virtual methods
.method protected a(II)V
    .registers 3

    return-void
.end method
