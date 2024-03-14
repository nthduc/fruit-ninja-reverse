.class public Lcom/chartboost/sdk/impl/v0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/Privacy/model/DataUseConsent;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v0;->a:Ljava/util/HashMap;

    .line 3
    iput-object p1, p0, Lcom/chartboost/sdk/impl/v0;->b:Landroid/content/SharedPreferences;

    .line 4
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/v0;->c()V

    return-void
.end method

.method private a(Landroid/content/SharedPreferences;Lorg/json/JSONArray;)V
    .registers 4

    if-eqz p1, :cond_15

    if-eqz p2, :cond_15

    .line 7
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 8
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "privacy_standards"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 9
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_15
    return-void
.end method

.method private c()V
    .registers 11

    const-string v0, "consent"

    const-string v1, "privacyStandard"

    .line 1
    iget-object v2, p0, Lcom/chartboost/sdk/impl/v0;->b:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_97

    const-string v3, "privacy_standards"

    const-string v4, ""

    .line 2
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_97

    .line 3
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_97

    .line 5
    :try_start_18
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v4, 0x0

    :goto_22
    if-ge v4, v2, :cond_97

    .line 8
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 9
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "gdpr"

    .line 12
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_61

    .line 16
    sget-object v5, Lcom/chartboost/sdk/Privacy/model/GDPR$GDPR_CONSENT;->BEHAVIORAL:Lcom/chartboost/sdk/Privacy/model/GDPR$GDPR_CONSENT;

    invoke-virtual {v5}, Lcom/chartboost/sdk/Privacy/model/GDPR$GDPR_CONSENT;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 17
    new-instance v8, Lcom/chartboost/sdk/Privacy/model/GDPR;

    sget-object v5, Lcom/chartboost/sdk/Privacy/model/GDPR$GDPR_CONSENT;->BEHAVIORAL:Lcom/chartboost/sdk/Privacy/model/GDPR$GDPR_CONSENT;

    invoke-direct {v8, v5}, Lcom/chartboost/sdk/Privacy/model/GDPR;-><init>(Lcom/chartboost/sdk/Privacy/model/GDPR$GDPR_CONSENT;)V

    goto :goto_6e

    .line 18
    :cond_4d
    sget-object v5, Lcom/chartboost/sdk/Privacy/model/GDPR$GDPR_CONSENT;->NON_BEHAVIORAL:Lcom/chartboost/sdk/Privacy/model/GDPR$GDPR_CONSENT;

    invoke-virtual {v5}, Lcom/chartboost/sdk/Privacy/model/GDPR$GDPR_CONSENT;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 19
    new-instance v8, Lcom/chartboost/sdk/Privacy/model/GDPR;

    sget-object v5, Lcom/chartboost/sdk/Privacy/model/GDPR$GDPR_CONSENT;->NON_BEHAVIORAL:Lcom/chartboost/sdk/Privacy/model/GDPR$GDPR_CONSENT;

    invoke-direct {v8, v5}, Lcom/chartboost/sdk/Privacy/model/GDPR;-><init>(Lcom/chartboost/sdk/Privacy/model/GDPR$GDPR_CONSENT;)V

    goto :goto_6e

    .line 22
    :cond_61
    new-instance v8, Lcom/chartboost/sdk/Privacy/model/Custom;

    .line 23
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 24
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v7, v5}, Lcom/chartboost/sdk/Privacy/model/Custom;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6e
    :goto_6e
    if-eqz v8, :cond_7a

    .line 28
    iget-object v5, p0, Lcom/chartboost/sdk/impl/v0;->a:Ljava/util/HashMap;

    invoke-interface {v8}, Lcom/chartboost/sdk/Privacy/model/DataUseConsent;->getPrivacyStandard()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_79
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_79} :catch_93

    goto :goto_90

    :cond_7a
    const-string v5, "Chartboost"

    .line 30
    :try_start_7c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to load consent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_90
    .catch Lorg/json/JSONException; {:try_start_7c .. :try_end_90} :catch_93

    :goto_90
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :catch_93
    move-exception v0

    .line 34
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_97
    return-void
.end method

.method private d()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v0;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2c

    .line 2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/chartboost/sdk/impl/v0;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/Privacy/model/DataUseConsent;

    .line 4
    invoke-interface {v2}, Lcom/chartboost/sdk/Privacy/model/DataUseConsent;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_13

    .line 6
    :cond_27
    iget-object v1, p0, Lcom/chartboost/sdk/impl/v0;->b:Landroid/content/SharedPreferences;

    invoke-direct {p0, v1, v0}, Lcom/chartboost/sdk/impl/v0;->a(Landroid/content/SharedPreferences;Lorg/json/JSONArray;)V

    :cond_2c
    return-void
.end method


# virtual methods
.method public a()Lcom/chartboost/sdk/Privacy/model/DataUseConsent;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v0;->a:Ljava/util/HashMap;

    const-string v1, "gdpr"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Privacy/model/DataUseConsent;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/chartboost/sdk/Privacy/model/DataUseConsent;
    .registers 3

    .line 5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v0;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chartboost/sdk/Privacy/model/DataUseConsent;

    .line 6
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/v0;->d()V

    return-object p1
.end method

.method public a(Lcom/chartboost/sdk/Privacy/model/DataUseConsent;)V
    .registers 4

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Added privacy standard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/chartboost/sdk/Privacy/model/DataUseConsent;->getPrivacyStandard()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with consent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/chartboost/sdk/Privacy/model/DataUseConsent;->getConsent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Chartboost"

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v0;->a:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/chartboost/sdk/Privacy/model/DataUseConsent;->getPrivacyStandard()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/v0;->d()V

    return-void
.end method

.method public b()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/Privacy/model/DataUseConsent;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v0;->a:Ljava/util/HashMap;

    return-object v0
.end method
