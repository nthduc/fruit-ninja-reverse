.class Lcom/ironsource/mediationsdk/utils/DailyCappingManager$1;
.super Ljava/util/TimerTask;
.source "DailyCappingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->scheduleTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/utils/DailyCappingManager;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/utils/DailyCappingManager;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager$1;->this$0:Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager$1;->this$0:Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    # invokes: Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->onTimerTick()V
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->access$000(Lcom/ironsource/mediationsdk/utils/DailyCappingManager;)V

    return-void
.end method
