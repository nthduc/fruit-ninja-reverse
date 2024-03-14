.class public Lcom/applovin/impl/adview/activity/b/c;
.super Lcom/applovin/impl/adview/activity/b/d;


# instance fields
.field private final v:Lcom/applovin/impl/a/a;

.field private final w:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/applovin/impl/a/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/adview/AppLovinFullscreenActivity;Lcom/applovin/impl/sdk/j;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/applovin/impl/adview/activity/b/d;-><init>(Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/adview/AppLovinFullscreenActivity;Lcom/applovin/impl/sdk/j;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/applovin/impl/adview/activity/b/c;->w:Ljava/util/Set;

    check-cast p1, Lcom/applovin/impl/a/a;

    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b/c;->v:Lcom/applovin/impl/a/a;

    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/c;->v:Lcom/applovin/impl/a/a;

    sget-object p2, Lcom/applovin/impl/a/a$c;->d:Lcom/applovin/impl/a/a$c;

    sget-object p3, Lcom/applovin/impl/a/h;->a:[Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/applovin/impl/a/a;->a(Lcom/applovin/impl/a/a$c;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/impl/adview/activity/b/c;->w:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    sget-object p1, Lcom/applovin/impl/a/a$c;->a:Lcom/applovin/impl/a/a$c;

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/activity/b/c;->a(Lcom/applovin/impl/a/a$c;)V

    sget-object p1, Lcom/applovin/impl/a/a$c;->d:Lcom/applovin/impl/a/a$c;

    const-string p2, "creativeView"

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/adview/activity/b/c;->a(Lcom/applovin/impl/a/a$c;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/activity/b/c;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/activity/b/c;->w:Ljava/util/Set;

    return-object p0
.end method

.method private a(Lcom/applovin/impl/a/a$c;)V
    .registers 3

    sget-object v0, Lcom/applovin/impl/a/d;->a:Lcom/applovin/impl/a/d;

    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/adview/activity/b/c;->a(Lcom/applovin/impl/a/a$c;Lcom/applovin/impl/a/d;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/a/a$c;Lcom/applovin/impl/a/d;)V
    .registers 4

    const-string v0, ""

    invoke-direct {p0, p1, v0, p2}, Lcom/applovin/impl/adview/activity/b/c;->a(Lcom/applovin/impl/a/a$c;Ljava/lang/String;Lcom/applovin/impl/a/d;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/a/a$c;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/applovin/impl/a/d;->a:Lcom/applovin/impl/a/d;

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/adview/activity/b/c;->a(Lcom/applovin/impl/a/a$c;Ljava/lang/String;Lcom/applovin/impl/a/d;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/a/a$c;Ljava/lang/String;Lcom/applovin/impl/a/d;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/c;->v:Lcom/applovin/impl/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/a/a;->a(Lcom/applovin/impl/a/a$c;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/applovin/impl/adview/activity/b/c;->a(Ljava/util/Set;Lcom/applovin/impl/a/d;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/activity/b/c;Ljava/util/Set;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/activity/b/c;->a(Ljava/util/Set;)V

    return-void
.end method

.method private a(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/applovin/impl/a/g;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/applovin/impl/a/d;->a:Lcom/applovin/impl/a/d;

    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/adview/activity/b/c;->a(Ljava/util/Set;Lcom/applovin/impl/a/d;)V

    return-void
.end method

.method private a(Ljava/util/Set;Lcom/applovin/impl/a/d;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/applovin/impl/a/g;",
            ">;",
            "Lcom/applovin/impl/a/d;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_4f

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4f

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/c;->q:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-virtual {v1}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->getCurrentPosition()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/c;->v:Lcom/applovin/impl/a/a;

    invoke-virtual {v0}, Lcom/applovin/impl/a/a;->l()Lcom/applovin/impl/a/k;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/applovin/impl/a/k;->a()Landroid/net/Uri;

    move-result-object v0

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    move-object v6, v0

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/c;->c:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Firing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " tracker(s): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InterActivityV2"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/applovin/impl/adview/activity/b/c;->b:Lcom/applovin/impl/sdk/j;

    move-object v3, p1

    move-object v7, p2

    invoke-static/range {v3 .. v8}, Lcom/applovin/impl/a/i;->a(Ljava/util/Set;JLandroid/net/Uri;Lcom/applovin/impl/a/d;Lcom/applovin/impl/sdk/j;)V

    :cond_4f
    return-void
.end method

.method private z()V
    .registers 4

    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/c;->x()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/c;->w:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/c;->c:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Firing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/c;->w:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " un-fired video progress trackers when video was completed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InterActivityV2"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/c;->w:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/activity/b/c;->a(Ljava/util/Set;)V

    :cond_36
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/PointF;)V
    .registers 3

    sget-object v0, Lcom/applovin/impl/a/a$c;->b:Lcom/applovin/impl/a/a$c;

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/activity/b/c;->a(Lcom/applovin/impl/a/a$c;)V

    invoke-super {p0, p1}, Lcom/applovin/impl/adview/activity/b/d;->a(Landroid/graphics/PointF;)V

    return-void
.end method

.method public c()V
    .registers 6

    invoke-super {p0}, Lcom/applovin/impl/adview/activity/b/d;->c()V

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/c;->r:Lcom/applovin/impl/adview/i;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/c;->b:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->et:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    new-instance v3, Lcom/applovin/impl/adview/activity/b/c$1;

    invoke-direct {v3, p0}, Lcom/applovin/impl/adview/activity/b/c$1;-><init>(Lcom/applovin/impl/adview/activity/b/c;)V

    const-string v4, "PROGRESS_TRACKING"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/applovin/impl/adview/i;->a(Ljava/lang/String;JLcom/applovin/impl/adview/i$a;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/applovin/impl/a/a$c;->f:Lcom/applovin/impl/a/a$c;

    sget-object v1, Lcom/applovin/impl/a/d;->j:Lcom/applovin/impl/a/d;

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/adview/activity/b/c;->a(Lcom/applovin/impl/a/a$c;Lcom/applovin/impl/a/d;)V

    invoke-super {p0, p1}, Lcom/applovin/impl/adview/activity/b/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .registers 3

    invoke-super {p0}, Lcom/applovin/impl/adview/activity/b/d;->d()V

    iget-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/c;->u:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/applovin/impl/a/a$c;->e:Lcom/applovin/impl/a/a$c;

    goto :goto_c

    :cond_a
    sget-object v0, Lcom/applovin/impl/a/a$c;->d:Lcom/applovin/impl/a/a$c;

    :goto_c
    const-string v1, "resume"

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/adview/activity/b/c;->a(Lcom/applovin/impl/a/a$c;Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .registers 3

    invoke-super {p0}, Lcom/applovin/impl/adview/activity/b/d;->e()V

    iget-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/c;->u:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/applovin/impl/a/a$c;->e:Lcom/applovin/impl/a/a$c;

    goto :goto_c

    :cond_a
    sget-object v0, Lcom/applovin/impl/a/a$c;->d:Lcom/applovin/impl/a/a$c;

    :goto_c
    const-string v1, "pause"

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/adview/activity/b/c;->a(Lcom/applovin/impl/a/a$c;Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .registers 3

    sget-object v0, Lcom/applovin/impl/a/a$c;->d:Lcom/applovin/impl/a/a$c;

    const-string v1, "close"

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/adview/activity/b/c;->a(Lcom/applovin/impl/a/a$c;Ljava/lang/String;)V

    sget-object v0, Lcom/applovin/impl/a/a$c;->e:Lcom/applovin/impl/a/a$c;

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/adview/activity/b/c;->a(Lcom/applovin/impl/a/a$c;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/applovin/impl/adview/activity/b/d;->f()V

    return-void
.end method

.method protected q()V
    .registers 8

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/c;->v:Lcom/applovin/impl/a/a;

    invoke-virtual {v0}, Lcom/applovin/impl/a/a;->ac()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_14

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/c;->v:Lcom/applovin/impl/a/a;

    invoke-virtual {v0}, Lcom/applovin/impl/a/a;->ad()I

    move-result v0

    if-ltz v0, :cond_75

    :cond_14
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/c;->v:Lcom/applovin/impl/a/a;

    invoke-virtual {v0}, Lcom/applovin/impl/a/a;->ac()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_25

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/c;->v:Lcom/applovin/impl/a/a;

    invoke-virtual {v0}, Lcom/applovin/impl/a/a;->ac()J

    move-result-wide v0

    goto :goto_72

    :cond_25
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/c;->v:Lcom/applovin/impl/a/a;

    invoke-virtual {v0}, Lcom/applovin/impl/a/a;->k()Lcom/applovin/impl/a/j;

    move-result-object v1

    if-eqz v1, :cond_40

    invoke-virtual {v1}, Lcom/applovin/impl/a/j;->b()I

    move-result v4

    if-lez v4, :cond_40

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Lcom/applovin/impl/a/j;->b()I

    move-result v1

    int-to-long v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_49

    :cond_40
    iget-wide v4, p0, Lcom/applovin/impl/adview/activity/b/c;->t:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_49

    iget-wide v4, p0, Lcom/applovin/impl/adview/activity/b/c;->t:J

    add-long/2addr v2, v4

    :cond_49
    :goto_49
    invoke-virtual {v0}, Lcom/applovin/impl/a/a;->ae()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-virtual {v0}, Lcom/applovin/impl/a/a;->s()J

    move-result-wide v0

    long-to-int v1, v0

    if-lez v1, :cond_5e

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    :cond_5e
    long-to-double v0, v2

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/c;->v:Lcom/applovin/impl/a/a;

    invoke-virtual {v2}, Lcom/applovin/impl/a/a;->ad()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-long v0, v0

    :goto_72
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/adview/activity/b/c;->a(J)V

    :cond_75
    return-void
.end method

.method protected s()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/c;->r:Lcom/applovin/impl/adview/i;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/i;->c()V

    invoke-super {p0}, Lcom/applovin/impl/adview/activity/b/d;->s()V

    return-void
.end method

.method public t()V
    .registers 3

    sget-object v0, Lcom/applovin/impl/a/a$c;->d:Lcom/applovin/impl/a/a$c;

    const-string v1, "skip"

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/adview/activity/b/c;->a(Lcom/applovin/impl/a/a$c;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/applovin/impl/adview/activity/b/d;->t()V

    return-void
.end method

.method public u()V
    .registers 3

    invoke-super {p0}, Lcom/applovin/impl/adview/activity/b/d;->u()V

    sget-object v0, Lcom/applovin/impl/a/a$c;->d:Lcom/applovin/impl/a/a$c;

    iget-boolean v1, p0, Lcom/applovin/impl/adview/activity/b/c;->s:Z

    if-eqz v1, :cond_c

    const-string v1, "mute"

    goto :goto_e

    :cond_c
    const-string v1, "unmute"

    :goto_e
    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/adview/activity/b/c;->a(Lcom/applovin/impl/a/a$c;Ljava/lang/String;)V

    return-void
.end method

.method public v()V
    .registers 4

    invoke-direct {p0}, Lcom/applovin/impl/adview/activity/b/c;->z()V

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/c;->v:Lcom/applovin/impl/a/a;

    invoke-static {v0}, Lcom/applovin/impl/a/i;->c(Lcom/applovin/impl/a/a;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/c;->u:Z

    if-nez v0, :cond_26

    sget-object v0, Lcom/applovin/impl/a/a$c;->e:Lcom/applovin/impl/a/a$c;

    const-string v1, "creativeView"

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/adview/activity/b/c;->a(Lcom/applovin/impl/a/a$c;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/applovin/impl/adview/activity/b/d;->v()V

    goto :goto_26

    :cond_1a
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/c;->c:Lcom/applovin/impl/sdk/q;

    const-string v1, "InterActivityV2"

    const-string v2, "VAST ad does not have valid companion ad - dismissing..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/c;->f()V

    :cond_26
    :goto_26
    return-void
.end method
