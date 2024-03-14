.class public Lcom/facebook/login/widget/ProfilePictureView;
.super Landroid/widget/FrameLayout;
.source "ProfilePictureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/widget/ProfilePictureView$OnErrorListener;
    }
.end annotation


# static fields
.field private static final BITMAP_HEIGHT_KEY:Ljava/lang/String; = "ProfilePictureView_height"

.field private static final BITMAP_KEY:Ljava/lang/String; = "ProfilePictureView_bitmap"

.field private static final BITMAP_WIDTH_KEY:Ljava/lang/String; = "ProfilePictureView_width"

.field public static final CUSTOM:I = -0x1

.field private static final IS_CROPPED_DEFAULT_VALUE:Z = true

.field private static final IS_CROPPED_KEY:Ljava/lang/String; = "ProfilePictureView_isCropped"

.field public static final LARGE:I = -0x4

.field private static final MIN_SIZE:I = 0x1

.field public static final NORMAL:I = -0x3

.field private static final PENDING_REFRESH_KEY:Ljava/lang/String; = "ProfilePictureView_refresh"

.field private static final PRESET_SIZE_KEY:Ljava/lang/String; = "ProfilePictureView_presetSize"

.field private static final PROFILE_ID_KEY:Ljava/lang/String; = "ProfilePictureView_profileId"

.field public static final SMALL:I = -0x2

.field private static final SUPER_STATE_KEY:Ljava/lang/String; = "ProfilePictureView_superState"

.field public static final TAG:Ljava/lang/String; = "ProfilePictureView"


# instance fields
.field private customizedDefaultProfilePicture:Landroid/graphics/Bitmap;

.field private image:Landroid/widget/ImageView;

.field private imageContents:Landroid/graphics/Bitmap;

.field private isCropped:Z

.field private lastRequest:Lcom/facebook/internal/ImageRequest;

.field private onErrorListener:Lcom/facebook/login/widget/ProfilePictureView$OnErrorListener;

.field private presetSizeType:I

.field private profileId:Ljava/lang/String;

.field private queryHeight:I

