.class public Lcom/chartboost/sdk/impl/j1;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/chartboost/sdk/impl/k1$a;


# instance fields
.field private a:Landroid/net/Uri;

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/view/Surface;

.field private f:Landroid/media/MediaPlayer;

.field private g:I

.field private h:I

.field private i:Landroid/media/MediaPlayer$OnCompletionListener;

.field private j:Landroid/media/MediaPlayer$OnPreparedListener;

.field private k:Landroid/media/MediaPlayer$OnErrorListener;

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/chartboost/sdk/impl/j1;->c:I

    .line 3
    iput p1, p0, Lcom/chartboost/sdk/impl/j1;->d:I

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/chartboost/sdk/impl/j1;->e:Landroid/view/Surface;

    .line 7
    iput-object p1, p0, Lcom/chartboost/sdk/impl/j1;->f:Landroid/media/MediaPlayer;

    .line 19
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/j1;->g()V

    return-void
.end method

.method private a(Z)V
    .registers 3

    .line 20
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j1;->f:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_16

    .line 21
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 22
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j1;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/chartboost/sdk/impl/j1;->f:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/chartboost/sdk/impl/j1;->c:I

    if-eqz p1, :cond_16

    .line 26
    iput v0, p0, Lcom/chartboost/sdk/impl/j1;->d:I

    :cond_16
    return-void
.end method

.method private f()V
    .registers 4

    .line 1
    :try_start_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/chartboost/sdk/impl/j1;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v1, 0x13

    .line 5
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    .line 7
    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/chartboost/sdk/impl/j1;->h:I

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/j1;->g:I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    goto :goto_2f

    :catch_27
    move-exception v0

    const-string v1, "play video"

    const-string v2, "read size error"

    .line 12
    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2f
    return-void
.end method

.method private g()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/chartboost/sdk/impl/j1;->g:I

    .line 2
    iput v0, p0, Lcom/chartboost/sdk/impl/j1;->h:I

    .line 3
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/TextureView;->setFocusable(Z)V

    .line 5
    invoke-virtual {p0, v1}, Landroid/view/TextureView;->setFocusableInTouchMode(Z)V

    .line 6
    invoke-virtual {p0}, Landroid/view/TextureView;->requestFocus()Z

    .line 7
    iput v0, p0, Lcom/chartboost/sdk/impl/j1;->c:I

    .line 8
    iput v0, p0, Lcom/chartboost/sdk/impl/j1;->d:I

    return-void
.end method

.method private h()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j1;->f:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/chartboost/sdk/impl/j1;->c:I

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

