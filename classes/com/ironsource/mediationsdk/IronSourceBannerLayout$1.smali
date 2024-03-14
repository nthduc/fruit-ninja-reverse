.class Lcom/ironsource/mediationsdk/IronSourceBannerLayout$1;
.super Ljava/lang/Object;
.source "IronSourceBannerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

.field final synthetic val$error:Lcom/ironsource/mediationsdk/logger/IronSourceError;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 3

    .line 118
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout$1;->this$0:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout$1;->val$error:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout$1;->this$0:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    # getter for: Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mIsBannerDisplayed:Z
    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->access$000(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 122
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout$1;->this$0:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    # getter for: Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;
    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->access$100(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Lcom/ironsource/mediationsdk/sdk/BannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout$1;->val$error:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/BannerListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 128
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout$1;->this$0:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    # getter for: Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerView:Landroid/view/View;
    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->access$200(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 129
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout$1;->this$0:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout$1;->this$0:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    # getter for: Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerView:Landroid/view/View;
    invoke-static {v1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->access$200(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->removeView(Landroid/view/View;)V

    .line 130
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout$1;->this$0:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    const/4 v1, 0x0

    # setter for: Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->access$202(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Landroid/view/View;)Landroid/view/View;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2d} :catch_2e

    goto :goto_32

    :catch_2e
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout$1;->this$0:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    # getter for: Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;
    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->access$100(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Lcom/ironsource/mediationsdk/sdk/BannerListener;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 137
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout$1;->this$0:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    # getter for: Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;
    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->access$100(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Lcom/ironsource/mediationsdk/sdk/BannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout$1;->val$error:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/BannerListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_45
    return-void
.end method
