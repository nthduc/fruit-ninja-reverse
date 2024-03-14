.class public Lcom/chartboost/sdk/ChartboostBanner;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/Banner/e;
.implements Lcom/chartboost/sdk/impl/c;


# static fields
.field private static final b:Ljava/lang/String; = "ChartboostBanner"


# instance fields
.field private a:Lcom/chartboost/sdk/Banner/c;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/chartboost/sdk/Banner/c;

    invoke-direct {v0}, Lcom/chartboost/sdk/Banner/c;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/ChartboostBanner;->a:Lcom/chartboost/sdk/Banner/c;

    .line 3
    sget-object v3, Lcom/chartboost/sdk/Banner/BannerSize;->STANDARD:Lcom/chartboost/sdk/Banner/BannerSize;

    new-instance v5, Lcom/chartboost/sdk/impl/q;

    invoke-direct {v5}, Lcom/chartboost/sdk/impl/q;-><init>()V

    const-string v2, ""

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/Banner/c;->a(Lcom/chartboost/sdk/Banner/e;Ljava/lang/String;Lcom/chartboost/sdk/Banner/BannerSize;Lcom/chartboost/sdk/ChartboostBannerListener;Lcom/chartboost/sdk/impl/q;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance v0, Lcom/chartboost/sdk/Banner/c;

    invoke-direct {v0}, Lcom/chartboost/sdk/Banner/c;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/ChartboostBanner;->a:Lcom/chartboost/sdk/Banner/c;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/chartboost/sdk/Banner/c;->a(Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)Lcom/chartboost/sdk/Banner/c$a;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 7
    iget-object v2, p1, Lcom/chartboost/sdk/Banner/c$a;->a:Ljava/lang/String;

    if-eqz v2, :cond_2a

    iget-object v3, p1, Lcom/chartboost/sdk/Banner/c$a;->b:Lcom/chartboost/sdk/Banner/BannerSize;

    if-nez v3, :cond_1d

    goto :goto_2a

    .line 10
    :cond_1d
    iget-object v0, p0, Lcom/chartboost/sdk/ChartboostBanner;->a:Lcom/chartboost/sdk/Banner/c;

    new-instance v5, Lcom/chartboost/sdk/impl/q;

    invoke-direct {v5}, Lcom/chartboost/sdk/impl/q;-><init>()V

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/Banner/c;->a(Lcom/chartboost/sdk/Banner/e;Ljava/lang/String;Lcom/chartboost/sdk/Banner/BannerSize;Lcom/chartboost/sdk/ChartboostBannerListener;Lcom/chartboost/sdk/impl/q;)V

    goto :goto_31

    .line 11
    :cond_2a
    :goto_2a
    sget-object p1, Lcom/chartboost/sdk/ChartboostBanner;->b:Ljava/lang/String;

    const-string p2, "Error creating ChartboostBanner, make sure the attributes declared in the XML are correct"

    invoke-static {p1, p2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/chartboost/sdk/Banner/e;Ljava/lang/String;Lcom/chartboost/sdk/Banner/BannerSize;Lcom/chartboost/sdk/ChartboostBannerListener;)V
    .registers 12

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v0, Lcom/chartboost/sdk/Banner/c;

    invoke-direct {v0}, Lcom/chartboost/sdk/Banner/c;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/ChartboostBanner;->a:Lcom/chartboost/sdk/Banner/c;

    .line 17
    new-instance v5, Lcom/chartboost/sdk/impl/q;

    invoke-direct {v5}, Lcom/chartboost/sdk/impl/q;-><init>()V

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/Banner/c;->a(Lcom/chartboost/sdk/Banner/e;Ljava/lang/String;Lcom/chartboost/sdk/Banner/BannerSize;Lcom/chartboost/sdk/ChartboostBannerListener;Lcom/chartboost/sdk/impl/q;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/chartboost/sdk/Banner/BannerSize;Lcom/chartboost/sdk/ChartboostBannerListener;)V
    .registers 11

    .line 12
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 13
    new-instance v0, Lcom/chartboost/sdk/Banner/c;

    invoke-direct {v0}, Lcom/chartboost/sdk/Banner/c;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/ChartboostBanner;->a:Lcom/chartboost/sdk/Banner/c;

    .line 14
    new-instance v5, Lcom/chartboost/sdk/impl/q;

    invoke-direct {v5}, Lcom/chartboost/sdk/impl/q;-><init>()V

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/Banner/c;->a(Lcom/chartboost/sdk/Banner/e;Ljava/lang/String;Lcom/chartboost/sdk/Banner/BannerSize;Lcom/chartboost/sdk/ChartboostBannerListener;Lcom/chartboost/sdk/impl/q;)V

    return-void
.end method


# virtual methods
.method public attachBannerToSDKCommand(Lcom/chartboost/sdk/i$b;)Lcom/chartboost/sdk/i$b;
    .registers 2

    .line 1
    iput-object p0, p1, Lcom/chartboost/sdk/i$b;->e:Lcom/chartboost/sdk/ChartboostBanner;

    return-object p1
.end method

.method public cache()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/ChartboostBanner;->a:Lcom/chartboost/sdk/Banner/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Banner/c;->c()V

    return-void
.end method

.method public cache(Ljava/lang/String;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/ChartboostBanner;->a:Lcom/chartboost/sdk/Banner/c;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/Banner/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public detachBanner()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/ChartboostBanner;->a:Lcom/chartboost/sdk/Banner/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Banner/c;->d()V

    return-void
.end method

.method public didCacheBanner(Ljava/lang/String;Lcom/chartboost/sdk/Events/ChartboostCacheError;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/ChartboostBanner;->a:Lcom/chartboost/sdk/Banner/c;

    invoke-virtual {v0, p1, p2}, Lcom/chartboost/sdk/Banner/c;->didCacheBanner(Ljava/lang/String;Lcom/chartboost/sdk/Events/ChartboostCacheError;)V

    return-void
.end method

.method public didClickBanner(Ljava/lang/String;Lcom/chartboost/sdk/Events/ChartboostClickError;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/ChartboostBanner;->a:Lcom/chartboost/sdk/Banner/c;

    invoke-virtual {v0, p1, p2}, Lcom/chartboost/sdk/Banner/c;->didClickBanner(Ljava/lang/String;Lcom/chartboost/sdk/Events/ChartboostClickError;)V

    return-void
.end method

.method public didShowBanner(Ljava/lang/String;Lcom/chartboost/sdk/Events/ChartboostShowError;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/ChartboostBanner;->a:Lcom/chartboost/sdk/Banner/c;

    invoke-virtual {v0, p1, p2}, Lcom/chartboost/sdk/Banner/c;->didShowBanner(Ljava/lang/String;Lcom/chartboost/sdk/Events/ChartboostShowError;)V

    return-void
.end method

.method public getBannerHeight()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/ChartboostBanner;->a:Lcom/chartboost/sdk/Banner/c;

    iget-object v0, v0, Lcom/chartboost/sdk/Banner/c;->b:Lcom/chartboost/sdk/Banner/BannerSize;

    invoke-static {v0}, Lcom/chartboost/sdk/Banner/BannerSize;->getHeight(Lcom/chartboost/sdk/Banner/BannerSize;)I

    move-result v0

    return v0
.end method

.method public getBannerWidth()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/ChartboostBanner;->a:Lcom/chartboost/sdk/Banner/c;

    iget-object v0, v0, Lcom/chartboost/sdk/Banner/c;->b:Lcom/chartboost/sdk/Banner/BannerSize;

    invoke-static {v0}, Lcom/chartboost/sdk/Banner/BannerSize;->getWidth(Lcom/chartboost/sdk/Banner/BannerSize;)I

    move-result v0

    return v0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/ChartboostBanner;->a:Lcom/chartboost/sdk/Banner/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Banner/c;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdkCommand()Lcom/chartboost/sdk/i$b;
    .registers 4

    .line 1
    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 3
    new-instance v1, Lcom/chartboost/sdk/i$b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x6

    invoke-direct {v1, v0, v2}, Lcom/chartboost/sdk/i$b;-><init>(Lcom/chartboost/sdk/i;I)V

    return-object v1

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public isBelowLollipop()Z
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isCached()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/ChartboostBanner;->a:Lcom/chartboost/sdk/Banner/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Banner/c;->f()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onBannerCacheFail(Ljava/lang/String;Lcom/chartboost/sdk/Events/ChartboostCacheError;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/ChartboostBanner;->a:Lcom/chartboost/sdk/Banner/c;

    invoke-virtual {v0, p1, p2}, Lcom/chartboost/sdk/Banner/c;->onBannerCacheFail(Ljava/lang/String;Lcom/chartboost/sdk/Events/ChartboostCacheError;)V

    return-void
.end method

.method public onBannerClickFail(Ljava/lang/String;Lcom/chartboost/sdk/Events/ChartboostClickError;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/ChartboostBanner;->a:Lcom/chartboost/sdk/Banner/c;

    invoke-virtual {v0, p1, p2}, Lcom/chartboost/sdk/Banner/c;->a(Ljava/lang/String;Lcom/chartboost/sdk/Events/ChartboostClickError;)V

    return-void
.end method

.method public onBannerShowFail(Ljava/lang/String;Lcom/chartboost/sdk/Events/ChartboostShowError;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/ChartboostBanner;->a:Lcom/chartboost/sdk/Banner/c;

    invoke-virtual {v0, p1, p2}, Lcom/chartboost/sdk/Banner/c;->onBannerShowFail(Ljava/lang/String;Lcom/chartboost/sdk/Events/ChartboostShowError;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_10

    .line 3
    iget-object p1, p0, Lcom/chartboost/sdk/ChartboostBanner;->a:Lcom/chartboost/sdk/Banner/c;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Banner/c;->i()V

    .line 4
    iget-object p1, p0, Lcom/chartboost/sdk/ChartboostBanner;->a:Lcom/chartboost/sdk/Banner/c;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Banner/c;->j()V

    goto :goto_1a

    .line 6
    :cond_10
    iget-object p1, p0, Lcom/chartboost/sdk/ChartboostBanner;->a:Lcom/chartboost/sdk/Banner/c;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Banner/c;->g()V

    .line 7
    iget-object p1, p0, Lcom/chartboost/sdk/ChartboostBanner;->a:Lcom/chartboost/sdk/Banner/c;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Banner/c;->h()V

    :goto_1a
    return-void
.end method

.method public setAutomaticallyRefreshesContent(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/ChartboostBanner;->a:Lcom/chartboost/sdk/Banner/c;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/Banner/c;->a(Z)V

    return-void
.end method

.method public setListener(Lcom/chartboost/sdk/ChartboostBannerListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/ChartboostBanner;->a:Lcom/chartboost/sdk/Banner/c;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/Banner/c;->a(Lcom/chartboost/sdk/ChartboostBannerListener;)V

    return-void
.end method

.method public setViewLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public show()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/ChartboostBanner;->a:Lcom/chartboost/sdk/Banner/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Banner/c;->k()V

    return-void
.end method
