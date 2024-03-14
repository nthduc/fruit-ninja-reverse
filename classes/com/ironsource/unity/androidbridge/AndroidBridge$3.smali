.class Lcom/ironsource/unity/androidbridge/AndroidBridge$3;
.super Ljava/lang/Object;
.source "AndroidBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/unity/androidbridge/AndroidBridge;->destroyBanner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;


# direct methods
.method constructor <init>(Lcom/ironsource/unity/androidbridge/AndroidBridge;)V
    .registers 2

    .line 465
    iput-object p1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$3;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 468
    # getter for: Lcom/ironsource/unity/androidbridge/AndroidBridge;->mInstance:Lcom/ironsource/unity/androidbridge/AndroidBridge;
    invoke-static {}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->access$000()Lcom/ironsource/unity/androidbridge/AndroidBridge;

    move-result-object v0

    monitor-enter v0

    .line 470
    :try_start_5
    iget-object v1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$3;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    # getter for: Lcom/ironsource/unity/androidbridge/AndroidBridge;->mBannerContainer:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->access$100(Lcom/ironsource/unity/androidbridge/AndroidBridge;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 471
    iget-object v1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$3;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    # getter for: Lcom/ironsource/unity/androidbridge/AndroidBridge;->mBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    invoke-static {v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->access$200(Lcom/ironsource/unity/androidbridge/AndroidBridge;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 472
    iget-object v1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$3;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    # getter for: Lcom/ironsource/unity/androidbridge/AndroidBridge;->mBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    invoke-static {v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->access$200(Lcom/ironsource/unity/androidbridge/AndroidBridge;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/mediationsdk/IronSource;->destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    .line 473
    iget-object v1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$3;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    const/4 v2, 0x0

    # setter for: Lcom/ironsource/unity/androidbridge/AndroidBridge;->mBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    invoke-static {v1, v2}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->access$202(Lcom/ironsource/unity/androidbridge/AndroidBridge;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_25} :catch_28
    .catchall {:try_start_5 .. :try_end_25} :catchall_26

    goto :goto_28

    :catchall_26
    move-exception v1

    goto :goto_30

    .line 478
    :catch_28
    :cond_28
    :goto_28
    :try_start_28
    iget-object v1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$3;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    const/4 v2, 0x0

    # setter for: Lcom/ironsource/unity/androidbridge/AndroidBridge;->mIsBannerLoaded:Z
    invoke-static {v1, v2}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->access$602(Lcom/ironsource/unity/androidbridge/AndroidBridge;Z)Z

    .line 479
    monitor-exit v0

    return-void

    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_26

    throw v1
.end method
