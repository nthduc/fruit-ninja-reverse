.class Lcom/ironsource/sdk/controller/WebController$ChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WebController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/WebController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/WebController;


# direct methods
.method private constructor <init>(Lcom/ironsource/sdk/controller/WebController;)V
    .registers 2

    .line 664
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ironsource/sdk/controller/WebController;Lcom/ironsource/sdk/controller/WebController$1;)V
    .registers 3

    .line 664
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController$ChromeClient;-><init>(Lcom/ironsource/sdk/controller/WebController;)V

    return-void
.end method


# virtual methods
.method public getVideoLoadingProgressView()Landroid/view/View;
    .registers 4

    .line 714
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {v1}, Lcom/ironsource/sdk/controller/WebController;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 715
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 4

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- From line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MyApplication"

    .line 684
    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .registers 6

    .line 670
    new-instance p2, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 671
    invoke-virtual {p2, p0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 672
    new-instance p1, Lcom/ironsource/sdk/controller/WebController$FrameBustWebViewClient;

    iget-object p3, p0, Lcom/ironsource/sdk/controller/WebController$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v0, 0x0

    invoke-direct {p1, p3, v0}, Lcom/ironsource/sdk/controller/WebController$FrameBustWebViewClient;-><init>(Lcom/ironsource/sdk/controller/WebController;Lcom/ironsource/sdk/controller/WebController$1;)V

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 673
    iget-object p1, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/webkit/WebView$WebViewTransport;

    .line 674
    invoke-virtual {p1, p2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 675
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    const-string p1, "onCreateWindow"

    .line 677
    invoke-static {p1, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onHideCustomView()V
    .registers 4

    const-string v0, "Test"

    const-string v1, "onHideCustomView"

    .line 723
    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mCustomView:Landroid/view/View;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$1500(Lcom/ironsource/sdk/controller/WebController;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_10

    return-void

    .line 729
    :cond_10
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mCustomView:Landroid/view/View;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$1500(Lcom/ironsource/sdk/controller/WebController;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 732
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mCustomViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$1600(Lcom/ironsource/sdk/controller/WebController;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mCustomView:Landroid/view/View;
    invoke-static {v2}, Lcom/ironsource/sdk/controller/WebController;->access$1500(Lcom/ironsource/sdk/controller/WebController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 733
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v2, 0x0

    # setter for: Lcom/ironsource/sdk/controller/WebController;->mCustomView:Landroid/view/View;
    invoke-static {v0, v2}, Lcom/ironsource/sdk/controller/WebController;->access$1502(Lcom/ironsource/sdk/controller/WebController;Landroid/view/View;)Landroid/view/View;

    .line 734
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mCustomViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$1600(Lcom/ironsource/sdk/controller/WebController;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 735
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$1700(Lcom/ironsource/sdk/controller/WebController;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 737
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/WebController;->setVisibility(I)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 6

    const-string v0, "Test"

    const-string v1, "onShowCustomView"

    .line 693
    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/controller/WebController;->setVisibility(I)V

    .line 698
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mCustomView:Landroid/view/View;
    invoke-static {v1}, Lcom/ironsource/sdk/controller/WebController;->access$1500(Lcom/ironsource/sdk/controller/WebController;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1f

    const-string p1, "mCustomView != null"

    .line 699
    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    return-void

    :cond_1f
    const-string v1, "mCustomView == null"

    .line 703
    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mCustomViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$1600(Lcom/ironsource/sdk/controller/WebController;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 707
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # setter for: Lcom/ironsource/sdk/controller/WebController;->mCustomView:Landroid/view/View;
    invoke-static {v0, p1}, Lcom/ironsource/sdk/controller/WebController;->access$1502(Lcom/ironsource/sdk/controller/WebController;Landroid/view/View;)Landroid/view/View;

    .line 708
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # setter for: Lcom/ironsource/sdk/controller/WebController;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;
    invoke-static {p1, p2}, Lcom/ironsource/sdk/controller/WebController;->access$1702(Lcom/ironsource/sdk/controller/WebController;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 709
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mCustomViewContainer:Landroid/widget/FrameLayout;
    invoke-static {p1}, Lcom/ironsource/sdk/controller/WebController;->access$1600(Lcom/ironsource/sdk/controller/WebController;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
