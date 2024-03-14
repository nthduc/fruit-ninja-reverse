.class public Lcom/ironsource/sdk/handlers/BackButtonHandler;
.super Ljava/lang/Object;
.source "BackButtonHandler.java"


# static fields
.field public static mInstance:Lcom/ironsource/sdk/handlers/BackButtonHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ironsource/sdk/handlers/BackButtonHandler;
    .registers 1

    .line 16
    sget-object v0, Lcom/ironsource/sdk/handlers/BackButtonHandler;->mInstance:Lcom/ironsource/sdk/handlers/BackButtonHandler;

    if-nez v0, :cond_9

    .line 17
    new-instance v0, Lcom/ironsource/sdk/handlers/BackButtonHandler;

    invoke-direct {v0}, Lcom/ironsource/sdk/handlers/BackButtonHandler;-><init>()V

    :cond_9
    return-object v0
.end method


# virtual methods
.method public handleBackButton(Landroid/app/Activity;)Z
    .registers 6

    .line 27
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getBackButtonState()Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;

    move-result-object v0

    .line 29
    sget-object v1, Lcom/ironsource/sdk/handlers/BackButtonHandler$1;->$SwitchMap$com$ironsource$sdk$data$SSAEnums$BackButtonState:[I

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_35

    const/4 v3, 0x2

    if-eq v0, v3, :cond_35

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1b

    return v2

    .line 38
    :cond_1b
    :try_start_1b
    invoke-static {p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getInstance(Landroid/app/Activity;)Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getControllerManager()Lcom/ironsource/sdk/controller/ControllerManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/ControllerManager;->getController()Lcom/ironsource/sdk/controller/IronSourceController;

    move-result-object p1

    check-cast p1, Lcom/ironsource/sdk/controller/WebController;

    if-eqz p1, :cond_30

    const-string v0, "back"

    .line 42
    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/controller/WebController;->nativeNavigationPressed(Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_30} :catch_31

    :cond_30
    return v1

    :catch_31
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_35
    return v2
.end method
