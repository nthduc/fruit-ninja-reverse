.class public Lcom/applovin/impl/adview/AppLovinVideoViewV2;
.super Landroid/view/SurfaceView;

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private final A:Landroid/media/MediaPlayer$OnInfoListener;

.field private final B:Landroid/media/MediaPlayer$OnErrorListener;

.field private final C:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private final D:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private final a:Lcom/applovin/impl/sdk/q;

.field private final b:Lcom/applovin/impl/sdk/ad/g$d;

.field private c:Landroid/net/Uri;

.field private d:I

.field private e:I

.field private f:Landroid/view/SurfaceHolder;

.field private g:Landroid/media/MediaPlayer;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Landroid/media/MediaPlayer$OnCompletionListener;

.field private n:Landroid/media/MediaPlayer$OnPreparedListener;

.field private o:I

.field private p:Landroid/media/MediaPlayer$OnErrorListener;

.field private q:Landroid/media/MediaPlayer$OnInfoListener;

.field private r:I

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Landroid/media/AudioManager;

.field private w:I

.field private final x:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private final y:Landroid/media/MediaPlayer$OnPreparedListener;

.field private final z:Landroid/media/MediaPlayer$OnCompletionListener;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/ad/g$d;Landroid/content/Context;Lcom/applovin/impl/sdk/j;)V
    .registers 7

    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->d:I

    iput v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->e:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->f:Landroid/view/SurfaceHolder;

    iput-object v1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->g:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    iput v1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->w:I

    new-instance v2, Lcom/applovin/impl/adview/AppLovinVideoViewV2$2;

    invoke-direct {v2, p0}, Lcom/applovin/impl/adview/AppLovinVideoViewV2$2;-><init>(Lcom/applovin/impl/adview/AppLovinVideoViewV2;)V

    iput-object v2, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->x:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    new-instance v2, Lcom/applovin/impl/adview/AppLovinVideoViewV2$3;

    invoke-direct {v2, p0}, Lcom/applovin/impl/adview/AppLovinVideoViewV2$3;-><init>(Lcom/applovin/impl/adview/AppLovinVideoViewV2;)V

    iput-object v2, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->y:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v2, Lcom/applovin/impl/adview/AppLovinVideoViewV2$4;

    invoke-direct {v2, p0}, Lcom/applovin/impl/adview/AppLovinVideoViewV2$4;-><init>(Lcom/applovin/impl/adview/AppLovinVideoViewV2;)V

    iput-object v2, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->z:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v2, Lcom/applovin/impl/adview/AppLovinVideoViewV2$5;

    invoke-direct {v2, p0}, Lcom/applovin/impl/adview/AppLovinVideoViewV2$5;-><init>(Lcom/applovin/impl/adview/AppLovinVideoViewV2;)V

    iput-object v2, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->A:Landroid/media/MediaPlayer$OnInfoListener;

    new-instance v2, Lcom/applovin/impl/adview/AppLovinVideoViewV2$6;

    invoke-direct {v2, p0}, Lcom/applovin/impl/adview/AppLovinVideoViewV2$6;-><init>(Lcom/applovin/impl/adview/AppLovinVideoViewV2;)V

    iput-object v2, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->B:Landroid/media/MediaPlayer$OnErrorListener;

    new-instance v2, Lcom/applovin/impl/adview/AppLovinVideoViewV2$7;

    invoke-direct {v2, p0}, Lcom/applovin/impl/adview/AppLovinVideoViewV2$7;-><init>(Lcom/applovin/impl/adview/AppLovinVideoViewV2;)V

    iput-object v2, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->C:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    new-instance v2, Lcom/applovin/impl/adview/AppLovinVideoViewV2$8;

    invoke-direct {v2, p0}, Lcom/applovin/impl/adview/AppLovinVideoViewV2$8;-><init>(Lcom/applovin/impl/adview/AppLovinVideoViewV2;)V

    iput-object v2, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->D:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    iput-object p1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->b:Lcom/applovin/impl/sdk/ad/g$d;

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->a:Lcom/applovin/impl/sdk/q;

    const-string p1, "audio"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->v:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    new-instance p2, Lcom/applovin/impl/adview/AppLovinVideoViewV2$1;

    invoke-direct {p2, p0}, Lcom/applovin/impl/adview/AppLovinVideoViewV2$1;-><init>(Lcom/applovin/impl/adview/AppLovinVideoViewV2;)V

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-virtual {p0, v1}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->requestFocus()Z

    iput v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->d:I

    iput v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->e:I

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/AppLovinVideoViewV2;I)I
    .registers 2

    iput p1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->k:I

    return p1
.end method

.method static synthetic a(Lcom/applovin/impl/adview/AppLovinVideoViewV2;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->f:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/adview/AppLovinVideoViewV2;)Lcom/applovin/impl/sdk/q;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->a:Lcom/applovin/impl/sdk/q;

    return-object p0
.end method

