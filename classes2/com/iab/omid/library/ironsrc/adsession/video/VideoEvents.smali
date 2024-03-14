.class public final Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;
.super Ljava/lang/Object;


# instance fields
.field private final adSession:Lcom/iab/omid/library/ironsrc/adsession/a;


# direct methods
.method private constructor <init>(Lcom/iab/omid/library/ironsrc/adsession/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/ironsrc/adsession/a;

    return-void
.end method

.method private confirmValidDuration(F)V
    .registers 3

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-lez p1, :cond_6

    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid Video duration"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private confirmValidVolume(F)V
    .registers 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_c

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_c

    return-void

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid Video volume"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static createVideoEvents(Lcom/iab/omid/library/ironsrc/adsession/AdSession;)Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;
    .registers 3

    move-object v0, p0

    check-cast v0, Lcom/iab/omid/library/ironsrc/adsession/a;

    const-string v1, "AdSession is null"

    invoke-static {p0, v1}, Lcom/iab/omid/library/ironsrc/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iab/omid/library/ironsrc/d/e;->g(Lcom/iab/omid/library/ironsrc/adsession/a;)V

    invoke-static {v0}, Lcom/iab/omid/library/ironsrc/d/e;->a(Lcom/iab/omid/library/ironsrc/adsession/a;)V

    invoke-static {v0}, Lcom/iab/omid/library/ironsrc/d/e;->b(Lcom/iab/omid/library/ironsrc/adsession/a;)V

    invoke-static {v0}, Lcom/iab/omid/library/ironsrc/d/e;->e(Lcom/iab/omid/library/ironsrc/adsession/a;)V

    new-instance p0, Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;

    invoke-direct {p0, v0}, Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;-><init>(Lcom/iab/omid/library/ironsrc/adsession/a;)V

    invoke-virtual {v0}, Lcom/iab/omid/library/ironsrc/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->a(Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;)V

    return-object p0
.end method


# virtual methods
.method public adUserInteraction(Lcom/iab/omid/library/ironsrc/adsession/video/InteractionType;)V
    .registers 4

    const-string v0, "InteractionType is null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/ironsrc/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/ironsrc/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/ironsrc/d/e;->c(Lcom/iab/omid/library/ironsrc/adsession/a;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "interactionType"

    invoke-static {v0, v1, p1}, Lcom/iab/omid/library/ironsrc/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/ironsrc/adsession/a;

    invoke-virtual {p1}, Lcom/iab/omid/library/ironsrc/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;

    move-result-object p1

    const-string v1, "adUserInteraction"

    invoke-virtual {p1, v1, v0}, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public bufferFinish()V
    .registers 3

    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/ironsrc/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/ironsrc/d/e;->c(Lcom/iab/omid/library/ironsrc/adsession/a;)V

    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/ironsrc/adsession/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/ironsrc/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;

    move-result-object v0

    const-string v1, "bufferFinish"

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->a(Ljava/lang/String;)V

    return-void
.end method

.method public bufferStart()V
    .registers 3

    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/ironsrc/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/ironsrc/d/e;->c(Lcom/iab/omid/library/ironsrc/adsession/a;)V

    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/ironsrc/adsession/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/ironsrc/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;

    move-result-object v0

    const-string v1, "bufferStart"

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->a(Ljava/lang/String;)V

    return-void
.end method

.method public complete()V
    .registers 3

    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/ironsrc/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/ironsrc/d/e;->c(Lcom/iab/omid/library/ironsrc/adsession/a;)V

    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/ironsrc/adsession/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/ironsrc/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;

    move-result-object v0

    const-string v1, "complete"

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->a(Ljava/lang/String;)V

    return-void
.end method

.method public firstQuartile()V
    .registers 3

    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/ironsrc/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/ironsrc/d/e;->c(Lcom/iab/omid/library/ironsrc/adsession/a;)V

    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/ironsrc/adsession/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/ironsrc/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;

    move-result-object v0

    const-string v1, "firstQuartile"

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->a(Ljava/lang/String;)V

    return-void
.end method

.method public loaded(Lcom/iab/omid/library/ironsrc/adsession/video/VastProperties;)V
    .registers 4

    const-string v0, "VastProperties is null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/ironsrc/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/ironsrc/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/ironsrc/d/e;->b(Lcom/iab/omid/library/ironsrc/adsession/a;)V

    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/ironsrc/adsession/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/ironsrc/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iab/omid/library/ironsrc/adsession/video/VastProperties;->toJSON()Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "loaded"

    invoke-virtual {v0, v1, p1}, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public midpoint()V
    .registers 3

    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/ironsrc/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/ironsrc/d/e;->c(Lcom/iab/omid/library/ironsrc/adsession/a;)V

    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/ironsrc/adsession/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/ironsrc/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;

    move-result-object v0

    const-string v1, "midpoint"

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->a(Ljava/lang/String;)V

    return-void
.end method

.method public pause()V
    .registers 3

    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/ironsrc/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/ironsrc/d/e;->c(Lcom/iab/omid/library/ironsrc/adsession/a;)V

    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/ironsrc/adsession/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/ironsrc/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;

    move-result-object v0

    const-string v1, "pause"

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->a(Ljava/lang/String;)V

    return-void
.end method

.method public playerStateChange(Lcom/iab/omid/library/ironsrc/adsession/video/PlayerState;)V
    .registers 4

    const-string v0, "PlayerState is null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/ironsrc/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/ironsrc/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/ironsrc/d/e;->c(Lcom/iab/omid/library/ironsrc/adsession/a;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "state"

    invoke-static {v0, v1, p1}, Lcom/iab/omid/library/ironsrc/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/ironsrc/adsession/a;

    invoke-virtual {p1}, Lcom/iab/omid/library/ironsrc/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;

    move-result-object p1

    const-string v1, "playerStateChange"

    invoke-virtual {p1, v1, v0}, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public resume()V
    .registers 3

    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/ironsrc/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/ironsrc/d/e;->c(Lcom/iab/omid/library/ironsrc/adsession/a;)V

    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/ironsrc/adsession/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/ironsrc/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;

    move-result-object v0

    const-string v1, "resume"

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->a(Ljava/lang/String;)V

    return-void
.end method

.method public skipped()V
    .registers 3

    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/ironsrc/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/ironsrc/d/e;->c(Lcom/iab/omid/library/ironsrc/adsession/a;)V

    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/ironsrc/adsession/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/ironsrc/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;

    move-result-object v0

    const-string v1, "skipped"

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->a(Ljava/lang/String;)V

    return-void
.end method

.method public start(FF)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;->confirmValidDuration(F)V

    invoke-direct {p0, p2}, Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;->confirmValidVolume(F)V

    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/ironsrc/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/ironsrc/d/e;->c(Lcom/iab/omid/library/ironsrc/adsession/a;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "duration"

    invoke-static {v0, v1, p1}, Lcom/iab/omid/library/ironsrc/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "videoPlayerVolume"

    invoke-static {v0, p2, p1}, Lcom/iab/omid/library/ironsrc/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/iab/omid/library/ironsrc/b/e;->a()Lcom/iab/omid/library/ironsrc/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iab/omid/library/ironsrc/b/e;->d()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "deviceVolume"

    invoke-static {v0, p2, p1}, Lcom/iab/omid/library/ironsrc/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/ironsrc/adsession/a;

    invoke-virtual {p1}, Lcom/iab/omid/library/ironsrc/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;

    move-result-object p1

    const-string p2, "start"

    invoke-virtual {p1, p2, v0}, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public thirdQuartile()V
    .registers 3

    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/ironsrc/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/ironsrc/d/e;->c(Lcom/iab/omid/library/ironsrc/adsession/a;)V

    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/ironsrc/adsession/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/ironsrc/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;

    move-result-object v0

    const-string v1, "thirdQuartile"

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->a(Ljava/lang/String;)V

    return-void
.end method

.method public volumeChange(F)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;->confirmValidVolume(F)V

    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/ironsrc/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/ironsrc/d/e;->c(Lcom/iab/omid/library/ironsrc/adsession/a;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "videoPlayerVolume"

    invoke-static {v0, v1, p1}, Lcom/iab/omid/library/ironsrc/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/iab/omid/library/ironsrc/b/e;->a()Lcom/iab/omid/library/ironsrc/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iab/omid/library/ironsrc/b/e;->d()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "deviceVolume"

    invoke-static {v0, v1, p1}, Lcom/iab/omid/library/ironsrc/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/ironsrc/adsession/a;

    invoke-virtual {p1}, Lcom/iab/omid/library/ironsrc/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;

    move-result-object p1

    const-string v1, "volumeChange"

    invoke-virtual {p1, v1, v0}, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