.method private i()V
    .registers 9

    const-string v0, "VideoTextureView"

    const-string v1, "Unable to open content: "

    .line 1
    iget-object v2, p0, Lcom/chartboost/sdk/impl/j1;->a:Landroid/net/Uri;

    if-eqz v2, :cond_bf

    iget-object v2, p0, Lcom/chartboost/sdk/impl/j1;->e:Landroid/view/Surface;

    if-nez v2, :cond_e

    goto/16 :goto_bf

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
    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v2, 0x0

    .line 12
    invoke-direct {p0, v2}, Lcom/chartboost/sdk/impl/j1;->a(Z)V

    .line 14
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/j1;->f()V

    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 17
    :try_start_2c
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v5, p0, Lcom/chartboost/sdk/impl/j1;->f:Landroid/media/MediaPlayer;

    .line 18
    invoke-virtual {v5, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 19
    iget-object v5, p0, Lcom/chartboost/sdk/impl/j1;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v5, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 20
    iput v4, p0, Lcom/chartboost/sdk/impl/j1;->b:I

    .line 21
    iget-object v5, p0, Lcom/chartboost/sdk/impl/j1;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v5, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 22
    iget-object v5, p0, Lcom/chartboost/sdk/impl/j1;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v5, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 23
    iget-object v5, p0, Lcom/chartboost/sdk/impl/j1;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v5, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 27
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/chartboost/sdk/impl/j1;->a:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 30
    iget-object v5, p0, Lcom/chartboost/sdk/impl/j1;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 31
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 33
    iget-object v5, p0, Lcom/chartboost/sdk/impl/j1;->f:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lcom/chartboost/sdk/impl/j1;->e:Landroid/view/Surface;

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 34
    iget-object v5, p0, Lcom/chartboost/sdk/impl/j1;->f:Landroid/media/MediaPlayer;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 35
    iget-object v5, p0, Lcom/chartboost/sdk/impl/j1;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v5, v3}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 36
    iget-object v5, p0, Lcom/chartboost/sdk/impl/j1;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 39
    iput v3, p0, Lcom/chartboost/sdk/impl/j1;->c:I
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_81} :catch_a1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2c .. :try_end_81} :catch_82

    return-void

    :catch_82
    move-exception v5

    .line 47
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/j1;->a:Landroid/net/Uri;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    iput v4, p0, Lcom/chartboost/sdk/impl/j1;->c:I

    .line 49
    iput v4, p0, Lcom/chartboost/sdk/impl/j1;->d:I

    .line 50
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j1;->f:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0, v3, v2}, Lcom/chartboost/sdk/impl/j1;->onError(Landroid/media/MediaPlayer;II)Z

    return-void

    :catch_a1
    move-exception v5

    .line 51
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/j1;->a:Landroid/net/Uri;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    iput v4, p0, Lcom/chartboost/sdk/impl/j1;->c:I

    .line 53
    iput v4, p0, Lcom/chartboost/sdk/impl/j1;->d:I

    .line 54
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j1;->f:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0, v3, v2}, Lcom/chartboost/sdk/impl/j1;->onError(Landroid/media/MediaPlayer;II)Z

    :cond_bf
    :goto_bf
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 27
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/j1;->h()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_e

    .line 28
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j1;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 29
    iput v1, p0, Lcom/chartboost/sdk/impl/j1;->c:I

    .line 31
    :cond_e
    iput v1, p0, Lcom/chartboost/sdk/impl/j1;->d:I

    return-void
.end method

.method public a(I)V
    .registers 3

    .line 32
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/j1;->h()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 33
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j1;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcom/chartboost/sdk/impl/j1;->l:I

    goto :goto_11

    .line 36
    :cond_f
    iput p1, p0, Lcom/chartboost/sdk/impl/j1;->l:I

    :goto_11
    return-void
.end method