.method private a()V
    .registers 8

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->a:Lcom/applovin/impl/sdk/q;

    const-string v1, "AppLovinVideoView"

    const-string v2, "Opening video"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->c:Landroid/net/Uri;

    if-eqz v0, :cond_b7

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->f:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_13

    goto/16 :goto_b7

    :cond_13
    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->g:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->a:Lcom/applovin/impl/sdk/q;

    const-string v2, "Using existing MediaPlayer"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void

    :cond_24
    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_26
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->g:Landroid/media/MediaPlayer;

    iget v3, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->h:I

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->g:Landroid/media/MediaPlayer;

    iget v4, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->h:I

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    goto :goto_41

    :cond_39
    iget-object v3, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v3

    iput v3, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->h:I

    :goto_41
    iget-object v3, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->g:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->y:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v3, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->g:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->x:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v3, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->g:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->z:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v3, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->g:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->B:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v3, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->g:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->A:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v3, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->g:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->C:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v3, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->g:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->D:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iput v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->o:I

    iget-object v3, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->g:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->c:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    iget-object v3, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->g:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->f:Landroid/view/SurfaceHolder;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v3, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v3, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepareAsync()V

    iput v2, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->d:I
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_93} :catch_94

    goto :goto_b7

    :catch_94
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to open video: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->c:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Lcom/applovin/impl/sdk/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->d:I

    iput v1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->e:I

    iget-object v1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->B:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->g:Landroid/media/MediaPlayer;

    invoke-interface {v1, v3, v2, v0}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    :cond_b7
    :goto_b7
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/AppLovinVideoViewV2;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->s:Z

    return p1
.end method

.method static synthetic b(Lcom/applovin/impl/adview/AppLovinVideoViewV2;I)I
    .registers 2

    iput p1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->l:I

    return p1
.end method

