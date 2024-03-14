.class public Lcom/ironsource/sdk/ISNAdView/ISNAdViewWebClient;
.super Landroid/webkit/WebViewClient;
.source "ISNAdViewWebClient.java"


# instance fields
.field private mDelegate:Lcom/ironsource/sdk/ISNAdView/ISNAdView$IErrorReportDelegate;


# direct methods
.method public constructor <init>(Lcom/ironsource/sdk/ISNAdView/ISNAdView$IErrorReportDelegate;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewWebClient;->mDelegate:Lcom/ironsource/sdk/ISNAdView/ISNAdView$IErrorReportDelegate;

    return-void
.end method

.method private getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ISNAdViewWebClient | External Adunit failed to load."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Status code: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 46
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceivedError"

    .line 47
    invoke-direct {p0, v1, v0}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewWebClient;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewWebClient;->mDelegate:Lcom/ironsource/sdk/ISNAdView/ISNAdView$IErrorReportDelegate;

    invoke-interface {v1, v0}, Lcom/ironsource/sdk/ISNAdView/ISNAdView$IErrorReportDelegate;->reportOnError(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    :goto_14
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 59
    :try_start_0
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceivedErrorM"

    .line 60
    invoke-direct {p0, v1, v0}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewWebClient;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewWebClient;->mDelegate:Lcom/ironsource/sdk/ISNAdView/ISNAdView$IErrorReportDelegate;

    invoke-interface {v1, v0}, Lcom/ironsource/sdk/ISNAdView/ISNAdView$IErrorReportDelegate;->reportOnError(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    :goto_18
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .registers 7

    :try_start_0
    const-string v0, ""

    .line 29
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_10

    .line 30
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_10
    const-string v1, "onReceivedHttpError"

    .line 32
    invoke-direct {p0, v1, v0}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewWebClient;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewWebClient;->mDelegate:Lcom/ironsource/sdk/ISNAdView/ISNAdView$IErrorReportDelegate;

    invoke-interface {v1, v0}, Lcom/ironsource/sdk/ISNAdView/ISNAdView$IErrorReportDelegate;->reportOnError(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_20

    :catch_1c
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    :goto_20
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    return-void
.end method
