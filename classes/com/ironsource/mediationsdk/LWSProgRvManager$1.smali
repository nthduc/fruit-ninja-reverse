.class Lcom/ironsource/mediationsdk/LWSProgRvManager$1;
.super Ljava/util/TimerTask;
.source "LWSProgRvManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/LWSProgRvManager;->loadRewardedVideo(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/LWSProgRvManager;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/LWSProgRvManager;)V
    .registers 2

    .line 564
    iput-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager$1;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 567
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager$1;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvManager;

    # invokes: Lcom/ironsource/mediationsdk/LWSProgRvManager;->makeAuction()V
    invoke-static {v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->access$000(Lcom/ironsource/mediationsdk/LWSProgRvManager;)V

    return-void
.end method