.method static synthetic b(Lcom/applovin/impl/adview/AppLovinVideoViewV2;)Landroid/media/MediaPlayer;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->g:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method private b()Z
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->g:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->d:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_f

    if-eqz v0, :cond_f

    if-eq v0, v1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method static synthetic b(Lcom/applovin/impl/adview/AppLovinVideoViewV2;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->t:Z

    return p1
.end method

.method static synthetic c(Lcom/applovin/impl/adview/AppLovinVideoViewV2;I)I
    .registers 2

    iput p1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->i:I

    return p1
.end method

.method static synthetic c(Lcom/applovin/impl/adview/AppLovinVideoViewV2;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->a()V

    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/adview/AppLovinVideoViewV2;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->u:Z

    return p1
.end method

.method static synthetic d(Lcom/applovin/impl/adview/AppLovinVideoViewV2;)I
    .registers 1

    iget p0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->e:I

    return p0
.end method

.method static synthetic d(Lcom/applovin/impl/adview/AppLovinVideoViewV2;I)I
    .registers 2

    iput p1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->j:I

    return p1
.end method

.method static synthetic e(Lcom/applovin/impl/adview/AppLovinVideoViewV2;)I
    .registers 1

    iget p0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->i:I

    return p0
.end method

.method static synthetic e(Lcom/applovin/impl/adview/AppLovinVideoViewV2;I)I
    .registers 2

    iput p1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->d:I

    return p1
.end method

.method static synthetic f(Lcom/applovin/impl/adview/AppLovinVideoViewV2;)I
    .registers 1

    iget p0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->j:I

    return p0
.end method

.method static synthetic f(Lcom/applovin/impl/adview/AppLovinVideoViewV2;I)I
    .registers 2

    iput p1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->e:I

    return p1
.end method

.method static synthetic g(Lcom/applovin/impl/adview/AppLovinVideoViewV2;)I
    .registers 1

    iget p0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->r:I

    return p0
.end method

.method static synthetic g(Lcom/applovin/impl/adview/AppLovinVideoViewV2;I)I
    .registers 2

    iput p1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->o:I

    return p1
.end method

.method static synthetic h(Lcom/applovin/impl/adview/AppLovinVideoViewV2;)Landroid/media/MediaPlayer$OnPreparedListener;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->n:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method static synthetic i(Lcom/applovin/impl/adview/AppLovinVideoViewV2;)I
    .registers 1

    iget p0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->k:I

    return p0
.end method

.method static synthetic j(Lcom/applovin/impl/adview/AppLovinVideoViewV2;)I
    .registers 1

    iget p0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->l:I

    return p0
.end method

.method static synthetic k(Lcom/applovin/impl/adview/AppLovinVideoViewV2;)Landroid/media/MediaPlayer$OnCompletionListener;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->m:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic l(Lcom/applovin/impl/adview/AppLovinVideoViewV2;)I
    .registers 1

    iget p0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->w:I

    return p0
.end method

.method static synthetic m(Lcom/applovin/impl/adview/AppLovinVideoViewV2;)Landroid/media/AudioManager;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->v:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic n(Lcom/applovin/impl/adview/AppLovinVideoViewV2;)Landroid/media/MediaPlayer$OnInfoListener;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->q:Landroid/media/MediaPlayer$OnInfoListener;

    return-object p0
.end method

.method static synthetic o(Lcom/applovin/impl/adview/AppLovinVideoViewV2;)Landroid/media/MediaPlayer$OnErrorListener;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->p:Landroid/media/MediaPlayer$OnErrorListener;

    return-object p0
.end method


# virtual methods
.method public canPause()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->s:Z

    return v0
.end method

.method public canSeekBackward()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->t:Z

    return v0
.end method

.method public canSeekForward()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->u:Z

    return v0
.end method

.method public getAudioSessionId()I
    .registers 3

    iget v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->h:I

    if-nez v0, :cond_12

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v1

    iput v1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->h:I

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_12
    iget v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->h:I

    return v0
.end method

.method public getBufferPercentage()I
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->g:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->o:I

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public getCurrentPosition()I
    .registers 2

    invoke-direct {p0}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public getDuration()I
    .registers 2

    invoke-direct {p0}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, -0x1

    :goto_e
    return v0
.end method

.method public isPlaying()Z
    .registers 2

    invoke-direct {p0}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method protected onMeasure(II)V
    .registers 10

    iget v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->i:I

    invoke-static {v0, p1}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->getDefaultSize(II)I

    move-result v0

    iget v1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->j:I

    invoke-static {v1, p2}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->getDefaultSize(II)I

    move-result v1

    iget v2, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->i:I

    if-lez v2, :cond_76

    iget v2, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->j:I

    if-lez v2, :cond_76

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget v2, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->i:I

    mul-int v2, v2, v1

    iget v3, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->j:I

    mul-int v3, v3, v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ge v2, v3, :cond_2a

    const/4 v2, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x0

    :goto_2b
    iget v3, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->i:I

    mul-int v3, v3, v1

    iget v6, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->j:I

    mul-int v6, v6, v0

    if-le v3, v6, :cond_36

    goto :goto_37

    :cond_36
    const/4 v4, 0x0

    :goto_37
    iget-object v3, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->b:Lcom/applovin/impl/sdk/ad/g$d;

    sget-object v5, Lcom/applovin/impl/sdk/ad/g$d;->a:Lcom/applovin/impl/sdk/ad/g$d;

    if-ne v3, v5, :cond_54

    if-eqz v2, :cond_49

    iget p1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->i:I

    mul-int p1, p1, p2

    iget v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->j:I

    div-int v0, p1, v0

    :goto_47
    move p1, v0

    goto :goto_78

    :cond_49
    if-eqz v4, :cond_78

    iget p2, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->j:I

    mul-int p2, p2, p1

    iget v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->i:I

    div-int v1, p2, v0

    goto :goto_77

    :cond_54
    iget-object v3, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->b:Lcom/applovin/impl/sdk/ad/g$d;

    sget-object v5, Lcom/applovin/impl/sdk/ad/g$d;->b:Lcom/applovin/impl/sdk/ad/g$d;

    if-ne v3, v5, :cond_76

    if-eqz v2, :cond_68

    int-to-float p2, p1

    iget v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->i:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    iget v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->j:I

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int v1, v0

    goto :goto_77

    :cond_68
    if-eqz v4, :cond_78

    int-to-float p1, p2

    iget v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->j:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->i:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int v0, v0

    goto :goto_47

    :cond_76
    move p1, v0

    :goto_77
    move p2, v1

    :cond_78
    :goto_78
    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->setMeasuredDimension(II)V

    return-void
.end method

.method public pause()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->a:Lcom/applovin/impl/sdk/q;

    const-string v1, "AppLovinVideoView"

    const-string v2, "Pausing video"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->b()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_1c
    const/4 v0, 0x4

    iput v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->e:I

    return-void
.end method

.method public resume()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->a:Lcom/applovin/impl/sdk/q;

    const-string v1, "AppLovinVideoView"

    const-string v2, "Resuming video"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->a()V

    return-void
.end method

.method public seekAndStart(J)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->a:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Seeking and starting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinVideoView"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->g:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_26

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_2d

    :cond_26
    iget-object p1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->a:Lcom/applovin/impl/sdk/q;

    const-string p2, "Media player unavailable"

    invoke-virtual {p1, v2, p2}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2d
    return-void
.end method

.method public seekTo(I)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->a:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Seeking to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinVideoView"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->b()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 p1, 0x0

    goto :goto_31

    :cond_2a
    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->a:Lcom/applovin/impl/sdk/q;

    const-string v1, "Seek delayed"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_31
    iput p1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->r:I

    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->m:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->p:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->q:Landroid/media/MediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->n:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->a:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting video uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinVideoView"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->c:Landroid/net/Uri;

    const/4 p1, 0x0

    iput p1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->r:I

    invoke-direct {p0}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->a()V

    invoke-virtual {p0}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->requestLayout()V

    invoke-virtual {p0}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->invalidate()V

    return-void
.end method

.method public start()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->a:Lcom/applovin/impl/sdk/q;

    const-string v1, "AppLovinVideoView"

    const-string v2, "Starting video"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->b()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_14
    const/4 v0, 0x3

    iput v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->e:I

    return-void
.end method

.method public stopPlayback()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->a:Lcom/applovin/impl/sdk/q;

    const-string v1, "AppLovinVideoView"

    const-string v2, "Stopping playback"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->g:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->g:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    iput v1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->d:I

    iput v1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->e:I

    iget-object v1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->v:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_22
    return-void
.end method
