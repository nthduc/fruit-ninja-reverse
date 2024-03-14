.class public Lcom/applovin/impl/sdk/x;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/j;

.field private final b:Lcom/applovin/impl/sdk/q;

.field private final c:Lcom/applovin/mediation/ads/MaxAdView;


# direct methods
.method public constructor <init>(Lcom/applovin/mediation/ads/MaxAdView;Lcom/applovin/impl/sdk/j;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/applovin/impl/sdk/x;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/impl/sdk/x;->b:Lcom/applovin/impl/sdk/q;

    iput-object p1, p0, Lcom/applovin/impl/sdk/x;->c:Lcom/applovin/mediation/ads/MaxAdView;

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/mediation/a/b;)J
    .registers 12

    iget-object v0, p0, Lcom/applovin/impl/sdk/x;->b:Lcom/applovin/impl/sdk/q;

    const-string v1, "ViewabilityTracker"

    const-string v2, "Checking visibility..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/x;->c:Lcom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {v0}, Lcom/applovin/mediation/ads/MaxAdView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/applovin/impl/sdk/x;->b:Lcom/applovin/impl/sdk/q;

    const-string v2, "View is hidden"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x2

    goto :goto_1d

    :cond_1b
    const-wide/16 v2, 0x0

    :goto_1d
    iget-object v0, p0, Lcom/applovin/impl/sdk/x;->c:Lcom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {v0}, Lcom/applovin/mediation/ads/MaxAdView;->getAlpha()F

    move-result v0

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/b;->r()F

    move-result v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_35

    iget-object v0, p0, Lcom/applovin/impl/sdk/x;->b:Lcom/applovin/impl/sdk/q;

    const-string v4, "View is transparent"

    invoke-virtual {v0, v1, v4}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x4

    or-long/2addr v2, v4

    :cond_35
    iget-object v0, p0, Lcom/applovin/impl/sdk/x;->c:Lcom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {v0}, Lcom/applovin/mediation/ads/MaxAdView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_53

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_53

    iget-object v0, p0, Lcom/applovin/impl/sdk/x;->b:Lcom/applovin/impl/sdk/q;

    const-string v4, "View is animating"

    invoke-virtual {v0, v1, v4}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x8

    or-long/2addr v2, v4

    :cond_53
    iget-object v0, p0, Lcom/applovin/impl/sdk/x;->c:Lcom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {v0}, Lcom/applovin/mediation/ads/MaxAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_65

    iget-object v0, p0, Lcom/applovin/impl/sdk/x;->b:Lcom/applovin/impl/sdk/q;

    const-string v4, "No parent view found"

    invoke-virtual {v0, v1, v4}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x10

    or-long/2addr v2, v4

    :cond_65
    iget-object v0, p0, Lcom/applovin/impl/sdk/x;->c:Lcom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {v0}, Lcom/applovin/mediation/ads/MaxAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Lcom/applovin/impl/sdk/x;->c:Lcom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {v4}, Lcom/applovin/mediation/ads/MaxAdView;->getWidth()I

    move-result v4

    invoke-static {v0, v4}, Lcom/applovin/sdk/AppLovinSdkUtils;->pxToDp(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/b;->p()I

    move-result v4

    const-string v5, ") below threshold"

    if-ge v0, v4, :cond_99

    iget-object v4, p0, Lcom/applovin/impl/sdk/x;->b:Lcom/applovin/impl/sdk/q;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "View has width ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, 0x20

    or-long/2addr v2, v6

    :cond_99
    iget-object v0, p0, Lcom/applovin/impl/sdk/x;->c:Lcom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {v0}, Lcom/applovin/mediation/ads/MaxAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Lcom/applovin/impl/sdk/x;->c:Lcom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {v4}, Lcom/applovin/mediation/ads/MaxAdView;->getHeight()I

    move-result v4

    invoke-static {v0, v4}, Lcom/applovin/sdk/AppLovinSdkUtils;->pxToDp(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/b;->q()I

    move-result p1

    if-ge v0, p1, :cond_cb

    iget-object p1, p0, Lcom/applovin/impl/sdk/x;->b:Lcom/applovin/impl/sdk/q;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "View has height ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x40

    or-long/2addr v2, v4

    :cond_cb
    iget-object p1, p0, Lcom/applovin/impl/sdk/x;->c:Lcom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {p1}, Lcom/applovin/mediation/ads/MaxAdView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/g;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    new-instance v0, Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    const/4 v5, 0x0

    invoke-direct {v0, v5, v5, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    fill-array-data p1, :array_16c

    iget-object v4, p0, Lcom/applovin/impl/sdk/x;->c:Lcom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {v4, p1}, Lcom/applovin/mediation/ads/MaxAdView;->getLocationOnScreen([I)V

    new-instance v4, Landroid/graphics/Rect;

    aget v6, p1, v5

    const/4 v7, 0x1

    aget v8, p1, v7

    aget v5, p1, v5

    iget-object v9, p0, Lcom/applovin/impl/sdk/x;->c:Lcom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {v9}, Lcom/applovin/mediation/ads/MaxAdView;->getWidth()I

    move-result v9

    add-int/2addr v5, v9

    aget p1, p1, v7

    iget-object v7, p0, Lcom/applovin/impl/sdk/x;->c:Lcom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {v7}, Lcom/applovin/mediation/ads/MaxAdView;->getHeight()I

    move-result v7

    add-int/2addr p1, v7

    invoke-direct {v4, v6, v8, v5, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0, v4}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_132

    iget-object p1, p0, Lcom/applovin/impl/sdk/x;->b:Lcom/applovin/impl/sdk/q;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rect ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") outside of screen\'s bounds ("

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    :cond_132
    iget-object p1, p0, Lcom/applovin/impl/sdk/x;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->ab()Lcom/applovin/impl/sdk/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/a;->a()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_150

    iget-object v0, p0, Lcom/applovin/impl/sdk/x;->c:Lcom/applovin/mediation/ads/MaxAdView;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/r;->a(Landroid/view/View;Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_150

    iget-object p1, p0, Lcom/applovin/impl/sdk/x;->b:Lcom/applovin/impl/sdk/q;

    const-string v0, "View is not in top activity\'s view hierarchy"

    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x100

    or-long/2addr v2, v4

    :cond_150
    iget-object p1, p0, Lcom/applovin/impl/sdk/x;->b:Lcom/applovin/impl/sdk/q;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returning flags: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v2

    nop

    :array_16c
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method
