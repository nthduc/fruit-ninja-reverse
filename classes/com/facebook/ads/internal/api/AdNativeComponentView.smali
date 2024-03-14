.class public abstract Lcom/facebook/ads/internal/api/AdNativeComponentView;
.super Landroid/widget/RelativeLayout;
.source "AdNativeComponentView.java"

# interfaces
.implements Lcom/facebook/ads/internal/api/AdComponentView;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field protected mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mAdComponentViewParentApi:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 97
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance p1, Lcom/facebook/ads/internal/api/AdNativeComponentView$1;

    invoke-direct {p1, p0}, Lcom/facebook/ads/internal/api/AdNativeComponentView$1;-><init>(Lcom/facebook/ads/internal/api/AdNativeComponentView;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/api/AdNativeComponentView;->mAdComponentViewParentApi:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance p1, Lcom/facebook/ads/internal/api/AdNativeComponentView$1;

    invoke-direct {p1, p0}, Lcom/facebook/ads/internal/api/AdNativeComponentView$1;-><init>(Lcom/facebook/ads/internal/api/AdNativeComponentView;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/api/AdNativeComponentView;->mAdComponentViewParentApi:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance p1, Lcom/facebook/ads/internal/api/AdNativeComponentView$1;

    invoke-direct {p1, p0}, Lcom/facebook/ads/internal/api/AdNativeComponentView$1;-><init>(Lcom/facebook/ads/internal/api/AdNativeComponentView;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/api/AdNativeComponentView;->mAdComponentViewParentApi:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 111
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 25
    new-instance p1, Lcom/facebook/ads/internal/api/AdNativeComponentView$1;

    invoke-direct {p1, p0}, Lcom/facebook/ads/internal/api/AdNativeComponentView$1;-><init>(Lcom/facebook/ads/internal/api/AdNativeComponentView;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/api/AdNativeComponentView;->mAdComponentViewParentApi:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    return-void
.end method

.method static synthetic access$001(Lcom/facebook/ads/internal/api/AdNativeComponentView;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2

    .line 23
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$1001(Lcom/facebook/ads/internal/api/AdNativeComponentView;Landroid/view/View;I)V
    .registers 3

    .line 23
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$101(Lcom/facebook/ads/internal/api/AdNativeComponentView;II)V
    .registers 3

    .line 23
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method static synthetic access$1101(Lcom/facebook/ads/internal/api/AdNativeComponentView;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 23
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$1201(Lcom/facebook/ads/internal/api/AdNativeComponentView;Landroid/view/View;II)V
    .registers 4

    .line 23
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$201(Lcom/facebook/ads/internal/api/AdNativeComponentView;II)V
    .registers 3

    .line 23
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$301(Lcom/facebook/ads/internal/api/AdNativeComponentView;)V
    .registers 1

    .line 23
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    return-void
.end method

.method static synthetic access$401(Lcom/facebook/ads/internal/api/AdNativeComponentView;)V
    .registers 1

    .line 23
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method static synthetic access$501(Lcom/facebook/ads/internal/api/AdNativeComponentView;Landroid/view/View;)V
    .registers 2

    .line 23
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$601(Lcom/facebook/ads/internal/api/AdNativeComponentView;Z)V
    .registers 2

    .line 23
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    return-void
.end method

.method static synthetic access$701(Lcom/facebook/ads/internal/api/AdNativeComponentView;Landroid/view/View;I)V
    .registers 3

    .line 23
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$801(Lcom/facebook/ads/internal/api/AdNativeComponentView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 23
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$901(Lcom/facebook/ads/internal/api/AdNativeComponentView;Landroid/view/View;)V
    .registers 2

    .line 23
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 3

    .line 133
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdNativeComponentView;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    if-eqz v0, :cond_8

    .line 134
    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdComponentViewApi;->addView(Landroid/view/View;)V

    goto :goto_b

    .line 136
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :goto_b
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 4

    .line 142
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdNativeComponentView;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    if-eqz v0, :cond_8

    .line 143
    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/internal/api/AdComponentViewApi;->addView(Landroid/view/View;I)V

    goto :goto_b

    .line 145
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    :goto_b
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .registers 5

    .line 160
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdNativeComponentView;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    if-eqz v0, :cond_8

    .line 161
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/internal/api/AdComponentViewApi;->addView(Landroid/view/View;II)V

    goto :goto_b

    .line 163
    :cond_8
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    :goto_b
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .line 169
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdNativeComponentView;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    if-eqz v0, :cond_8

    .line 170
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/internal/api/AdComponentViewApi;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b

    .line 172
    :cond_8
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_b
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 151
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdNativeComponentView;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    if-eqz v0, :cond_8

    .line 152
    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/internal/api/AdComponentViewApi;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b

    .line 154
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_b
    return-void
.end method

.method protected attachAdComponentViewApi(Lcom/facebook/ads/internal/api/AdComponentViewApiProvider;)V
    .registers 4

    .line 116
    invoke-static {}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->isFallbackMode()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 121
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdNativeComponentView;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    if-nez v0, :cond_1b

    .line 123
    invoke-interface {p1}, Lcom/facebook/ads/internal/api/AdComponentViewApiProvider;->getAdComponentViewApi()Lcom/facebook/ads/internal/api/AdComponentViewApi;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/api/AdNativeComponentView;->mAdComponentViewParentApi:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    .line 124
    invoke-interface {v0, p0, v1}, Lcom/facebook/ads/internal/api/AdComponentViewApi;->onAttachedToView(Lcom/facebook/ads/internal/api/AdComponentView;Lcom/facebook/ads/internal/api/AdComponentViewParentApi;)V

    .line 125
    invoke-interface {p1}, Lcom/facebook/ads/internal/api/AdComponentViewApiProvider;->getAdComponentViewApi()Lcom/facebook/ads/internal/api/AdComponentViewApi;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/internal/api/AdNativeComponentView;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    return-void

    .line 127
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "AdComponentViewApi can\'t be attached more then once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .registers 3

    .line 234
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdNativeComponentView;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    if-eqz v0, :cond_8

    .line 235
    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdComponentViewApi;->bringChildToFront(Landroid/view/View;)V

    goto :goto_b

    .line 237
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    :goto_b
    return-void
.end method

.method public abstract getAdContentsView()Landroid/view/View;
.end method

.method protected onAttachedToWindow()V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdNativeComponentView;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    if-eqz v0, :cond_8

    .line 216
    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AdComponentViewApi;->onAttachedToWindow()V

    goto :goto_b

    .line 218
    :cond_8
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    :goto_b
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdNativeComponentView;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    if-eqz v0, :cond_8

    .line 226
    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AdComponentViewApi;->onDetachedFromWindow()V

    goto :goto_b

    .line 228
    :cond_8
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    :goto_b
    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    .line 187
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdNativeComponentView;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    if-eqz v0, :cond_8

    .line 188
    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/internal/api/AdComponentViewApi;->onMeasure(II)V

    goto :goto_b

    .line 190
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    :goto_b
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 4

    .line 196
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdNativeComponentView;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    if-eqz v0, :cond_8

    .line 197
    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/internal/api/AdComponentViewApi;->onVisibilityChanged(Landroid/view/View;I)V

    goto :goto_b

    .line 199
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    :goto_b
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    .line 205
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdNativeComponentView;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    if-eqz v0, :cond_8

    .line 206
    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdComponentViewApi;->onWindowFocusChanged(Z)V

    goto :goto_b

    .line 208
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    :goto_b
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 178
    iget-object v0, p0, Lcom/facebook/ads/internal/api/AdNativeComponentView;->mAdComponentViewApi:Lcom/facebook/ads/internal/api/AdComponentViewApi;

    if-eqz v0, :cond_8

    .line 179
    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdComponentViewApi;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b

    .line 181
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_b
    return-void
.end method
