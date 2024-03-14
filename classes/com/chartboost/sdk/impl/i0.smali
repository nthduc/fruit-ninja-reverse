.class public Lcom/chartboost/sdk/impl/i0;
.super Lcom/chartboost/sdk/impl/h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/i0$b;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field C:Lorg/json/JSONObject;

.field protected D:Z

.field protected E:Z

.field protected F:Z

.field protected G:Z

.field protected H:Z

.field protected I:I

.field protected J:Lcom/chartboost/sdk/Libraries/h;

.field protected K:Lcom/chartboost/sdk/Libraries/h;

.field protected L:Lcom/chartboost/sdk/Libraries/h;

.field protected M:Lcom/chartboost/sdk/Libraries/h;

.field protected N:Lcom/chartboost/sdk/Libraries/h;

.field protected O:Lcom/chartboost/sdk/Libraries/h;

.field protected P:Lcom/chartboost/sdk/Libraries/h;

.field protected Q:Lcom/chartboost/sdk/Libraries/h;

.field protected R:Z

.field protected S:Z

.field protected T:Z

.field final s:Lcom/chartboost/sdk/Libraries/f;

.field protected t:I

.field protected u:I

.field protected v:Ljava/lang/String;

.field protected w:Ljava/lang/String;

.field private x:Z

.field protected y:I

