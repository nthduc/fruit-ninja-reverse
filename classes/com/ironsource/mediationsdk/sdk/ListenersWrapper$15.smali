.class Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$15;
.super Ljava/lang/Object;
.source "ListenersWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)V
    .registers 2

    .line 334
    iput-object p1, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$15;->this$0:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 337
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$15;->this$0:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    # getter for: Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;
    invoke-static {v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->access$300(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialListener;->onInterstitialAdClicked()V

    return-void
.end method
