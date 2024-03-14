.class public Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;
.super Ljava/lang/Object;


# instance fields
.field private final impressionOwner:Lcom/iab/omid/library/ironsrc/adsession/Owner;

.field private final isolateVerificationScripts:Z

.field private final videoEventsOwner:Lcom/iab/omid/library/ironsrc/adsession/Owner;


# direct methods
.method private constructor <init>(Lcom/iab/omid/library/ironsrc/adsession/Owner;Lcom/iab/omid/library/ironsrc/adsession/Owner;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;->impressionOwner:Lcom/iab/omid/library/ironsrc/adsession/Owner;

    if-nez p2, :cond_c

    sget-object p1, Lcom/iab/omid/library/ironsrc/adsession/Owner;->NONE:Lcom/iab/omid/library/ironsrc/adsession/Owner;

    iput-object p1, p0, Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;->videoEventsOwner:Lcom/iab/omid/library/ironsrc/adsession/Owner;

    goto :goto_e

    :cond_c
    iput-object p2, p0, Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;->videoEventsOwner:Lcom/iab/omid/library/ironsrc/adsession/Owner;

    :goto_e
    iput-boolean p3, p0, Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;->isolateVerificationScripts:Z

    return-void
.end method

.method public static createAdSessionConfiguration(Lcom/iab/omid/library/ironsrc/adsession/Owner;Lcom/iab/omid/library/ironsrc/adsession/Owner;)Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;->createAdSessionConfiguration(Lcom/iab/omid/library/ironsrc/adsession/Owner;Lcom/iab/omid/library/ironsrc/adsession/Owner;Z)Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static createAdSessionConfiguration(Lcom/iab/omid/library/ironsrc/adsession/Owner;Lcom/iab/omid/library/ironsrc/adsession/Owner;Z)Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;
    .registers 4

    const-string v0, "Impression owner is null"

    invoke-static {p0, v0}, Lcom/iab/omid/library/ironsrc/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/iab/omid/library/ironsrc/d/e;->a(Lcom/iab/omid/library/ironsrc/adsession/Owner;)V

    new-instance v0, Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;

    invoke-direct {v0, p0, p1, p2}, Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;-><init>(Lcom/iab/omid/library/ironsrc/adsession/Owner;Lcom/iab/omid/library/ironsrc/adsession/Owner;Z)V

    return-object v0
.end method


# virtual methods
.method public isNativeImpressionOwner()Z
    .registers 3

    sget-object v0, Lcom/iab/omid/library/ironsrc/adsession/Owner;->NATIVE:Lcom/iab/omid/library/ironsrc/adsession/Owner;

    iget-object v1, p0, Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;->impressionOwner:Lcom/iab/omid/library/ironsrc/adsession/Owner;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isNativeVideoEventsOwner()Z
    .registers 3

    sget-object v0, Lcom/iab/omid/library/ironsrc/adsession/Owner;->NATIVE:Lcom/iab/omid/library/ironsrc/adsession/Owner;

    iget-object v1, p0, Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;->videoEventsOwner:Lcom/iab/omid/library/ironsrc/adsession/Owner;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;->impressionOwner:Lcom/iab/omid/library/ironsrc/adsession/Owner;

    const-string v2, "impressionOwner"

    invoke-static {v0, v2, v1}, Lcom/iab/omid/library/ironsrc/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;->videoEventsOwner:Lcom/iab/omid/library/ironsrc/adsession/Owner;

    const-string v2, "videoEventsOwner"

    invoke-static {v0, v2, v1}, Lcom/iab/omid/library/ironsrc/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;->isolateVerificationScripts:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isolateVerificationScripts"

    invoke-static {v0, v2, v1}, Lcom/iab/omid/library/ironsrc/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
