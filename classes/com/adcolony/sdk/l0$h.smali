.class Lcom/adcolony/sdk/l0$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/l0;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/l0;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/l0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/l0;->a(Lcom/adcolony/sdk/l0;J)J

    .line 2
    :goto_7
    iget-object v0, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    invoke-static {v0}, Lcom/adcolony/sdk/l0;->x(Lcom/adcolony/sdk/l0;)Z

    move-result v0

    if-nez v0, :cond_1a8

    iget-object v0, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    invoke-static {v0}, Lcom/adcolony/sdk/l0;->a(Lcom/adcolony/sdk/l0;)Z

    move-result v0

    if-nez v0, :cond_1a8

    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1a8

    .line 3
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 4
    iget-object v3, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    invoke-static {v3}, Lcom/adcolony/sdk/l0;->x(Lcom/adcolony/sdk/l0;)Z

    move-result v3

    if-nez v3, :cond_1a7

    iget-object v3, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    invoke-static {v3}, Lcom/adcolony/sdk/l0;->b(Lcom/adcolony/sdk/l0;)Z

    move-result v3

    if-nez v3, :cond_1a7

    if-eqz v0, :cond_1a7

    instance-of v3, v0, Landroid/app/Activity;

    if-nez v3, :cond_39

    goto/16 :goto_1a7

    .line 8
    :cond_39
    iget-object v3, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    invoke-static {v3}, Lcom/adcolony/sdk/l0;->c(Lcom/adcolony/sdk/l0;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_e2

    .line 10
    iget-object v3, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    invoke-static {v3}, Lcom/adcolony/sdk/l0;->w(Lcom/adcolony/sdk/l0;)J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-nez v5, :cond_5c

    sget-boolean v3, Lcom/adcolony/sdk/a;->d:Z

    if-eqz v3, :cond_5c

    .line 11
    iget-object v3, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/adcolony/sdk/l0;->a(Lcom/adcolony/sdk/l0;J)J

    .line 13
    :cond_5c
    iget-object v3, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/adcolony/sdk/l0;->a(Lcom/adcolony/sdk/l0;Z)Z

    .line 14
    iget-object v3, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    invoke-static {v3}, Lcom/adcolony/sdk/l0;->c(Lcom/adcolony/sdk/l0;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v5

    int-to-double v5, v5

    const-wide v7, 0x408f400000000000L    # 1000.0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    invoke-static {v3, v5, v6}, Lcom/adcolony/sdk/l0;->a(Lcom/adcolony/sdk/l0;D)D

    .line 15
    iget-object v3, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    invoke-static {v3}, Lcom/adcolony/sdk/l0;->c(Lcom/adcolony/sdk/l0;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v5

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    invoke-static {v3, v5, v6}, Lcom/adcolony/sdk/l0;->b(Lcom/adcolony/sdk/l0;D)D

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v3, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    invoke-static {v3}, Lcom/adcolony/sdk/l0;->w(Lcom/adcolony/sdk/l0;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    cmp-long v3, v5, v7

    if-lez v3, :cond_d5

    iget-object v3, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    .line 17
    invoke-static {v3}, Lcom/adcolony/sdk/l0;->g(Lcom/adcolony/sdk/l0;)Z

    move-result v3

    if-nez v3, :cond_d5

    sget-boolean v3, Lcom/adcolony/sdk/a;->d:Z

    if-eqz v3, :cond_d5

    .line 18
    iget-object v3, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    invoke-static {v3}, Lcom/adcolony/sdk/l0;->e(Lcom/adcolony/sdk/l0;)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v3, v5, v7

    if-nez v3, :cond_d0

    .line 20
    new-instance v3, Lcom/adcolony/sdk/u$a;

    invoke-direct {v3}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v4, "getCurrentPosition() not working, firing "

    .line 21
    invoke-virtual {v3, v4}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v3

    const-string v4, "AdSession.on_error"

    .line 22
    invoke-virtual {v3, v4}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v3

    sget-object v4, Lcom/adcolony/sdk/u;->j:Lcom/adcolony/sdk/u;

    .line 23
    invoke-virtual {v3, v4}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    .line 24
    iget-object v3, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    invoke-static {v3}, Lcom/adcolony/sdk/l0;->h(Lcom/adcolony/sdk/l0;)V

    goto :goto_d5

    .line 26
    :cond_d0
    iget-object v3, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    invoke-static {v3, v4}, Lcom/adcolony/sdk/l0;->b(Lcom/adcolony/sdk/l0;Z)Z

    .line 31
    :cond_d5
    :goto_d5
    iget-object v3, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    invoke-static {v3}, Lcom/adcolony/sdk/l0;->i(Lcom/adcolony/sdk/l0;)Z

    move-result v3

    if-eqz v3, :cond_e2

    .line 32
    iget-object v3, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    invoke-virtual {v3}, Lcom/adcolony/sdk/l0;->e()V

    .line 35
    :cond_e2
    iget-object v3, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    invoke-static {v3}, Lcom/adcolony/sdk/l0;->d(Lcom/adcolony/sdk/l0;)Z

    move-result v3

    if-eqz v3, :cond_16d

    iget-object v3, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    invoke-static {v3}, Lcom/adcolony/sdk/l0;->x(Lcom/adcolony/sdk/l0;)Z

    move-result v3

    if-nez v3, :cond_16d

    iget-object v3, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    invoke-static {v3}, Lcom/adcolony/sdk/l0;->a(Lcom/adcolony/sdk/l0;)Z

    move-result v3

    if-nez v3, :cond_16d

    .line 37
    iget-object v3, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    invoke-static {v3}, Lcom/adcolony/sdk/l0;->j(Lcom/adcolony/sdk/l0;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    invoke-static {v4}, Lcom/adcolony/sdk/l0;->u(Lcom/adcolony/sdk/l0;)I

    move-result v4

    const-string v5, "id"

    invoke-static {v3, v5, v4}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 38
    iget-object v3, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    invoke-static {v3}, Lcom/adcolony/sdk/l0;->j(Lcom/adcolony/sdk/l0;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    invoke-static {v4}, Lcom/adcolony/sdk/l0;->k(Lcom/adcolony/sdk/l0;)Lcom/adcolony/sdk/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adcolony/sdk/c;->c()I

    move-result v4

    const-string v5, "container_id"

    invoke-static {v3, v5, v4}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 39
    iget-object v3, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    invoke-static {v3}, Lcom/adcolony/sdk/l0;->j(Lcom/adcolony/sdk/l0;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    invoke-static {v4}, Lcom/adcolony/sdk/l0;->v(Lcom/adcolony/sdk/l0;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ad_session_id"

    invoke-static {v3, v5, v4}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 40
    iget-object v3, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    invoke-static {v3}, Lcom/adcolony/sdk/l0;->j(Lcom/adcolony/sdk/l0;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    invoke-static {v4}, Lcom/adcolony/sdk/l0;->e(Lcom/adcolony/sdk/l0;)D

    move-result-wide v4

    const-string v6, "elapsed"

    invoke-static {v3, v6, v4, v5}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;D)Z

    .line 41
    iget-object v3, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    invoke-static {v3}, Lcom/adcolony/sdk/l0;->j(Lcom/adcolony/sdk/l0;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    invoke-static {v4}, Lcom/adcolony/sdk/l0;->f(Lcom/adcolony/sdk/l0;)D

    move-result-wide v4

    const-string v6, "duration"

    invoke-static {v3, v6, v4, v5}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;D)Z

    .line 42
    new-instance v3, Lcom/adcolony/sdk/x;

    iget-object v4, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    invoke-static {v4}, Lcom/adcolony/sdk/l0;->k(Lcom/adcolony/sdk/l0;)Lcom/adcolony/sdk/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adcolony/sdk/c;->k()I

    move-result v4

    iget-object v5, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    invoke-static {v5}, Lcom/adcolony/sdk/l0;->j(Lcom/adcolony/sdk/l0;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "VideoView.on_progress"

    invoke-direct {v3, v6, v4, v5}, Lcom/adcolony/sdk/x;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v3}, Lcom/adcolony/sdk/x;->d()V

    .line 46
    :cond_16d
    iget-object v3, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    invoke-static {v3}, Lcom/adcolony/sdk/l0;->l(Lcom/adcolony/sdk/l0;)Z

    move-result v3

    if-nez v3, :cond_19c

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_17e

    goto :goto_19c

    :cond_17e
    const-wide/16 v3, 0x32

    .line 52
    :try_start_180
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_183
    .catch Ljava/lang/InterruptedException; {:try_start_180 .. :try_end_183} :catch_185

    goto/16 :goto_7

    .line 54
    :catch_185
    iget-object v0, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    invoke-static {v0}, Lcom/adcolony/sdk/l0;->h(Lcom/adcolony/sdk/l0;)V

    .line 55
    new-instance v0, Lcom/adcolony/sdk/u$a;

    invoke-direct {v0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v3, "InterruptedException in ADCVideoView\'s update thread."

    .line 56
    invoke-virtual {v0, v3}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    sget-object v3, Lcom/adcolony/sdk/u;->i:Lcom/adcolony/sdk/u;

    .line 57
    invoke-virtual {v0, v3}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    goto/16 :goto_7

    .line 58
    :cond_19c
    :goto_19c
    iget-object v0, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adcolony/sdk/l0;->c(Lcom/adcolony/sdk/l0;Z)Z

    .line 59
    iget-object v0, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    invoke-virtual {v0}, Lcom/adcolony/sdk/l0;->j()V

    :cond_1a7
    :goto_1a7
    return-void

    .line 73
    :cond_1a8
    iget-object v0, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    invoke-static {v0}, Lcom/adcolony/sdk/l0;->l(Lcom/adcolony/sdk/l0;)Z

    move-result v0

    if-eqz v0, :cond_1b5

    .line 74
    iget-object v0, p0, Lcom/adcolony/sdk/l0$h;->a:Lcom/adcolony/sdk/l0;

    invoke-virtual {v0}, Lcom/adcolony/sdk/l0;->j()V

    :cond_1b5
    return-void
.end method
