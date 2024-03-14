.class public Lcom/helpshift/HelpshiftUnityAPI;
.super Ljava/lang/Object;
.source "HelpshiftUnityAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/HelpshiftUnityAPI$HelpshiftDelegate;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Helpshift_UnityAPI"

.field private static fileFormats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static storage:Lcom/helpshift/storage/HelpshiftUnityStorage;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 45
    invoke-static {}, Lcom/helpshift/HelpshiftUnityAPI;->getUnityMessageHandler()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .registers 1

    .line 45
    sget-object v0, Lcom/helpshift/HelpshiftUnityAPI;->fileFormats:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static checkIfConversationActive()V
    .registers 3

    const-string v0, "Helpshift_UnityAPI"

    const-string v1, "checkIfConversationActive"

    .line 304
    invoke-static {v0, v1}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-static {}, Lcom/helpshift/support/Support;->isConversationActive()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "true"

    goto :goto_12

    :cond_10
    const-string v0, "false"

    .line 307
    :goto_12
    invoke-static {}, Lcom/helpshift/HelpshiftUnityAPI;->getUnityMessageHandler()Ljava/lang/String;

    move-result-object v1

    const-string v2, "didCheckIfConversationActive"

    .line 308
    invoke-static {v1, v2, v0}, Lcom/helpshift/util/UnityUtils;->sendUnityMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static clearAnonymousUser()V
    .registers 0

    .line 109
    invoke-static {}, Lcom/helpshift/Core;->clearAnonymousUser()V

    return-void
.end method

.method public static clearBreadCrumbs()V
    .registers 0

    .line 125
    invoke-static {}, Lcom/helpshift/support/Support;->clearBreadCrumbs()V

    return-void
.end method

.method public static getNotificationCount(Z)I
    .registers 3

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNotificationCount : isAsync : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Helpshift_UnityAPI"

    invoke-static {v1, v0}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_26

    .line 241
    invoke-static {}, Lcom/helpshift/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lcom/helpshift/util/concurrent/ApiExecutor;

    move-result-object p0

    .line 242
    new-instance v0, Lcom/helpshift/HelpshiftUnityAPI$2;

    invoke-direct {v0}, Lcom/helpshift/HelpshiftUnityAPI$2;-><init>()V

    invoke-interface {p0, v0}, Lcom/helpshift/util/concurrent/ApiExecutor;->runSync(Ljava/lang/Runnable;)V

    const/4 p0, -0x1

    goto :goto_2e

    .line 260
    :cond_26
    invoke-static {}, Lcom/helpshift/support/Support;->getNotificationCount()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_2e
    return p0
.end method

