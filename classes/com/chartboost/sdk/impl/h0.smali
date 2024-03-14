.class public Lcom/chartboost/sdk/impl/h0;
.super Lcom/chartboost/sdk/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/h0$a;
    }
.end annotation


# instance fields
.field l:Lcom/chartboost/sdk/Libraries/h;

.field m:Lcom/chartboost/sdk/Libraries/h;

.field n:Lcom/chartboost/sdk/Libraries/h;

.field o:Lcom/chartboost/sdk/Libraries/h;

.field p:Lcom/chartboost/sdk/Libraries/h;

.field q:Lcom/chartboost/sdk/Libraries/h;

.field protected r:F


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Model/c;Landroid/os/Handler;Lcom/chartboost/sdk/d;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/chartboost/sdk/f;-><init>(Lcom/chartboost/sdk/Model/c;Landroid/os/Handler;Lcom/chartboost/sdk/d;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    iput p1, p0, Lcom/chartboost/sdk/impl/h0;->r:F

    .line 184
    new-instance p1, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {p1, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/h0;->l:Lcom/chartboost/sdk/Libraries/h;

    .line 185
    new-instance p1, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {p1, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/h0;->m:Lcom/chartboost/sdk/Libraries/h;

    .line 186
    new-instance p1, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {p1, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/h0;->n:Lcom/chartboost/sdk/Libraries/h;

    .line 187
    new-instance p1, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {p1, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/h0;->o:Lcom/chartboost/sdk/Libraries/h;

    .line 188
    new-instance p1, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {p1, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/h0;->p:Lcom/chartboost/sdk/Libraries/h;

    .line 189
    new-instance p1, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {p1, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/h0;->q:Lcom/chartboost/sdk/Libraries/h;

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Lcom/chartboost/sdk/f$b;
    .registers 3

    .line 1
    new-instance v0, Lcom/chartboost/sdk/impl/h0$a;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/impl/h0$a;-><init>(Lcom/chartboost/sdk/impl/h0;Landroid/content/Context;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/h;F)V
    .registers 6

    if-eqz p2, :cond_26

    .line 2
    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/h;->e()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 3
    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/h;->d()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/h;->a()F

    move-result v1

    div-float/2addr v0, v1

    mul-float v0, v0, p3

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4
    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/h;->c()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/h;->a()F

    move-result p2

    div-float/2addr v0, p2

    mul-float v0, v0, p3

    float-to-int p2, v0

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_26
    return-void
.end method

.method protected b(Ljava/lang/String;)Landroid/graphics/Point;
    .registers 6

    .line 22
    iget-object v0, p0, Lcom/chartboost/sdk/f;->e:Lorg/json/JSONObject;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    const-string v3, "offset"

    aput-object v3, v1, p1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 24
    new-instance v0, Landroid/graphics/Point;

    const-string v1, "x"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "y"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 25
    :cond_25
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object p1
.end method

.method public b()V
    .registers 2

    .line 26
    invoke-super {p0}, Lcom/chartboost/sdk/f;->b()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/chartboost/sdk/impl/h0;->m:Lcom/chartboost/sdk/Libraries/h;

    .line 28
    iput-object v0, p0, Lcom/chartboost/sdk/impl/h0;->l:Lcom/chartboost/sdk/Libraries/h;

    .line 29
    iput-object v0, p0, Lcom/chartboost/sdk/impl/h0;->o:Lcom/chartboost/sdk/Libraries/h;

    .line 30
    iput-object v0, p0, Lcom/chartboost/sdk/impl/h0;->n:Lcom/chartboost/sdk/Libraries/h;

    .line 31
    iput-object v0, p0, Lcom/chartboost/sdk/impl/h0;->q:Lcom/chartboost/sdk/Libraries/h;

    .line 32
    iput-object v0, p0, Lcom/chartboost/sdk/impl/h0;->p:Lcom/chartboost/sdk/Libraries/h;

    return-void
.end method

.method public b(Lorg/json/JSONObject;)Z
    .registers 9

    .line 1
    invoke-super {p0, p1}, Lcom/chartboost/sdk/f;->b(Lorg/json/JSONObject;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 4
    :cond_8
    iget-object p1, p0, Lcom/chartboost/sdk/f;->e:Lorg/json/JSONObject;

    const-string v1, "frame-portrait"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    const-string v2, "close-portrait"

    if-nez p1, :cond_1c

    iget-object p1, p0, Lcom/chartboost/sdk/f;->e:Lorg/json/JSONObject;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 5
    :cond_1c
    iput-boolean v0, p0, Lcom/chartboost/sdk/f;->j:Z

    .line 6
    :cond_1e
    iget-object p1, p0, Lcom/chartboost/sdk/f;->e:Lorg/json/JSONObject;

    const-string v3, "frame-landscape"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    const-string v4, "close-landscape"

    if-nez p1, :cond_32

    iget-object p1, p0, Lcom/chartboost/sdk/f;->e:Lorg/json/JSONObject;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 7
    :cond_32
    iput-boolean v0, p0, Lcom/chartboost/sdk/f;->k:Z

    .line 9
    :cond_34
    iget-object p1, p0, Lcom/chartboost/sdk/f;->e:Lorg/json/JSONObject;

    const-string v5, "ad-portrait"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_40

    .line 10
    iput-boolean v0, p0, Lcom/chartboost/sdk/f;->j:Z

    .line 11
    :cond_40
    iget-object p1, p0, Lcom/chartboost/sdk/f;->e:Lorg/json/JSONObject;

    const-string v6, "ad-landscape"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 12
    iput-boolean v0, p0, Lcom/chartboost/sdk/f;->k:Z

    .line 14
    :cond_4c
    iget-object p1, p0, Lcom/chartboost/sdk/impl/h0;->m:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {p1, v3}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7f

    iget-object p1, p0, Lcom/chartboost/sdk/impl/h0;->l:Lcom/chartboost/sdk/Libraries/h;

    .line 15
    invoke-virtual {p1, v1}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7f

    iget-object p1, p0, Lcom/chartboost/sdk/impl/h0;->o:Lcom/chartboost/sdk/Libraries/h;

    .line 16
    invoke-virtual {p1, v4}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7f

    iget-object p1, p0, Lcom/chartboost/sdk/impl/h0;->n:Lcom/chartboost/sdk/Libraries/h;

    .line 17
    invoke-virtual {p1, v2}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7f

    iget-object p1, p0, Lcom/chartboost/sdk/impl/h0;->q:Lcom/chartboost/sdk/Libraries/h;

    .line 18
    invoke-virtual {p1, v6}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7f

    iget-object p1, p0, Lcom/chartboost/sdk/impl/h0;->p:Lcom/chartboost/sdk/Libraries/h;

    .line 19
    invoke-virtual {p1, v5}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7d

    goto :goto_7f

    :cond_7d
    const/4 p1, 0x1

    return p1

    :cond_7f
    :goto_7f
    const-string p1, "ImageViewProtocol"

    const-string v1, "Error while downloading the assets"

    .line 20
    invoke-static {p1, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    sget-object p1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ASSETS_DOWNLOAD_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/f;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    return v0
.end method
