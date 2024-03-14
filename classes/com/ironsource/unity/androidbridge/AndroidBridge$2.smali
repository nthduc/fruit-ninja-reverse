.class Lcom/ironsource/unity/androidbridge/AndroidBridge$2;
.super Ljava/lang/Object;
.source "AndroidBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/unity/androidbridge/AndroidBridge;->loadAndShowBanner(Ljava/lang/String;IIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$height:I

.field final synthetic val$placementName:Ljava/lang/String;

.field final synthetic val$position:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/ironsource/unity/androidbridge/AndroidBridge;Ljava/lang/String;IIILjava/lang/String;)V
    .registers 7

    .line 342
    iput-object p1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    iput-object p2, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->val$description:Ljava/lang/String;

    iput p3, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->val$width:I

    iput p4, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->val$height:I

    iput p5, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->val$position:I

    iput-object p6, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->val$placementName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 345
    # getter for: Lcom/ironsource/unity/androidbridge/AndroidBridge;->mInstance:Lcom/ironsource/unity/androidbridge/AndroidBridge;
    invoke-static {}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->access$000()Lcom/ironsource/unity/androidbridge/AndroidBridge;

    move-result-object v0

    monitor-enter v0

    .line 349
    :try_start_5
    iget-object v1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    # getter for: Lcom/ironsource/unity/androidbridge/AndroidBridge;->mBannerContainer:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->access$100(Lcom/ironsource/unity/androidbridge/AndroidBridge;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/4 v2, -0x1

    if-nez v1, :cond_34

    .line 350
    iget-object v1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    new-instance v3, Landroid/widget/FrameLayout;

    sget-object v4, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/ironsource/unity/androidbridge/AndroidBridge;->mBannerContainer:Landroid/widget/FrameLayout;
    invoke-static {v1, v3}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->access$102(Lcom/ironsource/unity/androidbridge/AndroidBridge;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 351
    iget-object v1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    # getter for: Lcom/ironsource/unity/androidbridge/AndroidBridge;->mBannerContainer:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->access$100(Lcom/ironsource/unity/androidbridge/AndroidBridge;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 352
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 353
    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    # getter for: Lcom/ironsource/unity/androidbridge/AndroidBridge;->mBannerContainer:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->access$100(Lcom/ironsource/unity/androidbridge/AndroidBridge;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    :cond_34
    iget-object v1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    iget-object v3, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    invoke-virtual {v3}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->getUnityActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    iget-object v5, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->val$description:Ljava/lang/String;

    iget v6, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->val$width:I

    iget v7, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->val$height:I

    # invokes: Lcom/ironsource/unity/androidbridge/AndroidBridge;->getBannerSize(Ljava/lang/String;II)Lcom/ironsource/mediationsdk/ISBannerSize;
    invoke-static {v4, v5, v6, v7}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->access$300(Lcom/ironsource/unity/androidbridge/AndroidBridge;Ljava/lang/String;II)Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ironsource/mediationsdk/IronSource;->createBanner(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v3

    # setter for: Lcom/ironsource/unity/androidbridge/AndroidBridge;->mBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    invoke-static {v1, v3}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->access$202(Lcom/ironsource/unity/androidbridge/AndroidBridge;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .line 360
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 363
    iget v2, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->val$position:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5d

    const/16 v2, 0x30

    goto :goto_5f

    :cond_5d
    const/16 v2, 0x50

    :goto_5f
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 366
    iget-object v2, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    # getter for: Lcom/ironsource/unity/androidbridge/AndroidBridge;->mBannerContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->access$100(Lcom/ironsource/unity/androidbridge/AndroidBridge;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    # getter for: Lcom/ironsource/unity/androidbridge/AndroidBridge;->mBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    invoke-static {v3}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->access$200(Lcom/ironsource/unity/androidbridge/AndroidBridge;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    iget-object v1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    # getter for: Lcom/ironsource/unity/androidbridge/AndroidBridge;->mBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    invoke-static {v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->access$200(Lcom/ironsource/unity/androidbridge/AndroidBridge;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v1

    new-instance v2, Lcom/ironsource/unity/androidbridge/AndroidBridge$2$1;

    invoke-direct {v2, p0}, Lcom/ironsource/unity/androidbridge/AndroidBridge$2$1;-><init>(Lcom/ironsource/unity/androidbridge/AndroidBridge$2;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 396
    iget-object v1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    # getter for: Lcom/ironsource/unity/androidbridge/AndroidBridge;->mBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    invoke-static {v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->access$200(Lcom/ironsource/unity/androidbridge/AndroidBridge;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v1

    new-instance v2, Lcom/ironsource/unity/androidbridge/AndroidBridge$2$2;

    invoke-direct {v2, p0}, Lcom/ironsource/unity/androidbridge/AndroidBridge$2$2;-><init>(Lcom/ironsource/unity/androidbridge/AndroidBridge$2;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->setBannerListener(Lcom/ironsource/mediationsdk/sdk/BannerListener;)V

    .line 441
    iget-object v1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->val$placementName:Ljava/lang/String;

    if-eqz v1, :cond_9c

    .line 442
    iget-object v1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    # getter for: Lcom/ironsource/unity/androidbridge/AndroidBridge;->mBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    invoke-static {v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->access$200(Lcom/ironsource/unity/androidbridge/AndroidBridge;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->val$placementName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/IronSource;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V

    goto :goto_bc

    .line 444
    :cond_9c
    iget-object v1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    # getter for: Lcom/ironsource/unity/androidbridge/AndroidBridge;->mBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    invoke-static {v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->access$200(Lcom/ironsource/unity/androidbridge/AndroidBridge;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/mediationsdk/IronSource;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    :try_end_a5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a5} :catch_a8
    .catchall {:try_start_5 .. :try_end_a5} :catchall_a6

    goto :goto_bc

    :catchall_a6
    move-exception v1

    goto :goto_be

    :catch_a8
    move-exception v1

    .line 448
    :try_start_a9
    iget-object v2, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    const-string v3, "onBannerAdLoadFailed"

    iget-object v4, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    const/16 v5, 0x1fd

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->parseErrorToEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->access$800(Lcom/ironsource/unity/androidbridge/AndroidBridge;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :goto_bc
    monitor-exit v0

    return-void

    :goto_be
    monitor-exit v0
    :try_end_bf
    .catchall {:try_start_a9 .. :try_end_bf} :catchall_a6

    throw v1
.end method
