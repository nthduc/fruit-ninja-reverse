.class public Lcom/chartboost/sdk/impl/o0;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static final o:Ljava/lang/CharSequence;


# instance fields
.field final a:Landroid/widget/RelativeLayout;

.field final b:Lcom/chartboost/sdk/impl/n0;

.field final c:Lcom/chartboost/sdk/impl/n0;

.field final d:Lcom/chartboost/sdk/impl/o1;

.field final e:Landroid/widget/TextView;

.field final f:Lcom/chartboost/sdk/impl/k0;

.field final g:Lcom/chartboost/sdk/impl/k1;

.field final h:Lcom/chartboost/sdk/impl/i0;

.field private i:Z

.field private j:Z

.field final k:Landroid/os/Handler;

.field private final l:Ljava/lang/Runnable;

.field private final m:Ljava/lang/Runnable;

.field final n:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "00:00"

    .line 1
    sput-object v0, Lcom/chartboost/sdk/impl/o0;->o:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/i0;)V
    .registers 15

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/o0;->i:Z

    .line 3
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/o0;->j:Z

    .line 223
    new-instance v1, Lcom/chartboost/sdk/impl/o0$b;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/o0$b;-><init>(Lcom/chartboost/sdk/impl/o0;)V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/o0;->l:Ljava/lang/Runnable;

    .line 229
    new-instance v1, Lcom/chartboost/sdk/impl/o0$c;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/o0$c;-><init>(Lcom/chartboost/sdk/impl/o0;)V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/o0;->m:Ljava/lang/Runnable;

    .line 289
    new-instance v1, Lcom/chartboost/sdk/impl/o0$d;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/o0$d;-><init>(Lcom/chartboost/sdk/impl/o0;)V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/o0;->n:Ljava/lang/Runnable;

    .line 290
    iput-object p2, p0, Lcom/chartboost/sdk/impl/o0;->h:Lcom/chartboost/sdk/impl/i0;

    .line 291
    iget-object v1, p2, Lcom/chartboost/sdk/f;->a:Landroid/os/Handler;

    iput-object v1, p0, Lcom/chartboost/sdk/impl/o0;->k:Landroid/os/Handler;

    .line 293
    invoke-virtual {p2}, Lcom/chartboost/sdk/f;->e()Lorg/json/JSONObject;

    move-result-object v1

    .line 294
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41200000    # 10.0f

    mul-float v3, v3, v2

    .line 295
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 298
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v5

    .line 299
    new-instance v6, Lcom/chartboost/sdk/impl/k1;

    invoke-direct {v6, p1}, Lcom/chartboost/sdk/impl/k1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/chartboost/sdk/impl/k1;

    iput-object v6, p0, Lcom/chartboost/sdk/impl/o0;->g:Lcom/chartboost/sdk/impl/k1;

    .line 301
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x1

    invoke-direct {v6, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0xd

    .line 302
    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 303
    iget-object v9, p0, Lcom/chartboost/sdk/impl/o0;->g:Lcom/chartboost/sdk/impl/k1;

    invoke-virtual {p0, v9, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    new-instance v6, Landroid/widget/RelativeLayout;

    invoke-direct {v6, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/chartboost/sdk/impl/o0;->a:Landroid/widget/RelativeLayout;

    const/16 v6, 0x8

    if-eqz v1, :cond_e2

    const-string v9, "video-click-button"

    .line 309
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e2

    .line 310
    new-instance v1, Lcom/chartboost/sdk/impl/n0;

    invoke-direct {v1, p1}, Lcom/chartboost/sdk/impl/n0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/impl/n0;

    iput-object v1, p0, Lcom/chartboost/sdk/impl/o0;->b:Lcom/chartboost/sdk/impl/n0;

    .line 311
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 314
    new-instance v1, Lcom/chartboost/sdk/impl/o0$a;

    invoke-direct {v1, p0, p1}, Lcom/chartboost/sdk/impl/o0$a;-><init>(Lcom/chartboost/sdk/impl/o0;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/o0;->d:Lcom/chartboost/sdk/impl/o1;

    .line 327
    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v10}, Lcom/chartboost/sdk/impl/o1;->a(Landroid/widget/ImageView$ScaleType;)V

    .line 330
    iget-object v1, p2, Lcom/chartboost/sdk/impl/i0;->N:Lcom/chartboost/sdk/Libraries/h;

    .line 331
    invoke-virtual {p2, v9}, Lcom/chartboost/sdk/impl/h0;->b(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v9

    .line 332
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 333
    iget v7, v9, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/h;->a()F

    move-result v11

    div-float/2addr v7, v11

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 334
    iget v7, v9, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/h;->a()F

    move-result v9

    div-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/high16 v7, 0x3f800000    # 1.0f

    .line 335
    invoke-virtual {p2, v10, v1, v7}, Lcom/chartboost/sdk/impl/h0;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/h;F)V

    .line 336
    iget-object p2, p0, Lcom/chartboost/sdk/impl/o0;->d:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {p2, v1}, Lcom/chartboost/sdk/impl/o1;->a(Lcom/chartboost/sdk/Libraries/h;)V

    .line 339
    iget-object p2, p0, Lcom/chartboost/sdk/impl/o0;->b:Lcom/chartboost/sdk/impl/n0;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/o0;->d:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {p2, v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    int-to-float v1, v1

    add-float/2addr v1, v3

    .line 341
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {p2, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    .line 342
    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 343
    iget-object v1, p0, Lcom/chartboost/sdk/impl/o0;->a:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/chartboost/sdk/impl/o0;->b:Lcom/chartboost/sdk/impl/n0;

    invoke-virtual {v1, v7, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_e7

    :cond_e2
    const/4 p2, 0x0

    .line 345
    iput-object p2, p0, Lcom/chartboost/sdk/impl/o0;->b:Lcom/chartboost/sdk/impl/n0;

    .line 346
    iput-object p2, p0, Lcom/chartboost/sdk/impl/o0;->d:Lcom/chartboost/sdk/impl/o1;

    .line 350
    :goto_e7
    new-instance p2, Lcom/chartboost/sdk/impl/n0;

    invoke-direct {p2, p1}, Lcom/chartboost/sdk/impl/n0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, p2}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chartboost/sdk/impl/n0;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/o0;->c:Lcom/chartboost/sdk/impl/n0;

    .line 351
    invoke-virtual {p2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 352
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v1, 0x42020000    # 32.5f

    mul-float v2, v2, v1

    .line 353
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {p2, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    .line 354
    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 355
    iget-object v1, p0, Lcom/chartboost/sdk/impl/o0;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/o0;->c:Lcom/chartboost/sdk/impl/n0;

    invoke-virtual {v1, v2, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    iget-object p2, p0, Lcom/chartboost/sdk/impl/o0;->c:Lcom/chartboost/sdk/impl/n0;

    const/16 v1, 0x10

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 357
    iget-object p2, p0, Lcom/chartboost/sdk/impl/o0;->c:Lcom/chartboost/sdk/impl/n0;

    invoke-virtual {p2, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 359
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, p2}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/o0;->e:Landroid/widget/TextView;

    .line 360
    invoke-virtual {p2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 361
    iget-object p2, p0, Lcom/chartboost/sdk/impl/o0;->e:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v2, 0x41300000    # 11.0f

    invoke-virtual {p2, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 362
    iget-object p2, p0, Lcom/chartboost/sdk/impl/o0;->e:Landroid/widget/TextView;

    sget-object v1, Lcom/chartboost/sdk/impl/o0;->o:Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object p2, p0, Lcom/chartboost/sdk/impl/o0;->e:Landroid/widget/TextView;

    invoke-virtual {p2, v0, v0, v4, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 364
    iget-object p2, p0, Lcom/chartboost/sdk/impl/o0;->e:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->setSingleLine()V

    .line 367
    iget-object p2, p0, Lcom/chartboost/sdk/impl/o0;->e:Landroid/widget/TextView;

    invoke-virtual {p2, v0, v0}, Landroid/widget/TextView;->measure(II)V

    .line 368
    iget-object p2, p0, Lcom/chartboost/sdk/impl/o0;->e:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    .line 370
    iget-object v1, p0, Lcom/chartboost/sdk/impl/o0;->e:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 371
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 372
    iget-object p2, p0, Lcom/chartboost/sdk/impl/o0;->c:Lcom/chartboost/sdk/impl/n0;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/o0;->e:Landroid/widget/TextView;

    invoke-virtual {p2, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    new-instance p2, Lcom/chartboost/sdk/impl/k0;

    invoke-direct {p2, p1}, Lcom/chartboost/sdk/impl/k0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, p2}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chartboost/sdk/impl/k0;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/o0;->f:Lcom/chartboost/sdk/impl/k0;

    .line 375
    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 376
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 377
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {p2, v8, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    .line 378
    invoke-static {v1, p1}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result p1

    invoke-virtual {p2, v0, p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 379
    iget-object p1, p0, Lcom/chartboost/sdk/impl/o0;->c:Lcom/chartboost/sdk/impl/n0;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->f:Lcom/chartboost/sdk/impl/k0;

    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 382
    iget-object p2, p0, Lcom/chartboost/sdk/impl/o0;->g:Lcom/chartboost/sdk/impl/k1;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getId()I

    move-result p2

    const/4 v0, 0x6

    invoke-virtual {p1, v0, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 383
    iget-object p2, p0, Lcom/chartboost/sdk/impl/o0;->g:Lcom/chartboost/sdk/impl/k1;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getId()I

    move-result p2

    invoke-virtual {p1, v6, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 384
    iget-object p2, p0, Lcom/chartboost/sdk/impl/o0;->g:Lcom/chartboost/sdk/impl/k1;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getId()I

    move-result p2

    const/4 v0, 0x5

    invoke-virtual {p1, v0, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 385
    iget-object p2, p0, Lcom/chartboost/sdk/impl/o0;->g:Lcom/chartboost/sdk/impl/k1;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getId()I

    move-result p2

    const/4 v0, 0x7

    invoke-virtual {p1, v0, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 386
    iget-object p2, p0, Lcom/chartboost/sdk/impl/o0;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p2, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/o0;->h()V

    return-void
.end method


# virtual methods
.method public a()Lcom/chartboost/sdk/impl/k1$a;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->g:Lcom/chartboost/sdk/impl/k1;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k1;->a()Lcom/chartboost/sdk/impl/k1$a;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->b:Lcom/chartboost/sdk/impl/n0;

    if-eqz v0, :cond_7

    .line 56
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 57
    :cond_7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->c:Lcom/chartboost/sdk/impl/n0;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->g:Lcom/chartboost/sdk/impl/k1;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k1;->a()Lcom/chartboost/sdk/impl/k1$a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/impl/k1$a;->a(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 59
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->g:Lcom/chartboost/sdk/impl/k1;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k1;->a()Lcom/chartboost/sdk/impl/k1$a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/impl/k1$a;->a(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 60
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->g:Lcom/chartboost/sdk/impl/k1;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k1;->a()Lcom/chartboost/sdk/impl/k1$a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/impl/k1$a;->a(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 61
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->g:Lcom/chartboost/sdk/impl/k1;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k1;->a()Lcom/chartboost/sdk/impl/k1$a;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/impl/k1$a;->a(Landroid/net/Uri;)V

    return-void
.end method

.method public a(Z)V
    .registers 5

    .line 31
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/o0;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 32
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/o0;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_35

    .line 34
    iget-boolean v1, p0, Lcom/chartboost/sdk/impl/o0;->j:Z

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/chartboost/sdk/impl/o0;->b:Lcom/chartboost/sdk/impl/n0;

    if-eqz v1, :cond_1c

    .line 35
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 36
    :cond_1c
    iget-object v1, p0, Lcom/chartboost/sdk/impl/o0;->h:Lcom/chartboost/sdk/impl/i0;

    iget-boolean v1, v1, Lcom/chartboost/sdk/impl/i0;->R:Z

    if-eqz v1, :cond_27

    .line 37
    iget-object v1, p0, Lcom/chartboost/sdk/impl/o0;->f:Lcom/chartboost/sdk/impl/k0;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 38
    :cond_27
    iget-object v1, p0, Lcom/chartboost/sdk/impl/o0;->c:Lcom/chartboost/sdk/impl/n0;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->d:Lcom/chartboost/sdk/impl/o1;

    if-eqz v0, :cond_5f

    const/4 v1, 0x1

    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    goto :goto_5f

    .line 42
    :cond_35
    iget-object v1, p0, Lcom/chartboost/sdk/impl/o0;->b:Lcom/chartboost/sdk/impl/n0;

    const/16 v2, 0x8

    if-eqz v1, :cond_43

    .line 43
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 44
    iget-object v1, p0, Lcom/chartboost/sdk/impl/o0;->b:Lcom/chartboost/sdk/impl/n0;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 46
    :cond_43
    iget-object v1, p0, Lcom/chartboost/sdk/impl/o0;->c:Lcom/chartboost/sdk/impl/n0;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 47
    iget-object v1, p0, Lcom/chartboost/sdk/impl/o0;->h:Lcom/chartboost/sdk/impl/i0;

    iget-boolean v1, v1, Lcom/chartboost/sdk/impl/i0;->R:Z

    if-eqz v1, :cond_53

    .line 48
    iget-object v1, p0, Lcom/chartboost/sdk/impl/o0;->f:Lcom/chartboost/sdk/impl/k0;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 49
    :cond_53
    iget-object v1, p0, Lcom/chartboost/sdk/impl/o0;->c:Lcom/chartboost/sdk/impl/n0;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 50
    iget-object v1, p0, Lcom/chartboost/sdk/impl/o0;->d:Lcom/chartboost/sdk/impl/o1;

    if-eqz v1, :cond_5f

    .line 51
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 53
    :cond_5f
    :goto_5f
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/o0;->i:Z

    return-void
.end method

.method protected a(ZZ)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/o0;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/o0;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->h:Lcom/chartboost/sdk/impl/i0;

    iget-boolean v1, v0, Lcom/chartboost/sdk/impl/i0;->D:Z

    if-eqz v1, :cond_86

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/i0;->q()Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_86

    .line 7
    :cond_1b
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/o0;->i:Z

    if-ne p1, v0, :cond_20

    return-void

    .line 10
    :cond_20
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/o0;->i:Z

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2d

    .line 12
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_32

    :cond_2d
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    :goto_32
    if-eqz p2, :cond_37

    const-wide/16 v0, 0x64

    goto :goto_39

    :cond_37
    const-wide/16 v0, 0xc8

    .line 13
    :goto_39
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 p2, 0x1

    .line 15
    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 16
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/o0;->j:Z

    const/4 v1, 0x0

    if-nez v0, :cond_58

    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->b:Lcom/chartboost/sdk/impl/n0;

    if-eqz v0, :cond_58

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->b:Lcom/chartboost/sdk/impl/n0;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 19
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->d:Lcom/chartboost/sdk/impl/o1;

    if-eqz v0, :cond_58

    .line 20
    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 22
    :cond_58
    iget-object p2, p0, Lcom/chartboost/sdk/impl/o0;->h:Lcom/chartboost/sdk/impl/i0;

    iget-boolean p2, p2, Lcom/chartboost/sdk/impl/i0;->R:Z

    if-eqz p2, :cond_63

    .line 23
    iget-object p2, p0, Lcom/chartboost/sdk/impl/o0;->f:Lcom/chartboost/sdk/impl/k0;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    :cond_63
    iget-object p2, p0, Lcom/chartboost/sdk/impl/o0;->c:Lcom/chartboost/sdk/impl/n0;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 25
    iget-object p2, p0, Lcom/chartboost/sdk/impl/o0;->c:Lcom/chartboost/sdk/impl/n0;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 27
    iget-boolean p2, p0, Lcom/chartboost/sdk/impl/o0;->i:Z

    if-eqz p2, :cond_7b

    .line 28
    iget-object p1, p0, Lcom/chartboost/sdk/impl/o0;->k:Landroid/os/Handler;

    iget-object p2, p0, Lcom/chartboost/sdk/impl/o0;->l:Ljava/lang/Runnable;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_86

    .line 30
    :cond_7b
    iget-object p2, p0, Lcom/chartboost/sdk/impl/o0;->k:Landroid/os/Handler;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->m:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_86
    :goto_86
    return-void
.end method

.method public b()Lcom/chartboost/sdk/impl/k0;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->f:Lcom/chartboost/sdk/impl/k0;

    return-object v0
.end method

.method public b(Z)V
    .registers 4

    if-eqz p1, :cond_5

    const/high16 v0, -0x1000000

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    .line 1
    :goto_6
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-nez p1, :cond_3a

    .line 4
    iget-object p1, p0, Lcom/chartboost/sdk/impl/o0;->g:Lcom/chartboost/sdk/impl/k1;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getId()I

    move-result p1

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 5
    iget-object p1, p0, Lcom/chartboost/sdk/impl/o0;->g:Lcom/chartboost/sdk/impl/k1;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getId()I

    move-result p1

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 6
    iget-object p1, p0, Lcom/chartboost/sdk/impl/o0;->g:Lcom/chartboost/sdk/impl/k1;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getId()I

    move-result p1

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 7
    iget-object p1, p0, Lcom/chartboost/sdk/impl/o0;->g:Lcom/chartboost/sdk/impl/k1;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getId()I

    move-result p1

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 9
    :cond_3a
    iget-object p1, p0, Lcom/chartboost/sdk/impl/o0;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object p1, p0, Lcom/chartboost/sdk/impl/o0;->b:Lcom/chartboost/sdk/impl/n0;

    if-eqz p1, :cond_4e

    const v0, 0x800013

    .line 12
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 13
    iget-object p1, p0, Lcom/chartboost/sdk/impl/o0;->b:Lcom/chartboost/sdk/impl/n0;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_4e
    return-void
.end method

.method public c()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->g:Lcom/chartboost/sdk/impl/k1;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public c(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    const/16 p1, 0x8

    :goto_8
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public d()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->b:Lcom/chartboost/sdk/impl/n0;

    if-eqz v0, :cond_9

    const/16 v1, 0x8

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_9
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/o0;->j:Z

    .line 5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->d:Lcom/chartboost/sdk/impl/o1;

    if-eqz v0, :cond_14

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    :cond_14
    return-void
.end method

.method d(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/o0;->i:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/o0;->a(ZZ)V

    return-void
.end method

.method public e()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->g:Lcom/chartboost/sdk/impl/k1;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k1;->a()Lcom/chartboost/sdk/impl/k1$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/k1$a;->c()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->h:Lcom/chartboost/sdk/impl/i0;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/o0;->g:Lcom/chartboost/sdk/impl/k1;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/k1;->a()Lcom/chartboost/sdk/impl/k1$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/k1$a;->d()I

    move-result v1

    iput v1, v0, Lcom/chartboost/sdk/impl/i0;->y:I

    .line 3
    :cond_1a
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->g:Lcom/chartboost/sdk/impl/k1;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k1;->a()Lcom/chartboost/sdk/impl/k1$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/k1$a;->e()V

    .line 4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/o0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->k:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/o0$e;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/o0$e;-><init>(Lcom/chartboost/sdk/impl/o0;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->g:Lcom/chartboost/sdk/impl/k1;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k1;->a()Lcom/chartboost/sdk/impl/k1$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/k1$a;->a()V

    .line 7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/o0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/o0;->n:Ljava/lang/Runnable;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public g()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->g:Lcom/chartboost/sdk/impl/k1;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k1;->a()Lcom/chartboost/sdk/impl/k1$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/k1$a;->c()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->h:Lcom/chartboost/sdk/impl/i0;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/o0;->g:Lcom/chartboost/sdk/impl/k1;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/k1;->a()Lcom/chartboost/sdk/impl/k1$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/k1$a;->d()I

    move-result v1

    iput v1, v0, Lcom/chartboost/sdk/impl/i0;->y:I

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->g:Lcom/chartboost/sdk/impl/k1;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k1;->a()Lcom/chartboost/sdk/impl/k1$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/k1$a;->e()V

    .line 6
    :cond_23
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->h:Lcom/chartboost/sdk/impl/i0;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/i0;->i()Lcom/chartboost/sdk/impl/i0$b;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/h0$a;->k:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3c

    .line 7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->h:Lcom/chartboost/sdk/impl/i0;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/i0;->i()Lcom/chartboost/sdk/impl/i0$b;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/h0$a;->k:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->postInvalidate()V

    .line 9
    :cond_3c
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/o0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public h()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->e()I

    move-result v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->b(I)Z

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/o0;->b(Z)V

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/chartboost/sdk/impl/o0;->h:Lcom/chartboost/sdk/impl/i0;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->g:Lcom/chartboost/sdk/impl/k1;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k1;->a()Lcom/chartboost/sdk/impl/k1$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/k1$a;->b()I

    move-result v0

    iput v0, p1, Lcom/chartboost/sdk/impl/i0;->y:I

    .line 2
    iget-object p1, p0, Lcom/chartboost/sdk/impl/o0;->h:Lcom/chartboost/sdk/impl/i0;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/i0;->i()Lcom/chartboost/sdk/impl/i0$b;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 3
    iget-object p1, p0, Lcom/chartboost/sdk/impl/o0;->h:Lcom/chartboost/sdk/impl/i0;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/i0;->i()Lcom/chartboost/sdk/impl/i0$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/i0$b;->e()V

    :cond_1f
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/o0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/chartboost/sdk/impl/o0;->h:Lcom/chartboost/sdk/impl/i0;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/i0;->t()V

    const/4 p1, 0x0

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/chartboost/sdk/impl/o0;->h:Lcom/chartboost/sdk/impl/i0;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->g:Lcom/chartboost/sdk/impl/k1;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k1;->a()Lcom/chartboost/sdk/impl/k1$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/k1$a;->b()I

    move-result v0

    iput v0, p1, Lcom/chartboost/sdk/impl/i0;->z:I

    .line 2
    iget-object p1, p0, Lcom/chartboost/sdk/impl/o0;->h:Lcom/chartboost/sdk/impl/i0;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/i0;->i()Lcom/chartboost/sdk/impl/i0$b;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/f$b;->a(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->g:Lcom/chartboost/sdk/impl/k1;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k1;->a()Lcom/chartboost/sdk/impl/k1$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/k1$a;->c()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_1b

    .line 2
    iget-object p1, p0, Lcom/chartboost/sdk/impl/o0;->h:Lcom/chartboost/sdk/impl/i0;

    const/4 v0, 0x1

    if-eqz p1, :cond_1a

    .line 4
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/o0;->d(Z)V

    :cond_1a
    return v0

    :cond_1b
    const/4 p1, 0x0

    return p1
.end method

.method public setEnabled(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0;->d:Lcom/chartboost/sdk/impl/o1;

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    :cond_a
    if-eqz p1, :cond_10

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/o0;->a(Z)V

    :cond_10
    return-void
.end method
