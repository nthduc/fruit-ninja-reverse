.class public Lcom/chartboost/sdk/Libraries/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Libraries/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/io/File;

.field private d:Landroid/graphics/Bitmap;

.field private final e:Lcom/chartboost/sdk/Libraries/f;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Lcom/chartboost/sdk/Libraries/f;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->f:I

    iput v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->g:I

    .line 5
    iput-object p2, p0, Lcom/chartboost/sdk/Libraries/h$a;->c:Ljava/io/File;

    .line 6
    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/h$a;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/h$a;->d:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    .line 8
    iput p1, p0, Lcom/chartboost/sdk/Libraries/h$a;->a:I

    .line 9
    iput-object p3, p0, Lcom/chartboost/sdk/Libraries/h$a;->e:Lcom/chartboost/sdk/Libraries/f;

    return-void
.end method

.method private f()V
    .registers 4

    .line 1
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h$a;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 4
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Lcom/chartboost/sdk/Libraries/h$a;->f:I

    .line 5
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->g:I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_29

    :catch_1a
    move-exception v0

    const-string v1, "MemoryBitmap"

    const-string v2, "Error decoding file size"

    .line 7
    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    const-class v1, Lcom/chartboost/sdk/Libraries/h$a;

    const-string v2, "decodeSize"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_29
    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    return-void

    .line 3
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading image \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' from cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MemoryBitmap"

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->e:Lcom/chartboost/sdk/Libraries/f;

    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/h$a;->c:Ljava/io/File;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/f;->b(Ljava/io/File;)[B

    move-result-object v0

    if-nez v0, :cond_32

    const-string v0, "decode() - bitmap not found"

    .line 9
    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_32
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 14
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 15
    array-length v4, v0

    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 17
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 18
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 19
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 20
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 21
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    const v4, 0x8000

    .line 22
    new-array v4, v4, [B

    iput-object v4, v2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 24
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :goto_55
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/16 v4, 0x20

    if-ge v3, v4, :cond_a0

    .line 27
    :try_start_5b
    array-length v3, v0

    invoke-static {v0, v5, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/chartboost/sdk/Libraries/h$a;->d:Landroid/graphics/Bitmap;
    :try_end_62
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5b .. :try_end_62} :catch_93
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_62} :catch_63

    goto :goto_70

    :catch_63
    move-exception v0

    const-string v3, "Exception raised decoding bitmap"

    .line 32
    invoke-static {v1, v3, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    const-class v1, Lcom/chartboost/sdk/Libraries/h$a;

    const-string v3, "decodeByteArray"

    invoke-static {v1, v3, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 35
    :goto_70
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_75

    goto :goto_a0

    .line 37
    :cond_75
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 38
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to decode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/h$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_93
    move-exception v3

    const-string v4, "OutOfMemoryError suppressed - trying larger sample size"

    .line 39
    invoke-static {v1, v4, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_55

    .line 59
    :cond_a0
    :goto_a0
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->a:I

    return-void
.end method

.method public b()Landroid/graphics/Bitmap;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->d:Landroid/graphics/Bitmap;

    if-nez v0, :cond_7

    .line 2
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/h$a;->a()V

    .line 3
    :cond_7
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0

    .line 4
    :cond_9
    iget v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->g:I

    if-ltz v0, :cond_e

    return v0

    .line 7
    :cond_e
    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h$a;->f()V

    .line 8
    iget v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->g:I

    return v0
.end method

.method public d()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0

    .line 4
    :cond_9
    iget v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->f:I

    if-ltz v0, :cond_e

    return v0

    .line 7
    :cond_e
    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h$a;->f()V

    .line 8
    iget v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->f:I

    return v0
.end method

.method public e()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->a:I

    return v0
.end method
