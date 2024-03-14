.class Lcom/ironsource/adapters/facebook/FacebookAdapter$FBInitListener;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Lcom/facebook/ads/AudienceNetworkAds$InitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/facebook/FacebookAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FBInitListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;


# direct methods
.method private constructor <init>(Lcom/ironsource/adapters/facebook/FacebookAdapter;)V
    .registers 2

    .line 967
    iput-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$FBInitListener;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ironsource/adapters/facebook/FacebookAdapter;Lcom/ironsource/adapters/facebook/FacebookAdapter$1;)V
    .registers 3

    .line 967
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/facebook/FacebookAdapter$FBInitListener;-><init>(Lcom/ironsource/adapters/facebook/FacebookAdapter;)V

    return-void
.end method


# virtual methods
.method public onInitialized(Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V
    .registers 5

    .line 970
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init SDK is completed with status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/facebook/ads/AudienceNetworkAds$InitResult;->isSuccess()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/facebook/ads/AudienceNetworkAds$InitResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 971
    invoke-interface {p1}, Lcom/facebook/ads/AudienceNetworkAds$InitResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_54

    const/4 p1, 0x1

    .line 972
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    # setter for: Lcom/ironsource/adapters/facebook/FacebookAdapter;->mDidInitSuccess:Ljava/lang/Boolean;
    invoke-static {p1}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1602(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 975
    # getter for: Lcom/ironsource/adapters/facebook/FacebookAdapter;->initCallbackListeners:Ljava/util/HashSet;
    invoke-static {}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1700()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;

    .line 976
    invoke-interface {v0}, Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;->onNetworkInitCallbackSuccess()V

    goto :goto_3c

    .line 978
    :cond_4c
    # getter for: Lcom/ironsource/adapters/facebook/FacebookAdapter;->initCallbackListeners:Ljava/util/HashSet;
    invoke-static {}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1700()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    goto :goto_7f

    :cond_54
    const/4 v0, 0x0

    .line 981
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    # setter for: Lcom/ironsource/adapters/facebook/FacebookAdapter;->mDidInitSuccess:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1602(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 983
    # getter for: Lcom/ironsource/adapters/facebook/FacebookAdapter;->initCallbackListeners:Ljava/util/HashSet;
    invoke-static {}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1700()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_64
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;

    .line 984
    invoke-interface {p1}, Lcom/facebook/ads/AudienceNetworkAds$InitResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;->onNetworkInitCallbackFailed(Ljava/lang/String;)V

    goto :goto_64

    .line 986
    :cond_78
    # getter for: Lcom/ironsource/adapters/facebook/FacebookAdapter;->initCallbackListeners:Ljava/util/HashSet;
    invoke-static {}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1700()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    :goto_7f
    return-void
.end method
