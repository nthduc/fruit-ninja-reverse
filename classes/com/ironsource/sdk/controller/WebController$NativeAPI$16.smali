.class Lcom/ironsource/sdk/controller/WebController$NativeAPI$16;
.super Ljava/lang/Object;
.source "WebController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/WebController$NativeAPI;->onLoadInterstitialSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/WebController$NativeAPI;

.field final synthetic val$demandSourceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI;Ljava/lang/String;)V
    .registers 3

    .line 1781
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$16;->this$1:Lcom/ironsource/sdk/controller/WebController$NativeAPI;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$16;->val$demandSourceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1783
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$16;->this$1:Lcom/ironsource/sdk/controller/WebController$NativeAPI;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mDSInterstitialListener:Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$4300(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$16;->val$demandSourceId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;->onInterstitialLoadSuccess(Ljava/lang/String;)V

    return-void
.end method
