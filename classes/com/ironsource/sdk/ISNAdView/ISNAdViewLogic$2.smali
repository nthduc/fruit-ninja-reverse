.class Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic$2;
.super Lorg/json/JSONObject;
.source "ISNAdViewLogic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->buildParamsObjectForAdViewVisibility()Lorg/json/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/lang/Error;
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic$2;->this$0:Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string p1, "configs"

    .line 176
    iget-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic$2;->this$0:Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    iget-object v1, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic$2;->this$0:Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    # getter for: Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->mAdViewConfiguration:Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->access$600(Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic$2;->this$0:Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    # getter for: Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->mAdViewVisibilityParameters:Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;
    invoke-static {v2}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->access$700(Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;)Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;->collectVisibilityParameters()Lorg/json/JSONObject;

    move-result-object v2

    # invokes: Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->extendConfigurationWithVisibilityParams(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    invoke-static {v0, v1, v2}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->access$800(Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic$2;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception p1

    .line 178
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_25
    return-void
.end method
