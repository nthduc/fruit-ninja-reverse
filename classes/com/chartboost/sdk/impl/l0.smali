.class public Lcom/chartboost/sdk/impl/l0;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field final a:Lcom/chartboost/sdk/impl/i0;

.field private b:Landroid/widget/LinearLayout;

.field private c:Lcom/chartboost/sdk/impl/n1;

.field private d:Landroid/widget/TextView;

.field final e:Lcom/chartboost/sdk/impl/o1;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/i0;)V
    .registers 12

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x80000000

    .line 2
    iput v0, p0, Lcom/chartboost/sdk/impl/l0;->f:I

    .line 6
    iput-object p2, p0, Lcom/chartboost/sdk/impl/l0;->a:Lcom/chartboost/sdk/impl/i0;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float v0, v0, v1

    .line 9
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x1

    .line 11
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x11

    .line 13
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 15
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/chartboost/sdk/impl/l0;->b:Landroid/widget/LinearLayout;

    .line 16
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 17
    iget-object v3, p0, Lcom/chartboost/sdk/impl/l0;->b:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 18
    iget-object v3, p0, Lcom/chartboost/sdk/impl/l0;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 20
    new-instance v3, Lcom/chartboost/sdk/impl/n1;

    invoke-direct {v3, p1}, Lcom/chartboost/sdk/impl/n1;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/chartboost/sdk/impl/l0;->c:Lcom/chartboost/sdk/impl/n1;

    .line 21
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 22
    iget-object v3, p0, Lcom/chartboost/sdk/impl/l0;->c:Lcom/chartboost/sdk/impl/n1;

    invoke-virtual {v3, v4, v4, v0, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 23
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 24
    iget-object v6, p2, Lcom/chartboost/sdk/impl/i0;->M:Lcom/chartboost/sdk/Libraries/h;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p2, v3, v6, v7}, Lcom/chartboost/sdk/impl/h0;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/h;F)V

    .line 26
    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/chartboost/sdk/impl/l0;->d:Landroid/widget/TextView;

    const/4 v8, -0x1

    .line 27
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    iget-object v6, p0, Lcom/chartboost/sdk/impl/l0;->d:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 29
    iget-object v1, p0, Lcom/chartboost/sdk/impl/l0;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 30
    iget-object v1, p0, Lcom/chartboost/sdk/impl/l0;->d:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/chartboost/sdk/f;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7c

    const/high16 p1, 0x41d00000    # 26.0f

    goto :goto_7e

    :cond_7c
    const/high16 p1, 0x41800000    # 16.0f

    :goto_7e
    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 32
    iget-object p1, p0, Lcom/chartboost/sdk/impl/l0;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/l0;->c:Lcom/chartboost/sdk/impl/n1;

    invoke-virtual {p1, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    iget-object p1, p0, Lcom/chartboost/sdk/impl/l0;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/l0;->d:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    new-instance p1, Lcom/chartboost/sdk/impl/l0$a;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Lcom/chartboost/sdk/impl/l0$a;-><init>(Lcom/chartboost/sdk/impl/l0;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/l0;->e:Lcom/chartboost/sdk/impl/o1;

    const-string v1, "CBWatch"

    .line 42
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 43
    iget-object p1, p0, Lcom/chartboost/sdk/impl/l0;->e:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {p1, v4, v4, v4, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 44
    iget-object p1, p0, Lcom/chartboost/sdk/impl/l0;->e:Lcom/chartboost/sdk/impl/o1;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Lcom/chartboost/sdk/impl/o1;->a(Landroid/widget/ImageView$ScaleType;)V

    .line 45
    iget-object p1, p0, Lcom/chartboost/sdk/impl/l0;->e:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 46
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47
    iget-object v0, p2, Lcom/chartboost/sdk/impl/i0;->L:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {p2, p1, v0, v7}, Lcom/chartboost/sdk/impl/h0;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/h;F)V

    .line 49
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l0;->c:Lcom/chartboost/sdk/impl/n1;

    iget-object v1, p2, Lcom/chartboost/sdk/impl/i0;->M:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/n1;->a(Lcom/chartboost/sdk/Libraries/h;)V

    .line 50
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l0;->e:Lcom/chartboost/sdk/impl/o1;

    iget-object p2, p2, Lcom/chartboost/sdk/impl/i0;->L:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0, p2}, Lcom/chartboost/sdk/impl/o1;->a(Lcom/chartboost/sdk/Libraries/h;)V

    .line 52
    iget-object p2, p0, Lcom/chartboost/sdk/impl/l0;->b:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object p2, p0, Lcom/chartboost/sdk/impl/l0;->e:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {p0, p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/l0;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l0;->a:Lcom/chartboost/sdk/impl/i0;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/i0;->s()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/l0;->a(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l0;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iput p2, p0, Lcom/chartboost/sdk/impl/l0;->f:I

    .line 4
    iget-object p1, p0, Lcom/chartboost/sdk/impl/l0;->a:Lcom/chartboost/sdk/impl/i0;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/i0;->s()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/l0;->a(Z)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    if-eqz p1, :cond_5

    const/high16 p1, -0x1000000

    goto :goto_7

    .line 1
    :cond_5
    iget p1, p0, Lcom/chartboost/sdk/impl/l0;->f:I

    :goto_7
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method
