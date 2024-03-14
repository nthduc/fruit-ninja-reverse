.class Lcom/facebook/internal/WebDialog$DialogWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/WebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/internal/WebDialog;


# direct methods
.method private constructor <init>(Lcom/facebook/internal/WebDialog;)V
    .registers 2

    .line 583
    iput-object p1, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/internal/WebDialog;Lcom/facebook/internal/WebDialog$1;)V
    .registers 3

    .line 583
    invoke-direct {p0, p1}, Lcom/facebook/internal/WebDialog$DialogWebViewClient;-><init>(Lcom/facebook/internal/WebDialog;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 672
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 673
    iget-object p1, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    # getter for: Lcom/facebook/internal/WebDialog;->isDetached:Z
    invoke-static {p1}, Lcom/facebook/internal/WebDialog;->access$200(Lcom/facebook/internal/WebDialog;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 674
    iget-object p1, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    # getter for: Lcom/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;
    invoke-static {p1}, Lcom/facebook/internal/WebDialog;->access$300(Lcom/facebook/internal/WebDialog;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 680
    :cond_14
    iget-object p1, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    # getter for: Lcom/facebook/internal/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;
    invoke-static {p1}, Lcom/facebook/internal/WebDialog;->access$400(Lcom/facebook/internal/WebDialog;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 681
    iget-object p1, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    # getter for: Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;
    invoke-static {p1}, Lcom/facebook/internal/WebDialog;->access$500(Lcom/facebook/internal/WebDialog;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 682
    iget-object p1, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    # getter for: Lcom/facebook/internal/WebDialog;->crossImageView:Landroid/widget/ImageView;
    invoke-static {p1}, Lcom/facebook/internal/WebDialog;->access$600(Lcom/facebook/internal/WebDialog;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 683
    iget-object p1, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    const/4 p2, 0x1

    # setter for: Lcom/facebook/internal/WebDialog;->isPageFinished:Z
    invoke-static {p1, p2}, Lcom/facebook/internal/WebDialog;->access$702(Lcom/facebook/internal/WebDialog;Z)Z

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Webview loading URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FacebookSDK.WebDialog"

    invoke-static {v1, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 665
    iget-object p1, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    # getter for: Lcom/facebook/internal/WebDialog;->isDetached:Z
    invoke-static {p1}, Lcom/facebook/internal/WebDialog;->access$200(Lcom/facebook/internal/WebDialog;)Z

    move-result p1

    if-nez p1, :cond_2a

    .line 666
    iget-object p1, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    # getter for: Lcom/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;
    invoke-static {p1}, Lcom/facebook/internal/WebDialog;->access$300(Lcom/facebook/internal/WebDialog;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    :cond_2a
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 645
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 646
    iget-object p1, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    new-instance v0, Lcom/facebook/FacebookDialogException;

    invoke-direct {v0, p3, p2, p4}, Lcom/facebook/FacebookDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/facebook/internal/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 5

    .line 654
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 656
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 657
    iget-object p1, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    new-instance p2, Lcom/facebook/FacebookDialogException;

    const/4 p3, 0x0

    const/16 v0, -0xb

    invoke-direct {p2, p3, v0, p3}, Lcom/facebook/FacebookDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/facebook/internal/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8

    .line 586
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Redirect URL: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FacebookSDK.WebDialog"

    invoke-static {v0, p1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget-object p1, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    # getter for: Lcom/facebook/internal/WebDialog;->expectedRedirectUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/internal/WebDialog;->access$100(Lcom/facebook/internal/WebDialog;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_a6

    .line 588
    iget-object p1, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-virtual {p1, p2}, Lcom/facebook/internal/WebDialog;->parseResponseUri(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "error"

    .line 590
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_37

    const-string p2, "error_type"

    .line 592
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_37
    const-string v1, "error_msg"

    .line 595
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_45

    const-string v1, "error_message"

    .line 597
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_45
    if-nez v1, :cond_4d

    const-string v1, "error_description"

    .line 600
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4d
    const-string v2, "error_code"

    .line 602
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 604
    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_5f

    .line 606
    :try_start_5a
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_5e
    .catch Ljava/lang/NumberFormatException; {:try_start_5a .. :try_end_5e} :catch_5f

    goto :goto_60

    :catch_5f
    :cond_5f
    const/4 v2, -0x1

    .line 612
    :goto_60
    invoke-static {p2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 613
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_74

    if-ne v2, v4, :cond_74

    .line 615
    iget-object p2, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-virtual {p2, p1}, Lcom/facebook/internal/WebDialog;->sendSuccessToListener(Landroid/os/Bundle;)V

    goto :goto_a5

    :cond_74
    if-eqz p2, :cond_8c

    const-string p1, "access_denied"

    .line 617
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_86

    const-string p1, "OAuthAccessDeniedException"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8c

    .line 618
    :cond_86
    iget-object p1, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-virtual {p1}, Lcom/facebook/internal/WebDialog;->cancel()V

    goto :goto_a5

    :cond_8c
    const/16 p1, 0x1069

    if-ne v2, p1, :cond_96

    .line 620
    iget-object p1, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-virtual {p1}, Lcom/facebook/internal/WebDialog;->cancel()V

    goto :goto_a5

    .line 622
    :cond_96
    new-instance p1, Lcom/facebook/FacebookRequestError;

    invoke-direct {p1, v2, p2, v1}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 624
    iget-object p2, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    new-instance v2, Lcom/facebook/FacebookServiceException;

    invoke-direct {v2, p1, v1}, Lcom/facebook/FacebookServiceException;-><init>(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lcom/facebook/internal/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    :goto_a5
    return v0

    :cond_a6
    const-string p1, "fbconnect://cancel"

    .line 627
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b4

    .line 628
    iget-object p1, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-virtual {p1}, Lcom/facebook/internal/WebDialog;->cancel()V

    return v0

    :cond_b4
    const-string p1, "touch"

    .line 630
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_be

    return v1

    .line 635
    :cond_be
    :try_start_be
    iget-object p1, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-virtual {p1}, Lcom/facebook/internal/WebDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v2, v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_d2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_be .. :try_end_d2} :catch_d3

    return v0

    :catch_d3
    return v1
.end method
