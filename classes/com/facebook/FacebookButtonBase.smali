.class public abstract Lcom/facebook/FacebookButtonBase;
.super Landroid/widget/Button;
.source "FacebookButtonBase.java"


# instance fields
.field private analyticsButtonCreatedEventName:Ljava/lang/String;

.field private analyticsButtonTappedEventName:Ljava/lang/String;

.field private externalOnClickListener:Landroid/view/View$OnClickListener;

.field private internalOnClickListener:Landroid/view/View$OnClickListener;

.field private overrideCompoundPadding:Z

.field private overrideCompoundPaddingLeft:I

.field private overrideCompoundPaddingRight:I

.field private parentFragment:Lcom/facebook/internal/FragmentWrapper;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    if-nez p4, :cond_a

    .line 60
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getDefaultStyleResource()I

    move-result p4

    :cond_a
    if-nez p4, :cond_e

    .line 61
    sget p4, Lcom/facebook/common/R$style;->com_facebook_button:I

    .line 62
    :cond_e
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->configureButton(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    iput-object p5, p0, Lcom/facebook/FacebookButtonBase;->analyticsButtonCreatedEventName:Ljava/lang/String;

    .line 64
    iput-object p6, p0, Lcom/facebook/FacebookButtonBase;->analyticsButtonTappedEventName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 65
    invoke-virtual {p0, p1}, Lcom/facebook/FacebookButtonBase;->setClickable(Z)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/facebook/FacebookButtonBase;->setFocusable(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/FacebookButtonBase;Landroid/content/Context;)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Lcom/facebook/FacebookButtonBase;->logButtonTapped(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/FacebookButtonBase;)Landroid/view/View$OnClickListener;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/facebook/FacebookButtonBase;->internalOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/facebook/FacebookButtonBase;)Landroid/view/View$OnClickListener;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/facebook/FacebookButtonBase;->externalOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private logButtonCreated(Landroid/content/Context;)V
    .registers 3

    .line 218
    new-instance v0, Lcom/facebook/appevents/InternalAppEventsLogger;

    invoke-direct {v0, p1}, Lcom/facebook/appevents/InternalAppEventsLogger;-><init>(Landroid/content/Context;)V

    .line 219
    iget-object p1, p0, Lcom/facebook/FacebookButtonBase;->analyticsButtonCreatedEventName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/facebook/appevents/InternalAppEventsLogger;->logEventImplicitly(Ljava/lang/String;)V

    return-void
.end method

.method private logButtonTapped(Landroid/content/Context;)V
    .registers 3

    .line 223
    new-instance v0, Lcom/facebook/appevents/InternalAppEventsLogger;

    invoke-direct {v0, p1}, Lcom/facebook/appevents/InternalAppEventsLogger;-><init>(Landroid/content/Context;)V

    .line 224
    iget-object p1, p0, Lcom/facebook/FacebookButtonBase;->analyticsButtonTappedEventName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/facebook/appevents/InternalAppEventsLogger;->logEventImplicitly(Ljava/lang/String;)V

    return-void
.end method