.method public a(II)V
    .registers 7

    .line 2
    iget v0, p0, Lcom/chartboost/sdk/impl/j1;->g:I

    if-eqz v0, :cond_34

    iget v1, p0, Lcom/chartboost/sdk/impl/j1;->h:I

    if-eqz v1, :cond_34

    if-eqz p1, :cond_34

    if-nez p2, :cond_d

    goto :goto_34

    :cond_d
    int-to-float p1, p1

    int-to-float v0, v0

    div-float v0, p1, v0

    int-to-float p2, p2

    int-to-float v1, v1

    div-float v1, p2, v1

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 5
    iget v1, p0, Lcom/chartboost/sdk/impl/j1;->g:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    iget v2, p0, Lcom/chartboost/sdk/impl/j1;->h:I

    int-to-float v2, v2

    mul-float v0, v0, v2

    .line 7
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    div-float/2addr v1, p1

    div-float/2addr v0, p2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr p1, v3

    div-float/2addr p2, v3

    .line 8
    invoke-virtual {v2, v1, v0, p1, p2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 10
    invoke-virtual {p0, v2}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    :cond_34
    :goto_34
    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/chartboost/sdk/impl/j1;->i:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnErrorListener;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/chartboost/sdk/impl/j1;->k:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/chartboost/sdk/impl/j1;->j:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/j1;->a(Landroid/net/Uri;Ljava/util/Map;)V

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

    .line 11
    iput-object p1, p0, Lcom/chartboost/sdk/impl/j1;->a:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/chartboost/sdk/impl/j1;->l:I

    .line 14
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/j1;->i()V

    .line 15
    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    .line 16
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidate()V

    return-void
.end method

.method public b()I
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/j1;->h()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2
    iget v0, p0, Lcom/chartboost/sdk/impl/j1;->b:I

    if-lez v0, :cond_b

    return v0

    .line 5
    :cond_b
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j1;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/j1;->b:I

    return v0

    :cond_14
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/chartboost/sdk/impl/j1;->b:I

    return v0
.end method

.method public c()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/j1;->h()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/chartboost/sdk/impl/j1;->f:Landroid/media/MediaPlayer;

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
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/j1;->h()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j1;->f:Landroid/media/MediaPlayer;

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
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/j1;->h()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_16

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j1;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j1;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 4
    iput v1, p0, Lcom/chartboost/sdk/impl/j1;->c:I

    .line 7
    :cond_16
    iput v1, p0, Lcom/chartboost/sdk/impl/j1;->d:I

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
    iput p1, p0, Lcom/chartboost/sdk/impl/j1;->d:I

    .line 2
    iget v0, p0, Lcom/chartboost/sdk/impl/j1;->c:I

    if-eq v0, p1, :cond_12

    .line 3
    iput p1, p0, Lcom/chartboost/sdk/impl/j1;->c:I

    .line 4
    iget-object p1, p0, Lcom/chartboost/sdk/impl/j1;->i:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz p1, :cond_12

    .line 5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j1;->f:Landroid/media/MediaPlayer;

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

    const-string v0, "VideoTextureView"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/16 v0, 0x64

    if-ne p2, v0, :cond_27

    .line 5
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/j1;->i()V

    return p1

    :cond_27
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/chartboost/sdk/impl/j1;->c:I

    .line 10
    iput v0, p0, Lcom/chartboost/sdk/impl/j1;->d:I

    .line 14
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j1;->k:Landroid/media/MediaPlayer$OnErrorListener;

    if-eqz v0, :cond_38

    .line 15
    iget-object v1, p0, Lcom/chartboost/sdk/impl/j1;->f:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result p2

    if-eqz p2, :cond_38

    :cond_38
    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 3

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lcom/chartboost/sdk/impl/j1;->c:I

    .line 3
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/j1;->g:I

    .line 4
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    iput p1, p0, Lcom/chartboost/sdk/impl/j1;->h:I

    .line 5
    iget-object p1, p0, Lcom/chartboost/sdk/impl/j1;->j:Landroid/media/MediaPlayer$OnPreparedListener;

    if-eqz p1, :cond_18

    .line 6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j1;->f:Landroid/media/MediaPlayer;

    invoke-interface {p1, v0}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 9
    :cond_18
    iget p1, p0, Lcom/chartboost/sdk/impl/j1;->l:I

    if-eqz p1, :cond_1f

    .line 13
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/j1;->a(I)V

    .line 15
    :cond_1f
    iget p1, p0, Lcom/chartboost/sdk/impl/j1;->d:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_27

    .line 16
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/j1;->a()V

    :cond_27
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    .line 1
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lcom/chartboost/sdk/impl/j1;->e:Landroid/view/Surface;

    .line 2
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/j1;->i()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 2

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/j1;->e:Landroid/view/Surface;

    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/j1;->a(Z)V

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    .line 1
    iget p1, p0, Lcom/chartboost/sdk/impl/j1;->d:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    .line 2
    :goto_8
    iget-object p2, p0, Lcom/chartboost/sdk/impl/j1;->f:Landroid/media/MediaPlayer;

    if-eqz p2, :cond_18

    if-eqz p1, :cond_18

    .line 3
    iget p1, p0, Lcom/chartboost/sdk/impl/j1;->l:I

    if-eqz p1, :cond_15

    .line 4
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/j1;->a(I)V

    .line 6
    :cond_15
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/j1;->a()V

    :cond_18
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p2

    iput p2, p0, Lcom/chartboost/sdk/impl/j1;->g:I

    .line 2
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    iput p1, p0, Lcom/chartboost/sdk/impl/j1;->h:I

    .line 3
    iget p2, p0, Lcom/chartboost/sdk/impl/j1;->g:I

    if-eqz p2, :cond_1d

    if-eqz p1, :cond_1d

    .line 4
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/impl/j1;->a(II)V

    :cond_1d
    return-void
.end method
