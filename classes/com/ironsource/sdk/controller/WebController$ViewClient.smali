.class Lcom/ironsource/sdk/controller/WebController$ViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/WebController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/WebController;


# direct methods
.method private constructor <init>(Lcom/ironsource/sdk/controller/WebController;)V
    .registers 2

    .line 576
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController$ViewClient;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ironsource/sdk/controller/WebController;Lcom/ironsource/sdk/controller/WebController$1;)V
    .registers 3

    .line 576
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController$ViewClient;-><init>(Lcom/ironsource/sdk/controller/WebController;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    const-string v0, "onPageFinished"

    .line 586
    invoke-static {v0, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "adUnit"

    .line 588
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "index.html"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 589
    :cond_15
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$ViewClient;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/WebController;->pageFinished()V

    .line 591
    :cond_1a
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    const-string v0, "onPageStarted"

    .line 580
    invoke-static {v0, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceivedError"

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mobileController.html"

    .line 600
    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$ViewClient;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mControllerListener:Lcom/ironsource/sdk/controller/ControllerEventListener;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$1200(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/ControllerEventListener;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 601
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$ViewClient;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mControllerListener:Lcom/ironsource/sdk/controller/ControllerEventListener;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$1200(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/ControllerEventListener;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebView failed to load mobileController.html - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ironsource/sdk/controller/ControllerEventListener;->handleControllerStageFailed(Ljava/lang/String;)V

    .line 607
    :cond_50
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 8

    const-string v0, "mraid.js"

    const-string v1, "shouldInterceptRequest"

    .line 629
    invoke-static {v1, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    :try_start_7
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 636
    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    .line 638
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_14
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    const/4 v1, 0x0

    :goto_16
    if-eqz v1, :cond_53

    .line 647
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$ViewClient;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mCacheDirectory:Ljava/lang/String;
    invoke-static {v2}, Lcom/ironsource/sdk/controller/WebController;->access$1300(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 649
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 653
    :try_start_3c
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 655
    new-instance v1, Landroid/webkit/WebResourceResponse;

    const-string v2, "text/javascript"

    const-string v3, "UTF-8"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_52
    .catch Ljava/io/FileNotFoundException; {:try_start_3c .. :try_end_52} :catch_53

    return-object v1

    .line 660
    :catch_53
    :cond_53
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "shouldOverrideUrlLoading"

    .line 613
    invoke-static {v0, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    :try_start_5
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$ViewClient;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {v0, p2}, Lcom/ironsource/sdk/controller/WebController;->handleSearchKeysURLs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 616
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$ViewClient;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/WebController;->interceptedUrlToStore()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_14

    const/4 p1, 0x1

    return p1

    :catch_14
    move-exception v0

    .line 620
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 623
    :cond_18
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
