.class public final Lcom/iab/omid/library/adcolony/adsession/AdEvents;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/iab/omid/library/adcolony/adsession/a;


# direct methods
.method private constructor <init>(Lcom/iab/omid/library/adcolony/adsession/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iab/omid/library/adcolony/adsession/AdEvents;->a:Lcom/iab/omid/library/adcolony/adsession/a;

    return-void
.end method

.method public static createAdEvents(Lcom/iab/omid/library/adcolony/adsession/AdSession;)Lcom/iab/omid/library/adcolony/adsession/AdEvents;
    .registers 3

    move-object v0, p0

    check-cast v0, Lcom/iab/omid/library/adcolony/adsession/a;

    const-string v1, "AdSession is null"

    invoke-static {p0, v1}, Lcom/iab/omid/library/adcolony/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iab/omid/library/adcolony/d/e;->d(Lcom/iab/omid/library/adcolony/adsession/a;)V

    invoke-static {v0}, Lcom/iab/omid/library/adcolony/d/e;->b(Lcom/iab/omid/library/adcolony/adsession/a;)V

    new-instance p0, Lcom/iab/omid/library/adcolony/adsession/AdEvents;

    invoke-direct {p0, v0}, Lcom/iab/omid/library/adcolony/adsession/AdEvents;-><init>(Lcom/iab/omid/library/adcolony/adsession/a;)V

    invoke-virtual {v0}, Lcom/iab/omid/library/adcolony/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/adcolony/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iab/omid/library/adcolony/publisher/AdSessionStatePublisher;->a(Lcom/iab/omid/library/adcolony/adsession/AdEvents;)V

    return-object p0
.end method


# virtual methods
.method public impressionOccurred()V
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/adcolony/adsession/AdEvents;->a:Lcom/iab/omid/library/adcolony/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/adcolony/d/e;->b(Lcom/iab/omid/library/adcolony/adsession/a;)V

    iget-object v0, p0, Lcom/iab/omid/library/adcolony/adsession/AdEvents;->a:Lcom/iab/omid/library/adcolony/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/adcolony/d/e;->f(Lcom/iab/omid/library/adcolony/adsession/a;)V

    iget-object v0, p0, Lcom/iab/omid/library/adcolony/adsession/AdEvents;->a:Lcom/iab/omid/library/adcolony/adsession/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/adcolony/adsession/a;->e()Z

    move-result v0

    if-nez v0, :cond_19

    :try_start_12
    iget-object v0, p0, Lcom/iab/omid/library/adcolony/adsession/AdEvents;->a:Lcom/iab/omid/library/adcolony/adsession/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/adcolony/adsession/a;->start()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_18

    goto :goto_19

    :catch_18
    nop

    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/iab/omid/library/adcolony/adsession/AdEvents;->a:Lcom/iab/omid/library/adcolony/adsession/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/adcolony/adsession/a;->e()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/iab/omid/library/adcolony/adsession/AdEvents;->a:Lcom/iab/omid/library/adcolony/adsession/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/adcolony/adsession/a;->b()V

    :cond_26
    return-void
.end method

.method public loaded()V
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/adcolony/adsession/AdEvents;->a:Lcom/iab/omid/library/adcolony/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/adcolony/d/e;->c(Lcom/iab/omid/library/adcolony/adsession/a;)V

    iget-object v0, p0, Lcom/iab/omid/library/adcolony/adsession/AdEvents;->a:Lcom/iab/omid/library/adcolony/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/adcolony/d/e;->f(Lcom/iab/omid/library/adcolony/adsession/a;)V

    iget-object v0, p0, Lcom/iab/omid/library/adcolony/adsession/AdEvents;->a:Lcom/iab/omid/library/adcolony/adsession/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/adcolony/adsession/a;->c()V

    return-void
.end method

.method public loaded(Lcom/iab/omid/library/adcolony/adsession/media/VastProperties;)V
    .registers 3
    .param p1    # Lcom/iab/omid/library/adcolony/adsession/media/VastProperties;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "VastProperties is null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/adcolony/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iab/omid/library/adcolony/adsession/AdEvents;->a:Lcom/iab/omid/library/adcolony/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/adcolony/d/e;->c(Lcom/iab/omid/library/adcolony/adsession/a;)V

    iget-object v0, p0, Lcom/iab/omid/library/adcolony/adsession/AdEvents;->a:Lcom/iab/omid/library/adcolony/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/adcolony/d/e;->f(Lcom/iab/omid/library/adcolony/adsession/a;)V

    iget-object v0, p0, Lcom/iab/omid/library/adcolony/adsession/AdEvents;->a:Lcom/iab/omid/library/adcolony/adsession/a;

    invoke-virtual {p1}, Lcom/iab/omid/library/adcolony/adsession/media/VastProperties;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/adcolony/adsession/a;->a(Lorg/json/JSONObject;)V

    return-void
.end method
