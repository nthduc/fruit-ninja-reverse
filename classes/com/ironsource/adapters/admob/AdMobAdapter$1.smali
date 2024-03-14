.class Lcom/ironsource/adapters/admob/AdMobAdapter$1;
.super Ljava/lang/Object;
.source "AdMobAdapter.java"

# interfaces
.implements Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/admob/AdMobAdapter;->initSDK(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/admob/AdMobAdapter;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$1;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializationComplete(Lcom/google/android/gms/ads/initialization/InitializationStatus;)V
    .registers 3

    .line 164
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, "initializationStatus = READY"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 166
    # setter for: Lcom/ironsource/adapters/admob/AdMobAdapter;->mDidInitSdkFinished:Z
    invoke-static {p1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$002(Z)Z

    .line 169
    # getter for: Lcom/ironsource/adapters/admob/AdMobAdapter;->initCallbackListeners:Ljava/util/HashSet;
    invoke-static {}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$100()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;

    .line 170
    invoke-interface {v0}, Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;->onNetworkInitCallbackSuccess()V

    goto :goto_13

    .line 172
    :cond_23
    # getter for: Lcom/ironsource/adapters/admob/AdMobAdapter;->initCallbackListeners:Ljava/util/HashSet;
    invoke-static {}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$100()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    return-void
.end method
