.class Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper$6;
.super Ljava/lang/Object;
.source "RVDemandOnlyListenerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdClicked(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

.field final synthetic val$instanceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;Ljava/lang/String;)V
    .registers 3

    .line 90
    iput-object p1, p0, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper$6;->this$0:Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper$6;->val$instanceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 93
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper$6;->this$0:Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    # getter for: Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;
    invoke-static {v0}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->access$000(Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;)Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper$6;->val$instanceId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;->onRewardedVideoAdClicked(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper$6;->this$0:Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRewardedVideoAdClicked() instanceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper$6;->val$instanceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->access$100(Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;Ljava/lang/String;)V

    return-void
.end method
