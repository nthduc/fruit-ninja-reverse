.class Lcom/ironsource/mediationsdk/RewardedVideoManager$1;
.super Ljava/util/TimerTask;
.source "RewardedVideoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/RewardedVideoManager;->scheduleFetchTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/RewardedVideoManager;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/RewardedVideoManager;)V
    .registers 2

    .line 640
    iput-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager$1;->this$0:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 643
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager$1;->cancel()Z

    .line 644
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager$1;->this$0:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    # invokes: Lcom/ironsource/mediationsdk/RewardedVideoManager;->loadRewardedVideo()V
    invoke-static {v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->access$000(Lcom/ironsource/mediationsdk/RewardedVideoManager;)V

    .line 645
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager$1;->this$0:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    # invokes: Lcom/ironsource/mediationsdk/RewardedVideoManager;->scheduleFetchTimer()V
    invoke-static {v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->access$100(Lcom/ironsource/mediationsdk/RewardedVideoManager;)V

    return-void
.end method
