.class public final Lcom/iab/omid/library/adcolony/adsession/media/VastProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final b:Ljava/lang/Float;

.field private final c:Z

.field private final d:Lcom/iab/omid/library/adcolony/adsession/media/Position;


# direct methods
.method private constructor <init>(ZLjava/lang/Float;ZLcom/iab/omid/library/adcolony/adsession/media/Position;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/iab/omid/library/adcolony/adsession/media/VastProperties;->a:Z

    iput-object p2, p0, Lcom/iab/omid/library/adcolony/adsession/media/VastProperties;->b:Ljava/lang/Float;

    iput-boolean p3, p0, Lcom/iab/omid/library/adcolony/adsession/media/VastProperties;->c:Z

    iput-object p4, p0, Lcom/iab/omid/library/adcolony/adsession/media/VastProperties;->d:Lcom/iab/omid/library/adcolony/adsession/media/Position;

    return-void
.end method

.method public static createVastPropertiesForNonSkippableMedia(ZLcom/iab/omid/library/adcolony/adsession/media/Position;)Lcom/iab/omid/library/adcolony/adsession/media/VastProperties;
    .registers 5

    const-string v0, "Position is null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/adcolony/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iab/omid/library/adcolony/adsession/media/VastProperties;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/iab/omid/library/adcolony/adsession/media/VastProperties;-><init>(ZLjava/lang/Float;ZLcom/iab/omid/library/adcolony/adsession/media/Position;)V

    return-object v0
.end method

.method public static createVastPropertiesForSkippableMedia(FZLcom/iab/omid/library/adcolony/adsession/media/Position;)Lcom/iab/omid/library/adcolony/adsession/media/VastProperties;
    .registers 5

    const-string v0, "Position is null"

    invoke-static {p2, v0}, Lcom/iab/omid/library/adcolony/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iab/omid/library/adcolony/adsession/media/VastProperties;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/iab/omid/library/adcolony/adsession/media/VastProperties;-><init>(ZLjava/lang/Float;ZLcom/iab/omid/library/adcolony/adsession/media/Position;)V

    return-object v0
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "skippable"

    :try_start_7
    iget-boolean v2, p0, Lcom/iab/omid/library/adcolony/adsession/media/VastProperties;->a:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-boolean v1, p0, Lcom/iab/omid/library/adcolony/adsession/media/VastProperties;->a:Z
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_e} :catch_26

    if-eqz v1, :cond_17

    const-string v1, "skipOffset"

    :try_start_12
    iget-object v2, p0, Lcom/iab/omid/library/adcolony/adsession/media/VastProperties;->b:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_17} :catch_26

    :cond_17
    const-string v1, "autoPlay"

    :try_start_19
    iget-boolean v2, p0, Lcom/iab/omid/library/adcolony/adsession/media/VastProperties;->c:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_1e} :catch_26

    const-string v1, "position"

    :try_start_20
    iget-object v2, p0, Lcom/iab/omid/library/adcolony/adsession/media/VastProperties;->d:Lcom/iab/omid/library/adcolony/adsession/media/Position;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_25} :catch_26

    goto :goto_2c

    :catch_26
    move-exception v1

    const-string v2, "VastProperties: JSON error"

    invoke-static {v2, v1}, Lcom/iab/omid/library/adcolony/d/c;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_2c
    return-object v0
.end method

.method public getPosition()Lcom/iab/omid/library/adcolony/adsession/media/Position;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/adcolony/adsession/media/VastProperties;->d:Lcom/iab/omid/library/adcolony/adsession/media/Position;

    return-object v0
.end method

.method public getSkipOffset()Ljava/lang/Float;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/adcolony/adsession/media/VastProperties;->b:Ljava/lang/Float;

    return-object v0
.end method

.method public isAutoPlay()Z
    .registers 2

    iget-boolean v0, p0, Lcom/iab/omid/library/adcolony/adsession/media/VastProperties;->c:Z

    return v0
.end method

.method public isSkippable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/iab/omid/library/adcolony/adsession/media/VastProperties;->a:Z

    return v0
.end method