.method public static getNotificationCount()Ljava/lang/Integer;
    .registers 1

    .line 234
    invoke-static {}, Lcom/helpshift/support/Support;->getNotificationCount()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static getSanitisedApiConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 152
    invoke-static {p0, p1}, Lcom/helpshift/util/ConfigParserUtil;->parseConfigDictionary(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    :cond_f
    return-object v0
.end method

.method private static getUnityMessageHandler()Ljava/lang/String;
    .registers 2

    .line 392
    sget-object v0, Lcom/helpshift/HelpshiftUnityAPI;->storage:Lcom/helpshift/storage/HelpshiftUnityStorage;

    const-string v1, "unityMessageHandler"

    invoke-virtual {v0, v1}, Lcom/helpshift/storage/HelpshiftUnityStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static handlePush(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 2

    .line 355
    invoke-static {p0, p1}, Lcom/helpshift/Core;->handlePush(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static handlePush(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 2

    .line 359
    invoke-static {p0, p1}, Lcom/helpshift/Core;->handlePush(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public static handlePush(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .line 364
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 370
    :cond_7
    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 371
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 372
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 373
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 374
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 375
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 376
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 380
    :cond_29
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 381
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 384
    invoke-static {p0, v0}, Lcom/helpshift/HelpshiftUnityAPI;->handlePush(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_34} :catch_35

    goto :goto_50

    :catch_35
    move-exception p0

    .line 387
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error handling push : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Helpshift_UnityAPI"

    invoke-static {p1, p0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_50
    return-void
.end method

.method public static handlePush(Landroid/content/Context;Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 202
    invoke-static {p0, p1}, Lcom/helpshift/Core;->handlePush(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method

.method public static install(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/exceptions/InstallException;
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/helpshift/HelpshiftUnityAPI;->install(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static install(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/exceptions/InstallException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 82
    invoke-static {p0, p4}, Lcom/helpshift/util/ConfigParserUtil;->parseConfigDictionary(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p4

    .line 83
    invoke-static {p0, p1, p2, p3, p4}, Lcom/helpshift/HelpshiftUnityAPI;->install(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static install(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/exceptions/InstallException;
        }
    .end annotation

    const-string v0, "supportedFileFormats"

    .line 59
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_e

    .line 61
    check-cast v0, Ljava/util/ArrayList;

    sput-object v0, Lcom/helpshift/HelpshiftUnityAPI;->fileFormats:Ljava/util/ArrayList;

    .line 64
    :cond_e
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/storage/HelpshiftUnityStorage;->getInstance(Landroid/content/Context;)Lcom/helpshift/storage/HelpshiftUnityStorage;

    move-result-object v0

    sput-object v0, Lcom/helpshift/HelpshiftUnityAPI;->storage:Lcom/helpshift/storage/HelpshiftUnityStorage;

    .line 65
    new-instance v0, Lcom/helpshift/UnityPluginAPIEventsBridge;

    sget-object v1, Lcom/helpshift/HelpshiftUnityAPI;->storage:Lcom/helpshift/storage/HelpshiftUnityStorage;

    invoke-direct {v0, v1}, Lcom/helpshift/UnityPluginAPIEventsBridge;-><init>(Lcom/helpshift/storage/HelpshiftUnityStorage;)V

    invoke-static {v0}, Lcom/helpshift/PluginEventBridge;->setPluginEventsAPI(Lcom/helpshift/PluginEventBridge$PluginEventsAPI;)V

    .line 66
    invoke-static {}, Lcom/helpshift/support/Support;->getInstance()Lcom/helpshift/support/Support;

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/Core;->init(Lcom/helpshift/Core$ApiProvider;)V

    .line 67
    invoke-static {p0, p1, p2, p3, p4}, Lcom/helpshift/Core;->install(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 69
    sget-object p0, Lcom/helpshift/HelpshiftUnityAPI;->storage:Lcom/helpshift/storage/HelpshiftUnityStorage;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v1, "installConfig"

    invoke-virtual {p0, v1, v0}, Lcom/helpshift/storage/HelpshiftUnityStorage;->putMap(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 70
    sget-object p0, Lcom/helpshift/HelpshiftUnityAPI;->storage:Lcom/helpshift/storage/HelpshiftUnityStorage;

    const-string v0, "apiKey"

    invoke-virtual {p0, v0, p1}, Lcom/helpshift/storage/HelpshiftUnityStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sget-object p0, Lcom/helpshift/HelpshiftUnityAPI;->storage:Lcom/helpshift/storage/HelpshiftUnityStorage;

    const-string p1, "domainName"

    invoke-virtual {p0, p1, p2}, Lcom/helpshift/storage/HelpshiftUnityStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-object p0, Lcom/helpshift/HelpshiftUnityAPI;->storage:Lcom/helpshift/storage/HelpshiftUnityStorage;

    const-string p1, "appId"

    invoke-virtual {p0, p1, p3}, Lcom/helpshift/storage/HelpshiftUnityStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "unityGameObject"

    .line 74
    invoke-interface {p4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 75
    sget-object p1, Lcom/helpshift/HelpshiftUnityAPI;->storage:Lcom/helpshift/storage/HelpshiftUnityStorage;

    const-string p2, "unityMessageHandler"

    invoke-virtual {p1, p2, p0}, Lcom/helpshift/storage/HelpshiftUnityStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Helpshift_UnityAPI"

    const-string p1, "Install called."

    .line 77
    invoke-static {p0, p1}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static leaveBreadCrumb(Ljava/lang/String;)V
    .registers 1

    .line 121
    invoke-static {p0}, Lcom/helpshift/support/Support;->leaveBreadCrumb(Ljava/lang/String;)V

    return-void
.end method

.method public static login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 95
    invoke-static {p0, p1, p2}, Lcom/helpshift/Core;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static loginHelpshiftUser(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 99
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpshift/util/HSJSONUtils;->toMap(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object p0

    .line 100
    new-instance v0, Lcom/helpshift/HelpshiftUser$Builder;

    const-string v1, "identifier"

    .line 101
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "email"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/helpshift/HelpshiftUser$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "authToken"

    .line 102
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/helpshift/HelpshiftUser$Builder;->setAuthToken(Ljava/lang/String;)Lcom/helpshift/HelpshiftUser$Builder;

    const-string v1, "name"

    .line 103
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/helpshift/HelpshiftUser$Builder;->setName(Ljava/lang/String;)Lcom/helpshift/HelpshiftUser$Builder;

    .line 104
    invoke-virtual {v0}, Lcom/helpshift/HelpshiftUser$Builder;->build()Lcom/helpshift/HelpshiftUser;

    move-result-object p0

    .line 105
    invoke-static {p0}, Lcom/helpshift/Core;->login(Lcom/helpshift/HelpshiftUser;)V

    return-void
.end method

.method public static logout()V
    .registers 0

    .line 113
    invoke-static {}, Lcom/helpshift/Core;->logout()V

    return-void
.end method

.method public static registerDelegates()V
    .registers 2

    .line 312
    new-instance v0, Lcom/helpshift/HelpshiftUnityAPI$HelpshiftDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/helpshift/HelpshiftUnityAPI$HelpshiftDelegate;-><init>(Lcom/helpshift/HelpshiftUnityAPI$1;)V

    .line 313
    invoke-static {v0}, Lcom/helpshift/support/Support;->setDelegate(Lcom/helpshift/support/Support$Delegate;)V

    return-void
.end method

.method public static registerDeviceToken(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    .line 91
    invoke-static {p0, p1}, Lcom/helpshift/Core;->registerDeviceToken(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static requestUnreadMessagesCount(Z)V
    .registers 4

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestUnreadMessagesCount : isAsync : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Helpshift_UnityAPI"

    invoke-static {v1, v0}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_25

    .line 268
    invoke-static {}, Lcom/helpshift/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lcom/helpshift/util/concurrent/ApiExecutor;

    move-result-object p0

    .line 269
    new-instance v0, Lcom/helpshift/HelpshiftUnityAPI$3;

    invoke-direct {v0}, Lcom/helpshift/HelpshiftUnityAPI$3;-><init>()V

    invoke-interface {p0, v0}, Lcom/helpshift/util/concurrent/ApiExecutor;->runSync(Ljava/lang/Runnable;)V

    goto :goto_47

    .line 297
    :cond_25
    invoke-static {}, Lcom/helpshift/support/Support;->getNotificationCount()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 298
    invoke-static {}, Lcom/helpshift/HelpshiftUnityAPI;->getUnityMessageHandler()Ljava/lang/String;

    move-result-object v0

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "didReceiveUnreadMessagesCount"

    invoke-static {v0, v1, p0}, Lcom/helpshift/util/UnityUtils;->sendUnityMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_47
    return-void
.end method

.method public static setMetaData(Ljava/lang/String;)V
    .registers 2

    .line 323
    new-instance v0, Lcom/helpshift/HelpshiftUnityAPI$4;

    invoke-direct {v0, p0}, Lcom/helpshift/HelpshiftUnityAPI$4;-><init>(Ljava/lang/String;)V

    .line 351
    invoke-static {v0}, Lcom/helpshift/support/Support;->setMetadataCallback(Lcom/helpshift/support/Callable;)V

    return-void
.end method

.method public static setNameAndEmail(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 87
    invoke-static {p0, p1}, Lcom/helpshift/Core;->setNameAndEmail(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setSDKLanguage(Ljava/lang/String;)V
    .registers 1

    .line 129
    invoke-static {p0}, Lcom/helpshift/Core;->setSDKLanguage(Ljava/lang/String;)V

    return-void
.end method

.method public static setTheme(Ljava/lang/String;)V
    .registers 4

    .line 133
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_e

    const-string p0, "Helpshift_UnityAPI"

    const-string v0, "setTheme API called before Helpshift install call"

    .line 135
    invoke-static {p0, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    const/4 v1, 0x0

    if-eqz p0, :cond_1b

    .line 144
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "style"

    .line 141
    invoke-static {v0, p0, v2, v1}, Lcom/helpshift/util/ApplicationUtil;->getResourceIdFromName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 146
    :cond_1b
    invoke-static {v1}, Lcom/helpshift/Core;->setTheme(I)V

    return-void
.end method

.method public static setUserIdentifier(Ljava/lang/String;)V
    .registers 1

    .line 117
    invoke-static {p0}, Lcom/helpshift/support/Support;->setUserIdentifier(Ljava/lang/String;)V

    return-void
.end method

.method public static showAlertToRateApp(Ljava/lang/String;)V
    .registers 2

    .line 207
    new-instance v0, Lcom/helpshift/HelpshiftUnityAPI$1;

    invoke-direct {v0}, Lcom/helpshift/HelpshiftUnityAPI$1;-><init>()V

    .line 230
    invoke-static {p0, v0}, Lcom/helpshift/support/Support;->showAlertToRateApp(Ljava/lang/String;Lcom/helpshift/support/AlertToRateAppListener;)V

    return-void
.end method

.method public static showConversationUnity(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 163
    invoke-static {p0, p1}, Lcom/helpshift/HelpshiftUnityAPI;->getSanitisedApiConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/helpshift/support/Support;->showConversation(Landroid/app/Activity;Ljava/util/Map;)V

    return-void
.end method

.method public static showDynamicFormFromDataJson(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, "Helpshift_UnityAPI"

    .line 185
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDynamicFormFromDataJson : flows : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 187
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 188
    :goto_21
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_35

    .line 189
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 190
    invoke-static {v3}, Lcom/helpshift/util/HSJSONUtils;->toMap(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v3

    .line 191
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 194
    :cond_35
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/helpshift/util/ConfigParserUtil;->parseFlowList(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 193
    invoke-static {p0, p1, p2}, Lcom/helpshift/support/Support;->showDynamicForm(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;)V
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_40} :catch_41

    goto :goto_47

    :catch_41
    move-exception p0

    const-string p1, "JSON Exception in parsing dynamic form data : "

    .line 197
    invoke-static {v0, p1, p0}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_47
    return-void
.end method

.method public static showFAQSectionUnity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 169
    invoke-static {p0, p2}, Lcom/helpshift/HelpshiftUnityAPI;->getSanitisedApiConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/helpshift/support/Support;->showFAQSection(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static showFAQsUnity(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 180
    invoke-static {p0, p1}, Lcom/helpshift/HelpshiftUnityAPI;->getSanitisedApiConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/helpshift/support/Support;->showFAQs(Landroid/app/Activity;Ljava/util/Map;)V

    return-void
.end method

.method public static showSingleFAQUnity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 175
    invoke-static {p0, p2}, Lcom/helpshift/HelpshiftUnityAPI;->getSanitisedApiConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/helpshift/support/Support;->showSingleFAQ(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
