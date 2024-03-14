.class public Lcom/ironsource/sdk/IronSourceNetwork;
.super Ljava/lang/Object;
.source "IronSourceNetwork.java"


# static fields
.field private static ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

.field private static mConsentParams:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized applyConsentInfo(Lorg/json/JSONObject;)V
    .registers 3

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 173
    :try_start_3
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_14

    if-nez v1, :cond_9

    .line 174
    monitor-exit v0

    return-void

    :cond_9
    if-nez p0, :cond_d

    .line 178
    monitor-exit v0

    return-void

    .line 180
    :cond_d
    :try_start_d
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    invoke-interface {v1, p0}, Lcom/ironsource/sdk/IronSourceNetworkAPI;->updateConsentInfo(Lorg/json/JSONObject;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_14

    .line 181
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized createBanner(Landroid/app/Activity;Lcom/ironsource/sdk/ISAdSize;)Lcom/ironsource/sdk/ISNAdView/ISNAdView;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 263
    :try_start_3
    invoke-static {}, Lcom/ironsource/sdk/IronSourceNetwork;->validateInitSDK()V

    .line 264
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    invoke-interface {v1, p0, p1}, Lcom/ironsource/sdk/IronSourceNetworkAPI;->createBanner(Landroid/app/Activity;Lcom/ironsource/sdk/ISAdSize;)Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    move-result-object p0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v0

    return-object p0

    :catchall_e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getOfferWallCredits(Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 238
    :try_start_3
    invoke-static {}, Lcom/ironsource/sdk/IronSourceNetwork;->validateInitSDK()V

    .line 239
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    invoke-interface {v1, p0}, Lcom/ironsource/sdk/IronSourceNetworkAPI;->getOfferWallCredits(Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 242
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getRawToken(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 3

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 214
    :try_start_3
    invoke-static {}, Lcom/ironsource/sdk/service/TokenService;->getInstance()Lcom/ironsource/sdk/service/TokenService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ironsource/sdk/service/TokenService;->getRawToken(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getToken(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 205
    :try_start_3
    invoke-static {}, Lcom/ironsource/sdk/service/TokenService;->getInstance()Lcom/ironsource/sdk/service/TokenService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ironsource/sdk/service/TokenService;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    .line 103
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized initBanner(Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnBannerListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/sdk/listeners/OnBannerListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 247
    :try_start_3
    invoke-static {}, Lcom/ironsource/sdk/IronSourceNetwork;->validateInitSDK()V

    .line 248
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    invoke-interface {v1, p0, p1, p2}, Lcom/ironsource/sdk/IronSourceNetworkAPI;->initBanner(Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnBannerListener;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 253
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized initOfferWall(Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/sdk/listeners/OnOfferWallListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 222
    :try_start_3
    invoke-static {}, Lcom/ironsource/sdk/IronSourceNetwork;->validateInitSDK()V

    .line 223
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    invoke-interface {v1, p0, p1}, Lcom/ironsource/sdk/IronSourceNetworkAPI;->initOfferWall(Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 227
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized initSDK(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 43
    :try_start_3
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    if-nez v1, :cond_18

    .line 44
    invoke-static {p3}, Lcom/ironsource/sdk/utils/SDKUtils;->setInitSDKParams(Ljava/util/Map;)V

    .line 46
    invoke-static {p0, p2, p1, p3}, Lcom/ironsource/sdk/IronSourceNetwork;->initSDK5EventTracker(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 47
    invoke-static {p0, p1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->createInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/sdk/IronSourceNetworkAPI;

    move-result-object p0

    sput-object p0, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    .line 53
    sget-object p0, Lcom/ironsource/sdk/IronSourceNetwork;->mConsentParams:Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/ironsource/sdk/IronSourceNetwork;->applyConsentInfo(Lorg/json/JSONObject;)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    .line 55
    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static initSDK5EventTracker(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getControllerConfigAsJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "networkConfig"

    .line 61
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1d

    const-string v1, "events"

    .line 64
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/ironsource/sdk/Events/ISNEventsUtils;->createConfigurations(Lorg/json/JSONObject;)Lcom/ironsource/eventsTracker/EventsConfiguration;

    move-result-object v0

    .line 67
    invoke-static {p0, p1, p2, p3}, Lcom/ironsource/sdk/Events/ISNEventsUtils;->createEventsBaseData(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/ironsource/sdk/Events/ISNEventsBaseData;

    move-result-object p0

    .line 65
    invoke-static {v0, p0}, Lcom/ironsource/sdk/Events/ISNEventsTracker;->init(Lcom/ironsource/eventsTracker/EventsConfiguration;Lcom/ironsource/sdk/Events/ISNEventsBaseData;)V

    :cond_1d
    return-void
.end method

.method public static declared-synchronized isAdAvailableForInstance(Lcom/ironsource/sdk/IronSourceAdInstance;)Z
    .registers 3

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 137
    :try_start_3
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_12

    if-nez v1, :cond_a

    const/4 p0, 0x0

    .line 138
    monitor-exit v0

    return p0

    .line 140
    :cond_a
    :try_start_a
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    invoke-interface {v1, p0}, Lcom/ironsource/sdk/IronSourceNetworkAPI;->isAdAvailable(Lcom/ironsource/sdk/IronSourceAdInstance;)Z

    move-result p0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_12

    monitor-exit v0

    return p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized loadAd(Lcom/ironsource/sdk/IronSourceAdInstance;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    const/4 v1, 0x0

    .line 107
    :try_start_4
    invoke-static {p0, v1}, Lcom/ironsource/sdk/IronSourceNetwork;->loadAd(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    .line 111
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized loadAd(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/IronSourceAdInstance;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 92
    :try_start_3
    invoke-static {}, Lcom/ironsource/sdk/IronSourceNetwork;->validateInitSDK()V

    .line 93
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    invoke-interface {v1, p0, p1}, Lcom/ironsource/sdk/IronSourceNetworkAPI;->loadAd(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 97
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized loadBanner(Lorg/json/JSONObject;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 256
    :try_start_3
    invoke-static {}, Lcom/ironsource/sdk/IronSourceNetwork;->validateInitSDK()V

    .line 257
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    invoke-interface {v1, p0}, Lcom/ironsource/sdk/IronSourceNetworkAPI;->loadBanner(Lorg/json/JSONObject;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 260
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized onPause(Landroid/app/Activity;)V
    .registers 3

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 147
    :try_start_3
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_10

    if-nez v1, :cond_9

    .line 148
    monitor-exit v0

    return-void

    .line 151
    :cond_9
    :try_start_9
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    invoke-interface {v1, p0}, Lcom/ironsource/sdk/IronSourceNetworkAPI;->onPause(Landroid/app/Activity;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    .line 152
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized onResume(Landroid/app/Activity;)V
    .registers 3

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 158
    :try_start_3
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_10

    if-nez v1, :cond_9

    .line 159
    monitor-exit v0

    return-void

    .line 161
    :cond_9
    :try_start_9
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    invoke-interface {v1, p0}, Lcom/ironsource/sdk/IronSourceNetworkAPI;->onResume(Landroid/app/Activity;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    .line 162
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized release(Landroid/app/Activity;)V
    .registers 3

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 191
    :try_start_3
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_10

    if-nez v1, :cond_9

    .line 192
    monitor-exit v0

    return-void

    .line 194
    :cond_9
    :try_start_9
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    invoke-interface {v1, p0}, Lcom/ironsource/sdk/IronSourceNetworkAPI;->release(Landroid/app/Activity;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    .line 195
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized showAd(Lcom/ironsource/sdk/IronSourceAdInstance;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    const/4 v1, 0x0

    .line 125
    :try_start_4
    invoke-static {p0, v1}, Lcom/ironsource/sdk/IronSourceNetwork;->showAd(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    .line 129
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized showAd(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/IronSourceAdInstance;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 117
    :try_start_3
    invoke-static {}, Lcom/ironsource/sdk/IronSourceNetwork;->validateInitSDK()V

    .line 118
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    invoke-interface {v1, p0, p1}, Lcom/ironsource/sdk/IronSourceNetworkAPI;->showAd(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 122
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized showOfferWall(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 230
    :try_start_3
    invoke-static {}, Lcom/ironsource/sdk/IronSourceNetwork;->validateInitSDK()V

    .line 231
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    invoke-interface {v1, p0}, Lcom/ironsource/sdk/IronSourceNetworkAPI;->showOfferWall(Ljava/util/Map;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 234
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized updateConsentInfo(Lorg/json/JSONObject;)V
    .registers 2

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 168
    :try_start_3
    sput-object p0, Lcom/ironsource/sdk/IronSourceNetwork;->mConsentParams:Lorg/json/JSONObject;

    .line 169
    invoke-static {p0}, Lcom/ironsource/sdk/IronSourceNetwork;->applyConsentInfo(Lorg/json/JSONObject;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 170
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized updateMetadata(Lorg/json/JSONObject;)V
    .registers 3

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 187
    :try_start_3
    invoke-static {}, Lcom/ironsource/sdk/service/TokenService;->getInstance()Lcom/ironsource/sdk/service/TokenService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ironsource/sdk/service/TokenService;->updateMetaData(Lorg/json/JSONObject;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 188
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized validateInitSDK()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 74
    :try_start_3
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_11

    if-eqz v1, :cond_9

    .line 77
    monitor-exit v0

    return-void

    .line 75
    :cond_9
    :try_start_9
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Call initSDK first"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v1

    monitor-exit v0

    throw v1
.end method