.field private queryWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 121
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 105
    iput v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryHeight:I

    .line 106
    iput v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryWidth:I

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->isCropped:Z

    const/4 v0, -0x1

    .line 110
    iput v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->presetSizeType:I

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->customizedDefaultProfilePicture:Landroid/graphics/Bitmap;

    .line 122
    invoke-direct {p0, p1}, Lcom/facebook/login/widget/ProfilePictureView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 132
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 105
    iput v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryHeight:I

    .line 106
    iput v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryWidth:I

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->isCropped:Z

    const/4 v0, -0x1

    .line 110
    iput v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->presetSizeType:I

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->customizedDefaultProfilePicture:Landroid/graphics/Bitmap;

    .line 133
    invoke-direct {p0, p1}, Lcom/facebook/login/widget/ProfilePictureView;->initialize(Landroid/content/Context;)V

    .line 134
    invoke-direct {p0, p2}, Lcom/facebook/login/widget/ProfilePictureView;->parseAttributes(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 145
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 105
    iput p3, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryHeight:I

    .line 106
    iput p3, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryWidth:I

    const/4 p3, 0x1

    .line 107
    iput-boolean p3, p0, Lcom/facebook/login/widget/ProfilePictureView;->isCropped:Z

    const/4 p3, -0x1

    .line 110
    iput p3, p0, Lcom/facebook/login/widget/ProfilePictureView;->presetSizeType:I

    const/4 p3, 0x0

    .line 113
    iput-object p3, p0, Lcom/facebook/login/widget/ProfilePictureView;->customizedDefaultProfilePicture:Landroid/graphics/Bitmap;

    .line 146
    invoke-direct {p0, p1}, Lcom/facebook/login/widget/ProfilePictureView;->initialize(Landroid/content/Context;)V

    .line 147
    invoke-direct {p0, p2}, Lcom/facebook/login/widget/ProfilePictureView;->parseAttributes(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/login/widget/ProfilePictureView;Lcom/facebook/internal/ImageResponse;)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lcom/facebook/login/widget/ProfilePictureView;->processResponse(Lcom/facebook/internal/ImageResponse;)V

    return-void
.end method

.method private getPresetSizeInPixels(Z)I
    .registers 5

    .line 527
    iget v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->presetSizeType:I

    const/4 v1, -0x4

    if-eq v0, v1, :cond_1c

    const/4 v1, -0x3

    if-eq v0, v1, :cond_19

    const/4 v1, -0x2

    if-eq v0, v1, :cond_16

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_10

    return v2

    :cond_10
    if-nez p1, :cond_13

    return v2

    .line 541
    :cond_13
    sget p1, Lcom/facebook/login/R$dimen;->com_facebook_profilepictureview_preset_size_normal:I

    goto :goto_1e

    .line 529
    :cond_16
    sget p1, Lcom/facebook/login/R$dimen;->com_facebook_profilepictureview_preset_size_small:I

    goto :goto_1e

    .line 532
    :cond_19
    sget p1, Lcom/facebook/login/R$dimen;->com_facebook_profilepictureview_preset_size_normal:I

    goto :goto_1e

    .line 535
    :cond_1c
    sget p1, Lcom/facebook/login/R$dimen;->com_facebook_profilepictureview_preset_size_large:I

    .line 548
    :goto_1e
    invoke-virtual {p0}, Lcom/facebook/login/widget/ProfilePictureView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method private initialize(Landroid/content/Context;)V
    .registers 3

    .line 362
    invoke-virtual {p0}, Lcom/facebook/login/widget/ProfilePictureView;->removeAllViews()V

    .line 364
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->image:Landroid/widget/ImageView;

    .line 366
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 369
    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    iget-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->image:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 374
    iget-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->image:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/facebook/login/widget/ProfilePictureView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private parseAttributes(Landroid/util/AttributeSet;)V
    .registers 4

    .line 379
    invoke-virtual {p0}, Lcom/facebook/login/widget/ProfilePictureView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/login/R$styleable;->com_facebook_profile_picture_view:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 380
    sget v0, Lcom/facebook/login/R$styleable;->com_facebook_profile_picture_view_com_facebook_preset_size:I

    const/4 v1, -0x1

    .line 381
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 380
    invoke-virtual {p0, v0}, Lcom/facebook/login/widget/ProfilePictureView;->setPresetSize(I)V

    .line 382
    sget v0, Lcom/facebook/login/R$styleable;->com_facebook_profile_picture_view_com_facebook_is_cropped:I

    const/4 v1, 0x1

    .line 383
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->isCropped:Z

    .line 386
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private processResponse(Lcom/facebook/internal/ImageResponse;)V
    .registers 6

    .line 472
    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->getRequest()Lcom/facebook/internal/ImageRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/login/widget/ProfilePictureView;->lastRequest:Lcom/facebook/internal/ImageRequest;

    if-ne v0, v1, :cond_53

    const/4 v0, 0x0

    .line 473
    iput-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->lastRequest:Lcom/facebook/internal/ImageRequest;

    .line 474
    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 475
    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->getError()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 477
    iget-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->onErrorListener:Lcom/facebook/login/widget/ProfilePictureView$OnErrorListener;

    if-eqz p1, :cond_37

    .line 479
    new-instance v0, Lcom/facebook/FacebookException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in downloading profile picture for profileId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {p0}, Lcom/facebook/login/widget/ProfilePictureView;->getProfileId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 479
    invoke-interface {p1, v0}, Lcom/facebook/login/widget/ProfilePictureView$OnErrorListener;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_53

    .line 483
    :cond_37
    sget-object p1, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const/4 v0, 0x6

    sget-object v2, Lcom/facebook/login/widget/ProfilePictureView;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v2, v1}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_53

    :cond_44
    if-eqz v0, :cond_53

    .line 486
    invoke-direct {p0, v0}, Lcom/facebook/login/widget/ProfilePictureView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 488
    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->isCachedRedirect()Z

    move-result p1

    if-eqz p1, :cond_53

    const/4 p1, 0x0

    .line 489
    invoke-direct {p0, p1}, Lcom/facebook/login/widget/ProfilePictureView;->sendImageRequest(Z)V

    :cond_53
    :goto_53
    return-void
.end method

