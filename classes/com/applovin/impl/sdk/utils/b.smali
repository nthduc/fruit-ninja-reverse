.class public Lcom/applovin/impl/sdk/utils/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Lcom/applovin/mediation/MaxAdFormat;
    .registers 1

    invoke-static {p0}, Lcom/applovin/sdk/AppLovinSdkUtils;->isTablet(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_9

    sget-object p0, Lcom/applovin/mediation/MaxAdFormat;->LEADER:Lcom/applovin/mediation/MaxAdFormat;

    goto :goto_b

    :cond_9
    sget-object p0, Lcom/applovin/mediation/MaxAdFormat;->BANNER:Lcom/applovin/mediation/MaxAdFormat;

    :goto_b
    return-object p0
.end method

.method public static a(Landroid/util/AttributeSet;)Lcom/applovin/sdk/AppLovinAdSize;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "http://schemas.applovin.com/android/1.0"

    const-string v2, "size"

    invoke-interface {p0, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {p0}, Lcom/applovin/sdk/AppLovinAdSize;->fromString(Ljava/lang/String;)Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v0

    :cond_16
    return-object v0
.end method

.method public static a(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_e

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_1b

    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->removeViews(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->removeViews(II)V

    :goto_1b
    return-void
.end method

.method public static a(Landroid/view/View;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_40

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_40

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_40

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d2

    if-eq p0, v1, :cond_3f

    const/16 v1, 0x7d7

    if-eq p0, v1, :cond_3f

    const/16 v1, 0x7d3

    if-eq p0, v1, :cond_3f

    const/16 v1, 0x7da

    if-eq p0, v1, :cond_3f

    const/16 v1, 0x7d6

    if-eq p0, v1, :cond_3f

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_40

    const/16 v1, 0x7f6

    if-ne p0, v1, :cond_40

    :cond_3f
    const/4 v0, 0x1

    :cond_40
    return v0
.end method

.method public static b(Landroid/util/AttributeSet;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_e

    const-string v1, "http://schemas.applovin.com/android/1.0"

    const-string v2, "loadAdOnCreate"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method
