.class Lcom/ironsource/sdk/controller/NativeController$7;
.super Ljava/lang/Object;
.source "NativeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/NativeController;->initInterstitial(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/NativeController;

.field final synthetic val$demandSource:Lcom/ironsource/sdk/data/DemandSource;

.field final synthetic val$listener:Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/NativeController;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;Lcom/ironsource/sdk/data/DemandSource;)V
    .registers 4

    .line 106
    iput-object p1, p0, Lcom/ironsource/sdk/controller/NativeController$7;->this$0:Lcom/ironsource/sdk/controller/NativeController;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/NativeController$7;->val$listener:Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/NativeController$7;->val$demandSource:Lcom/ironsource/sdk/data/DemandSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 109
    iget-object v0, p0, Lcom/ironsource/sdk/controller/NativeController$7;->val$listener:Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/NativeController$7;->val$demandSource:Lcom/ironsource/sdk/data/DemandSource;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/sdk/controller/NativeController$7;->this$0:Lcom/ironsource/sdk/controller/NativeController;

    # getter for: Lcom/ironsource/sdk/controller/NativeController;->mFailedControllerReason:Ljava/lang/String;
    invoke-static {v3}, Lcom/ironsource/sdk/controller/NativeController;->access$000(Lcom/ironsource/sdk/controller/NativeController;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;->onAdProductInitFailed(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
