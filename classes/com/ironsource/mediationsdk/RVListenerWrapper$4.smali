.class Lcom/ironsource/mediationsdk/RVListenerWrapper$4;
.super Ljava/lang/Object;
.source "RVListenerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/RVListenerWrapper;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/RVListenerWrapper;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper$4;->this$0:Lcom/ironsource/mediationsdk/RVListenerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 83
    monitor-enter p0

    .line 84
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper$4;->this$0:Lcom/ironsource/mediationsdk/RVListenerWrapper;

    # getter for: Lcom/ironsource/mediationsdk/RVListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;
    invoke-static {v0}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->access$000(Lcom/ironsource/mediationsdk/RVListenerWrapper;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAdStarted()V

    .line 85
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper$4;->this$0:Lcom/ironsource/mediationsdk/RVListenerWrapper;

    const-string v1, "onRewardedVideoAdStarted()"

    # invokes: Lcom/ironsource/mediationsdk/RVListenerWrapper;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->access$100(Lcom/ironsource/mediationsdk/RVListenerWrapper;Ljava/lang/String;)V

    .line 86
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method
