.class public Lcom/chartboost/sdk/impl/g0;
.super Lcom/chartboost/sdk/impl/m0;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Lcom/chartboost/sdk/impl/n1;

.field private g:Lcom/chartboost/sdk/impl/o1;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/i0;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/impl/m0;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/i0;)V

    return-void
.end method


# virtual methods
.method protected a()Landroid/view/View;
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float v1, v1, v2

    .line 3
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 4
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/chartboost/sdk/impl/g0;->d:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 6
    iget-object v2, p0, Lcom/chartboost/sdk/impl/g0;->d:Landroid/widget/LinearLayout;

    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 8
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/chartboost/sdk/impl/g0;->e:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    .line 9
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 10
    iget-object v2, p0, Lcom/chartboost/sdk/impl/g0;->e:Landroid/widget/LinearLayout;

    const v5, 0x800013

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 12
    new-instance v2, Lcom/chartboost/sdk/impl/n1;

    invoke-direct {v2, v0}, Lcom/chartboost/sdk/impl/n1;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/chartboost/sdk/impl/g0;->f:Lcom/chartboost/sdk/impl/n1;

    .line 13
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 14
    iget-object v2, p0, Lcom/chartboost/sdk/impl/m0;->a:Lcom/chartboost/sdk/impl/i0;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/i0;->O:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/h;->e()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 15
    iget-object v2, p0, Lcom/chartboost/sdk/impl/g0;->f:Lcom/chartboost/sdk/impl/n1;

    iget-object v5, p0, Lcom/chartboost/sdk/impl/m0;->a:Lcom/chartboost/sdk/impl/i0;

    iget-object v5, v5, Lcom/chartboost/sdk/impl/i0;->O:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v2, v5}, Lcom/chartboost/sdk/impl/n1;->a(Lcom/chartboost/sdk/Libraries/h;)V

    .line 17
    :cond_5c
    new-instance v2, Lcom/chartboost/sdk/impl/g0$a;

    invoke-direct {v2, p0, v0}, Lcom/chartboost/sdk/impl/g0$a;-><init>(Lcom/chartboost/sdk/impl/g0;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/chartboost/sdk/impl/g0;->g:Lcom/chartboost/sdk/impl/o1;

    .line 25
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/m0;->a:Lcom/chartboost/sdk/impl/i0;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/i0;->P:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->e()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 27
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g0;->g:Lcom/chartboost/sdk/impl/o1;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/m0;->a:Lcom/chartboost/sdk/impl/i0;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/i0;->P:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/o1;->a(Lcom/chartboost/sdk/Libraries/h;)V

    .line 29
    :cond_79
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/g0;->h:Landroid/widget/TextView;

    const v2, -0xe8eaeb

    .line 30
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g0;->h:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 32
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g0;->h:Landroid/widget/TextView;

    const v6, 0x800003

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 33
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g0;->h:Landroid/widget/TextView;

    div-int/lit8 v7, v1, 0x2

    invoke-virtual {v0, v1, v1, v1, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 35
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/g0;->i:Landroid/widget/TextView;

    .line 36
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g0;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 38
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g0;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 39
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g0;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v3, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 41
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g0;->h:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 42
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g0;->i:Landroid/widget/TextView;

    const/high16 v1, 0x41300000    # 11.0f

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 44
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g0;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/g0;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 45
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g0;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/g0;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 47
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g0;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/g0;->f:Lcom/chartboost/sdk/impl/n1;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 48
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g0;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/g0;->e:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g0;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/g0;->g:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 52
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g0;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 53
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g0;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object p1, p0, Lcom/chartboost/sdk/impl/g0;->i:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected b()I
    .registers 2

    const/16 v0, 0x48

    return v0
.end method
