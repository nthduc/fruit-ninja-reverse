.class public Lcom/iab/omid/library/ironsrc/d/e;
.super Ljava/lang/Object;


# direct methods
.method public static a()V
    .registers 2

    invoke-static {}, Lcom/iab/omid/library/ironsrc/Omid;->isActive()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method called before OM SDK activation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/iab/omid/library/ironsrc/adsession/Owner;)V
    .registers 2

    sget-object v0, Lcom/iab/omid/library/ironsrc/adsession/Owner;->NONE:Lcom/iab/omid/library/ironsrc/adsession/Owner;

    invoke-virtual {p0, v0}, Lcom/iab/omid/library/ironsrc/adsession/Owner;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return-void

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Impression owner is none"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/iab/omid/library/ironsrc/adsession/a;)V
    .registers 2

    invoke-virtual {p0}, Lcom/iab/omid/library/ironsrc/adsession/a;->e()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "AdSession is started"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_3

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-gt p0, p1, :cond_7

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lcom/iab/omid/library/ironsrc/adsession/a;)V
    .registers 2

    invoke-virtual {p0}, Lcom/iab/omid/library/ironsrc/adsession/a;->f()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "AdSession is finished"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Lcom/iab/omid/library/ironsrc/adsession/a;)V
    .registers 1

    invoke-static {p0}, Lcom/iab/omid/library/ironsrc/d/e;->h(Lcom/iab/omid/library/ironsrc/adsession/a;)V

    invoke-static {p0}, Lcom/iab/omid/library/ironsrc/d/e;->b(Lcom/iab/omid/library/ironsrc/adsession/a;)V

    return-void
.end method

.method public static d(Lcom/iab/omid/library/ironsrc/adsession/a;)V
    .registers 2

    invoke-virtual {p0}, Lcom/iab/omid/library/ironsrc/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->c()Lcom/iab/omid/library/ironsrc/adsession/AdEvents;

    move-result-object p0

    if-nez p0, :cond_b

    return-void

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "AdEvents already exists for AdSession"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Lcom/iab/omid/library/ironsrc/adsession/a;)V
    .registers 2

    invoke-virtual {p0}, Lcom/iab/omid/library/ironsrc/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->d()Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;

    move-result-object p0

    if-nez p0, :cond_b

    return-void

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "VideoEvents already exists for AdSession"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Lcom/iab/omid/library/ironsrc/adsession/a;)V
    .registers 2

    invoke-virtual {p0}, Lcom/iab/omid/library/ironsrc/adsession/a;->g()Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Impression event is not expected from the Native AdSession"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g(Lcom/iab/omid/library/ironsrc/adsession/a;)V
    .registers 2

    invoke-virtual {p0}, Lcom/iab/omid/library/ironsrc/adsession/a;->h()Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot create VideoEvents for JavaScript AdSession"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static h(Lcom/iab/omid/library/ironsrc/adsession/a;)V
    .registers 2

    invoke-virtual {p0}, Lcom/iab/omid/library/ironsrc/adsession/a;->e()Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "AdSession is not started"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
