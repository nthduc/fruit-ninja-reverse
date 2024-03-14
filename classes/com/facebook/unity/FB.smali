.class public Lcom/facebook/unity/FB;
.super Ljava/lang/Object;
.source "FB.java"


# static fields
.field static final FB_UNITY_OBJECT:Ljava/lang/String; = "UnityFacebookSDKPlugin"

.field static ShareDialogMode:Lcom/facebook/share/widget/ShareDialog$Mode; = null

.field static final TAG:Ljava/lang/String; = "com.facebook.unity.FB"

.field private static activateAppCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

.field private static clearedIntent:Landroid/content/Intent;

.field private static intent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/unity/FB;->activateAppCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    sget-object v0, Lcom/facebook/share/widget/ShareDialog$Mode;->AUTOMATIC:Lcom/facebook/share/widget/ShareDialog$Mode;

    sput-object v0, Lcom/facebook/unity/FB;->ShareDialogMode:Lcom/facebook/share/widget/ShareDialog$Mode;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ActivateApp()V
    .registers 1
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .line 513
    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->activateApp(Landroid/content/Context;)V

    return-void
.end method

.method private static ActivateApp(Ljava/lang/String;)V
    .registers 4

    .line 624
    sget-object v0, Lcom/facebook/unity/FB;->activateAppCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_12

    .line 625
    sget-object p0, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    const-string v0, "Activite app only needs to be called once"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 628
    :cond_12
    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz p0, :cond_20

    .line 631
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 630
    invoke-static {v1, p0}, Lcom/facebook/appevents/AppEventsLogger;->activateApp(Landroid/app/Application;Ljava/lang/String;)V

    goto :goto_27

    .line 634
    :cond_20
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->activateApp(Landroid/app/Application;)V

    .line 639
    :goto_27
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/facebook/unity/FB$7;

    invoke-direct {v1, v0}, Lcom/facebook/unity/FB$7;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static AppRequest(Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .line 207
    sget-object v0, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppRequest("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/facebook/unity/FBUnityGameRequestActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    invoke-static {p0}, Lcom/facebook/unity/UnityParams;->parse(Ljava/lang/String;)Lcom/facebook/unity/UnityParams;

    move-result-object p0

    .line 210
    invoke-virtual {p0}, Lcom/facebook/unity/UnityParams;->getStringParams()Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "game_request_params"

    .line 211
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 212
    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static ClearAppLink()V
    .registers 2
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .line 450
    sget-object v0, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    const-string v1, "ClearAppLink"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    sget-object v0, Lcom/facebook/unity/FB;->intent:Landroid/content/Intent;

    sput-object v0, Lcom/facebook/unity/FB;->clearedIntent:Landroid/content/Intent;

    return-void
.end method

.method public static FeedShare(Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .line 248
    sget-object v0, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FeedShare("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-static {p0}, Lcom/facebook/unity/UnityParams;->parse(Ljava/lang/String;)Lcom/facebook/unity/UnityParams;

    move-result-object p0

    .line 250
    invoke-virtual {p0}, Lcom/facebook/unity/UnityParams;->getStringParams()Landroid/os/Bundle;

    move-result-object p0

    .line 251
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/facebook/unity/FBUnityDialogsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    sget-object v1, Lcom/facebook/share/widget/ShareDialog$Mode;->FEED:Lcom/facebook/share/widget/ShareDialog$Mode;

    const-string v2, "dialog_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "feed_dialog_params"

    .line 253
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 254
    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static FetchDeferredAppLinkData(Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    const-string v0, "FetchDeferredAppLinkData"

    .line 389
    invoke-static {v0, p0}, Lcom/facebook/unity/FB;->LogMethodCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-static {p0}, Lcom/facebook/unity/UnityParams;->parse(Ljava/lang/String;)Lcom/facebook/unity/UnityParams;

    move-result-object p0

    .line 392
    new-instance v0, Lcom/facebook/unity/UnityMessage;

    const-string v1, "OnFetchDeferredAppLinkComplete"

    invoke-direct {v0, v1}, Lcom/facebook/unity/UnityMessage;-><init>(Ljava/lang/String;)V

    const-string v1, "callback_id"

    .line 393
    invoke-virtual {p0, v1}, Lcom/facebook/unity/UnityParams;->hasString(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 394
    invoke-virtual {p0, v1}, Lcom/facebook/unity/UnityParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 398
    :cond_23
    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object p0

    new-instance v1, Lcom/facebook/unity/FB$3;

    invoke-direct {v1, v0}, Lcom/facebook/unity/FB$3;-><init>(Lcom/facebook/unity/UnityMessage;)V

    .line 397
    invoke-static {p0, v1}, Lcom/facebook/applinks/AppLinkData;->fetchDeferredAppLinkData(Landroid/content/Context;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V

    return-void
.end method

.method public static GameGroupCreate(Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .line 217
    sget-object v0, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GameGroupCreate("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-static {p0}, Lcom/facebook/unity/UnityParams;->parse(Ljava/lang/String;)Lcom/facebook/unity/UnityParams;

    move-result-object p0

    .line 219
    invoke-virtual {p0}, Lcom/facebook/unity/UnityParams;->getStringParams()Landroid/os/Bundle;

    move-result-object p0

    .line 220
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/facebook/unity/FBUnityCreateGameGroupActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    sget-object v1, Lcom/facebook/unity/FBUnityCreateGameGroupActivity;->CREATE_GAME_GROUP_PARAMS:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 222
    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static GameGroupJoin(Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .line 227
    sget-object v0, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GameGroupJoin("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-static {p0}, Lcom/facebook/unity/UnityParams;->parse(Ljava/lang/String;)Lcom/facebook/unity/UnityParams;

    move-result-object p0

    .line 229
    invoke-virtual {p0}, Lcom/facebook/unity/UnityParams;->getStringParams()Landroid/os/Bundle;

    move-result-object p0

    .line 230
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/facebook/unity/FBUnityJoinGameGroupActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    sget-object v1, Lcom/facebook/unity/FBUnityJoinGameGroupActivity;->JOIN_GAME_GROUP_PARAMS:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 232
    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static GetAppLink(Ljava/lang/String;)V
    .registers 5
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .line 410
    sget-object v0, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetAppLink("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-static {p0}, Lcom/facebook/unity/UnityParams;->parse(Ljava/lang/String;)Lcom/facebook/unity/UnityParams;

    move-result-object p0

    const-string v0, "OnGetAppLinkComplete"

    .line 412
    invoke-static {v0, p0}, Lcom/facebook/unity/UnityMessage;->createWithCallbackFromParams(Ljava/lang/String;Lcom/facebook/unity/UnityParams;)Lcom/facebook/unity/UnityMessage;

    move-result-object p0

    .line 417
    sget-object v0, Lcom/facebook/unity/FB;->intent:Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "did_complete"

    if-nez v0, :cond_37

    .line 419
    invoke-virtual {p0, v2, v1}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 420
    invoke-virtual {p0}, Lcom/facebook/unity/UnityMessage;->send()V

    return-void

    .line 425
    :cond_37
    sget-object v3, Lcom/facebook/unity/FB;->clearedIntent:Landroid/content/Intent;

    if-ne v0, v3, :cond_42

    .line 426
    invoke-virtual {p0, v2, v1}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 427
    invoke-virtual {p0}, Lcom/facebook/unity/UnityMessage;->send()V

    return-void

    .line 432
    :cond_42
    invoke-static {v0}, Lcom/facebook/applinks/AppLinkData;->createFromAlApplinkData(Landroid/content/Intent;)Lcom/facebook/applinks/AppLinkData;

    move-result-object v0

    const-string v3, "url"

    if-eqz v0, :cond_57

    .line 435
    invoke-static {p0, v0}, Lcom/facebook/unity/FB;->addAppLinkToMessage(Lcom/facebook/unity/UnityMessage;Lcom/facebook/applinks/AppLinkData;)V

    .line 436
    sget-object v0, Lcom/facebook/unity/FB;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    goto :goto_6c

    .line 437
    :cond_57
    sget-object v0, Lcom/facebook/unity/FB;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_69

    .line 439
    sget-object v0, Lcom/facebook/unity/FB;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    goto :goto_6c

    .line 442
    :cond_69
    invoke-virtual {p0, v2, v1}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 445
    :goto_6c
    invoke-virtual {p0}, Lcom/facebook/unity/UnityMessage;->send()V

    return-void
.end method

.method public static GetSdkVersion()Ljava/lang/String;
    .registers 1
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .line 378
    invoke-static {}, Lcom/facebook/FacebookSdk;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetUserID()Ljava/lang/String;
    .registers 1
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .line 265
    invoke-static {}, Lcom/facebook/FacebookSdk;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 268
    :cond_8
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->getUserID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Init(Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .line 84
    sget-object v0, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "couldn\'t parse init params: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/unity/UnityParams;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/unity/UnityParams;

    move-result-object p0

    const-string v0, "appId"

    .line 87
    invoke-virtual {p0, v0}, Lcom/facebook/unity/UnityParams;->hasString(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 88
    invoke-virtual {p0, v0}, Lcom/facebook/unity/UnityParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_49

    .line 90
    :cond_41
    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 93
    :goto_49
    invoke-static {p0}, Lcom/facebook/FacebookSdk;->setApplicationId(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/facebook/unity/FB$1;

    invoke-direct {v1, p0}, Lcom/facebook/unity/FB$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V

    return-void
.end method

.method public static IsImplicitPurchaseLoggingEnabled()Z
    .registers 1
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .line 345
    invoke-static {}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->isImplicitPurchaseLoggingEnabled()Z

    move-result v0

    return v0
.end method

.method public static LogAppEvent(Ljava/lang/String;)V
    .registers 7
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .line 310
    sget-object v0, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LogAppEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-static {p0}, Lcom/facebook/unity/UnityParams;->parse(Ljava/lang/String;)Lcom/facebook/unity/UnityParams;

    move-result-object v0

    .line 313
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "parameters"

    .line 314
    invoke-virtual {v0, v2}, Lcom/facebook/unity/UnityParams;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 315
    invoke-virtual {v0, v2}, Lcom/facebook/unity/UnityParams;->getParamsObject(Ljava/lang/String;)Lcom/facebook/unity/UnityParams;

    move-result-object v1

    .line 316
    invoke-virtual {v1}, Lcom/facebook/unity/UnityParams;->getStringParams()Landroid/os/Bundle;

    move-result-object v1

    :cond_34
    const-string v2, "logPurchase"

    .line 319
    invoke-virtual {v0, v2}, Lcom/facebook/unity/UnityParams;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 320
    invoke-static {}, Lcom/facebook/unity/FB;->getAppEventsLogger()Lcom/facebook/appevents/AppEventsLogger;

    move-result-object p0

    new-instance v3, Ljava/math/BigDecimal;

    .line 321
    invoke-virtual {v0, v2}, Lcom/facebook/unity/UnityParams;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    const-string v2, "currency"

    .line 322
    invoke-virtual {v0, v2}, Lcom/facebook/unity/UnityParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    .line 320
    invoke-virtual {p0, v3, v0, v1}, Lcom/facebook/appevents/AppEventsLogger;->logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V

    goto :goto_9d

    :cond_57
    const-string v2, "logEvent"

    .line 325
    invoke-virtual {v0, v2}, Lcom/facebook/unity/UnityParams;->hasString(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_87

    const-string p0, "valueToSum"

    .line 326
    invoke-virtual {v0, p0}, Lcom/facebook/unity/UnityParams;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 327
    invoke-static {}, Lcom/facebook/unity/FB;->getAppEventsLogger()Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v3

    .line 328
    invoke-virtual {v0, v2}, Lcom/facebook/unity/UnityParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 329
    invoke-virtual {v0, p0}, Lcom/facebook/unity/UnityParams;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 327
    invoke-virtual {v3, v2, v4, v5, v1}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    goto :goto_9d

    .line 333
    :cond_7b
    invoke-static {}, Lcom/facebook/unity/FB;->getAppEventsLogger()Lcom/facebook/appevents/AppEventsLogger;

    move-result-object p0

    .line 334
    invoke-virtual {v0, v2}, Lcom/facebook/unity/UnityParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-virtual {p0, v0, v1}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_9d

    .line 339
    :cond_87
    sget-object v0, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "couldn\'t logPurchase or logEvent params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9d
    return-void
.end method

.method private static LogMethodCall(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 658
    sget-object v0, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    const-string p0, "%s(%s)"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static LoginForTVWithPublishPermissions(Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .line 198
    sget-object v0, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoginForTVWithPublishPermissions("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/facebook/unity/FBUnityLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "login_params"

    .line 200
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    sget-object p0, Lcom/facebook/unity/FBUnityLoginActivity$LoginType;->TV_PUBLISH:Lcom/facebook/unity/FBUnityLoginActivity$LoginType;

    const-string v1, "login_type"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 202
    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static LoginWithPublishPermissions(Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .line 126
    sget-object v0, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoginWithPublishPermissions("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/facebook/unity/FBUnityLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "login_params"

    .line 128
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    sget-object p0, Lcom/facebook/unity/FBUnityLoginActivity$LoginType;->PUBLISH:Lcom/facebook/unity/FBUnityLoginActivity$LoginType;

    const-string v1, "login_type"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 130
    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static LoginWithReadPermissions(Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .line 117
    sget-object v0, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoginWithReadPermissions("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/facebook/unity/FBUnityLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "login_params"

    .line 119
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    sget-object p0, Lcom/facebook/unity/FBUnityLoginActivity$LoginType;->READ:Lcom/facebook/unity/FBUnityLoginActivity$LoginType;

    const-string v1, "login_type"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 121
    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static Logout(Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .line 135
    sget-object v0, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Logout("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 137
    new-instance p0, Lcom/facebook/unity/UnityMessage;

    const-string v0, "OnLogoutComplete"

    invoke-direct {p0, v0}, Lcom/facebook/unity/UnityMessage;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 138
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "did_complete"

    invoke-virtual {p0, v1, v0}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 139
    invoke-virtual {p0}, Lcom/facebook/unity/UnityMessage;->send()V

    return-void
.end method

.method public static OpenFriendFinderDialog(Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .line 518
    sget-object v0, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OpenFriendFinderDialog("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-static {p0}, Lcom/facebook/unity/UnityParams;->parse(Ljava/lang/String;)Lcom/facebook/unity/UnityParams;

    move-result-object p0

    .line 520
    invoke-virtual {p0}, Lcom/facebook/unity/UnityParams;->getStringParams()Landroid/os/Bundle;

    move-result-object p0

    .line 522
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/facebook/unity/FBUnityGamingServicesFriendFinderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "dialog_params"

    .line 523
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 524
    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static RefreshCurrentAccessToken(Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    const-string v0, "RefreshCurrentAccessToken"

    .line 456
    invoke-static {v0, p0}, Lcom/facebook/unity/FB;->LogMethodCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-static {p0}, Lcom/facebook/unity/UnityParams;->parse(Ljava/lang/String;)Lcom/facebook/unity/UnityParams;

    move-result-object p0

    .line 459
    new-instance v0, Lcom/facebook/unity/UnityMessage;

    const-string v1, "OnRefreshCurrentAccessTokenComplete"

    invoke-direct {v0, v1}, Lcom/facebook/unity/UnityMessage;-><init>(Ljava/lang/String;)V

    const-string v1, "callback_id"

    .line 460
    invoke-virtual {p0, v1}, Lcom/facebook/unity/UnityParams;->hasString(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 461
    invoke-virtual {p0, v1}, Lcom/facebook/unity/UnityParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 464
    :cond_23
    new-instance p0, Lcom/facebook/unity/FB$4;

    invoke-direct {p0, v0}, Lcom/facebook/unity/FB$4;-><init>(Lcom/facebook/unity/UnityMessage;)V

    invoke-static {p0}, Lcom/facebook/AccessToken;->refreshCurrentAccessTokenAsync(Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V

    return-void
.end method

.method public static RetrieveLoginStatus(Ljava/lang/String;)V
    .registers 5
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .line 144
    sget-object v0, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RetrieveLoginStatus("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-static {}, Lcom/facebook/FacebookSdk;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_29

    .line 147
    sget-object p0, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    const-string v0, "Facebook SDK not initialized. Call init() before calling login()"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 151
    :cond_29
    new-instance v0, Lcom/facebook/unity/UnityMessage;

    const-string v1, "OnLoginStatusRetrieved"

    invoke-direct {v0, v1}, Lcom/facebook/unity/UnityMessage;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/facebook/unity/FB;->getKeyHash()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_hash"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "couldn\'t parse login params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/facebook/unity/UnityParams;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/unity/UnityParams;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "callback_id"

    .line 157
    invoke-virtual {p0, v2}, Lcom/facebook/unity/UnityParams;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 158
    invoke-virtual {p0, v2}, Lcom/facebook/unity/UnityParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-virtual {v0, v2, v1}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 163
    :cond_5e
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p0

    .line 164
    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/facebook/unity/FB$2;

    invoke-direct {v3, v0, v1}, Lcom/facebook/unity/FB$2;-><init>(Lcom/facebook/unity/UnityMessage;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0, v2, v3}, Lcom/facebook/login/LoginManager;->retrieveLoginStatus(Landroid/content/Context;Lcom/facebook/LoginStatusCallback;)V

    return-void
.end method

.method public static SetAdvertiserIDCollectionEnabled(Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .line 371
    sget-object v0, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetAdvertiserIDCollectionEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 372
    invoke-static {p0}, Lcom/facebook/FacebookSdk;->setAdvertiserIDCollectionEnabled(Z)V

    return-void
.end method

.method public static SetAutoLogAppEventsEnabled(Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .line 364
    sget-object v0, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetAutoLogAppEventsEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 365
    invoke-static {p0}, Lcom/facebook/FacebookSdk;->setAutoLogAppEventsEnabled(Z)V

    return-void
.end method

.method public static SetDataProcessingOptions(Ljava/lang/String;)V
    .registers 6
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .line 281
    sget-object v0, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetDataProcessingOptions("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-static {p0}, Lcom/facebook/unity/UnityParams;->parse(Ljava/lang/String;)Lcom/facebook/unity/UnityParams;

    move-result-object p0

    .line 284
    :try_start_1f
    iget-object p0, p0, Lcom/facebook/unity/UnityParams;->json:Lorg/json/JSONObject;

    const-string v0, "options"

    .line 285
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "country"

    const/4 v2, 0x0

    .line 286
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "state"

    .line 287
    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    .line 288
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 289
    :goto_3a
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_49

    .line 290
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 292
    :cond_49
    invoke-static {v3, v1, p0}, Lcom/facebook/FacebookSdk;->setDataProcessingOptions([Ljava/lang/String;II)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_4c} :catch_4c

    :catch_4c
    return-void
.end method

.method public static SetIntent(Landroid/content/Intent;)V
    .registers 1

    .line 298
    sput-object p0, Lcom/facebook/unity/FB;->intent:Landroid/content/Intent;

    return-void
.end method

.method public static SetLimitEventUsage(Ljava/lang/String;)V
    .registers 4

    .line 302
    sget-object v0, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetLimitEventUsage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 305
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 303
    invoke-static {v0, p0}, Lcom/facebook/FacebookSdk;->setLimitEventAndDataUsage(Landroid/content/Context;Z)V

    return-void
.end method

.method public static SetShareDialogMode(Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .line 350
    sget-object v0, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetShareDialogMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "NATIVE"

    .line 351
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 352
    sget-object p0, Lcom/facebook/share/widget/ShareDialog$Mode;->NATIVE:Lcom/facebook/share/widget/ShareDialog$Mode;

    sput-object p0, Lcom/facebook/unity/FB;->ShareDialogMode:Lcom/facebook/share/widget/ShareDialog$Mode;

    goto :goto_46

    :cond_28
    const-string v0, "WEB"

    .line 353
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 354
    sget-object p0, Lcom/facebook/share/widget/ShareDialog$Mode;->WEB:Lcom/facebook/share/widget/ShareDialog$Mode;

    sput-object p0, Lcom/facebook/unity/FB;->ShareDialogMode:Lcom/facebook/share/widget/ShareDialog$Mode;

    goto :goto_46

    :cond_35
    const-string v0, "FEED"

    .line 355
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_42

    .line 356
    sget-object p0, Lcom/facebook/share/widget/ShareDialog$Mode;->FEED:Lcom/facebook/share/widget/ShareDialog$Mode;

    sput-object p0, Lcom/facebook/unity/FB;->ShareDialogMode:Lcom/facebook/share/widget/ShareDialog$Mode;

    goto :goto_46

    .line 358
    :cond_42
    sget-object p0, Lcom/facebook/share/widget/ShareDialog$Mode;->AUTOMATIC:Lcom/facebook/share/widget/ShareDialog$Mode;

    sput-object p0, Lcom/facebook/unity/FB;->ShareDialogMode:Lcom/facebook/share/widget/ShareDialog$Mode;

    :goto_46
    return-void
.end method

.method public static SetUserAgentSuffix(Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .line 383
    sget-object v0, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetUserAgentSuffix("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-static {p0}, Lcom/facebook/internal/InternalSettings;->setCustomUserAgent(Ljava/lang/String;)V

    return-void
.end method

.method public static SetUserID(Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .line 259
    sget-object v0, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetUserID("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->setUserID(Ljava/lang/String;)V

    return-void
.end method

.method public static ShareLink(Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .line 237
    sget-object v0, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShareLink("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-static {p0}, Lcom/facebook/unity/UnityParams;->parse(Ljava/lang/String;)Lcom/facebook/unity/UnityParams;

    move-result-object p0

    .line 239
    invoke-virtual {p0}, Lcom/facebook/unity/UnityParams;->getStringParams()Landroid/os/Bundle;

    move-result-object p0

    .line 240
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/facebook/unity/FBUnityDialogsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 241
    sget-object v1, Lcom/facebook/unity/FB;->ShareDialogMode:Lcom/facebook/share/widget/ShareDialog$Mode;

    const-string v2, "dialog_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "share_dialog_params"

    .line 242
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 243
    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static UpdateUserProperties(Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .line 273
    sget-object v0, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateUserProperties("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-static {p0}, Lcom/facebook/unity/UnityParams;->parse(Ljava/lang/String;)Lcom/facebook/unity/UnityParams;

    move-result-object p0

    .line 275
    invoke-virtual {p0}, Lcom/facebook/unity/UnityParams;->getStringParams()Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x0

    .line 276
    invoke-static {p0, v0}, Lcom/facebook/appevents/AppEventsLogger;->updateUserProperties(Landroid/os/Bundle;Lcom/facebook/GraphRequest$Callback;)V

    return-void
.end method

.method public static UploadImageToMediaLibrary(Ljava/lang/String;)V
    .registers 7
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .line 529
    sget-object v0, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UploadImageToMediaLibrary("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-static {p0}, Lcom/facebook/unity/UnityParams;->parse(Ljava/lang/String;)Lcom/facebook/unity/UnityParams;

    move-result-object p0

    const-string v0, "caption"

    .line 531
    invoke-virtual {p0, v0}, Lcom/facebook/unity/UnityParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "imageUri"

    .line 532
    invoke-virtual {p0, v1}, Lcom/facebook/unity/UnityParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 536
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_43

    .line 537
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    :cond_43
    const-string v2, "shouldLaunchMediaDialog"

    .line 539
    invoke-virtual {p0, v2}, Lcom/facebook/unity/UnityParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 541
    new-instance v3, Lcom/facebook/unity/UnityMessage;

    const-string v4, "OnUploadImageToMediaLibraryComplete"

    invoke-direct {v3, v4}, Lcom/facebook/unity/UnityMessage;-><init>(Ljava/lang/String;)V

    const-string v4, "callback_id"

    .line 542
    invoke-virtual {p0, v4}, Lcom/facebook/unity/UnityParams;->hasString(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_67

    .line 543
    invoke-virtual {p0, v4}, Lcom/facebook/unity/UnityParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v4, p0}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 546
    :cond_67
    new-instance p0, Lcom/facebook/gamingservices/GamingImageUploader;

    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/facebook/gamingservices/GamingImageUploader;-><init>(Landroid/content/Context;)V

    .line 548
    :try_start_70
    new-instance v4, Lcom/facebook/unity/FB$5;

    invoke-direct {v4, v3}, Lcom/facebook/unity/FB$5;-><init>(Lcom/facebook/unity/UnityMessage;)V

    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/facebook/gamingservices/GamingImageUploader;->uploadToMediaLibrary(Ljava/lang/String;Landroid/net/Uri;ZLcom/facebook/GraphRequest$Callback;)V
    :try_end_78
    .catch Ljava/io/FileNotFoundException; {:try_start_70 .. :try_end_78} :catch_79

    goto :goto_81

    :catch_79
    move-exception p0

    .line 570
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/facebook/unity/UnityMessage;->sendError(Ljava/lang/String;)V

    :goto_81
    return-void
.end method

.method public static UploadVideoToMediaLibrary(Ljava/lang/String;)V
    .registers 6
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .line 576
    sget-object v0, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UploadVideoToMediaLibrary("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-static {p0}, Lcom/facebook/unity/UnityParams;->parse(Ljava/lang/String;)Lcom/facebook/unity/UnityParams;

    move-result-object p0

    const-string v0, "caption"

    .line 578
    invoke-virtual {p0, v0}, Lcom/facebook/unity/UnityParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "videoUri"

    .line 579
    invoke-virtual {p0, v1}, Lcom/facebook/unity/UnityParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 583
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_43

    .line 584
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 587
    :cond_43
    new-instance v2, Lcom/facebook/unity/UnityMessage;

    const-string v3, "OnUploadVideoToMediaLibraryComplete"

    invoke-direct {v2, v3}, Lcom/facebook/unity/UnityMessage;-><init>(Ljava/lang/String;)V

    const-string v3, "callback_id"

    .line 588
    invoke-virtual {p0, v3}, Lcom/facebook/unity/UnityParams;->hasString(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 589
    invoke-virtual {p0, v3}, Lcom/facebook/unity/UnityParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v3, p0}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 592
    :cond_5d
    new-instance p0, Lcom/facebook/gamingservices/GamingVideoUploader;

    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/facebook/gamingservices/GamingVideoUploader;-><init>(Landroid/content/Context;)V

    .line 594
    :try_start_66
    new-instance v3, Lcom/facebook/unity/FB$6;

    invoke-direct {v3, v2}, Lcom/facebook/unity/FB$6;-><init>(Lcom/facebook/unity/UnityMessage;)V

    invoke-virtual {p0, v0, v1, v3}, Lcom/facebook/gamingservices/GamingVideoUploader;->uploadToMediaLibrary(Ljava/lang/String;Landroid/net/Uri;Lcom/facebook/GraphRequest$OnProgressCallback;)V
    :try_end_6e
    .catch Ljava/io/FileNotFoundException; {:try_start_66 .. :try_end_6e} :catch_6f

    goto :goto_77

    :catch_6f
    move-exception p0

    .line 619
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/facebook/unity/UnityMessage;->sendError(Ljava/lang/String;)V

    :goto_77
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .registers 1

    .line 61
    invoke-static {p0}, Lcom/facebook/unity/FB;->ActivateApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/unity/UnityMessage;Lcom/facebook/applinks/AppLinkData;)V
    .registers 2

    .line 61
    invoke-static {p0, p1}, Lcom/facebook/unity/FB;->addAppLinkToMessage(Lcom/facebook/unity/UnityMessage;Lcom/facebook/applinks/AppLinkData;)V

    return-void
.end method

.method private static addAppLinkToMessage(Lcom/facebook/unity/UnityMessage;Lcom/facebook/applinks/AppLinkData;)V
    .registers 4

    if-nez p1, :cond_d

    const/4 p1, 0x1

    .line 663
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "did_complete"

    invoke-virtual {p0, v0, p1}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    return-void

    .line 667
    :cond_d
    invoke-virtual {p1}, Lcom/facebook/applinks/AppLinkData;->getRef()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ref"

    invoke-virtual {p0, v1, v0}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 668
    invoke-virtual {p1}, Lcom/facebook/applinks/AppLinkData;->getTargetUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "target_url"

    invoke-virtual {p0, v1, v0}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 670
    :try_start_23
    invoke-virtual {p1}, Lcom/facebook/applinks/AppLinkData;->getArgumentBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_45

    const-string v0, "extras"

    .line 672
    invoke-virtual {p1}, Lcom/facebook/applinks/AppLinkData;->getArgumentBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 671
    invoke-static {p1}, Lcom/facebook/internal/BundleJSONConverter;->convertToJSON(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p1

    .line 672
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 671
    invoke-virtual {p0, v0, p1}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;
    :try_end_3a
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_3a} :catch_3b

    goto :goto_45

    :catch_3b
    move-exception p0

    .line 675
    sget-object p1, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    :goto_45
    return-void
.end method

.method private static getAppEventsLogger()Lcom/facebook/appevents/AppEventsLogger;
    .registers 1

    .line 72
    sget-object v0, Lcom/facebook/unity/FB;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    if-nez v0, :cond_12

    .line 73
    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    sput-object v0, Lcom/facebook/unity/FB;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    .line 75
    :cond_12
    sget-object v0, Lcom/facebook/unity/FB;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    return-object v0
.end method

.method public static getKeyHash()Ljava/lang/String;
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    const-string v0, ""

    .line 490
    :try_start_2
    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_9

    return-object v0

    .line 495
    :cond_9
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 496
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x40

    .line 495
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 498
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v1

    if-lez v2, :cond_4b

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v3, "SHA"

    .line 499
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 500
    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 501
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 502
    sget-object v2, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KeyHash: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_4a} :catch_4b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_4a} :catch_4b

    return-object v1

    :catch_4b
    :cond_4b
    return-object v0
.end method

.method public static getUnityActivity()Landroid/app/Activity;
    .registers 1

    .line 79
    invoke-static {}, Lcom/facebook/unity/UnityReflection;->GetUnityActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public static loginForTVWithReadPermissions(Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .line 189
    sget-object v0, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loginForTVWithReadPermissions("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/facebook/unity/FBUnityLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "login_params"

    .line 191
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    sget-object p0, Lcom/facebook/unity/FBUnityLoginActivity$LoginType;->TV_READ:Lcom/facebook/unity/FBUnityLoginActivity$LoginType;

    const-string v1, "login_type"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 193
    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static startActivity(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 650
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 651
    invoke-static {p1}, Lcom/facebook/unity/UnityParams;->parse(Ljava/lang/String;)Lcom/facebook/unity/UnityParams;

    move-result-object p0

    .line 652
    invoke-virtual {p0}, Lcom/facebook/unity/UnityParams;->getStringParams()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "activity_params"

    .line 653
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 654
    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
