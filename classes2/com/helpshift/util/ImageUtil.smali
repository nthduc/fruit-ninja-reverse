.class public Lcom/helpshift/util/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Helpshift_ImageUtil"

.field private static final resizableImageMimeTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static supportedImageMimeTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 27
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "image/png"

    const-string v2, "image/jpeg"

    const-string v3, "image/x-png"

    const-string v4, "image/x-citrix-pjpeg"

    const-string v5, "image/pjpeg"

    filled-new-array {v2, v1, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    .line 28
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/helpshift/util/ImageUtil;->resizableImageMimeTypes:Ljava/util/Set;

    .line 34
    new-instance v0, Ljava/util/HashSet;

    const-string v3, "image/bmp"

    filled-new-array {v2, v1, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/helpshift/util/ImageUtil;->supportedImageMimeTypes:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateInSampleSize(IIII)I
    .registers 6

    const/4 v0, 0x1

    if-gt p1, p3, :cond_5

    if-le p0, p2, :cond_14

    .line 274
    :cond_5
    div-int/lit8 p1, p1, 0x2

    .line 275
    div-int/lit8 p0, p0, 0x2

    .line 279
    :goto_9
    div-int v1, p1, v0

    if-le v1, p3, :cond_14

    div-int v1, p0, v0

    if-le v1, p2, :cond_14

    mul-int/lit8 v0, v0, 0x2

    goto :goto_9

    :cond_14
    return v0
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 4

    .line 291
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 292
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 293
    invoke-static {p0, v0, p1, p2}, Lcom/helpshift/util/ImageUtil;->calculateInSampleSize(IIII)I

    move-result p0

    return p0
.end method

.method public static calculateReqHeight(III)I
    .registers 3

    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    int-to-float p0, p2

    mul-float p1, p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static decodeAvatarImageFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2

    .line 362
    invoke-static {p0}, Lcom/helpshift/util/FileUtil;->doesFilePathExistAndCanRead(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 365
    :cond_8
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 366
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decodeFile(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 6

    .line 332
    invoke-static {p0}, Lcom/helpshift/util/FileUtil;->doesFilePathExistAndCanRead(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 336
    :cond_8
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x4

    if-lez p1, :cond_2e

    .line 340
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, v3, p1}, Lcom/helpshift/util/ImageUtil;->calculateReqHeight(III)I

    move-result v2

    const/4 v3, 0x1

    .line 341
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 342
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 343
    invoke-static {v0, p1, v2}, Lcom/helpshift/util/ImageUtil;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 347
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ge p1, v1, :cond_30

    .line 348
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    add-int/2addr p1, v3

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_30

    .line 354
    :cond_2e
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_30
    :goto_30
    const/4 p1, 0x0

    .line 356
    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 357
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmap(Landroid/content/res/Resources;II)Landroid/graphics/Bitmap;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 98
    :cond_4
    :try_start_4
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 101
    iput v2, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 104
    iput-boolean v0, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 105
    invoke-static {p0, p1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_11
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    nop

    if-lez p2, :cond_17

    move v2, p2

    goto :goto_19

    :cond_17
    mul-int/lit8 v2, v2, 0x2

    :goto_19
    add-int/2addr v3, v1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 9

    .line 60
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p0

    if-eqz p0, :cond_32

    const/4 p0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 67
    :cond_16
    :try_start_16
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 70
    iput v3, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 73
    iput-boolean v1, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_27
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16 .. :try_end_27} :catch_28

    return-object p0

    :catch_28
    nop

    if-lez p1, :cond_2d

    move v3, p1

    goto :goto_2f

    :cond_2d
    mul-int/lit8 v3, v3, 0x2

    :goto_2f
    add-int/2addr v4, v2

    if-ne v4, p0, :cond_16

    :cond_32
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getBitmapWithMaxDimension(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 5

    .line 130
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 131
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float p1, p1

    .line 134
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_16

    return-object p0

    :cond_16
    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int v0, v0

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int p1, v1

    const/4 v1, 0x1

    .line 143
    invoke-static {p0, v0, p1, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getExifOrientation(Landroid/content/Context;Landroid/net/Uri;)I
    .registers 10

    const-string v0, "orientation"

    .line 242
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 245
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    .line 246
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_27

    .line 247
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-nez p0, :cond_1d

    goto :goto_27

    .line 250
    :cond_1d
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_21} :catch_34
    .catchall {:try_start_8 .. :try_end_21} :catchall_2d

    if-eqz v7, :cond_26

    .line 258
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_26
    return p0

    :cond_27
    :goto_27
    if-eqz v7, :cond_2c

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2c
    return v0

    :catchall_2d
    move-exception p0

    if-eqz v7, :cond_33

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 260
    :cond_33
    throw p0

    :catch_34
    nop

    if-eqz v7, :cond_3a

    .line 258
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3a
    return v0
.end method

.method public static isImageFileFormatSupported(Ljava/lang/String;)Z
    .registers 1

    .line 44
    invoke-static {p0}, Lcom/helpshift/util/AndroidFileUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 45
    invoke-static {p0}, Lcom/helpshift/util/ImageUtil;->isSupportedImageMimeType(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isResizableImage(Landroid/net/Uri;Landroid/content/Context;)Z
    .registers 2

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 54
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 55
    sget-object p1, Lcom/helpshift/util/ImageUtil;->resizableImageMimeTypes:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isResizableImage(Ljava/lang/String;)Z
    .registers 2

    .line 49
    sget-object v0, Lcom/helpshift/util/ImageUtil;->resizableImageMimeTypes:Ljava/util/Set;

    invoke-static {p0}, Lcom/helpshift/util/AndroidFileUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isSupportedImageMimeType(Ljava/lang/String;)Z
    .registers 2

    .line 40
    sget-object v0, Lcom/helpshift/util/ImageUtil;->supportedImageMimeTypes:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 9

    .line 233
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 234
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 236
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 297
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string v1, "png"

    .line 302
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 303
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_12

    .line 306
    :cond_10
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_12
    const/16 v1, 0x46

    .line 309
    invoke-virtual {p0, p2, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p0

    const-string p2, "Helpshift_ImageUtil"

    if-eqz p0, :cond_50

    .line 312
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 v1, 0x0

    .line 314
    :try_start_21
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_27} :catch_3c
    .catchall {:try_start_21 .. :try_end_27} :catchall_3a

    .line 315
    :try_start_27
    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 316
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2d} :catch_37
    .catchall {:try_start_27 .. :try_end_2d} :catchall_34

    .line 322
    invoke-static {v0}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    .line 323
    invoke-static {v2}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    goto :goto_55

    :catchall_34
    move-exception p0

    move-object v1, v2

    goto :goto_49

    :catch_37
    move-exception p0

    move-object v1, v2

    goto :goto_3d

    :catchall_3a
    move-exception p0

    goto :goto_49

    :catch_3c
    move-exception p0

    :goto_3d
    :try_start_3d
    const-string p1, "saveBitmapToFile : "

    .line 319
    invoke-static {p2, p1, p0}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_3a

    .line 322
    invoke-static {v0}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    .line 323
    invoke-static {v1}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    goto :goto_55

    .line 322
    :goto_49
    invoke-static {v0}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    .line 323
    invoke-static {v1}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    .line 324
    throw p0

    :cond_50
    const-string p0, "saveBitmapToFile : Compression Failed"

    .line 327
    invoke-static {p2, p0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_55
    return-void
.end method

.method public static scaleDownAndSave(Ljava/lang/String;I)V
    .registers 8

    .line 155
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_50

    if-lez p1, :cond_50

    .line 156
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 160
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 161
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 163
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 164
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/lit8 p1, p1, 0x19

    int-to-float p1, p1

    int-to-float v3, v3

    int-to-float v0, v0

    div-float v4, v3, v0

    mul-float p1, p1, v4

    float-to-double v4, p1

    .line 166
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int p1, v4

    mul-int/lit8 p1, p1, 0x64

    int-to-float v4, p1

    div-float/2addr v0, v3

    mul-float v4, v4, v0

    float-to-int v0, v4

    .line 170
    invoke-static {v1, p1, v0}, Lcom/helpshift/util/ImageUtil;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 173
    iget p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-le p1, v2, :cond_50

    const/4 p1, 0x0

    .line 175
    iput-boolean p1, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 176
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_50

    .line 178
    invoke-static {p0}, Lcom/helpshift/util/AndroidFileUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/helpshift/util/ImageUtil;->saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    :cond_50
    return-void
.end method

.method public static scaleDownAndSaveWithMaxDimension(Ljava/lang/String;I)V
    .registers 3

    const/4 v0, 0x0

    .line 193
    invoke-static {p0, p1, v0}, Lcom/helpshift/util/ImageUtil;->scaleDownAndSaveWithMaxDimension(Ljava/lang/String;II)V

    return-void
.end method

.method public static scaleDownAndSaveWithMaxDimension(Ljava/lang/String;II)V
    .registers 8

    .line 197
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 198
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 201
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 202
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 205
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 206
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v3, p1

    .line 209
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_53

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    int-to-float v0, v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    .line 216
    invoke-static {v1, v2, v0}, Lcom/helpshift/util/ImageUtil;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v0, 0x0

    .line 217
    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 219
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 222
    invoke-static {v0, p1}, Lcom/helpshift/util/ImageUtil;->getBitmapWithMaxDimension(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p2, :cond_4c

    .line 224
    invoke-static {p1, p2}, Lcom/helpshift/util/ImageUtil;->rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 226
    :cond_4c
    invoke-static {p0}, Lcom/helpshift/util/AndroidFileUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/helpshift/util/ImageUtil;->saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    :cond_53
    return-void
.end method
