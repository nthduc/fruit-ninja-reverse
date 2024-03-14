.class Lcom/ironsource/mediationsdk/MediationInitializer$1;
.super Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;
.source "MediationInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/MediationInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/MediationInitializer;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/MediationInitializer;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;-><init>(Lcom/ironsource/mediationsdk/MediationInitializer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 132
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    .line 134
    invoke-static {}, Lcom/ironsource/mediationsdk/TokenDataService;->getInstance()Lcom/ironsource/mediationsdk/TokenDataService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/TokenDataService;->collectAdvertisingData()V

    .line 137
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mUserId:Ljava/lang/String;
    invoke-static {v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$000(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/ironsource/mediationsdk/MediationInitializer;->validateUserId(Ljava/lang/String;)Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$100(Lcom/ironsource/mediationsdk/MediationInitializer;Ljava/lang/String;)Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    move-result-object v1

    .line 138
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 139
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    const-string v2, "userGenerated"

    # setter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mUserIdType:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$202(Lcom/ironsource/mediationsdk/MediationInitializer;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_7c

    .line 141
    :cond_25
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$300(Lcom/ironsource/mediationsdk/MediationInitializer;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->getAdvertiserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mUserId:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$002(Lcom/ironsource/mediationsdk/MediationInitializer;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mUserId:Ljava/lang/String;
    invoke-static {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$000(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 143
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    const-string v2, "GAID"

    # setter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mUserIdType:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$202(Lcom/ironsource/mediationsdk/MediationInitializer;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_72

    .line 145
    :cond_48
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$300(Lcom/ironsource/mediationsdk/MediationInitializer;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/ironsource/environment/DeviceStatus;->getOrGenerateOnceUniqueIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mUserId:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$002(Lcom/ironsource/mediationsdk/MediationInitializer;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mUserId:Ljava/lang/String;
    invoke-static {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$000(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6b

    .line 147
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    const-string v2, "UUID"

    # setter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mUserIdType:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$202(Lcom/ironsource/mediationsdk/MediationInitializer;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_72

    .line 149
    :cond_6b
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    const-string v2, ""

    # setter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mUserId:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$002(Lcom/ironsource/mediationsdk/MediationInitializer;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    :goto_72
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mUserId:Ljava/lang/String;
    invoke-static {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$000(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->setIronSourceUserId(Ljava/lang/String;Z)V

    .line 158
    :goto_7c
    invoke-static {}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/ironsource/mediationsdk/sdk/GeneralProperties;

    move-result-object v1

    const-string v2, "userIdType"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mUserIdType:Ljava/lang/String;
    invoke-static {v3}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$200(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->putKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mUserId:Ljava/lang/String;
    invoke-static {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$000(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a6

    .line 161
    invoke-static {}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/ironsource/mediationsdk/sdk/GeneralProperties;

    move-result-object v1

    const-string v2, "userId"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mUserId:Ljava/lang/String;
    invoke-static {v3}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$000(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->putKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    :cond_a6
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mAppKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$400(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c1

    .line 163
    invoke-static {}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/ironsource/mediationsdk/sdk/GeneralProperties;

    move-result-object v1

    const-string v2, "appKey"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mAppKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$400(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->putKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    :cond_c1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    # setter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mInitStartTime:J
    invoke-static {v1, v2, v3}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$502(Lcom/ironsource/mediationsdk/MediationInitializer;J)J

    .line 169
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$300(Lcom/ironsource/mediationsdk/MediationInitializer;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mUserId:Ljava/lang/String;
    invoke-static {v3}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$000(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->listener:Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;

    invoke-virtual {v0, v2, v3, v4}, Lcom/ironsource/mediationsdk/IronSourceObject;->getServerResponse(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v2

    # setter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$602(Lcom/ironsource/mediationsdk/MediationInitializer;Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 171
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    invoke-static {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$600(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1ca

    .line 172
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$700(Lcom/ironsource/mediationsdk/MediationInitializer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 174
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    invoke-static {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$600(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->isValidResponse()Z

    move-result v1

    if-eqz v1, :cond_19a

    .line 177
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    sget-object v2, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INITIATED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    # invokes: Lcom/ironsource/mediationsdk/MediationInitializer;->setInitStatus(Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;)V
    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$800(Lcom/ironsource/mediationsdk/MediationInitializer;Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;)V

    .line 180
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mInitStartTime:J
    invoke-static {v3}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$500(Lcom/ironsource/mediationsdk/MediationInitializer;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 181
    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->sendInitCompletedEvent(J)V

    .line 184
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    invoke-static {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$600(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getIntegration()Z

    move-result v0

    if-eqz v0, :cond_13b

    .line 185
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$300(Lcom/ironsource/mediationsdk/MediationInitializer;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validateIntegration(Landroid/app/Activity;)V

    .line 190
    :cond_13b
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    invoke-static {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$600(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getInitiatedAdUnits()Ljava/util/List;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mOnMediationInitializationListeners:Ljava/util/List;
    invoke-static {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$900(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_165

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;

    .line 192
    iget-object v3, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # invokes: Lcom/ironsource/mediationsdk/MediationInitializer;->wasInitRevived()Z
    invoke-static {v3}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1000(Lcom/ironsource/mediationsdk/MediationInitializer;)Z

    move-result v3

    invoke-interface {v2, v0, v3}, Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;->onInitSuccess(Ljava/util/List;Z)V

    goto :goto_14f

    .line 196
    :cond_165
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mSegmentListener:Lcom/ironsource/mediationsdk/sdk/SegmentListener;
    invoke-static {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1100(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/sdk/SegmentListener;

    move-result-object v0

    if-eqz v0, :cond_299

    .line 197
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    invoke-static {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$600(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getSegmetData()Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    move-result-object v0

    if-eqz v0, :cond_299

    .line 198
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ServerSegmetData;->getSegmentName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_299

    .line 199
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mSegmentListener:Lcom/ironsource/mediationsdk/sdk/SegmentListener;
    invoke-static {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1100(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/sdk/SegmentListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ServerSegmetData;->getSegmentName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/ironsource/mediationsdk/sdk/SegmentListener;->onSegmentReceived(Ljava/lang/String;)V

    goto/16 :goto_299

    .line 204
    :cond_19a
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mDidReportInitialAvailability:Z
    invoke-static {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1200(Lcom/ironsource/mediationsdk/MediationInitializer;)Z

    move-result v0

    if-nez v0, :cond_299

    .line 205
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    sget-object v1, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_FAILED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    # invokes: Lcom/ironsource/mediationsdk/MediationInitializer;->setInitStatus(Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;)V
    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$800(Lcom/ironsource/mediationsdk/MediationInitializer;Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;)V

    .line 206
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # setter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mDidReportInitialAvailability:Z
    invoke-static {v0, v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1202(Lcom/ironsource/mediationsdk/MediationInitializer;Z)Z

    .line 207
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mOnMediationInitializationListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$900(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_299

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;

    const-string v2, "serverResponseIsNotValid"

    .line 208
    invoke-interface {v1, v2}, Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;->onInitFailed(Ljava/lang/String;)V

    goto :goto_1b8

    .line 213
    :cond_1ca
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryCounter:I
    invoke-static {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1300(Lcom/ironsource/mediationsdk/MediationInitializer;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1f2

    .line 214
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # setter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mIsInProgressMoreThan15Secs:Z
    invoke-static {v0, v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1402(Lcom/ironsource/mediationsdk/MediationInitializer;Z)Z

    .line 215
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mOnMediationInitializationListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$900(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;

    .line 216
    invoke-interface {v1}, Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;->onStillInProgressAfter15Secs()V

    goto :goto_1e2

    .line 220
    :cond_1f2
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->isRecoverable:Z

    if-eqz v0, :cond_236

    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryCounter:I
    invoke-static {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1300(Lcom/ironsource/mediationsdk/MediationInitializer;)I

    move-result v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryLimit:I
    invoke-static {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1500(Lcom/ironsource/mediationsdk/MediationInitializer;)I

    move-result v1

    if-ge v0, v1, :cond_236

    .line 221
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # setter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mIsRevived:Z
    invoke-static {v0, v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1602(Lcom/ironsource/mediationsdk/MediationInitializer;Z)Z

    .line 222
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$700(Lcom/ironsource/mediationsdk/MediationInitializer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryDelay:I
    invoke-static {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1700(Lcom/ironsource/mediationsdk/MediationInitializer;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v3, v1

    invoke-virtual {v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 223
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryCounter:I
    invoke-static {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1300(Lcom/ironsource/mediationsdk/MediationInitializer;)I

    move-result v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryGrowLimit:I
    invoke-static {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1800(Lcom/ironsource/mediationsdk/MediationInitializer;)I

    move-result v1

    if-ge v0, v1, :cond_236

    .line 224
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryDelay:I
    invoke-static {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1700(Lcom/ironsource/mediationsdk/MediationInitializer;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    # setter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryDelay:I
    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1702(Lcom/ironsource/mediationsdk/MediationInitializer;I)I

    .line 226
    :cond_236
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->isRecoverable:Z

    if-eqz v0, :cond_248

    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryCounter:I
    invoke-static {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1300(Lcom/ironsource/mediationsdk/MediationInitializer;)I

    move-result v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryAvailabilityLimit:I
    invoke-static {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1900(Lcom/ironsource/mediationsdk/MediationInitializer;)I

    move-result v1

    if-ne v0, v1, :cond_28f

    .line 227
    :cond_248
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mDidReportInitialAvailability:Z
    invoke-static {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1200(Lcom/ironsource/mediationsdk/MediationInitializer;)Z

    move-result v0

    if-nez v0, :cond_28f

    .line 228
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # setter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mDidReportInitialAvailability:Z
    invoke-static {v0, v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1202(Lcom/ironsource/mediationsdk/MediationInitializer;Z)Z

    .line 229
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->reason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_261

    const-string v0, "noServerResponse"

    .line 230
    iput-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->reason:Ljava/lang/String;

    .line 232
    :cond_261
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mOnMediationInitializationListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$900(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;

    .line 233
    iget-object v3, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->reason:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;->onInitFailed(Ljava/lang/String;)V

    goto :goto_26b

    .line 236
    :cond_27d
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    sget-object v1, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_FAILED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    # invokes: Lcom/ironsource/mediationsdk/MediationInitializer;->setInitStatus(Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;)V
    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$800(Lcom/ironsource/mediationsdk/MediationInitializer;Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;)V

    .line 238
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "Mediation availability false reason: No server response"

    invoke-virtual {v0, v1, v3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 242
    :cond_28f
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # operator++ for: Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryCounter:I
    invoke-static {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1308(Lcom/ironsource/mediationsdk/MediationInitializer;)I
    :try_end_294
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_294} :catch_295

    goto :goto_299

    :catch_295
    move-exception v0

    .line 245
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_299
    :goto_299
    return-void
.end method
