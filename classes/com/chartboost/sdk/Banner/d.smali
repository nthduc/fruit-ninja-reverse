.class Lcom/chartboost/sdk/Banner/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(ILandroid/util/DisplayMetrics;)F
    .registers 4

    int-to-float p1, p1

    const/4 v0, 0x1

    .line 7
    invoke-static {v0, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method private a(Lcom/chartboost/sdk/Banner/e;II)V
    .registers 6

    .line 2
    invoke-interface {p1}, Lcom/chartboost/sdk/Banner/e;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Lcom/chartboost/sdk/Banner/e;->getViewLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 4
    invoke-direct {p0, p2, v0}, Lcom/chartboost/sdk/Banner/d;->a(ILandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5
    invoke-direct {p0, p3, v0}, Lcom/chartboost/sdk/Banner/d;->a(ILandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    invoke-interface {p1, v1}, Lcom/chartboost/sdk/Banner/e;->setViewLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method a(Lcom/chartboost/sdk/Banner/e;Lcom/chartboost/sdk/Banner/BannerSize;)V
    .registers 4

    .line 1
    invoke-static {p2}, Lcom/chartboost/sdk/Banner/BannerSize;->getWidth(Lcom/chartboost/sdk/Banner/BannerSize;)I

    move-result v0

    invoke-static {p2}, Lcom/chartboost/sdk/Banner/BannerSize;->getHeight(Lcom/chartboost/sdk/Banner/BannerSize;)I

    move-result p2

    invoke-direct {p0, p1, v0, p2}, Lcom/chartboost/sdk/Banner/d;->a(Lcom/chartboost/sdk/Banner/e;II)V

    return-void
.end method
