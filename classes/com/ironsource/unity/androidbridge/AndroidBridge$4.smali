.class Lcom/ironsource/unity/androidbridge/AndroidBridge$4;
.super Ljava/lang/Object;
.source "AndroidBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/unity/androidbridge/AndroidBridge;->displayBanner()V
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

    .line 487
    iput-object p1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$4;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 490
    # getter for: Lcom/ironsource/unity/androidbridge/AndroidBridge;->mInstance:Lcom/ironsource/unity/androidbridge/AndroidBridge;
    invoke-static {}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->access$000()Lcom/ironsource/unity/androidbridge/AndroidBridge;

    move-result-object v0

    monitor-enter v0

    .line 492
    :try_start_5
    iget-object v1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$4;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    # getter for: Lcom/ironsource/unity/androidbridge/AndroidBridge;->mBannerContainer:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->access$100(Lcom/ironsource/unity/androidbridge/AndroidBridge;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 493
    iget-object v1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$4;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    # getter for: Lcom/ironsource/unity/androidbridge/AndroidBridge;->mBannerContainer:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->access$100(Lcom/ironsource/unity/androidbridge/AndroidBridge;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_17} :catch_1a
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    goto :goto_1a

    :catchall_18
    move-exception v1

    goto :goto_1c

    .line 498
    :catch_1a
    :cond_1a
    :goto_1a
    :try_start_1a
    monitor-exit v0

    return-void

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_18

    throw v1
.end method
