.class public Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;
.super Ljava/lang/Object;
.source "ListenersWrapper.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;
.implements Lcom/ironsource/mediationsdk/sdk/InterstitialListener;
.implements Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;
.implements Lcom/ironsource/mediationsdk/sdk/SegmentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;
    }
.end annotation


# instance fields
.field private mCallbackHandlerThread:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;

.field private mInterstitialListener:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

.field private mInterstitialPlacement:Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

.field private mLastChangedAvailabilityTime:J

.field private mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/OfferwallListener;

.field private mRewardedVideoListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

.field private mRvPlacementName:Ljava/lang/String;

.field private mSegementListener:Lcom/ironsource/mediationsdk/sdk/SegmentListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mInterstitialPlacement:Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    .line 39
    iput-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mRvPlacementName:Ljava/lang/String;

    .line 40
    new-instance v1, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;

    invoke-direct {v1, p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$1;)V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mCallbackHandlerThread:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;

    .line 41
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mCallbackHandlerThread:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;->start()V

    .line 42
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mLastChangedAvailabilityTime:J

    return-void
.end method

.method static synthetic access$100(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)Lcom/ironsource/mediationsdk/sdk/SegmentListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mSegementListener:Lcom/ironsource/mediationsdk/sdk/SegmentListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)Lcom/ironsource/mediationsdk/sdk/InterstitialListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)Lcom/ironsource/mediationsdk/sdk/OfferwallListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/OfferwallListener;

    return-object p0
.end method

.method private canSendCallback(Ljava/lang/Object;)Z
    .registers 2

    if-eqz p1, :cond_8

    .line 55
    iget-object p1, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mCallbackHandlerThread:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method private sendCallback(Ljava/lang/Runnable;)V
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mCallbackHandlerThread:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;

    if-nez v0, :cond_5

    return-void

    .line 62
    :cond_5
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 64
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method


