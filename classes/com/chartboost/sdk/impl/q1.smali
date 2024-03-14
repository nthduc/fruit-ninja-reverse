.class public abstract Lcom/chartboost/sdk/impl/q1;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/chartboost/sdk/impl/q1;->a:Landroid/graphics/Bitmap;

    .line 3
    iput-object v0, p0, Lcom/chartboost/sdk/impl/q1;->b:Landroid/graphics/Canvas;

    .line 7
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/q1;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 8

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_25

    const-string v0, "setLayerType"

    const/4 v1, 0x2

    :try_start_7
    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/graphics/Paint;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 2
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x0

    aput-object v1, v0, v5

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_25} :catch_25

    :catch_25
    return-void
.end method

.method private b(Landroid/graphics/Canvas;)Z
    .registers 6

    const/4 v0, 0x0

    .line 1
    :try_start_1
    const-class v1, Landroid/graphics/Canvas;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3} :catch_18

    const-string v2, "isHardwareAccelerated"

    :try_start_5
    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2
    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_17} :catch_18

    return p1

    :catch_18
    return v0
.end method


# virtual methods
.method protected abstract a(Landroid/graphics/Canvas;)V
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q1;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_12

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q1;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_12
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/chartboost/sdk/impl/q1;->a:Landroid/graphics/Bitmap;

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    .line 1
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/q1;->b(Landroid/graphics/Canvas;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_56

    .line 7
    iget-object v2, p0, Lcom/chartboost/sdk/impl/q1;->a:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_21

    iget-object v2, p0, Lcom/chartboost/sdk/impl/q1;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_49

    .line 8
    :cond_21
    iget-object v2, p0, Lcom/chartboost/sdk/impl/q1;->a:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_30

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_30

    .line 9
    iget-object v2, p0, Lcom/chartboost/sdk/impl/q1;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 11
    :cond_30
    :try_start_30
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/chartboost/sdk/impl/q1;->a:Landroid/graphics/Bitmap;

    .line 12
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/q1;->a:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/chartboost/sdk/impl/q1;->b:Landroid/graphics/Canvas;
    :try_end_49
    .catchall {:try_start_30 .. :try_end_49} :catchall_55

    .line 19
    :cond_49
    iget-object v2, p0, Lcom/chartboost/sdk/impl/q1;->a:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 21
    iget-object v2, p0, Lcom/chartboost/sdk/impl/q1;->b:Landroid/graphics/Canvas;

    move-object v5, v2

    move-object v2, p1

    move-object p1, v5

    goto :goto_57

    :catchall_55
    return-void

    :cond_56
    move-object v2, v1

    .line 24
    :goto_57
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/q1;->a(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_62

    .line 28
    iget-object p1, p0, Lcom/chartboost/sdk/impl/q1;->a:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    invoke-virtual {v2, p1, v0, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_62
    return-void
.end method
