.class public Lcom/applovin/sdk/AppLovinSdkUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/sdk/AppLovinSdkUtils$Size;
    }
.end annotation


# static fields
.field private static final a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/applovin/sdk/AppLovinSdkUtils;->a:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/widget/ImageView;)V
    .registers 2

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_13

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_13
    return-void
.end method

.method public static dpToPx(Landroid/content/Context;I)I
    .registers 3

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/g;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x258

    invoke-static {p0, v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result p0

    if-lt v0, p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public static isValidString(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static pxToDp(Landroid/content/Context;I)I
    .registers 2

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public static runOnUiThread(ZLjava/lang/Runnable;)V
    .registers 2

    if-nez p0, :cond_c

    invoke-static {}, Lcom/applovin/impl/sdk/utils/r;->b()Z

    move-result p0

    if-eqz p0, :cond_c

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_11

    :cond_c
    sget-object p0, Lcom/applovin/sdk/AppLovinSdkUtils;->a:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_11
    return-void
.end method

.method public static runOnUiThreadDelayed(Ljava/lang/Runnable;J)V
    .registers 4

    sget-object v0, Lcom/applovin/sdk/AppLovinSdkUtils;->a:Landroid/os/Handler;

    invoke-static {p0, p1, p2, v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;JLandroid/os/Handler;)V

    return-void
.end method

.method public static runOnUiThreadDelayed(Ljava/lang/Runnable;JLandroid/os/Handler;)V
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_a

    invoke-virtual {p3, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_17

    :cond_a
    invoke-static {}, Lcom/applovin/impl/sdk/utils/r;->b()Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_17

    :cond_14
    invoke-virtual {p3, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_17
    return-void
.end method

.method public static safePopulateImageView(Landroid/content/Context;Landroid/widget/ImageView;II)V
    .registers 4

    invoke-static {p1}, Lcom/applovin/sdk/AppLovinSdkUtils;->a(Landroid/widget/ImageView;)V

    invoke-static {p0, p2, p3}, Lcom/applovin/impl/sdk/utils/r;->a(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_c
    return-void
.end method

.method public static safePopulateImageView(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .registers 2

    invoke-static {p0}, Lcom/applovin/sdk/AppLovinSdkUtils;->a(Landroid/widget/ImageView;)V

    if-eqz p0, :cond_a

    if-eqz p1, :cond_a

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_a
    return-void
.end method

.method public static safePopulateImageView(Landroid/widget/ImageView;Landroid/net/Uri;I)V
    .registers 4

    invoke-static {p0}, Lcom/applovin/sdk/AppLovinSdkUtils;->a(Landroid/widget/ImageView;)V

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p2}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_15
    return-void
.end method

.method public static toMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method