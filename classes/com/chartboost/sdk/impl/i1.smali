.class public Lcom/chartboost/sdk/impl/i1;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/chartboost/sdk/impl/k1$a;


# instance fields
.field private a:Landroid/net/Uri;

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/view/SurfaceHolder;

.field private f:Landroid/media/MediaPlayer;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Landroid/media/MediaPlayer$OnCompletionListener;

.field private l:Landroid/media/MediaPlayer$OnPreparedListener;

.field private m:Landroid/media/MediaPlayer$OnErrorListener;

.field private n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/chartboost/sdk/impl/i1;->c:I

    .line 3
    iput p1, p0, Lcom/chartboost/sdk/impl/i1;->d:I

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/chartboost/sdk/impl/i1;->e:Landroid/view/SurfaceHolder;

    .line 7
    iput-object p1, p0, Lcom/chartboost/sdk/impl/i1;->f:Landroid/media/MediaPlayer;

    .line 21
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/i1;->f()V

    return-void
.end method

.method private a(Z)V
    .registers 3

    .line 11
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->f:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_16

    .line 12
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 13
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/chartboost/sdk/impl/i1;->f:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/chartboost/sdk/impl/i1;->c:I

    if-eqz p1, :cond_16

    .line 17
    iput v0, p0, Lcom/chartboost/sdk/impl/i1;->d:I

    :cond_16
    return-void
.end method

.method private f()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/chartboost/sdk/impl/i1;->g:I

    .line 2
    iput v0, p0, Lcom/chartboost/sdk/impl/i1;->h:I

    .line 3
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p0, v1}, Landroid/view/SurfaceView;->setFocusable(Z)V

    .line 6
    invoke-virtual {p0, v1}, Landroid/view/SurfaceView;->setFocusableInTouchMode(Z)V

    .line 7
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestFocus()Z

    .line 8
    iput v0, p0, Lcom/chartboost/sdk/impl/i1;->c:I

    .line 9
    iput v0, p0, Lcom/chartboost/sdk/impl/i1;->d:I

    return-void
.end method

.method private g()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->f:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/chartboost/sdk/impl/i1;->c:I

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

.method private h()V
    .registers 9

    const-string v0, "VideoSurfaceView"

    const-string v1, "Unable to open content: "

    .line 1
    iget-object v2, p0, Lcom/chartboost/sdk/impl/i1;->a:Landroid/net/Uri;

    if-eqz v2, :cond_bc

    iget-object v2, p0, Lcom/chartboost/sdk/impl/i1;->e:Landroid/view/SurfaceHolder;

    if-nez v2, :cond_e

    goto/16 :goto_bc

    .line 6
    :cond_e
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.music.musicservicecommand"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "command"

    const-string v4, "pause"

    .line 7
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v2, 0x0

    .line 12
    invoke-direct {p0, v2}, Lcom/chartboost/sdk/impl/i1;->a(Z)V

    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 14
    :try_start_29
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v5, p0, Lcom/chartboost/sdk/impl/i1;->f:Landroid/media/MediaPlayer;

    .line 15
    invoke-virtual {v5, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 16
    iget-object v5, p0, Lcom/chartboost/sdk/impl/i1;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v5, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 17
    iput v4, p0, Lcom/chartboost/sdk/impl/i1;->b:I

    .line 18
    iget-object v5, p0, Lcom/chartboost/sdk/impl/i1;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v5, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 19
    iget-object v5, p0, Lcom/chartboost/sdk/impl/i1;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v5, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 20
    iget-object v5, p0, Lcom/chartboost/sdk/impl/i1;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v5, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 22
    iget-object v5, p0, Lcom/chartboost/sdk/impl/i1;->f:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lcom/chartboost/sdk/impl/i1;->e:Landroid/view/SurfaceHolder;

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 23
    iget-object v5, p0, Lcom/chartboost/sdk/impl/i1;->f:Landroid/media/MediaPlayer;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 24
    iget-object v5, p0, Lcom/chartboost/sdk/impl/i1;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v5, v3}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 27
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/chartboost/sdk/impl/i1;->a:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 30
    iget-object v5, p0, Lcom/chartboost/sdk/impl/i1;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 31
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 33
    iget-object v5, p0, Lcom/chartboost/sdk/impl/i1;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 36
    iput v3, p0, Lcom/chartboost/sdk/impl/i1;->c:I
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_7e} :catch_9e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_7e} :catch_7f

    return-void

    :catch_7f
    move-exception v5

    .line 44
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/i1;->a:Landroid/net/Uri;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    iput v4, p0, Lcom/chartboost/sdk/impl/i1;->c:I

    .line 46
    iput v4, p0, Lcom/chartboost/sdk/impl/i1;->d:I

    .line 47
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->f:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0, v3, v2}, Lcom/chartboost/sdk/impl/i1;->onError(Landroid/media/MediaPlayer;II)Z

    return-void

    :catch_9e
    move-exception v5

    .line 48
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/i1;->a:Landroid/net/Uri;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    iput v4, p0, Lcom/chartboost/sdk/impl/i1;->c:I

    .line 50
    iput v4, p0, Lcom/chartboost/sdk/impl/i1;->d:I

    .line 51
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->f:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0, v3, v2}, Lcom/chartboost/sdk/impl/i1;->onError(Landroid/media/MediaPlayer;II)Z

    :cond_bc
    :goto_bc
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 18
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/i1;->g()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_e

    .line 19
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 20
    iput v1, p0, Lcom/chartboost/sdk/impl/i1;->c:I

    .line 22
    :cond_e
    iput v1, p0, Lcom/chartboost/sdk/impl/i1;->d:I

    return-void
