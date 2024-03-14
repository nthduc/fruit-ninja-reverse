.class Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;
.super Ljava/lang/Object;
.source "ChartboostAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$appSignature:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 136
    iput-object p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->val$appSignature:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 139
    # getter for: Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mAlreadyCalledInit:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 140
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v2, "init sdk"

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 142
    # getter for: Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mConsentCollectingUserData:Ljava/lang/Boolean;
    invoke-static {}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$100()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 143
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    # getter for: Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mConsentCollectingUserData:Ljava/lang/Boolean;
    invoke-static {}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$100()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->setConsent(Z)V

    .line 145
    :cond_26
    # getter for: Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->initCallbackListeners:Ljava/util/HashSet;
    invoke-static {}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$200()Ljava/util/HashSet;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-static {}, Lcom/ironsource/adapters/chartboost/ChartboostSingletonAdapter;->getInstance()Lcom/ironsource/adapters/chartboost/ChartboostSingletonAdapter;

    move-result-object v0

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/ironsource/adapters/chartboost/ChartboostSingletonAdapter;->addFirstInitator(Ljava/lang/ref/WeakReference;)V

    .line 148
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->val$appId:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->val$appSignature:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/chartboost/sdk/Chartboost;->startWithAppId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    # invokes: Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->setDebug()V
    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$300(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)V

    .line 154
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-virtual {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getPluginType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-virtual {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getPluginFrameworkVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_76

    .line 155
    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkUnity:Lcom/chartboost/sdk/Chartboost$CBFramework;

    iget-object v2, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-virtual {v2}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getPluginFrameworkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Chartboost;->setFramework(Lcom/chartboost/sdk/Chartboost$CBFramework;Ljava/lang/String;)V

    .line 159
    :cond_76
    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBMediation;->CBMediationironSource:Lcom/chartboost/sdk/Chartboost$CBMediation;

    const-string v2, "6.17.0"

    const-string v3, "4.3.4"

    invoke-static {v0, v2, v3}, Lcom/chartboost/sdk/Chartboost;->setMediation(Lcom/chartboost/sdk/Chartboost$CBMediation;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->val$userId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a4

    .line 163
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCustomId to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->val$userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->val$userId:Ljava/lang/String;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->setCustomId(Ljava/lang/String;)V

    .line 167
    :cond_a4
    # getter for: Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mDoNotSellCollectingUserData:Ljava/lang/Boolean;
    invoke-static {}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$400()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_b7

    .line 168
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    # getter for: Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mDoNotSellCollectingUserData:Ljava/lang/Boolean;
    invoke-static {}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$400()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    # invokes: Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->setCCPAValue(Z)V
    invoke-static {v0, v2}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$500(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Z)V

    .line 172
    :cond_b7
    invoke-static {v1}, Lcom/chartboost/sdk/Chartboost;->setAutoCacheAds(Z)V

    goto :goto_ca

    .line 173
    :cond_bb
    # getter for: Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mDidInitSuccessfully:Z
    invoke-static {}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$600()Z

    move-result v0

    if-nez v0, :cond_ca

    .line 174
    # getter for: Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->initCallbackListeners:Ljava/util/HashSet;
    invoke-static {}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$200()Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_ca
    :goto_ca
    return-void
.end method
