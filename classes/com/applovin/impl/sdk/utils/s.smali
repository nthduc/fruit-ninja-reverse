.class public Lcom/applovin/impl/sdk/utils/s;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/view/View;JLjava/lang/Runnable;)V
    .registers 7

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance p1, Lcom/applovin/impl/sdk/utils/s$1;

    invoke-direct {p1, p0, p3}, Lcom/applovin/impl/sdk/utils/s$1;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static a(I)Z
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public static a(II)Z
    .registers 2

    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/s;->a(I)Z

    move-result p0

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/s;->a(I)Z

    move-result p1

    if-eq p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static a(III)[I
    .registers 9

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p0, :cond_c

    new-array p0, v0, [I

    aput p1, p0, v1

    aput p2, p0, v2

    return-object p0

    :cond_c
    and-int/lit8 v3, p0, 0x77

    const/16 v4, 0x77

    if-ne v3, v4, :cond_19

    new-array p0, v2, [I

    const/16 p1, 0xd

    aput p1, p0, v1

    return-object p0

    :cond_19
    and-int/lit8 v3, p0, 0x70

    const/16 v4, 0xf

    const/16 v5, 0x70

    if-ne v3, v5, :cond_24

    :goto_21
    const/16 p1, 0xf

    goto :goto_3d

    :cond_24
    and-int/lit8 v3, p0, 0x30

    const/16 v5, 0x30

    if-ne v3, v5, :cond_2d

    const/16 p1, 0xa

    goto :goto_3d

    :cond_2d
    and-int/lit8 v3, p0, 0x50

    const/16 v5, 0x50

    if-ne v3, v5, :cond_36

    const/16 p1, 0xc

    goto :goto_3d

    :cond_36
    and-int/lit8 v3, p0, 0x10

    const/16 v5, 0x10

    if-ne v3, v5, :cond_3d

    goto :goto_21

    :cond_3d
    :goto_3d
    and-int/lit8 v3, p0, 0x7

    const/16 v4, 0xe

    const/4 v5, 0x7

    if-ne v3, v5, :cond_47

    :goto_44
    const/16 p2, 0xe

    goto :goto_7b

    :cond_47
    invoke-static {}, Lcom/applovin/impl/sdk/utils/g;->b()Z

    move-result v3

    if-eqz v3, :cond_57

    const v3, 0x800003

    and-int v5, p0, v3

    if-ne v5, v3, :cond_57

    const/16 p2, 0x14

    goto :goto_7b

    :cond_57
    and-int/lit8 v3, p0, 0x3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_5f

    const/16 p2, 0x9

    goto :goto_7b

    :cond_5f
    invoke-static {}, Lcom/applovin/impl/sdk/utils/g;->b()Z

    move-result v3

    if-eqz v3, :cond_6f

    const v3, 0x800005

    and-int v5, p0, v3

    if-ne v5, v3, :cond_6f

    const/16 p2, 0x15

    goto :goto_7b

    :cond_6f
    and-int/lit8 v3, p0, 0x5

    const/4 v5, 0x5

    if-ne v3, v5, :cond_77

    const/16 p2, 0xb

    goto :goto_7b

    :cond_77
    and-int/2addr p0, v2

    if-ne p0, v2, :cond_7b

    goto :goto_44

    :cond_7b
    :goto_7b
    new-array p0, v0, [I

    aput p2, p0, v1

    aput p1, p0, v2

    return-object p0
.end method
