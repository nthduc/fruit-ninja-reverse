.class Lcom/ironsource/mediationsdk/LWSProgRvSmash$1;
.super Ljava/util/TimerTask;
.source "LWSProgRvSmash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/LWSProgRvSmash;->startLoadTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/LWSProgRvSmash;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V
    .registers 2

    .line 541
    iput-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 548
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    # getter for: Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mState:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;
    invoke-static {v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->access$000(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    const/16 v2, 0x401

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "Rewarded Video - load instance time out"

    if-eq v0, v1, :cond_21

    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    # getter for: Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mState:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;
    invoke-static {v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->access$000(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    if-ne v0, v1, :cond_1b

    goto :goto_21

    :cond_1b
    const/16 v0, 0x1fe

    const/4 v0, 0x0

    const/16 v1, 0x1fe

    goto :goto_3b

    .line 549
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    # getter for: Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mState:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;
    invoke-static {v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->access$000(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    if-ne v0, v1, :cond_2e

    const/16 v0, 0x401

    goto :goto_32

    :cond_2e
    const/16 v0, 0x408

    const-string v5, "Rewarded Video - init instance time out"

    .line 557
    :goto_32
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    sget-object v6, Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;->NOT_LOADED:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    # invokes: Lcom/ironsource/mediationsdk/LWSProgRvSmash;->setState(Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;)V
    invoke-static {v1, v6}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->access$100(Lcom/ironsource/mediationsdk/LWSProgRvSmash;Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;)V

    move v1, v0

    const/4 v0, 0x1

    .line 561
    :goto_3b
    iget-object v6, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    # invokes: Lcom/ironsource/mediationsdk/LWSProgRvSmash;->logInternal(Ljava/lang/String;)V
    invoke-static {v6, v5}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->access$200(Lcom/ironsource/mediationsdk/LWSProgRvSmash;Ljava/lang/String;)V

    const/4 v6, 0x3

    const-string v7, "duration"

    const-string v8, "errorCode"

    const/4 v9, 0x2

    if-eqz v0, :cond_ac

    .line 564
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    const/16 v2, 0x4b0

    new-array v10, v9, [[Ljava/lang/Object;

    new-array v11, v9, [Ljava/lang/Object;

    aput-object v8, v11, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v3

    aput-object v11, v10, v4

    new-array v11, v9, [Ljava/lang/Object;

    aput-object v7, v11, v4

    iget-object v12, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    # invokes: Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getElapsedTime()J
    invoke-static {v12}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->access$300(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v3

    aput-object v11, v10, v3

    invoke-virtual {v0, v2, v10}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    .line 565
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    const/16 v2, 0x4bc

    new-array v6, v6, [[Ljava/lang/Object;

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v8, v10, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v10, v3

    aput-object v10, v6, v4

    new-array v1, v9, [Ljava/lang/Object;

    const-string v8, "reason"

    aput-object v8, v1, v4

    aput-object v5, v1, v3

    aput-object v1, v6, v3

    new-array v1, v9, [Ljava/lang/Object;

    aput-object v7, v1, v4

    iget-object v4, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    # invokes: Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getElapsedTime()J
    invoke-static {v4}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->access$300(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v3

    aput-object v1, v6, v9

    invoke-virtual {v0, v2, v6}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    .line 566
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    # getter for: Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mListener:Lcom/ironsource/mediationsdk/LWSRvManagerListener;
    invoke-static {v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->access$400(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)Lcom/ironsource/mediationsdk/LWSRvManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/LWSRvManagerListener;->onLoadError(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V

    goto :goto_e7

    .line 568
    :cond_ac
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    const/16 v1, 0x4b8

    new-array v5, v6, [[Ljava/lang/Object;

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v8, v6, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v3

    aput-object v6, v5, v4

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v7, v2, v4

    iget-object v6, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    # invokes: Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getElapsedTime()J
    invoke-static {v6}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->access$300(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v3

    aput-object v2, v5, v3

    new-array v2, v9, [Ljava/lang/Object;

    const-string v6, "ext1"

    aput-object v6, v2, v4

    iget-object v4, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    # getter for: Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mState:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;
    invoke-static {v4}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->access$000(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object v2, v5, v9

    invoke-virtual {v0, v1, v5}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    :goto_e7
    return-void
.end method