# virtual methods
.method public onGetOfferwallCreditsFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 6

    .line 402
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetOfferwallCreditsFailed("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 404
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/OfferwallListener;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 405
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$19;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$19;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_30
    return-void
.end method

.method public onInterstitialAdClicked()V
    .registers 5

    .line 331
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onInterstitialAdClicked()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 333
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 334
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$15;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$15;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_1c
    return-void
.end method

.method public onInterstitialAdClosed()V
    .registers 5

    .line 345
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onInterstitialAdClosed()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 347
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 348
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$16;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$16;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_1c
    return-void
.end method

.method public onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 6

    .line 258
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterstitialAdLoadFailed("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 260
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 261
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$11;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$11;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_30
    return-void
.end method

.method public onInterstitialAdOpened()V
    .registers 5

    .line 272
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onInterstitialAdOpened()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 274
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 275
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$12;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$12;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_1c
    return-void
.end method

.method public onInterstitialAdReady()V
    .registers 5

    .line 244
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onInterstitialAdReady()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 246
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 247
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$10;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$10;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_1c
    return-void
.end method

.method public onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 6

    .line 300
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterstitialAdShowFailed("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 302
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_25
    const-string v1, "errorCode"

    .line 304
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 306
    iget-object v1, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mInterstitialPlacement:Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mInterstitialPlacement:Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_49

    const-string v1, "placement"

    .line 307
    iget-object v2, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mInterstitialPlacement:Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 310
    :cond_49
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5d

    const-string v1, "reason"

    .line 311
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_58
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_58} :catch_59

    goto :goto_5d

    :catch_59
    move-exception v1

    .line 314
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 316
    :cond_5d
    :goto_5d
    new-instance v1, Lcom/ironsource/eventsmodule/EventData;

    const/16 v2, 0x83f

    invoke-direct {v1, v2, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 317
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 319
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 320
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$14;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$14;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_7b
    return-void
.end method

.method public onInterstitialAdShowSucceeded()V
    .registers 5

    .line 286
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onInterstitialAdShowSucceeded()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 288
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 289
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$13;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$13;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_1c
    return-void
.end method

.method public onOfferwallAdCredited(IIZ)Z
    .registers 9

    .line 390
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/OfferwallListener;

    if-eqz v0, :cond_9

    .line 391
    invoke-interface {v0, p1, p2, p3}, Lcom/ironsource/mediationsdk/sdk/OfferwallListener;->onOfferwallAdCredited(IIZ)Z

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 393
    :goto_a
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOfferwallAdCredited(credits:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", totalCredits:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", totalCreditsFlag:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "):"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {v1, v2, p1, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return v0
.end method

.method public onOfferwallAvailable(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 430
    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onOfferwallAvailable(ZLcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public onOfferwallAvailable(ZLcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 7

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOfferwallAvailable(isAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_30

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", error: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 439
    :cond_30
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 441
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_3f
    const-string v1, "status"

    .line 443
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_58

    const-string v1, "errorCode"

    .line 445
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_53
    .catch Lorg/json/JSONException; {:try_start_3f .. :try_end_53} :catch_54

    goto :goto_58

    :catch_54
    move-exception p2

    .line 448
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 450
    :cond_58
    :goto_58
    new-instance p2, Lcom/ironsource/eventsmodule/EventData;

    const/16 v1, 0x12e

    invoke-direct {p2, v1, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 451
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 453
    iget-object p2, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/OfferwallListener;

    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_76

    .line 454
    new-instance p2, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$21;

    invoke-direct {p2, p0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$21;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;Z)V

    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_76
    return-void
.end method

.method public onOfferwallClosed()V
    .registers 5

    .line 416
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onOfferwallClosed()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 418
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/OfferwallListener;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 419
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$20;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$20;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_1c
    return-void
.end method

.method public onOfferwallOpened()V
    .registers 5

    .line 360
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onOfferwallOpened()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 362
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/OfferwallListener;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 363
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$17;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$17;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_1c
    return-void
.end method

.method public onOfferwallShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 6

    .line 374
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOfferwallShowFailed("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 376
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/OfferwallListener;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 377
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$18;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$18;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_30
    return-void
.end method

.method public onRewardedVideoAdClicked(Lcom/ironsource/mediationsdk/model/Placement;)V
    .registers 6

    .line 201
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRewardedVideoAdClicked("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 203
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 204
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$8;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$8;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;Lcom/ironsource/mediationsdk/model/Placement;)V

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_34
    return-void
.end method

.method public onRewardedVideoAdClosed()V
    .registers 5

    .line 118
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onRewardedVideoAdClosed()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 120
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 121
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$3;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$3;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_1c
    return-void
.end method

.method public onRewardedVideoAdEnded()V
    .registers 5

    .line 173
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onRewardedVideoAdEnded()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 175
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 176
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$6;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$6;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_1c
    return-void
.end method

.method public onRewardedVideoAdOpened()V
    .registers 5

    .line 104
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onRewardedVideoAdOpened()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 106
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 107
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$2;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$2;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_1c
    return-void
.end method

.method public onRewardedVideoAdRewarded(Lcom/ironsource/mediationsdk/model/Placement;)V
    .registers 6

    .line 187
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRewardedVideoAdRewarded("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 189
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 190
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$7;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$7;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;Lcom/ironsource/mediationsdk/model/Placement;)V

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_34
    return-void
.end method

.method public onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 6

    .line 215
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRewardedVideoAdShowFailed("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 217
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_29
    const-string v1, "errorCode"

    .line 219
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "reason"

    .line 220
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    iget-object v1, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mRvPlacementName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4f

    const-string v1, "placement"

    .line 222
    iget-object v2, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mRvPlacementName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_4a} :catch_4b

    goto :goto_4f

    :catch_4b
    move-exception v1

    .line 225
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 228
    :cond_4f
    :goto_4f
    new-instance v1, Lcom/ironsource/eventsmodule/EventData;

    const/16 v2, 0x459

    invoke-direct {v1, v2, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 229
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 231
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 232
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$9;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$9;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_6d
    return-void
.end method

.method public onRewardedVideoAdStarted()V
    .registers 5

    .line 159
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onRewardedVideoAdStarted()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 161
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 162
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$5;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$5;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_1c
    return-void
.end method

.method public onRewardedVideoAvailabilityChanged(Z)V
    .registers 6

    .line 132
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRewardedVideoAvailabilityChanged(available:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 134
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mLastChangedAvailabilityTime:J

    sub-long/2addr v0, v2

    .line 135
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mLastChangedAvailabilityTime:J

    const/4 v2, 0x0

    .line 137
    invoke-static {v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v2

    :try_start_3c
    const-string v3, "duration"

    .line 139
    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_3c .. :try_end_41} :catch_42

    goto :goto_46

    :catch_42
    move-exception v0

    .line 141
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 144
    :goto_46
    new-instance v0, Lcom/ironsource/eventsmodule/EventData;

    if-eqz p1, :cond_4d

    const/16 v1, 0x457

    goto :goto_4f

    :cond_4d
    const/16 v1, 0x458

    :goto_4f
    invoke-direct {v0, v1, v2}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 145
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 147
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 148
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$4;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$4;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;Z)V

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_69
    return-void
.end method

.method public onSegmentReceived(Ljava/lang/String;)V
    .registers 6

    .line 87
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSegmentReceived("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 89
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mSegementListener:Lcom/ironsource/mediationsdk/sdk/SegmentListener;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 90
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$1;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$1;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_30
    return-void
.end method

.method public setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    return-void
.end method

.method public setInterstitialPlacement(Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mInterstitialPlacement:Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    return-void
.end method

.method public setOfferwallListener(Lcom/ironsource/mediationsdk/sdk/OfferwallListener;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/OfferwallListener;

    return-void
.end method

.method public setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    return-void
.end method

.method public setRvPlacement(Ljava/lang/String;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mRvPlacementName:Ljava/lang/String;

    return-void
.end method

.method public setSegmentListener(Lcom/ironsource/mediationsdk/sdk/SegmentListener;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mSegementListener:Lcom/ironsource/mediationsdk/sdk/SegmentListener;

    return-void
.end method