.method private refreshImage(Z)V
    .registers 4

    .line 390
    invoke-direct {p0}, Lcom/facebook/login/widget/ProfilePictureView;->updateImageQueryParameters()Z

    move-result v0

    .line 393
    iget-object v1, p0, Lcom/facebook/login/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    if-eqz v1, :cond_20

    .line 394
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_20

    iget v1, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryWidth:I

    if-nez v1, :cond_17

    iget v1, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryHeight:I

    if-nez v1, :cond_17

    goto :goto_20

    :cond_17
    if-nez v0, :cond_1b

    if-eqz p1, :cond_23

    :cond_1b
    const/4 p1, 0x1

    .line 399
    invoke-direct {p0, p1}, Lcom/facebook/login/widget/ProfilePictureView;->sendImageRequest(Z)V

    goto :goto_23

    .line 397
    :cond_20
    :goto_20
    invoke-direct {p0}, Lcom/facebook/login/widget/ProfilePictureView;->setBlankProfilePicture()V

    :cond_23
    :goto_23
    return-void
.end method

.method private sendImageRequest(Z)V
    .registers 8

    .line 435
    invoke-static {}, Lcom/facebook/AccessToken;->isCurrentAccessTokenActive()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 436
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_f
    const-string v0, ""

    .line 439
    :goto_11
    new-instance v1, Lcom/facebook/internal/ImageRequest$Builder;

    .line 441
    invoke-virtual {p0}, Lcom/facebook/login/widget/ProfilePictureView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/login/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    iget v4, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryWidth:I

    iget v5, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryHeight:I

    .line 442
    invoke-static {v3, v4, v5, v0}, Lcom/facebook/internal/ImageRequest;->getProfilePictureUri(Ljava/lang/String;IILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/facebook/internal/ImageRequest$Builder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 446
    invoke-virtual {v1, p1}, Lcom/facebook/internal/ImageRequest$Builder;->setAllowCachedRedirects(Z)Lcom/facebook/internal/ImageRequest$Builder;

    move-result-object p1

    .line 447
    invoke-virtual {p1, p0}, Lcom/facebook/internal/ImageRequest$Builder;->setCallerTag(Ljava/lang/Object;)Lcom/facebook/internal/ImageRequest$Builder;

    move-result-object p1

    new-instance v0, Lcom/facebook/login/widget/ProfilePictureView$1;

    invoke-direct {v0, p0}, Lcom/facebook/login/widget/ProfilePictureView$1;-><init>(Lcom/facebook/login/widget/ProfilePictureView;)V

    .line 448
    invoke-virtual {p1, v0}, Lcom/facebook/internal/ImageRequest$Builder;->setCallback(Lcom/facebook/internal/ImageRequest$Callback;)Lcom/facebook/internal/ImageRequest$Builder;

    move-result-object p1

    .line 455
    invoke-virtual {p1}, Lcom/facebook/internal/ImageRequest$Builder;->build()Lcom/facebook/internal/ImageRequest;

    move-result-object p1

    .line 460
    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->lastRequest:Lcom/facebook/internal/ImageRequest;

    if-eqz v0, :cond_40

    .line 461
    invoke-static {v0}, Lcom/facebook/internal/ImageDownloader;->cancelRequest(Lcom/facebook/internal/ImageRequest;)Z

    .line 463
    :cond_40
    iput-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->lastRequest:Lcom/facebook/internal/ImageRequest;

    .line 465
    invoke-static {p1}, Lcom/facebook/internal/ImageDownloader;->downloadAsync(Lcom/facebook/internal/ImageRequest;)V

    return-void
.end method

.method private setBlankProfilePicture()V
    .registers 5

    .line 405
    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->lastRequest:Lcom/facebook/internal/ImageRequest;

    if-eqz v0, :cond_7

    .line 406
    invoke-static {v0}, Lcom/facebook/internal/ImageDownloader;->cancelRequest(Lcom/facebook/internal/ImageRequest;)Z

    .line 409
    :cond_7
    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->customizedDefaultProfilePicture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_22

    .line 411
    invoke-virtual {p0}, Lcom/facebook/login/widget/ProfilePictureView;->isCropped()Z

    move-result v0

    if-eqz v0, :cond_14

    sget v0, Lcom/facebook/login/R$drawable;->com_facebook_profile_picture_blank_square:I

    goto :goto_16

    :cond_14
    sget v0, Lcom/facebook/login/R$drawable;->com_facebook_profile_picture_blank_portrait:I

    .line 414
    :goto_16
    invoke-virtual {p0}, Lcom/facebook/login/widget/ProfilePictureView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/login/widget/ProfilePictureView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_33

    .line 417
    :cond_22
    invoke-direct {p0}, Lcom/facebook/login/widget/ProfilePictureView;->updateImageQueryParameters()Z

    .line 419
    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->customizedDefaultProfilePicture:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryWidth:I

    iget v2, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryHeight:I

    const/4 v3, 0x0

    .line 420
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 422
    invoke-direct {p0, v0}, Lcom/facebook/login/widget/ProfilePictureView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_33
    return-void
.end method

.method private setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 427
    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->image:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 428
    iput-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->imageContents:Landroid/graphics/Bitmap;

    .line 429
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_b
    return-void
.end method

.method private updateImageQueryParameters()Z
    .registers 6

    .line 496
    invoke-virtual {p0}, Lcom/facebook/login/widget/ProfilePictureView;->getHeight()I

    move-result v0

    .line 497
    invoke-virtual {p0}, Lcom/facebook/login/widget/ProfilePictureView;->getWidth()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v1, v2, :cond_3b

    if-ge v0, v2, :cond_f

    goto :goto_3b

    .line 503
    :cond_f
    invoke-direct {p0, v3}, Lcom/facebook/login/widget/ProfilePictureView;->getPresetSizeInPixels(Z)I

    move-result v4

    if-eqz v4, :cond_17

    move v0, v4

    move v1, v0

    :cond_17
    if-gt v1, v0, :cond_23

    .line 512
    invoke-virtual {p0}, Lcom/facebook/login/widget/ProfilePictureView;->isCropped()Z

    move-result v0

    if-eqz v0, :cond_21

    move v0, v1

    goto :goto_2c

    :cond_21
    const/4 v0, 0x0

    goto :goto_2c

    .line 514
    :cond_23
    invoke-virtual {p0}, Lcom/facebook/login/widget/ProfilePictureView;->isCropped()Z

    move-result v1

    if-eqz v1, :cond_2b

    move v1, v0

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    .line 517
    :goto_2c
    iget v4, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryWidth:I

    if-ne v1, v4, :cond_36

    iget v4, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryHeight:I

    if-eq v0, v4, :cond_35

    goto :goto_36

    :cond_35
    const/4 v2, 0x0

    .line 519
    :cond_36
    :goto_36
    iput v1, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryWidth:I

    .line 520
    iput v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryHeight:I

    return v2

    :cond_3b
    :goto_3b
    return v3
.end method


# virtual methods
.method public final getOnErrorListener()Lcom/facebook/login/widget/ProfilePictureView$OnErrorListener;
    .registers 2

    .line 233
    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->onErrorListener:Lcom/facebook/login/widget/ProfilePictureView$OnErrorListener;

    return-object v0
.end method

.method public final getPresetSize()I
    .registers 2

    .line 156
    iget v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->presetSizeType:I

    return v0
.end method

.method public final getProfileId()Ljava/lang/String;
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    return-object v0
.end method

.method public final isCropped()Z
    .registers 2

    .line 186
    iget-boolean v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->isCropped:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 353
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 357
    iput-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->lastRequest:Lcom/facebook/internal/ImageRequest;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 301
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 p1, 0x0

    .line 304
    invoke-direct {p0, p1}, Lcom/facebook/login/widget/ProfilePictureView;->refreshImage(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 11

    .line 266
    invoke-virtual {p0}, Lcom/facebook/login/widget/ProfilePictureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 268
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 269
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 270
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/4 v4, -0x2

    const/4 v5, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    if-eq v3, v6, :cond_24

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v3, v4, :cond_24

    .line 272
    invoke-direct {p0, v5}, Lcom/facebook/login/widget/ProfilePictureView;->getPresetSizeInPixels(Z)I

    move-result v1

    .line 273
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    const/4 v3, 0x1

    goto :goto_25

    :cond_24
    const/4 v3, 0x0

    .line 277
    :goto_25
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    if-eq v7, v6, :cond_38

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v4, :cond_38

    .line 279
    invoke-direct {p0, v5}, Lcom/facebook/login/widget/ProfilePictureView;->getPresetSizeInPixels(Z)I

    move-result v2

    .line 280
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/4 v3, 0x1

    :cond_38
    if-eqz v3, :cond_41

    .line 287
    invoke-virtual {p0, v2, v1}, Lcom/facebook/login/widget/ProfilePictureView;->setMeasuredDimension(II)V

    .line 288
    invoke-virtual {p0, p1, p2}, Lcom/facebook/login/widget/ProfilePictureView;->measureChildren(II)V

    goto :goto_44

    .line 291
    :cond_41
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_44
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    .line 335
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/os/Bundle;

    if-eq v0, v1, :cond_c

    .line 336
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_43

    .line 338
    :cond_c
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "ProfilePictureView_superState"

    .line 339
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "ProfilePictureView_profileId"

    .line 341
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    const-string v0, "ProfilePictureView_presetSize"

    .line 342
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->presetSizeType:I

    const-string v0, "ProfilePictureView_isCropped"

    .line 343
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->isCropped:Z

    const-string v0, "ProfilePictureView_width"

    .line 344
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryWidth:I

    const-string v0, "ProfilePictureView_height"

    .line 345
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryHeight:I

    const/4 p1, 0x1

    .line 347
    invoke-direct {p0, p1}, Lcom/facebook/login/widget/ProfilePictureView;->refreshImage(Z)V

    :goto_43
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 315
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 316
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ProfilePictureView_superState"

    .line 317
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 318
    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    const-string v2, "ProfilePictureView_profileId"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->presetSizeType:I

    const-string v2, "ProfilePictureView_presetSize"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 320
    iget-boolean v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->isCropped:Z

    const-string v2, "ProfilePictureView_isCropped"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 321
    iget v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryWidth:I

    const-string v2, "ProfilePictureView_width"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 322
    iget v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryHeight:I

    const-string v2, "ProfilePictureView_height"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 323
    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->lastRequest:Lcom/facebook/internal/ImageRequest;

    if-eqz v0, :cond_37

    const/4 v0, 0x1

    goto :goto_38

    :cond_37
    const/4 v0, 0x0

    :goto_38
    const-string v2, "ProfilePictureView_refresh"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v1
.end method

.method public final setCropped(Z)V
    .registers 2

    .line 196
    iput-boolean p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->isCropped:Z

    const/4 p1, 0x0

    .line 198
    invoke-direct {p0, p1}, Lcom/facebook/login/widget/ProfilePictureView;->refreshImage(Z)V

    return-void
.end method

.method public final setDefaultProfilePicture(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 253
    iput-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->customizedDefaultProfilePicture:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final setOnErrorListener(Lcom/facebook/login/widget/ProfilePictureView$OnErrorListener;)V
    .registers 2

    .line 243
    iput-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->onErrorListener:Lcom/facebook/login/widget/ProfilePictureView$OnErrorListener;

    return-void
.end method

.method public final setPresetSize(I)V
    .registers 3

    const/4 v0, -0x4

    if-eq p1, v0, :cond_15

    const/4 v0, -0x3

    if-eq p1, v0, :cond_15

    const/4 v0, -0x2

    if-eq p1, v0, :cond_15

    const/4 v0, -0x1

    if-ne p1, v0, :cond_d

    goto :goto_15

    .line 174
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must use a predefined preset size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 170
    :cond_15
    :goto_15
    iput p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->presetSizeType:I

    .line 177
    invoke-virtual {p0}, Lcom/facebook/login/widget/ProfilePictureView;->requestLayout()V

    return-void
.end method

.method public final setProfileId(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 217
    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_17

    .line 219
    :cond_13
    :goto_13
    invoke-direct {p0}, Lcom/facebook/login/widget/ProfilePictureView;->setBlankProfilePicture()V

    const/4 v0, 0x1

    .line 223
    :goto_17
    iput-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    .line 224
    invoke-direct {p0, v0}, Lcom/facebook/login/widget/ProfilePictureView;->refreshImage(Z)V

    return-void
.end method
