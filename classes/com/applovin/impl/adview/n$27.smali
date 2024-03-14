.class Lcom/applovin/impl/adview/n$27;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/n;->a(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/n;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/n;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/n$27;->a:Lcom/applovin/impl/adview/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 8

    iget-object v0, p0, Lcom/applovin/impl/adview/n$27;->a:Lcom/applovin/impl/adview/n;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/applovin/impl/adview/n;->a(Lcom/applovin/impl/adview/n;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/applovin/impl/adview/n$27;->a:Lcom/applovin/impl/adview/n;

    invoke-static {v0}, Lcom/applovin/impl/adview/n;->c(Lcom/applovin/impl/adview/n;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    iget-object v2, p0, Lcom/applovin/impl/adview/n$27;->a:Lcom/applovin/impl/adview/n;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    long-to-int v4, v3

    iput v4, v2, Lcom/applovin/impl/adview/n;->computedLengthSeconds:I

    iget-object v2, p0, Lcom/applovin/impl/adview/n$27;->a:Lcom/applovin/impl/adview/n;

    iget-object v2, v2, Lcom/applovin/impl/adview/n;->videoView:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v2, v0, v1}, Lcom/applovin/impl/adview/AppLovinVideoView;->setVideoSize(II)V

    iget-object v0, p0, Lcom/applovin/impl/adview/n$27;->a:Lcom/applovin/impl/adview/n;

    iget-object v0, v0, Lcom/applovin/impl/adview/n;->videoView:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_46

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_46
    new-instance v0, Lcom/applovin/impl/adview/n$27$1;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/n$27$1;-><init>(Lcom/applovin/impl/adview/n$27;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    new-instance v0, Lcom/applovin/impl/adview/n$27$2;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/n$27$2;-><init>(Lcom/applovin/impl/adview/n$27;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/n$27;->a:Lcom/applovin/impl/adview/n;

    invoke-static {p1}, Lcom/applovin/impl/adview/n;->h(Lcom/applovin/impl/adview/n;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_80

    iget-object p1, p0, Lcom/applovin/impl/adview/n$27;->a:Lcom/applovin/impl/adview/n;

    invoke-static {p1}, Lcom/applovin/impl/adview/n;->i(Lcom/applovin/impl/adview/n;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/n$27;->a:Lcom/applovin/impl/adview/n;

    invoke-static {p1}, Lcom/applovin/impl/adview/n;->j(Lcom/applovin/impl/adview/n;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/n$27;->a:Lcom/applovin/impl/adview/n;

    invoke-static {p1}, Lcom/applovin/impl/adview/n;->k(Lcom/applovin/impl/adview/n;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/n$27;->a:Lcom/applovin/impl/adview/n;

    invoke-static {p1}, Lcom/applovin/impl/adview/n;->l(Lcom/applovin/impl/adview/n;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/n$27;->a:Lcom/applovin/impl/adview/n;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/n;->playVideo()V

    iget-object p1, p0, Lcom/applovin/impl/adview/n$27;->a:Lcom/applovin/impl/adview/n;

    invoke-static {p1}, Lcom/applovin/impl/adview/n;->m(Lcom/applovin/impl/adview/n;)V

    :cond_80
    return-void
.end method
