.class public final Lcom/iab/omid/library/ironsrc/adsession/AdEvents;
.super Ljava/lang/Object;


# instance fields
.field private final adSession:Lcom/iab/omid/library/ironsrc/adsession/a;


# direct methods
.method private constructor <init>(Lcom/iab/omid/library/ironsrc/adsession/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iab/omid/library/ironsrc/adsession/AdEvents;->adSession:Lcom/iab/omid/library/ironsrc/adsession/a;

    return-void
.end method

.method public static createAdEvents(Lcom/iab/omid/library/ironsrc/adsession/AdSession;)Lcom/iab/omid/library/ironsrc/adsession/AdEvents;
    .registers 3

    move-object v0, p0

    check-cast v0, Lcom/iab/omid/library/ironsrc/adsession/a;

    const-string v1, "AdSession is null"

    invoke-static {p0, v1}, Lcom/iab/omid/library/ironsrc/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iab/omid/library/ironsrc/d/e;->d(Lcom/iab/omid/library/ironsrc/adsession/a;)V

    invoke-static {v0}, Lcom/iab/omid/library/ironsrc/d/e;->b(Lcom/iab/omid/library/ironsrc/adsession/a;)V

    new-instance p0, Lcom/iab/omid/library/ironsrc/adsession/AdEvents;

    invoke-direct {p0, v0}, Lcom/iab/omid/library/ironsrc/adsession/AdEvents;-><init>(Lcom/iab/omid/library/ironsrc/adsession/a;)V

    invoke-virtual {v0}, Lcom/iab/omid/library/ironsrc/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->a(Lcom/iab/omid/library/ironsrc/adsession/AdEvents;)V

    return-object p0
.end method


# virtual methods
.method public impressionOccurred()V
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/adsession/AdEvents;->adSession:Lcom/iab/omid/library/ironsrc/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/ironsrc/d/e;->b(Lcom/iab/omid/library/ironsrc/adsession/a;)V

    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/adsession/AdEvents;->adSession:Lcom/iab/omid/library/ironsrc/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/ironsrc/d/e;->f(Lcom/iab/omid/library/ironsrc/adsession/a;)V

    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/adsession/AdEvents;->adSession:Lcom/iab/omid/library/ironsrc/adsession/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/ironsrc/adsession/a;->d()Z

    move-result v0

    if-nez v0, :cond_19

    :try_start_12
    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/adsession/AdEvents;->adSession:Lcom/iab/omid/library/ironsrc/adsession/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/ironsrc/adsession/a;->start()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_18

    goto :goto_19

    :catch_18
    nop

    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/adsession/AdEvents;->adSession:Lcom/iab/omid/library/ironsrc/adsession/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/ironsrc/adsession/a;->d()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/adsession/AdEvents;->adSession:Lcom/iab/omid/library/ironsrc/adsession/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/ironsrc/adsession/a;->b()V

    :cond_26
    return-void
.end method