.method private parseBackgroundAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    .line 233
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 237
    new-array v0, v0, [I

    const v1, 0x10100d4

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 243
    :try_start_18
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_30

    .line 244
    invoke-virtual {p2, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_28

    .line 246
    invoke-virtual {p0, p1}, Lcom/facebook/FacebookButtonBase;->setBackgroundResource(I)V

    goto :goto_39

    .line 248
    :cond_28
    invoke-virtual {p2, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/facebook/FacebookButtonBase;->setBackgroundColor(I)V

    goto :goto_39

    .line 252
    :cond_30
    sget p3, Lcom/facebook/common/R$color;->com_facebook_blue:I

    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/facebook/FacebookButtonBase;->setBackgroundColor(I)V
    :try_end_39
    .catchall {:try_start_18 .. :try_end_39} :catchall_3d

    .line 255
    :goto_39
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_3d
    move-exception p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 256
    throw p1
.end method

.method private parseCompoundDrawableAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    const/4 v0, 0x5

    .line 265
    new-array v0, v0, [I

    fill-array-data v0, :array_36

    .line 273
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 276
    :try_start_f
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    const/4 p4, 0x1

    .line 277
    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    const/4 v0, 0x2

    .line 278
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    const/4 v1, 0x3

    .line 279
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 275
    invoke-virtual {p0, p3, p4, v0, v1}, Lcom/facebook/FacebookButtonBase;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const/4 p3, 0x4

    .line 280
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/facebook/FacebookButtonBase;->setCompoundDrawablePadding(I)V
    :try_end_2d
    .catchall {:try_start_f .. :try_end_2d} :catchall_31

    .line 283
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_31
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 284
    throw p2

    :array_36
    .array-data 4
        0x101016f
        0x101016d
        0x1010170
        0x101016e
        0x1010171
    .end array-data
.end method

.method private parseContentAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    const/4 v0, 0x4

    .line 293
    new-array v0, v0, [I

    fill-array-data v0, :array_2e

    .line 300
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 303
    :try_start_f
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    const/4 p4, 0x1

    .line 304
    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    const/4 v0, 0x2

    .line 305
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    const/4 v1, 0x3

    .line 306
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 302
    invoke-virtual {p0, p3, p4, v0, p2}, Lcom/facebook/FacebookButtonBase;->setPadding(IIII)V
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_29

    .line 308
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_29
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 309
    throw p2

    :array_2e
    .array-data 4
        0x10100d6
        0x10100d7
        0x10100d8
        0x10100d9
    .end array-data
.end method

.method private parseTextAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9

    const/4 v0, 0x1

    .line 318
    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x1010098

    aput v3, v1, v2

    .line 322
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, p2, v1, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 324
    :try_start_11
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/facebook/FacebookButtonBase;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_6d

    .line 326
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 328
    new-array v1, v0, [I

    const v3, 0x10100af

    aput v3, v1, v2

    .line 333
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 334
    invoke-virtual {v3, p2, v1, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v3, 0x11

    .line 336
    :try_start_2c
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/facebook/FacebookButtonBase;->setGravity(I)V
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_68

    .line 338
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v1, 0x3

    .line 340
    new-array v1, v1, [I

    fill-array-data v1, :array_72

    .line 344
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 346
    :try_start_44
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0, v2, p2}, Lcom/facebook/FacebookButtonBase;->setTextSize(IF)V

    .line 347
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/facebook/FacebookButtonBase;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p2, 0x2

    .line 348
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/facebook/FacebookButtonBase;->setText(Ljava/lang/CharSequence;)V
    :try_end_5f
    .catchall {:try_start_44 .. :try_end_5f} :catchall_63

    .line 350
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_63
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 351
    throw p2

    :catchall_68
    move-exception p1

    .line 338
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 339
    throw p1

    :catchall_6d
    move-exception p1

    .line 326
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 327
    throw p1

    :array_72
    .array-data 4
        0x1010095
        0x1010097
        0x101014f
    .end array-data
.end method

.method private setupOnClickListener()V
    .registers 2

    .line 357
    new-instance v0, Lcom/facebook/FacebookButtonBase$1;

    invoke-direct {v0, p0}, Lcom/facebook/FacebookButtonBase$1;-><init>(Lcom/facebook/FacebookButtonBase;)V

    invoke-super {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected callExternalOnClickListener(Landroid/view/View;)V
    .registers 3

    .line 208
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase;->externalOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_7

    .line 209
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method protected configureButton(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 200
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->parseBackgroundAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 201
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->parseCompoundDrawableAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 202
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->parseContentAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 203
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->parseTextAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 204
    invoke-direct {p0}, Lcom/facebook/FacebookButtonBase;->setupOnClickListener()V

    return-void
.end method

.method protected getActivity()Landroid/app/Activity;
    .registers 4

    .line 176
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 177
    :goto_4
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_13

    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_13

    .line 178
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_4

    :cond_13
    if-eqz v1, :cond_18

    .line 182
    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 184
    :cond_18
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Unable to get Activity."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method

.method public getCompoundPaddingLeft()I
    .registers 2

    .line 163
    iget-boolean v0, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPadding:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPaddingLeft:I

    goto :goto_b

    .line 165
    :cond_7
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingLeft()I

    move-result v0

    :goto_b
    return v0
.end method

.method public getCompoundPaddingRight()I
    .registers 2

    .line 170
    iget-boolean v0, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPadding:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPaddingRight:I

    goto :goto_b

    .line 172
    :cond_7
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingRight()I

    move-result v0

    :goto_b
    return v0
.end method

.method protected abstract getDefaultRequestCode()I
.end method

.method protected getDefaultStyleResource()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getFragment()Landroidx/fragment/app/Fragment;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase;->parentFragment:Lcom/facebook/internal/FragmentWrapper;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/facebook/internal/FragmentWrapper;->getSupportFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getNativeFragment()Landroid/app/Fragment;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase;->parentFragment:Lcom/facebook/internal/FragmentWrapper;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/facebook/internal/FragmentWrapper;->getNativeFragment()Landroid/app/Fragment;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getRequestCode()I
    .registers 2

    .line 122
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getDefaultRequestCode()I

    move-result v0

    return v0
.end method

.method protected measureTextWidth(Ljava/lang/String;)I
    .registers 4

    .line 192
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 127
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 128
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_10

    .line 129
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/FacebookButtonBase;->logButtonCreated(Landroid/content/Context;)V

    :cond_10
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    .line 135
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getGravity()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_44

    .line 144
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getCompoundPaddingLeft()I

    move-result v0

    .line 145
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getCompoundPaddingRight()I

    move-result v3

    .line 146
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getCompoundDrawablePadding()I

    move-result v4

    add-int/2addr v4, v0

    .line 148
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getWidth()I

    move-result v5

    sub-int/2addr v5, v4

    sub-int/2addr v5, v3

    .line 149
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/facebook/FacebookButtonBase;->measureTextWidth(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v5, v4

    .line 150
    div-int/lit8 v5, v5, 0x2

    .line 151
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getPaddingLeft()I

    move-result v4

    sub-int v4, v0, v4

    div-int/lit8 v4, v4, 0x2

    .line 152
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr v0, v4

    .line 153
    iput v0, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPaddingLeft:I

    add-int/2addr v3, v4

    .line 154
    iput v3, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPaddingRight:I

    .line 155
    iput-boolean v1, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPadding:Z

    .line 157
    :cond_44
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 158
    iput-boolean v2, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPadding:Z

    return-void
.end method

.method public setFragment(Landroid/app/Fragment;)V
    .registers 3

    .line 90
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/facebook/FacebookButtonBase;->parentFragment:Lcom/facebook/internal/FragmentWrapper;

    return-void
.end method

.method public setFragment(Landroidx/fragment/app/Fragment;)V
    .registers 3

    .line 79
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lcom/facebook/FacebookButtonBase;->parentFragment:Lcom/facebook/internal/FragmentWrapper;

    return-void
.end method

.method protected setInternalOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 214
    iput-object p1, p0, Lcom/facebook/FacebookButtonBase;->internalOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/facebook/FacebookButtonBase;->externalOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method
