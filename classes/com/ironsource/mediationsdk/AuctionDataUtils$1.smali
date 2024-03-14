.class Lcom/ironsource/mediationsdk/AuctionDataUtils$1;
.super Ljava/lang/Object;
.source "AuctionDataUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/AuctionDataUtils;->setBrowserUserAgent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/AuctionDataUtils;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/AuctionDataUtils;Landroid/content/Context;)V
    .registers 3

    .line 97
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionDataUtils$1;->this$0:Lcom/ironsource/mediationsdk/AuctionDataUtils;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/AuctionDataUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AuctionDataUtils$1;->this$0:Lcom/ironsource/mediationsdk/AuctionDataUtils;

    new-instance v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/AuctionDataUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/ironsource/mediationsdk/AuctionDataUtils;->mBrowserUserAgent:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->access$502(Lcom/ironsource/mediationsdk/AuctionDataUtils;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBrowserUserAgent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/AuctionDataUtils$1;->this$0:Lcom/ironsource/mediationsdk/AuctionDataUtils;

    # getter for: Lcom/ironsource/mediationsdk/AuctionDataUtils;->mBrowserUserAgent:Ljava/lang/String;
    invoke-static {v2}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->access$500(Lcom/ironsource/mediationsdk/AuctionDataUtils;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AuctionDataUtils$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/AuctionDataUtils$1;->this$0:Lcom/ironsource/mediationsdk/AuctionDataUtils;

    # getter for: Lcom/ironsource/mediationsdk/AuctionDataUtils;->mBrowserUserAgent:Ljava/lang/String;
    invoke-static {v1}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->access$500(Lcom/ironsource/mediationsdk/AuctionDataUtils;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveBrowserUserAgent(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3b

    :catch_3b
    return-void
.end method
