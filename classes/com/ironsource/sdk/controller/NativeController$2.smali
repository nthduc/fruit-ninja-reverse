.class Lcom/ironsource/sdk/controller/NativeController$2;
.super Ljava/lang/Object;
.source "NativeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/NativeController;->initOfferWall(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/NativeController;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/NativeController;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/ironsource/sdk/controller/NativeController$2;->this$0:Lcom/ironsource/sdk/controller/NativeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/ironsource/sdk/controller/NativeController$2;->this$0:Lcom/ironsource/sdk/controller/NativeController;

    # getter for: Lcom/ironsource/sdk/controller/NativeController;->mOfferwallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/NativeController;->access$100(Lcom/ironsource/sdk/controller/NativeController;)Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/NativeController$2;->this$0:Lcom/ironsource/sdk/controller/NativeController;

    # getter for: Lcom/ironsource/sdk/controller/NativeController;->mFailedControllerReason:Ljava/lang/String;
    invoke-static {v1}, Lcom/ironsource/sdk/controller/NativeController;->access$000(Lcom/ironsource/sdk/controller/NativeController;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ironsource/sdk/listeners/OnOfferWallListener;->onOfferwallInitFail(Ljava/lang/String;)V

    return-void
.end method