.end method

.method public a(I)V
    .registers 3

    .line 23
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/i1;->g()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 24
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/chartboost/sdk/impl/i1;->n:I

    goto :goto_11

    .line 27
    :cond_f
    iput p1, p0, Lcom/chartboost/sdk/impl/i1;->n:I

    :goto_11
    return-void
.end method

.method public a(II)V
    .registers 3

    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .registers 2

    .line 9
    iput-object p1, p0, Lcom/chartboost/sdk/impl/i1;->k:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnErrorListener;)V
    .registers 2

    .line 10
    iput-object p1, p0, Lcom/chartboost/sdk/impl/i1;->m:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .registers 2

    .line 8
    iput-object p1, p0, Lcom/chartboost/sdk/impl/i1;->l:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public a(Landroid/net/Uri;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/i1;->a:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/chartboost/sdk/impl/i1;->n:I

    .line 5
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/i1;->h()V

    .line 6
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 7
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    return-void
.end method

.method public b()I
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/i1;->g()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2
    iget v0, p0, Lcom/chartboost/sdk/impl/i1;->b:I

    if-lez v0, :cond_b

    return v0

    .line 5
    :cond_b
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/i1;->b:I

    return v0

    :cond_14
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/chartboost/sdk/impl/i1;->b:I

    return v0
.end method

.method public c()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/i1;->g()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->f:Landroid/media/MediaPlayer;

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

.method public d()I
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/i1;->g()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/i1;->g()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_16

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 4
    iput v1, p0, Lcom/chartboost/sdk/impl/i1;->c:I

    .line 7
    :cond_16
    iput v1, p0, Lcom/chartboost/sdk/impl/i1;->d:I

    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 3

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3

    const/4 p1, 0x5

    .line 1
    iput p1, p0, Lcom/chartboost/sdk/impl/i1;->d:I

    .line 2
    iget v0, p0, Lcom/chartboost/sdk/impl/i1;->c:I

    if-eq v0, p1, :cond_12

    .line 3
    iput p1, p0, Lcom/chartboost/sdk/impl/i1;->c:I

    .line 4
    iget-object p1, p0, Lcom/chartboost/sdk/impl/i1;->k:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz p1, :cond_12

    .line 5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->f:Landroid/media/MediaPlayer;

    invoke-interface {p1, v0}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_12
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 6

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoSurfaceView"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/chartboost/sdk/impl/i1;->c:I

    .line 3
    iput p1, p0, Lcom/chartboost/sdk/impl/i1;->d:I

    .line 6
    iget-object p1, p0, Lcom/chartboost/sdk/impl/i1;->m:Landroid/media/MediaPlayer$OnErrorListener;

    const/4 v0, 0x1

    if-eqz p1, :cond_30

    .line 7
    iget-object v1, p0, Lcom/chartboost/sdk/impl/i1;->f:Landroid/media/MediaPlayer;

    invoke-interface {p1, v1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result p1

    if-eqz p1, :cond_30

    :cond_30
    return v0
.end method

.method protected onMeasure(II)V
    .registers 6

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p1}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result p1

    .line 2
    invoke-static {v0, p2}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result p2

    .line 4
    iget v0, p0, Lcom/chartboost/sdk/impl/i1;->g:I

    if-lez v0, :cond_32

    iget v1, p0, Lcom/chartboost/sdk/impl/i1;->h:I

    if-lez v1, :cond_32

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    int-to-float v0, p1

    mul-float v1, v1, v0

    .line 5
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6
    iget v1, p0, Lcom/chartboost/sdk/impl/i1;->g:I

    int-to-float v1, v1

    iget v2, p0, Lcom/chartboost/sdk/impl/i1;->h:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float p2, p2

    mul-float v1, v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    move p2, v0

    .line 11
    :cond_32
    invoke-virtual {p0, p1, p2}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 5

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lcom/chartboost/sdk/impl/i1;->c:I

    .line 3
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/i1;->g:I

    .line 4
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    iput p1, p0, Lcom/chartboost/sdk/impl/i1;->h:I

    .line 5
    iget-object p1, p0, Lcom/chartboost/sdk/impl/i1;->l:Landroid/media/MediaPlayer$OnPreparedListener;

    if-eqz p1, :cond_18

    .line 6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->f:Landroid/media/MediaPlayer;

    invoke-interface {p1, v0}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 9
    :cond_18
    iget p1, p0, Lcom/chartboost/sdk/impl/i1;->n:I

    if-eqz p1, :cond_1f

    .line 13
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/i1;->a(I)V

    .line 15
    :cond_1f
    iget p1, p0, Lcom/chartboost/sdk/impl/i1;->g:I

    const/4 v0, 0x3

    if-eqz p1, :cond_47

    iget p1, p0, Lcom/chartboost/sdk/impl/i1;->h:I

    if-eqz p1, :cond_47

    .line 18
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget v1, p0, Lcom/chartboost/sdk/impl/i1;->g:I

    iget v2, p0, Lcom/chartboost/sdk/impl/i1;->h:I

    invoke-interface {p1, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 19
    iget p1, p0, Lcom/chartboost/sdk/impl/i1;->i:I

    iget v1, p0, Lcom/chartboost/sdk/impl/i1;->g:I

    if-ne p1, v1, :cond_4e

    iget p1, p0, Lcom/chartboost/sdk/impl/i1;->j:I

    iget v1, p0, Lcom/chartboost/sdk/impl/i1;->h:I

    if-ne p1, v1, :cond_4e

    .line 23
    iget p1, p0, Lcom/chartboost/sdk/impl/i1;->d:I

    if-ne p1, v0, :cond_4e

    .line 24
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/i1;->a()V

    goto :goto_4e

    .line 30
    :cond_47
    iget p1, p0, Lcom/chartboost/sdk/impl/i1;->d:I

    if-ne p1, v0, :cond_4e

    .line 31
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/i1;->a()V

    :cond_4e
    :goto_4e
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p2

    iput p2, p0, Lcom/chartboost/sdk/impl/i1;->g:I

    .line 2
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    iput p1, p0, Lcom/chartboost/sdk/impl/i1;->h:I

    .line 3
    iget p2, p0, Lcom/chartboost/sdk/impl/i1;->g:I

    if-eqz p2, :cond_1d

    if-eqz p1, :cond_1d

    .line 4
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget p2, p0, Lcom/chartboost/sdk/impl/i1;->g:I

    iget p3, p0, Lcom/chartboost/sdk/impl/i1;->h:I

    invoke-interface {p1, p2, p3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_1d
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 7

    .line 1
    iput p3, p0, Lcom/chartboost/sdk/impl/i1;->i:I

    .line 2
    iput p4, p0, Lcom/chartboost/sdk/impl/i1;->j:I

    .line 3
    iget p1, p0, Lcom/chartboost/sdk/impl/i1;->d:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    .line 4
    :goto_e
    iget v1, p0, Lcom/chartboost/sdk/impl/i1;->g:I

    if-ne v1, p3, :cond_17

    iget p3, p0, Lcom/chartboost/sdk/impl/i1;->h:I

    if-ne p3, p4, :cond_17

    goto :goto_18

    :cond_17
    const/4 p2, 0x0

    .line 5
    :goto_18
    iget-object p3, p0, Lcom/chartboost/sdk/impl/i1;->f:Landroid/media/MediaPlayer;

    if-eqz p3, :cond_2a

    if-eqz p1, :cond_2a

    if-eqz p2, :cond_2a

    .line 6
    iget p1, p0, Lcom/chartboost/sdk/impl/i1;->n:I

    if-eqz p1, :cond_27

    .line 7
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/i1;->a(I)V

    .line 9
    :cond_27
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/i1;->a()V

    :cond_2a
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/i1;->e:Landroid/view/SurfaceHolder;

    .line 2
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/i1;->h()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/i1;->e:Landroid/view/SurfaceHolder;

    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/i1;->a(Z)V

    return-void
.end method
