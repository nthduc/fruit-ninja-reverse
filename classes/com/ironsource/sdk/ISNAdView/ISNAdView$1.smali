.class Lcom/ironsource/sdk/ISNAdView/ISNAdView$1;
.super Ljava/lang/Object;
.source "ISNAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/ISNAdView/ISNAdView;->performCleanup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/ISNAdView/ISNAdView;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/ISNAdView/ISNAdView;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdView$1;->this$0:Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdView$1;->this$0:Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    # getter for: Lcom/ironsource/sdk/ISNAdView/ISNAdView;->mIsnAdViewLogic:Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;
    invoke-static {v0}, Lcom/ironsource/sdk/ISNAdView/ISNAdView;->access$000(Lcom/ironsource/sdk/ISNAdView/ISNAdView;)Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->reportAdContainerWasRemoved()V

    .line 83
    iget-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdView$1;->this$0:Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    iget-object v1, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdView$1;->this$0:Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    # getter for: Lcom/ironsource/sdk/ISNAdView/ISNAdView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/ironsource/sdk/ISNAdView/ISNAdView;->access$100(Lcom/ironsource/sdk/ISNAdView/ISNAdView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/ISNAdView/ISNAdView;->removeView(Landroid/view/View;)V

    .line 84
    iget-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdView$1;->this$0:Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    # getter for: Lcom/ironsource/sdk/ISNAdView/ISNAdView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/ironsource/sdk/ISNAdView/ISNAdView;->access$100(Lcom/ironsource/sdk/ISNAdView/ISNAdView;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 85
    iget-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdView$1;->this$0:Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    # getter for: Lcom/ironsource/sdk/ISNAdView/ISNAdView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/ironsource/sdk/ISNAdView/ISNAdView;->access$100(Lcom/ironsource/sdk/ISNAdView/ISNAdView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 87
    :cond_25
    iget-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdView$1;->this$0:Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    const/4 v1, 0x0

    # setter for: Lcom/ironsource/sdk/ISNAdView/ISNAdView;->mActivity:Landroid/app/Activity;
    invoke-static {v0, v1}, Lcom/ironsource/sdk/ISNAdView/ISNAdView;->access$202(Lcom/ironsource/sdk/ISNAdView/ISNAdView;Landroid/app/Activity;)Landroid/app/Activity;

    .line 88
    iget-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdView$1;->this$0:Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    # setter for: Lcom/ironsource/sdk/ISNAdView/ISNAdView;->mAdViewSize:Lcom/ironsource/sdk/ISAdSize;
    invoke-static {v0, v1}, Lcom/ironsource/sdk/ISNAdView/ISNAdView;->access$302(Lcom/ironsource/sdk/ISNAdView/ISNAdView;Lcom/ironsource/sdk/ISAdSize;)Lcom/ironsource/sdk/ISAdSize;

    .line 89
    iget-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdView$1;->this$0:Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    # setter for: Lcom/ironsource/sdk/ISNAdView/ISNAdView;->mContainerIdentifier:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/ironsource/sdk/ISNAdView/ISNAdView;->access$402(Lcom/ironsource/sdk/ISNAdView/ISNAdView;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdView$1;->this$0:Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    # getter for: Lcom/ironsource/sdk/ISNAdView/ISNAdView;->mIsnAdViewLogic:Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;
    invoke-static {v0}, Lcom/ironsource/sdk/ISNAdView/ISNAdView;->access$000(Lcom/ironsource/sdk/ISNAdView/ISNAdView;)Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->destroy()V

    .line 91
    iget-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdView$1;->this$0:Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    # setter for: Lcom/ironsource/sdk/ISNAdView/ISNAdView;->mIsnAdViewLogic:Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;
    invoke-static {v0, v1}, Lcom/ironsource/sdk/ISNAdView/ISNAdView;->access$002(Lcom/ironsource/sdk/ISNAdView/ISNAdView;Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;)Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_44

    goto :goto_53

    :catch_44
    move-exception v0

    .line 93
    iget-object v1, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdView$1;->this$0:Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    # getter for: Lcom/ironsource/sdk/ISNAdView/ISNAdView;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/ironsource/sdk/ISNAdView/ISNAdView;->access$500(Lcom/ironsource/sdk/ISNAdView/ISNAdView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "performCleanup | could not destroy ISNAdView"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_53
    return-void
.end method