.field protected z:I


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Model/c;Lcom/chartboost/sdk/Libraries/f;Landroid/os/Handler;Lcom/chartboost/sdk/d;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p3, p4}, Lcom/chartboost/sdk/impl/h0;-><init>(Lcom/chartboost/sdk/Model/c;Landroid/os/Handler;Lcom/chartboost/sdk/d;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/chartboost/sdk/impl/i0;->t:I

    .line 7
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/i0;->x:Z

    .line 8
    iput p1, p0, Lcom/chartboost/sdk/impl/i0;->y:I

    .line 9
    iput p1, p0, Lcom/chartboost/sdk/impl/i0;->z:I

    .line 10
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/i0;->A:Z

    .line 11
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/i0;->B:Z

    .line 21
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/i0;->H:Z

    .line 33
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/i0;->R:Z

    .line 35
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/i0;->S:Z

    .line 36
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/i0;->T:Z

    .line 522
    iput-object p2, p0, Lcom/chartboost/sdk/impl/i0;->s:Lcom/chartboost/sdk/Libraries/f;

    .line 523
    iput p1, p0, Lcom/chartboost/sdk/impl/i0;->t:I

    .line 525
    new-instance p2, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {p2, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object p2, p0, Lcom/chartboost/sdk/impl/i0;->J:Lcom/chartboost/sdk/Libraries/h;

    .line 526
    new-instance p2, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {p2, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object p2, p0, Lcom/chartboost/sdk/impl/i0;->K:Lcom/chartboost/sdk/Libraries/h;

    .line 527
    new-instance p2, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {p2, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object p2, p0, Lcom/chartboost/sdk/impl/i0;->L:Lcom/chartboost/sdk/Libraries/h;

    .line 528
    new-instance p2, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {p2, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object p2, p0, Lcom/chartboost/sdk/impl/i0;->M:Lcom/chartboost/sdk/Libraries/h;

    .line 529
    new-instance p2, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {p2, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object p2, p0, Lcom/chartboost/sdk/impl/i0;->N:Lcom/chartboost/sdk/Libraries/h;

    .line 530
    new-instance p2, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {p2, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object p2, p0, Lcom/chartboost/sdk/impl/i0;->O:Lcom/chartboost/sdk/Libraries/h;

    .line 531
    new-instance p2, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {p2, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object p2, p0, Lcom/chartboost/sdk/impl/i0;->P:Lcom/chartboost/sdk/Libraries/h;

    .line 532
    new-instance p2, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {p2, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object p2, p0, Lcom/chartboost/sdk/impl/i0;->Q:Lcom/chartboost/sdk/Libraries/h;

    .line 534
    iput p1, p0, Lcom/chartboost/sdk/impl/i0;->u:I

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Lcom/chartboost/sdk/f$b;
    .registers 4

    .line 1
    new-instance v0, Lcom/chartboost/sdk/impl/i0$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/chartboost/sdk/impl/i0$b;-><init>(Lcom/chartboost/sdk/impl/i0;Landroid/content/Context;Lcom/chartboost/sdk/impl/i0$a;)V

    return-object v0
.end method

.method public a(Z)V
    .registers 2

    .line 2
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/i0;->A:Z

    return-void
.end method

.method public b()V
    .registers 2

    .line 40
    invoke-super {p0}, Lcom/chartboost/sdk/impl/h0;->b()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/chartboost/sdk/impl/i0;->J:Lcom/chartboost/sdk/Libraries/h;

    .line 42
    iput-object v0, p0, Lcom/chartboost/sdk/impl/i0;->K:Lcom/chartboost/sdk/Libraries/h;

    .line 43
    iput-object v0, p0, Lcom/chartboost/sdk/impl/i0;->N:Lcom/chartboost/sdk/Libraries/h;

    .line 44
    iput-object v0, p0, Lcom/chartboost/sdk/impl/i0;->O:Lcom/chartboost/sdk/Libraries/h;

    .line 45
    iput-object v0, p0, Lcom/chartboost/sdk/impl/i0;->P:Lcom/chartboost/sdk/Libraries/h;

    .line 46
    iput-object v0, p0, Lcom/chartboost/sdk/impl/i0;->L:Lcom/chartboost/sdk/Libraries/h;

    .line 47
    iput-object v0, p0, Lcom/chartboost/sdk/impl/i0;->M:Lcom/chartboost/sdk/Libraries/h;

    .line 48
    iput-object v0, p0, Lcom/chartboost/sdk/impl/i0;->Q:Lcom/chartboost/sdk/Libraries/h;

    return-void
.end method

.method public b(Lorg/json/JSONObject;)Z
    .registers 6

    .line 1
    invoke-super {p0, p1}, Lcom/chartboost/sdk/impl/h0;->b(Lorg/json/JSONObject;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const-string v0, "ux"

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/i0;->C:Lorg/json/JSONObject;

    if-nez v0, :cond_1a

    .line 6
    new-array v0, v1, [Lcom/chartboost/sdk/Libraries/e$a;

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/i0;->C:Lorg/json/JSONObject;

    .line 8
    :cond_1a
    iget-object v0, p0, Lcom/chartboost/sdk/f;->e:Lorg/json/JSONObject;

    const-string v2, "video-landscape"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "replay-landscape"

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/chartboost/sdk/f;->e:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 9
    :cond_2e
    iput-boolean v1, p0, Lcom/chartboost/sdk/f;->k:Z

    .line 11
    :cond_30
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0;->J:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e4

    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0;->K:Lcom/chartboost/sdk/Libraries/h;

    const-string v2, "replay-portrait"

    .line 12
    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e4

    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0;->N:Lcom/chartboost/sdk/Libraries/h;

    const-string v2, "video-click-button"

    .line 13
    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e4

    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0;->O:Lcom/chartboost/sdk/Libraries/h;

    const-string v2, "post-video-reward-icon"

    .line 14
    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e4

    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0;->P:Lcom/chartboost/sdk/Libraries/h;

    const-string v3, "post-video-button"

    .line 15
    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e4

    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0;->L:Lcom/chartboost/sdk/Libraries/h;

    const-string v3, "video-confirmation-button"

    .line 16
    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e4

    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0;->M:Lcom/chartboost/sdk/Libraries/h;

    const-string v3, "video-confirmation-icon"

    .line 17
    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e4

    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0;->Q:Lcom/chartboost/sdk/Libraries/h;

    .line 18
    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7d

    goto :goto_e4

    .line 24
    :cond_7d
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0;->C:Lorg/json/JSONObject;

    const-string v1, "video-controls-togglable"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/i0;->D:Z

    const-string v0, "fullscreen"

    .line 25
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/i0;->S:Z

    const-string v0, "preroll_popup_fullscreen"

    .line 26
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/i0;->T:Z

    .line 28
    iget-object p1, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    iget p1, p1, Lcom/chartboost/sdk/Model/c;->a:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_e3

    .line 29
    iget-object p1, p0, Lcom/chartboost/sdk/impl/i0;->C:Lorg/json/JSONObject;

    const-string v0, "confirmation"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 30
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0;->C:Lorg/json/JSONObject;

    const-string v2, "post-video-toaster"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_c3

    const-string v2, "title"

    .line 32
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c3

    const-string v2, "tagline"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c3

    .line 33
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/i0;->F:Z

    :cond_c3
    if-eqz p1, :cond_d7

    const-string v0, "text"

    .line 34
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d7

    const-string v0, "color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d7

    .line 35
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/i0;->E:Z

    .line 36
    :cond_d7
    iget-object p1, p0, Lcom/chartboost/sdk/impl/i0;->C:Lorg/json/JSONObject;

    const-string v0, "post-video-reward-toaster"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e3

    .line 37
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/i0;->G:Z

    :cond_e3
    return v1

    :cond_e4
    :goto_e4
    const-string p1, "InterstitialVideoViewProtocol"

    const-string v0, "Error while downloading the assets"

    .line 38
    invoke-static {p1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object p1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ASSETS_DOWNLOAD_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/f;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    return v1
.end method

.method protected d()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/i0;->E:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0;->L:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->e()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0;->M:Lcom/chartboost/sdk/Libraries/h;

    .line 2
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->e()Z

    move-result v0

    if-nez v0, :cond_17

    :cond_14
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/i0;->E:Z

    .line 6
    :cond_17
    invoke-super {p0}, Lcom/chartboost/sdk/f;->d()V

    return-void
.end method

.method public g()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/impl/i0;->z:I

    int-to-float v0, v0

    return v0
.end method

.method public h()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/impl/i0;->y:I

    int-to-float v0, v0

    return v0
.end method

.method public bridge synthetic i()Lcom/chartboost/sdk/f$b;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/i0;->i()Lcom/chartboost/sdk/impl/i0$b;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/chartboost/sdk/impl/i0$b;
    .registers 2

    .line 2
    invoke-super {p0}, Lcom/chartboost/sdk/f;->i()Lcom/chartboost/sdk/f$b;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/i0$b;

    return-object v0
.end method

.method public j()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/i0;->i()Lcom/chartboost/sdk/impl/i0$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/i0$b;->c()V

    const/4 v0, 0x1

    return v0
.end method

.method public k()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/chartboost/sdk/f;->k()V

    .line 2
    iget v0, p0, Lcom/chartboost/sdk/impl/i0;->t:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/i0;->x:Z

    if-nez v0, :cond_17

    .line 3
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/i0;->x:Z

    .line 4
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/i0;->i()Lcom/chartboost/sdk/impl/i0$b;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/i0$b;->o:Lcom/chartboost/sdk/impl/o0;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/o0;->e()V

    :cond_17
    return-void
.end method

.method public l()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/chartboost/sdk/f;->l()V

    .line 2
    iget v0, p0, Lcom/chartboost/sdk/impl/i0;->t:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_24

    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/i0;->x:Z

    if-eqz v0, :cond_24

    .line 3
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/i0;->i()Lcom/chartboost/sdk/impl/i0$b;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/i0$b;->o:Lcom/chartboost/sdk/impl/o0;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/o0;->a()Lcom/chartboost/sdk/impl/k1$a;

    move-result-object v0

    iget v1, p0, Lcom/chartboost/sdk/impl/i0;->y:I

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/impl/k1$a;->a(I)V

    .line 4
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/i0;->i()Lcom/chartboost/sdk/impl/i0$b;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/i0$b;->o:Lcom/chartboost/sdk/impl/o0;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/o0;->f()V

    :cond_24
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/i0;->x:Z

    return-void
.end method

.method public o()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    iget v0, v0, Lcom/chartboost/sdk/Model/c;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public p()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/i0;->B:Z

    return v0
.end method

.method public q()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/impl/i0;->t:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public r()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/i0;->A:Z

    return v0
.end method

.method protected s()Z
    .registers 5

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/impl/i0;->t:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1b

    if-eq v0, v2, :cond_c

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2a

    goto :goto_29

    .line 11
    :cond_c
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/i0;->S:Z

    if-nez v0, :cond_29

    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->e()I

    move-result v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_29

    .line 12
    :cond_1b
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/i0;->T:Z

    if-nez v0, :cond_29

    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->e()I

    move-result v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_29
    :goto_29
    const/4 v1, 0x1

    :cond_2a
    return v1
.end method

.method public t()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0;->v:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_c
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/i0;->B:Z

    .line 7
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_PLAYING_VIDEO:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/f;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    return-void
.end method

.method protected u()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->x()V

    return-void
.end method
