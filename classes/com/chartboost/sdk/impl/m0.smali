.class public abstract Lcom/chartboost/sdk/impl/m0;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field protected a:Lcom/chartboost/sdk/impl/i0;

.field private b:Lcom/chartboost/sdk/impl/n0;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/i0;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/chartboost/sdk/impl/m0;->a:Lcom/chartboost/sdk/impl/i0;

    const/4 p2, 0x1

    .line 3
    iput p2, p0, Lcom/chartboost/sdk/impl/m0;->c:I

    .line 4
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/m0;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    .line 56
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x11

    .line 58
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 60
    new-instance v0, Lcom/chartboost/sdk/impl/n0;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/impl/n0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/m0;->b:Lcom/chartboost/sdk/impl/n0;

    const/4 p1, -0x1

    .line 61
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/n0;->b(I)V

    .line 62
    iget-object v0, p0, Lcom/chartboost/sdk/impl/m0;->b:Lcom/chartboost/sdk/impl/n0;

    const v1, -0x33000001    # -1.3421772E8f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 63
    iget-object v0, p0, Lcom/chartboost/sdk/impl/m0;->b:Lcom/chartboost/sdk/impl/n0;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/m0;->a()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(ZJ)V
    .registers 11

    .line 67
    iget-object v0, p0, Lcom/chartboost/sdk/impl/m0;->a:Lcom/chartboost/sdk/impl/i0;

    iput-boolean p1, v0, Lcom/chartboost/sdk/impl/i0;->H:Z

    if-eqz p1, :cond_c

    .line 68
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_16

    :cond_c
    if-nez p1, :cond_17

    .line 69
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_17

    :cond_16
    return-void

    .line 71
    :cond_17
    new-instance v0, Lcom/chartboost/sdk/impl/m0$a;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/impl/m0$a;-><init>(Lcom/chartboost/sdk/impl/m0;Z)V

    if-eqz p1, :cond_22

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 85
    :cond_22
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/m0;->b()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(FLandroid/content/Context;)F

    move-result v1

    const/4 v2, 0x0

    .line 87
    iget v3, p0, Lcom/chartboost/sdk/impl/m0;->c:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_6b

    if-eq v3, v4, :cond_5d

    const/4 v6, 0x2

    if-eq v3, v6, :cond_4d

    const/4 v6, 0x3

    if-eq v3, v6, :cond_3f

    goto :goto_7a

    .line 98
    :cond_3f
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    if-eqz p1, :cond_45

    move v3, v1

    goto :goto_46

    :cond_45
    const/4 v3, 0x0

    :goto_46
    if-eqz p1, :cond_49

    const/4 v1, 0x0

    :cond_49
    invoke-direct {v2, v3, v1, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_7a

    .line 99
    :cond_4d
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    if-eqz p1, :cond_53

    neg-float v3, v1

    goto :goto_54

    :cond_53
    const/4 v3, 0x0

    :goto_54
    if-eqz p1, :cond_58

    const/4 v1, 0x0

    goto :goto_59

    :cond_58
    neg-float v1, v1

    :goto_59
    invoke-direct {v2, v3, v1, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_7a

    .line 100
    :cond_5d
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    if-eqz p1, :cond_63

    move v3, v1

    goto :goto_64

    :cond_63
    const/4 v3, 0x0

    :goto_64
    if-eqz p1, :cond_67

    const/4 v1, 0x0

    :cond_67
    invoke-direct {v2, v5, v5, v3, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_7a

    .line 101
    :cond_6b
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    if-eqz p1, :cond_71

    neg-float v3, v1

    goto :goto_72

    :cond_71
    const/4 v3, 0x0

    :goto_72
    if-eqz p1, :cond_76

    const/4 v1, 0x0

    goto :goto_77

    :cond_76
    neg-float v1, v1

    :goto_77
    invoke-direct {v2, v5, v5, v3, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 115
    :goto_7a
    invoke-virtual {v2, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    xor-int/2addr p1, v4

    .line 117
    invoke-virtual {v2, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 118
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 119
    iget-object p1, p0, Lcom/chartboost/sdk/impl/m0;->a:Lcom/chartboost/sdk/impl/i0;

    iget-object p1, p1, Lcom/chartboost/sdk/f;->i:Ljava/util/Map;

    monitor-enter p1

    .line 120
    :try_start_89
    iget-object v1, p0, Lcom/chartboost/sdk/impl/m0;->a:Lcom/chartboost/sdk/impl/i0;

    iget-object v1, v1, Lcom/chartboost/sdk/f;->i:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    monitor-exit p1
    :try_end_91
    .catchall {:try_start_89 .. :try_end_91} :catchall_99

    .line 122
    iget-object p1, p0, Lcom/chartboost/sdk/impl/m0;->a:Lcom/chartboost/sdk/impl/i0;

    iget-object p1, p1, Lcom/chartboost/sdk/f;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_99
    move-exception p2

    .line 123
    :try_start_9a
    monitor-exit p1
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    throw p2
.end method


# virtual methods
.method protected abstract a()Landroid/view/View;
.end method

.method public a(I)V
    .registers 6

    .line 1
    iput p1, p0, Lcom/chartboost/sdk/impl/m0;->c:I

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/m0;->b()I

    move-result p1

    .line 8
    iget v0, p0, Lcom/chartboost/sdk/impl/m0;->c:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_66

    if-eq v0, v1, :cond_4d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_33

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1b

    const/4 p1, 0x0

    move-object v0, p1

    goto :goto_7d

    .line 25
    :cond_1b
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result p1

    invoke-direct {v0, p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0xb

    .line 26
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 27
    iget-object p1, p0, Lcom/chartboost/sdk/impl/m0;->b:Lcom/chartboost/sdk/impl/n0;

    invoke-virtual {p1, v1}, Lcom/chartboost/sdk/impl/n0;->a(I)V

    goto :goto_7d

    .line 28
    :cond_33
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result p1

    invoke-direct {v0, p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0x9

    .line 29
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 30
    iget-object p1, p0, Lcom/chartboost/sdk/impl/m0;->b:Lcom/chartboost/sdk/impl/n0;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/chartboost/sdk/impl/n0;->a(I)V

    goto :goto_7d

    .line 31
    :cond_4d
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result p1

    invoke-direct {v0, v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0xc

    .line 32
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 33
    iget-object p1, p0, Lcom/chartboost/sdk/impl/m0;->b:Lcom/chartboost/sdk/impl/n0;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/chartboost/sdk/impl/n0;->a(I)V

    goto :goto_7d

    .line 34
    :cond_66
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result p1

    invoke-direct {v0, v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0xa

    .line 35
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 36
    iget-object p1, p0, Lcom/chartboost/sdk/impl/m0;->b:Lcom/chartboost/sdk/impl/n0;

    invoke-virtual {p1, v1}, Lcom/chartboost/sdk/impl/n0;->a(I)V

    .line 55
    :goto_7d
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public a(Z)V
    .registers 4

    const-wide/16 v0, 0x1f4

    .line 66
    invoke-direct {p0, p1, v0, v1}, Lcom/chartboost/sdk/impl/m0;->a(ZJ)V

    return-void
.end method

.method protected abstract b()I
.end method
