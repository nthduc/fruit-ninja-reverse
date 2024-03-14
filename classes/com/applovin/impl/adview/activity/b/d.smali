.class public Lcom/applovin/impl/adview/activity/b/d;
.super Lcom/applovin/impl/adview/activity/b/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/adview/activity/b/d$b;,
        Lcom/applovin/impl/adview/activity/b/d$a;
    }
.end annotation


# instance fields
.field private final A:Landroid/widget/ProgressBar;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final B:Lcom/applovin/impl/adview/activity/b/d$a;

.field private final C:Landroid/os/Handler;

.field private final D:Z

.field private E:I

.field private F:I

.field private G:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private H:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private I:J

.field private J:J

.field protected final q:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

.field protected final r:Lcom/applovin/impl/adview/i;

.field protected s:Z

.field protected t:J

.field protected u:Z

.field private final v:Lcom/applovin/impl/adview/activity/a/c;

.field private w:Landroid/media/MediaPlayer;

.field private final x:Lcom/applovin/impl/adview/a;

.field private final y:Lcom/applovin/impl/adview/l;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final z:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/adview/AppLovinFullscreenActivity;Lcom/applovin/impl/sdk/j;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    .registers 12

    invoke-direct/range {p0 .. p6}, Lcom/applovin/impl/adview/activity/b/a;-><init>(Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/adview/AppLovinFullscreenActivity;Lcom/applovin/impl/sdk/j;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    new-instance p4, Lcom/applovin/impl/adview/activity/a/c;

    iget-object p5, p0, Lcom/applovin/impl/adview/activity/b/d;->a:Lcom/applovin/impl/sdk/ad/g;

    iget-object p6, p0, Lcom/applovin/impl/adview/activity/b/d;->d:Lcom/applovin/adview/AppLovinFullscreenActivity;

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->b:Lcom/applovin/impl/sdk/j;

    invoke-direct {p4, p5, p6, v0}, Lcom/applovin/impl/adview/activity/a/c;-><init>(Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/adview/AppLovinFullscreenActivity;Lcom/applovin/impl/sdk/j;)V

    iput-object p4, p0, Lcom/applovin/impl/adview/activity/b/d;->v:Lcom/applovin/impl/adview/activity/a/c;

    new-instance p4, Lcom/applovin/impl/adview/activity/b/d$a;

    const/4 p5, 0x0

    invoke-direct {p4, p0, p5}, Lcom/applovin/impl/adview/activity/b/d$a;-><init>(Lcom/applovin/impl/adview/activity/b/d;Lcom/applovin/impl/adview/activity/b/d$1;)V

    iput-object p4, p0, Lcom/applovin/impl/adview/activity/b/d;->B:Lcom/applovin/impl/adview/activity/b/d$a;

    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p6

    invoke-direct {p4, p6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/applovin/impl/adview/activity/b/d;->C:Landroid/os/Handler;

    new-instance p4, Lcom/applovin/impl/adview/i;

    iget-object p6, p0, Lcom/applovin/impl/adview/activity/b/d;->C:Landroid/os/Handler;

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->b:Lcom/applovin/impl/sdk/j;

    invoke-direct {p4, p6, v0}, Lcom/applovin/impl/adview/i;-><init>(Landroid/os/Handler;Lcom/applovin/impl/sdk/j;)V

    iput-object p4, p0, Lcom/applovin/impl/adview/activity/b/d;->r:Lcom/applovin/impl/adview/i;

    iget-object p4, p0, Lcom/applovin/impl/adview/activity/b/d;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {p4}, Lcom/applovin/impl/sdk/ad/g;->d()Z

    move-result p4

    iput-boolean p4, p0, Lcom/applovin/impl/adview/activity/b/d;->D:Z

    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/d;->r()Z

    move-result p4

    iput-boolean p4, p0, Lcom/applovin/impl/adview/activity/b/d;->s:Z

    const/4 p4, -0x1

    iput p4, p0, Lcom/applovin/impl/adview/activity/b/d;->F:I

    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p4, p0, Lcom/applovin/impl/adview/activity/b/d;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p4, p0, Lcom/applovin/impl/adview/activity/b/d;->H:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/applovin/impl/adview/activity/b/d;->I:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/applovin/impl/adview/activity/b/d;->J:J

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->hasVideoUrl()Z

    move-result p4

    if-eqz p4, :cond_15d

    new-instance p4, Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->aI()Lcom/applovin/impl/sdk/ad/g$d;

    move-result-object p6

    invoke-direct {p4, p6, p2, p3}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;-><init>(Lcom/applovin/impl/sdk/ad/g$d;Landroid/content/Context;Lcom/applovin/impl/sdk/j;)V

    iput-object p4, p0, Lcom/applovin/impl/adview/activity/b/d;->q:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    iget-object p4, p0, Lcom/applovin/impl/adview/activity/b/d;->q:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    iget-object p6, p0, Lcom/applovin/impl/adview/activity/b/d;->B:Lcom/applovin/impl/adview/activity/b/d$a;

    invoke-virtual {p4, p6}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object p4, p0, Lcom/applovin/impl/adview/activity/b/d;->q:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    iget-object p6, p0, Lcom/applovin/impl/adview/activity/b/d;->B:Lcom/applovin/impl/adview/activity/b/d$a;

    invoke-virtual {p4, p6}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object p4, p0, Lcom/applovin/impl/adview/activity/b/d;->q:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    iget-object p6, p0, Lcom/applovin/impl/adview/activity/b/d;->B:Lcom/applovin/impl/adview/activity/b/d$a;

    invoke-virtual {p4, p6}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object p4, p0, Lcom/applovin/impl/adview/activity/b/d;->q:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    new-instance p6, Lcom/applovin/impl/adview/AppLovinTouchToClickListener;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->aC:Lcom/applovin/impl/sdk/b/b;

    iget-object v3, p0, Lcom/applovin/impl/adview/activity/b/d;->B:Lcom/applovin/impl/adview/activity/b/d$a;

    invoke-direct {p6, p3, v2, p2, v3}, Lcom/applovin/impl/adview/AppLovinTouchToClickListener;-><init>(Lcom/applovin/impl/sdk/j;Lcom/applovin/impl/sdk/b/b;Landroid/content/Context;Lcom/applovin/impl/adview/AppLovinTouchToClickListener$OnClickListener;)V

    invoke-virtual {p4, p6}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance p4, Lcom/applovin/impl/adview/activity/b/d$b;

    invoke-direct {p4, p0, p5}, Lcom/applovin/impl/adview/activity/b/d$b;-><init>(Lcom/applovin/impl/adview/activity/b/d;Lcom/applovin/impl/adview/activity/b/d$1;)V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->q()J

    move-result-wide v2

    const/16 p6, 0x8

    cmp-long v4, v2, v0

    if-ltz v4, :cond_ae

    new-instance v0, Lcom/applovin/impl/adview/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->u()Lcom/applovin/impl/adview/h$a;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/applovin/impl/adview/l;-><init>(Lcom/applovin/impl/adview/h$a;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->y:Lcom/applovin/impl/adview/l;

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->y:Lcom/applovin/impl/adview/l;

    invoke-virtual {v0, p6}, Lcom/applovin/impl/adview/l;->setVisibility(I)V

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->y:Lcom/applovin/impl/adview/l;

    invoke-virtual {v0, p4}, Lcom/applovin/impl/adview/l;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_b0

    :cond_ae
    iput-object p5, p0, Lcom/applovin/impl/adview/activity/b/d;->y:Lcom/applovin/impl/adview/l;

    :goto_b0
    iget-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/d;->s:Z

    invoke-static {v0, p3}, Lcom/applovin/impl/adview/activity/b/d;->a(ZLcom/applovin/impl/sdk/j;)Z

    move-result v0

    if-eqz v0, :cond_d7

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->z:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->z:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->z:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean p4, p0, Lcom/applovin/impl/adview/activity/b/d;->s:Z

    invoke-direct {p0, p4}, Lcom/applovin/impl/adview/activity/b/d;->d(Z)V

    goto :goto_d9

    :cond_d7
    iput-object p5, p0, Lcom/applovin/impl/adview/activity/b/d;->z:Landroid/widget/ImageView;

    :goto_d9
    iget-boolean p4, p0, Lcom/applovin/impl/adview/activity/b/d;->D:Z

    if-eqz p4, :cond_10f

    new-instance p4, Lcom/applovin/impl/adview/a;

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->da:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p3, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x101007a

    invoke-direct {p4, p2, v0, v1}, Lcom/applovin/impl/adview/a;-><init>(Landroid/content/Context;II)V

    iput-object p4, p0, Lcom/applovin/impl/adview/activity/b/d;->x:Lcom/applovin/impl/adview/a;

    iget-object p4, p0, Lcom/applovin/impl/adview/activity/b/d;->x:Lcom/applovin/impl/adview/a;

    const-string v0, "#75FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/applovin/impl/adview/a;->setColor(I)V

    iget-object p4, p0, Lcom/applovin/impl/adview/activity/b/d;->x:Lcom/applovin/impl/adview/a;

    const-string v0, "#00000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/applovin/impl/adview/a;->setBackgroundColor(I)V

    iget-object p4, p0, Lcom/applovin/impl/adview/activity/b/d;->x:Lcom/applovin/impl/adview/a;

    invoke-virtual {p4, p6}, Lcom/applovin/impl/adview/a;->setVisibility(I)V

    goto :goto_111

    :cond_10f
    iput-object p5, p0, Lcom/applovin/impl/adview/activity/b/d;->x:Lcom/applovin/impl/adview/a;

    :goto_111
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->N()Z

    move-result p4

    if-eqz p4, :cond_15a

    new-instance p4, Landroid/widget/ProgressBar;

    const p6, 0x1010078

    invoke-direct {p4, p2, p5, p6}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p4, p0, Lcom/applovin/impl/adview/activity/b/d;->A:Landroid/widget/ProgressBar;

    iget-object p2, p0, Lcom/applovin/impl/adview/activity/b/d;->A:Landroid/widget/ProgressBar;

    const/16 p4, 0x2710

    invoke-virtual {p2, p4}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object p2, p0, Lcom/applovin/impl/adview/activity/b/d;->A:Landroid/widget/ProgressBar;

    const/4 p4, 0x0

    invoke-virtual {p2, p4, p4, p4, p4}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    invoke-static {}, Lcom/applovin/impl/sdk/utils/g;->d()Z

    move-result p2

    if-eqz p2, :cond_141

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->O()I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/impl/adview/activity/b/d;->A:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    :cond_141
    sget-object p1, Lcom/applovin/impl/sdk/b/b;->cV:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p3, p1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-object p3, p0, Lcom/applovin/impl/adview/activity/b/d;->r:Lcom/applovin/impl/adview/i;

    new-instance p4, Lcom/applovin/impl/adview/activity/b/d$1;

    invoke-direct {p4, p0}, Lcom/applovin/impl/adview/activity/b/d$1;-><init>(Lcom/applovin/impl/adview/activity/b/d;)V

    const-string p5, "PROGRESS_BAR"

    invoke-virtual {p3, p5, p1, p2, p4}, Lcom/applovin/impl/adview/i;->a(Ljava/lang/String;JLcom/applovin/impl/adview/i$a;)V

    goto :goto_15c

    :cond_15a
    iput-object p5, p0, Lcom/applovin/impl/adview/activity/b/d;->A:Landroid/widget/ProgressBar;

    :goto_15c
    return-void

    :cond_15d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempting to use fullscreen video ad presenter for non-video ad"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private A()V
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/d;->y()I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/activity/b/d;->E:I

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->q:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->stopPlayback()V

    return-void
.end method

.method private B()V
    .registers 5

    iget-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/d;->u:Z

    const-string v1, "InterActivityV2"

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->c:Lcom/applovin/impl/sdk/q;

    const-string v2, "Skip video resume - postitial shown"

    :goto_a
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->Z()Lcom/applovin/impl/sdk/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->c:Lcom/applovin/impl/sdk/q;

    const-string v2, "Skip video resume - app paused"

    goto :goto_a

    :cond_1f
    iget v0, p0, Lcom/applovin/impl/adview/activity/b/d;->F:I

    if-lez v0, :cond_5d

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->c:Lcom/applovin/impl/sdk/q;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resuming video at position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/applovin/impl/adview/activity/b/d;->F:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "ms for MediaPlayer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/impl/adview/activity/b/d;->w:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->q:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->start()V

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->r:Lcom/applovin/impl/adview/i;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/i;->a()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/applovin/impl/adview/activity/b/d;->F:I

    new-instance v0, Lcom/applovin/impl/adview/activity/b/d$6;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/activity/b/d$6;-><init>(Lcom/applovin/impl/adview/activity/b/d;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/adview/activity/b/d;->a(Ljava/lang/Runnable;J)V

    goto :goto_64

    :cond_5d
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->c:Lcom/applovin/impl/sdk/q;

    const-string v2, "Invalid last video position"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_64
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/activity/b/d;J)J
    .registers 3

    iput-wide p1, p0, Lcom/applovin/impl/adview/activity/b/d;->I:J

    return-wide p1
.end method

.method static synthetic a(Lcom/applovin/impl/adview/activity/b/d;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b/d;->w:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/adview/activity/b/d;)Landroid/widget/ProgressBar;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/activity/b/d;->A:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private static a(ZLcom/applovin/impl/sdk/j;)Z
    .registers 4

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->cM:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 p0, 0x0

    return p0

    :cond_10
    sget-object v0, Lcom/applovin/impl/sdk/b/b;->cN:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2f

    if-eqz p0, :cond_22

    return v1

    :cond_22
    sget-object p0, Lcom/applovin/impl/sdk/b/b;->cP:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p1, p0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_2f
    return v1
.end method

.method static synthetic b(Lcom/applovin/impl/adview/activity/b/d;J)J
    .registers 3

    iput-wide p1, p0, Lcom/applovin/impl/adview/activity/b/d;->J:J

    return-wide p1
.end method

.method static synthetic b(Lcom/applovin/impl/adview/activity/b/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/adview/activity/b/d;->z()V

    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/adview/activity/b/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/adview/activity/b/d;->B()V

    return-void
.end method

.method static synthetic d(Lcom/applovin/impl/adview/activity/b/d;)Lcom/applovin/impl/adview/a;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/activity/b/d;->x:Lcom/applovin/impl/adview/a;

    return-object p0
.end method

.method private d(Z)V
    .registers 5

    invoke-static {}, Lcom/applovin/impl/sdk/utils/g;->d()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->d:Lcom/applovin/adview/AppLovinFullscreenActivity;

    if-eqz p1, :cond_d

    sget v1, Lcom/applovin/sdk/R$drawable;->unmute_to_mute:I

    goto :goto_f

    :cond_d
    sget v1, Lcom/applovin/sdk/R$drawable;->mute_to_unmute:I

    :goto_f
    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinFullscreenActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_27

    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/d;->z:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/d;->z:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void

    :cond_27
    if-eqz p1, :cond_30

    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/d;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->aD()Landroid/net/Uri;

    move-result-object p1

    goto :goto_36

    :cond_30
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/d;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->aE()Landroid/net/Uri;

    move-result-object p1

    :goto_36
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->b:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->cR:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/d;->d:Lcom/applovin/adview/AppLovinFullscreenActivity;

    invoke-static {v1, v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/d;->z:Landroid/widget/ImageView;

    invoke-static {v2, p1, v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->safePopulateImageView(Landroid/widget/ImageView;Landroid/net/Uri;I)V

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void
.end method

.method static synthetic e(Lcom/applovin/impl/adview/activity/b/d;)Lcom/applovin/impl/adview/activity/b/d$a;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/activity/b/d;->B:Lcom/applovin/impl/adview/activity/b/d$a;

    return-object p0
.end method

.method static synthetic f(Lcom/applovin/impl/adview/activity/b/d;)Landroid/media/MediaPlayer;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/activity/b/d;->w:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic g(Lcom/applovin/impl/adview/activity/b/d;)Lcom/applovin/impl/adview/l;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/activity/b/d;->y:Lcom/applovin/impl/adview/l;

    return-object p0
.end method

.method static synthetic h(Lcom/applovin/impl/adview/activity/b/d;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/activity/b/d;->z:Landroid/widget/ImageView;

    return-object p0
.end method

.method private z()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->H:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->y:Lcom/applovin/impl/adview/l;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/d;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/g;->q()J

    move-result-wide v1

    new-instance v3, Lcom/applovin/impl/adview/activity/b/d$4;

    invoke-direct {v3, p0}, Lcom/applovin/impl/adview/activity/b/d$4;-><init>(Lcom/applovin/impl/adview/activity/b/d;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/applovin/impl/adview/activity/b/d;->a(Lcom/applovin/impl/adview/l;JLjava/lang/Runnable;)V

    :cond_1a
    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->c:Lcom/applovin/impl/sdk/q;

    const-string v1, "InterActivityV2"

    const-string v2, "Continue video from prompt - will resume in onWindowFocusChanged(true) when alert dismisses"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/applovin/impl/adview/activity/b/a;->a(ILandroid/view/KeyEvent;)V

    const/16 p2, 0x19

    if-eq p1, p2, :cond_b

    const/16 p2, 0x18

    if-ne p1, p2, :cond_1a

    :cond_b
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/d;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->U()Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-boolean p1, p0, Lcom/applovin/impl/adview/activity/b/d;->s:Z

    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/d;->u()V

    :cond_1a
    return-void
.end method

.method protected a(Landroid/graphics/PointF;)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->B()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->c:Lcom/applovin/impl/sdk/q;

    const-string v1, "InterActivityV2"

    const-string v2, "Clicking through video"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->i()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/d;->l:Lcom/applovin/sdk/AppLovinAdClickListener;

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/d;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/utils/j;->a(Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAd;)V

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/d;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->o()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/d;->a:Lcom/applovin/impl/sdk/ad/g;

    iget-object v3, p0, Lcom/applovin/impl/adview/activity/b/d;->f:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackAndLaunchVideoClick(Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/adview/AppLovinAdView;Landroid/net/Uri;Landroid/graphics/PointF;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/d;->e:Lcom/applovin/impl/sdk/c/d;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/c/d;->b()V

    :cond_32
    return-void
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->c:Lcom/applovin/impl/sdk/q;

    const-string v1, "InterActivityV2"

    const-string v2, "Skipping video from prompt"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/d;->t()V

    return-void
.end method

.method public c()V
    .registers 8

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->v:Lcom/applovin/impl/adview/activity/a/c;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/d;->z:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/d;->y:Lcom/applovin/impl/adview/l;

    iget-object v3, p0, Lcom/applovin/impl/adview/activity/b/d;->x:Lcom/applovin/impl/adview/a;

    iget-object v4, p0, Lcom/applovin/impl/adview/activity/b/d;->A:Landroid/widget/ProgressBar;

    iget-object v5, p0, Lcom/applovin/impl/adview/activity/b/d;->q:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    iget-object v6, p0, Lcom/applovin/impl/adview/activity/b/d;->f:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual/range {v0 .. v6}, Lcom/applovin/impl/adview/activity/a/c;->a(Landroid/widget/ImageView;Lcom/applovin/impl/adview/l;Lcom/applovin/impl/adview/a;Landroid/widget/ProgressBar;Lcom/applovin/impl/adview/AppLovinVideoViewV2;Lcom/applovin/adview/AppLovinAdView;)V

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    iget-boolean v1, p0, Lcom/applovin/impl/adview/activity/b/d;->D:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/applovin/impl/adview/activity/b/d;->a(Z)V

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/d;->q:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/d;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/g;->f()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->setVideoURI(Landroid/net/Uri;)V

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->am()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->o:Lcom/applovin/impl/sdk/a/b;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/d;->a:Lcom/applovin/impl/sdk/ad/g;

    new-instance v2, Lcom/applovin/impl/adview/activity/b/d$2;

    invoke-direct {v2, p0}, Lcom/applovin/impl/adview/activity/b/d$2;-><init>(Lcom/applovin/impl/adview/activity/b/d;)V

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/a/b;->a(Lcom/applovin/impl/sdk/ad/g;Ljava/lang/Runnable;)V

    :cond_3e
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->q:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->start()V

    iget-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/d;->D:Z

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->x:Lcom/applovin/impl/adview/a;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/a;->a()V

    :cond_4c
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->f:Lcom/applovin/adview/AppLovinAdView;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/d;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinAdView;->renderAd(Lcom/applovin/sdk/AppLovinAd;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->e:Lcom/applovin/impl/sdk/c/d;

    iget-boolean v1, p0, Lcom/applovin/impl/adview/activity/b/d;->D:Z

    if-eqz v1, :cond_5c

    const-wide/16 v1, 0x1

    goto :goto_5e

    :cond_5c
    const-wide/16 v1, 0x0

    :goto_5e
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/c/d;->b(J)V

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->y:Lcom/applovin/impl/adview/l;

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object v1

    new-instance v2, Lcom/applovin/impl/sdk/d/ad;

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->b:Lcom/applovin/impl/sdk/j;

    new-instance v3, Lcom/applovin/impl/adview/activity/b/d$3;

    invoke-direct {v3, p0}, Lcom/applovin/impl/adview/activity/b/d$3;-><init>(Lcom/applovin/impl/adview/activity/b/d;)V

    invoke-direct {v2, v0, v3}, Lcom/applovin/impl/sdk/d/ad;-><init>(Lcom/applovin/impl/sdk/j;Ljava/lang/Runnable;)V

    sget-object v3, Lcom/applovin/impl/sdk/d/s$a;->a:Lcom/applovin/impl/sdk/d/s$a;

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->r()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/s$a;JZ)V

    :cond_83
    iget-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/d;->s:Z

    invoke-super {p0, v0}, Lcom/applovin/impl/adview/activity/b/a;->b(Z)V

    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->c:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encountered media error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/d;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InterActivityV2"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->J()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->m:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    instance-of v0, v0, Lcom/applovin/impl/sdk/ad/i;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->m:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    check-cast v0, Lcom/applovin/impl/sdk/ad/i;

    invoke-interface {v0, p1}, Lcom/applovin/impl/sdk/ad/i;->onAdDisplayFailed(Ljava/lang/String;)V

    :cond_41
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/d;->f()V

    :cond_44
    return-void
.end method

.method public c(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/applovin/impl/adview/activity/b/a;->c(Z)V

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/d;->w()V

    goto :goto_10

    :cond_9
    iget-boolean p1, p0, Lcom/applovin/impl/adview/activity/b/d;->u:Z

    if-nez p1, :cond_10

    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/d;->s()V

    :cond_10
    :goto_10
    return-void
.end method

.method public f()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->r:Lcom/applovin/impl/adview/i;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/i;->b()V

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->C:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/d;->l()V

    invoke-super {p0}, Lcom/applovin/impl/adview/activity/b/a;->f()V

    return-void
.end method

.method public h()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->c:Lcom/applovin/impl/sdk/q;

    const-string v1, "InterActivityV2"

    const-string v2, "Destroying video components"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->q:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->q:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->pause()V

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->q:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->stopPlayback()V

    :cond_17
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->w:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->w:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_20} :catch_21

    goto :goto_27

    :catch_21
    move-exception v0

    const-string v2, "Unable to destroy presenter"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_27
    :goto_27
    invoke-super {p0}, Lcom/applovin/impl/adview/activity/b/a;->h()V

    return-void
.end method

.method protected l()V
    .registers 7

    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/d;->y()I

    move-result v1

    iget-boolean v2, p0, Lcom/applovin/impl/adview/activity/b/d;->D:Z

    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/d;->x()Z

    move-result v3

    iget-wide v4, p0, Lcom/applovin/impl/adview/activity/b/d;->I:J

    move-object v0, p0

    invoke-super/range {v0 .. v5}, Lcom/applovin/impl/adview/activity/b/a;->a(IZZJ)V

    return-void
.end method

.method protected p()Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdType;->INCENTIVIZED:Lcom/applovin/sdk/AppLovinAdType;

    if-ne v0, v1, :cond_12

    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/d;->x()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method protected q()V
    .registers 7

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->ac()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_14

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->ad()I

    move-result v0

    if-ltz v0, :cond_69

    :cond_14
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->ac()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_25

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->ac()J

    move-result-wide v0

    goto :goto_66

    :cond_25
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->a:Lcom/applovin/impl/sdk/ad/g;

    check-cast v0, Lcom/applovin/impl/sdk/ad/a;

    iget-wide v4, p0, Lcom/applovin/impl/adview/activity/b/d;->t:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_30

    add-long/2addr v2, v4

    :cond_30
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->ae()Z

    move-result v1

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/d;->a:Lcom/applovin/impl/sdk/ad/g;

    check-cast v1, Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/a;->j()F

    move-result v1

    float-to-int v1, v1

    if-lez v1, :cond_4a

    :goto_41
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    goto :goto_52

    :cond_4a
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->s()J

    move-result-wide v0

    long-to-int v1, v0

    if-lez v1, :cond_52

    goto :goto_41

    :cond_52
    :goto_52
    long-to-double v0, v2

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/d;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/g;->ad()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-long v0, v0

    :goto_66
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/adview/activity/b/d;->a(J)V

    :cond_69
    return-void
.end method

.method protected s()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->c:Lcom/applovin/impl/sdk/q;

    const-string v1, "InterActivityV2"

    const-string v2, "Pausing video"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->q:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->q:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/activity/b/d;->F:I

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->q:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->pause()V

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->r:Lcom/applovin/impl/adview/i;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/i;->c()V

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->c:Lcom/applovin/impl/sdk/q;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Paused video at position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/applovin/impl/adview/activity/b/d;->F:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_42

    :cond_3e
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->c:Lcom/applovin/impl/sdk/q;

    const-string v2, "Nothing to pause"

    :goto_42
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public t()V
    .registers 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/applovin/impl/adview/activity/b/d;->J:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/applovin/impl/adview/activity/b/d;->I:J

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->c:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping video with skip time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/applovin/impl/adview/activity/b/d;->I:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InterActivityV2"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->e:Lcom/applovin/impl/sdk/c/d;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c/d;->f()V

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->v()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/d;->f()V

    goto :goto_3c

    :cond_39
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/d;->v()V

    :goto_3c
    return-void
.end method

.method protected u()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->w:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v1, p0, Lcom/applovin/impl/adview/activity/b/d;->s:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/applovin/impl/adview/activity/b/d;->s:Z

    iget-boolean v1, p0, Lcom/applovin/impl/adview/activity/b/d;->s:Z

    xor-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/d;->s:Z

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/activity/b/d;->d(Z)V

    iget-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/d;->s:Z

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/adview/activity/b/d;->a(ZJ)V

    return-void
.end method

.method public v()V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->c:Lcom/applovin/impl/sdk/q;

    const-string v1, "InterActivityV2"

    const-string v2, "Showing postitial..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/applovin/impl/adview/activity/b/d;->A()V

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->v:Lcom/applovin/impl/adview/activity/a/c;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/d;->g:Lcom/applovin/impl/adview/l;

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/d;->f:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/adview/activity/a/c;->a(Lcom/applovin/impl/adview/l;Landroid/view/View;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->Q()I

    move-result v0

    int-to-long v0, v0

    const-string v2, "javascript:al_onPoststitialShow();"

    invoke-virtual {p0, v2, v0, v1}, Lcom/applovin/impl/adview/activity/b/d;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->g:Lcom/applovin/impl/adview/l;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->s()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_42

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->g:Lcom/applovin/impl/adview/l;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/d;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/g;->s()J

    move-result-wide v1

    new-instance v3, Lcom/applovin/impl/adview/activity/b/d$7;

    invoke-direct {v3, p0}, Lcom/applovin/impl/adview/activity/b/d$7;-><init>(Lcom/applovin/impl/adview/activity/b/d;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/applovin/impl/adview/activity/b/d;->a(Lcom/applovin/impl/adview/l;JLjava/lang/Runnable;)V

    goto :goto_48

    :cond_42
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->g:Lcom/applovin/impl/adview/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/l;->setVisibility(I)V

    :cond_48
    :goto_48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/d;->u:Z

    return-void
.end method

.method public w()V
    .registers 4

    new-instance v0, Lcom/applovin/impl/adview/activity/b/d$5;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/activity/b/d$5;-><init>(Lcom/applovin/impl/adview/activity/b/d;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/adview/activity/b/d;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected x()Z
    .registers 3

    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/d;->y()I

    move-result v0

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/d;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/g;->P()I

    move-result v1

    if-lt v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method protected y()I
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->q:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_18

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/applovin/impl/adview/activity/b/d;->t:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0

    :cond_18
    iget v0, p0, Lcom/applovin/impl/adview/activity/b/d;->E:I

    return v0
.end method
