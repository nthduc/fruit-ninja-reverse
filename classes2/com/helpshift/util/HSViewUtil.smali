.class public Lcom/helpshift/util/HSViewUtil;
.super Ljava/lang/Object;
.source "HSViewUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGone(Landroid/view/View;)Z
    .registers 2

    const/16 v0, 0x8

    .line 38
    invoke-static {p0, v0}, Lcom/helpshift/util/HSViewUtil;->isVisibilityStateEquals(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static isViewDirectionRtl(Landroid/view/View;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_12

    .line 15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v1, v2, :cond_a

    goto :goto_12

    .line 18
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    :goto_12
    return v0
.end method

.method public static isVisibilityStateEquals(Landroid/view/View;I)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 54
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-ne p0, p1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method public static isVisible(Landroid/view/View;)Z
    .registers 2

    const/4 v0, 0x0

    .line 28
    invoke-static {p0, v0}, Lcom/helpshift/util/HSViewUtil;->isVisibilityStateEquals(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method
