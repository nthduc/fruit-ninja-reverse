.class public Lcom/chartboost/sdk/impl/x0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chartboost/sdk/Privacy/model/DataUseConsent;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/Privacy/model/DataUseConsent;

    .line 4
    invoke-interface {v1}, Lcom/chartboost/sdk/Privacy/model/DataUseConsent;->getPrivacyStandard()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-interface {v1}, Lcom/chartboost/sdk/Privacy/model/DataUseConsent;->getConsent()Ljava/lang/String;

    move-result-object v1

    .line 7
    :try_start_1d
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_9

    :catch_21
    move-exception v1

    .line 9
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_9

    :cond_26
    return-object v0
.end method
