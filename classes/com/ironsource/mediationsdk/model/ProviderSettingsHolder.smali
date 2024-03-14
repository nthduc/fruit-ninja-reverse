.class public Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;
.super Ljava/lang/Object;
.source "ProviderSettingsHolder.java"


# static fields
.field private static mInstance:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;


# instance fields
.field private mProviderSettingsArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/mediationsdk/model/ProviderSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->mProviderSettingsArrayList:Ljava/util/ArrayList;

    return-void
.end method

.method public static declared-synchronized getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;
    .registers 2

    const-class v0, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    monitor-enter v0

    .line 21
    :try_start_3
    sget-object v1, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->mInstance:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    if-nez v1, :cond_e

    .line 22
    new-instance v1, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    invoke-direct {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;-><init>()V

    sput-object v1, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->mInstance:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    .line 24
    :cond_e
    sget-object v1, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->mInstance:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addProviderSettings(Lcom/ironsource/mediationsdk/model/ProviderSettings;)V
    .registers 3

    if-eqz p1, :cond_7

    .line 33
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->mProviderSettingsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public containsProviderSettings(Ljava/lang/String;)Z
    .registers 4

    .line 75
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->mProviderSettingsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/model/ProviderSettings;

    .line 76
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method public fillSubProvidersDetails()V
    .registers 6

    .line 90
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->mProviderSettingsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/model/ProviderSettings;

    .line 91
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->isMultipleInstances()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    const/4 v2, 0x1

    goto :goto_25

    :cond_24
    const/4 v2, 0x0

    :goto_25
    if-eqz v2, :cond_6

    .line 95
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v2

    .line 98
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setInterstitialSettings(Lorg/json/JSONObject;)V

    .line 99
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setRewardedVideoSettings(Lorg/json/JSONObject;)V

    .line 100
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setBannerSettings(Lorg/json/JSONObject;)V

    goto :goto_6

    :cond_5d
    return-void
.end method

.method public getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;
    .registers 5

    .line 37
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->mProviderSettingsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/model/ProviderSettings;

    .line 38
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    .line 42
    :cond_1d
    new-instance v0, Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-direct {v0, p1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->addProviderSettings(Lcom/ironsource/mediationsdk/model/ProviderSettings;)V

    return-object v0
.end method

.method public getProviderSettingsArrayList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/mediationsdk/model/ProviderSettings;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->mProviderSettingsArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getProviderSettingsByReflectionName(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 54
    :try_start_5
    iget-object v1, p0, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->mProviderSettingsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/model/ProviderSettings;

    .line 55
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 56
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_4a

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_4a

    .line 57
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 58
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_4a
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_73

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_73

    .line 60
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_73

    .line 61
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_73
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_b

    .line 63
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 64
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9c} :catch_9e

    goto/16 :goto_b

    :catch_9e
    :cond_9e
    return-object v0
.end method
