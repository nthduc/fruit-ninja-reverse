.class Lcom/ironsource/mediationsdk/ISListenerWrapper$5;
.super Ljava/lang/Object;
.source "ISListenerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdShowSucceeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/ISListenerWrapper;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/ISListenerWrapper;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ISListenerWrapper$5;->this$0:Lcom/ironsource/mediationsdk/ISListenerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 93
    monitor-enter p0

    .line 94
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ISListenerWrapper$5;->this$0:Lcom/ironsource/mediationsdk/ISListenerWrapper;

    # getter for: Lcom/ironsource/mediationsdk/ISListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;
    invoke-static {v0}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->access$000(Lcom/ironsource/mediationsdk/ISListenerWrapper;)Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialListener;->onInterstitialAdShowSucceeded()V

    .line 95
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ISListenerWrapper$5;->this$0:Lcom/ironsource/mediationsdk/ISListenerWrapper;

    const-string v1, "onInterstitialAdShowSucceeded()"

    # invokes: Lcom/ironsource/mediationsdk/ISListenerWrapper;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->access$100(Lcom/ironsource/mediationsdk/ISListenerWrapper;Ljava/lang/String;)V

    .line 96
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method
