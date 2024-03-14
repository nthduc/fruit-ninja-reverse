.class Lcom/chartboost/sdk/impl/u1$c;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/u1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/u1;


# direct methods
.method private constructor <init>(Lcom/chartboost/sdk/impl/u1;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/u1$c;->a:Lcom/chartboost/sdk/impl/u1;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chartboost/sdk/impl/u1;Lcom/chartboost/sdk/impl/u1$a;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/u1$c;-><init>(Lcom/chartboost/sdk/impl/u1;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    const-string v0, "CBWebViewProtocol"

    .line 1
    invoke-static {v0, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/chartboost/sdk/impl/u1$c;->a:Lcom/chartboost/sdk/impl/u1;

    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->WEB_VIEW_CLIENT_RECEIVED_ERROR:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/f;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 3
    iget-object p1, p0, Lcom/chartboost/sdk/impl/u1$c;->a:Lcom/chartboost/sdk/impl/u1;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/chartboost/sdk/impl/u1;->a(Lcom/chartboost/sdk/impl/u1;Z)Z

    .line 4
    iget-object p1, p0, Lcom/chartboost/sdk/impl/u1$c;->a:Lcom/chartboost/sdk/impl/u1;

    iget-object v0, p1, Lcom/chartboost/sdk/impl/u1;->o:Lcom/chartboost/sdk/e;

    iget-object p1, p1, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/e;->d(Lcom/chartboost/sdk/Model/c;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/chartboost/sdk/impl/u1$c;->a:Lcom/chartboost/sdk/impl/u1;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/chartboost/sdk/impl/u1;->a(Lcom/chartboost/sdk/impl/u1;Z)Z

    .line 3
    iget-object p2, p0, Lcom/chartboost/sdk/impl/u1$c;->a:Lcom/chartboost/sdk/impl/u1;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/chartboost/sdk/impl/u1;->b(Lcom/chartboost/sdk/impl/u1;J)J

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Total web view load response time "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/u1$c;->a:Lcom/chartboost/sdk/impl/u1;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/u1;->d(Lcom/chartboost/sdk/impl/u1;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/chartboost/sdk/impl/u1$c;->a:Lcom/chartboost/sdk/impl/u1;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/u1;->b(Lcom/chartboost/sdk/impl/u1;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CBWebViewProtocol"

    invoke-static {v0, p2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_4d

    .line 8
    iget-object p2, p0, Lcom/chartboost/sdk/impl/u1$c;->a:Lcom/chartboost/sdk/impl/u1;

    invoke-virtual {p2, p1}, Lcom/chartboost/sdk/impl/u1;->d(Landroid/content/Context;)V

    .line 9
    iget-object p2, p0, Lcom/chartboost/sdk/impl/u1$c;->a:Lcom/chartboost/sdk/impl/u1;

    invoke-virtual {p2, p1}, Lcom/chartboost/sdk/impl/u1;->c(Landroid/content/Context;)V

    .line 10
    iget-object p1, p0, Lcom/chartboost/sdk/impl/u1$c;->a:Lcom/chartboost/sdk/impl/u1;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/u1;->p()V

    :cond_4d
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_3e

    .line 3
    invoke-static {}, Landroid/webkit/WebView;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "WebView version: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CBWebViewProtocol"

    invoke-static {p2, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 5
    :cond_28
    sget-object p1, Lcom/chartboost/sdk/j;->l:Landroid/content/Context;

    invoke-static {p1}, Lcom/chartboost/sdk/impl/g1;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "watch"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_39

    const-string p1, "No webview support."

    goto :goto_3b

    :cond_39
    const-string p1, "Device was not set up correctly."

    :goto_3b
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/u1$c;->a(Ljava/lang/String;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error loading "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/u1$c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 2
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    if-eqz p1, :cond_2e

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error loading "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/u1$c;->a(Ljava/lang/String;)V

    :cond_2e
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error loading "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_1f

    const-string p2, "unknown error"

    goto :goto_23

    :cond_1f
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object p2

    :goto_23
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CBWebViewProtocol"

    invoke-static {p2, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result p1

    if-eqz p1, :cond_1c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Webview crashed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1e

    :cond_1c
    const-string p1, "Webview killed, likely due to low memory"

    :goto_1e
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/u1$c;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method
