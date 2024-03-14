.class Lcom/ironsource/adapters/applovin/AppLovinAdapter$1;
.super Ljava/lang/Object;
.source "AppLovinAdapter.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/applovin/AppLovinAdapter;->initSdk(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)V
    .registers 2

    .line 232
    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$1;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSdkInitialized(Lcom/applovin/sdk/AppLovinSdkConfiguration;)V
    .registers 3

    .line 235
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 237
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    # setter for: Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mDidInitSdkFinished:Ljava/lang/Boolean;
    invoke-static {p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$002(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 239
    # getter for: Lcom/ironsource/adapters/applovin/AppLovinAdapter;->initCallbackListeners:Ljava/util/HashSet;
    invoke-static {}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$100()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;

    .line 240
    invoke-interface {v0}, Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;->onNetworkInitCallbackSuccess()V

    goto :goto_17

    .line 242
    :cond_27
    # getter for: Lcom/ironsource/adapters/applovin/AppLovinAdapter;->initCallbackListeners:Ljava/util/HashSet;
    invoke-static {}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$100()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    return-void
.end method
