.class Lcom/applovin/impl/adview/AppLovinVideoViewV2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/AppLovinVideoViewV2;-><init>(Lcom/applovin/impl/sdk/ad/g$d;Landroid/content/Context;Lcom/applovin/impl/sdk/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/AppLovinVideoViewV2;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/AppLovinVideoViewV2;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2$1;->a:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 7

    iget-object p1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2$1;->a:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {p1}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->a(Lcom/applovin/impl/adview/AppLovinVideoViewV2;)Lcom/applovin/impl/sdk/q;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Surface changed with format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", width: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", height: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AppLovinVideoView"

    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2$1;->a:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {p1, p3}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->a(Lcom/applovin/impl/adview/AppLovinVideoViewV2;I)I

    iget-object p1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2$1;->a:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {p1, p4}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->b(Lcom/applovin/impl/adview/AppLovinVideoViewV2;I)I

    iget-object p1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2$1;->a:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {p1}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->d(Lcom/applovin/impl/adview/AppLovinVideoViewV2;)I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4d

    iget-object p1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2$1;->a:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {p1}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->d(Lcom/applovin/impl/adview/AppLovinVideoViewV2;)I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_4b

    goto :goto_4d

    :cond_4b
    const/4 p1, 0x0

    goto :goto_4e

    :cond_4d
    :goto_4d
    const/4 p1, 0x1

    :goto_4e
    iget-object v1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2$1;->a:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {v1}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->e(Lcom/applovin/impl/adview/AppLovinVideoViewV2;)I

    move-result v1

    if-ne v1, p3, :cond_5f

    iget-object p3, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2$1;->a:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {p3}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->f(Lcom/applovin/impl/adview/AppLovinVideoViewV2;)I

    move-result p3

    if-ne p3, p4, :cond_5f

    const/4 p2, 0x1

    :cond_5f
    iget-object p3, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2$1;->a:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {p3}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->b(Lcom/applovin/impl/adview/AppLovinVideoViewV2;)Landroid/media/MediaPlayer;

    move-result-object p3

    if-eqz p3, :cond_81

    if-eqz p1, :cond_81

    if-eqz p2, :cond_81

    iget-object p1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2$1;->a:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {p1}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->g(Lcom/applovin/impl/adview/AppLovinVideoViewV2;)I

    move-result p1

    if-eqz p1, :cond_7c

    iget-object p1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2$1;->a:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {p1}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->g(Lcom/applovin/impl/adview/AppLovinVideoViewV2;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->seekTo(I)V

    :cond_7c
    iget-object p1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2$1;->a:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->start()V

    :cond_81
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2$1;->a:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {v0}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->a(Lcom/applovin/impl/adview/AppLovinVideoViewV2;)Lcom/applovin/impl/sdk/q;

    move-result-object v0

    const-string v1, "AppLovinVideoView"

    const-string v2, "Surface created"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2$1;->a:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {v0, p1}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->a(Lcom/applovin/impl/adview/AppLovinVideoViewV2;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2$1;->a:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {v0}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->b(Lcom/applovin/impl/adview/AppLovinVideoViewV2;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2$1;->a:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {v0}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->b(Lcom/applovin/impl/adview/AppLovinVideoViewV2;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_2d

    :cond_28
    iget-object p1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2$1;->a:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {p1}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->c(Lcom/applovin/impl/adview/AppLovinVideoViewV2;)V

    :goto_2d
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4

    iget-object p1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2$1;->a:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {p1}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->a(Lcom/applovin/impl/adview/AppLovinVideoViewV2;)Lcom/applovin/impl/sdk/q;

    move-result-object p1

    const-string v0, "AppLovinVideoView"

    const-string v1, "Surface destroyed"

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/AppLovinVideoViewV2$1;->a:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->a(Lcom/applovin/impl/adview/AppLovinVideoViewV2;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    return-void
.end method