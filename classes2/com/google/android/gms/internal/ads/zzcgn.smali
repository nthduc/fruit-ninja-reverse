.class public final Lcom/google/android/gms/internal/ads/zzcgn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzbqa:Lcom/google/android/gms/common/util/Clock;

.field private final zzgcs:Lcom/google/android/gms/internal/ads/zzbag;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbag;Lcom/google/android/gms/common/util/Clock;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgn;->zzgcs:Lcom/google/android/gms/internal/ads/zzbag;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgn;->zzbqa:Lcom/google/android/gms/common/util/Clock;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcgn;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcgn;[BDZ)Landroid/graphics/Bitmap;
    .registers 5

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzcgn;->zza([BDZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private final zza([BDZ)Landroid/graphics/Bitmap;
    .registers 8

    .line 10
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const-wide/high16 v1, 0x4064000000000000L    # 160.0

    mul-double p2, p2, v1

    double-to-int p2, p2

    .line 11
    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-nez p4, :cond_12

    .line 13
    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object p2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 16
    :cond_12
    sget-object p2, Lcom/google/android/gms/internal/ads/zzabb;->zzcwh:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p2

    .line 18
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_52

    const/4 p2, 0x1

    .line 20
    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcgn;->zza([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 p3, 0x0

    .line 22
    iput-boolean p3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 23
    iget p3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 24
    iget p4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int p3, p3, p4

    if-lez p3, :cond_52

    .line 27
    sget-object p4, Lcom/google/android/gms/internal/ads/zzabb;->zzcwi:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p4

    .line 29
    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    sub-int/2addr p3, p2

    .line 30
    div-int/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p3

    rsub-int/lit8 p3, p3, 0x21

    .line 31
    div-int/lit8 p3, p3, 0x2

    shl-int/2addr p2, p3

    .line 32
    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 33
    :cond_52
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcgn;->zza([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private final zza([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 10

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgn;->zzbqa:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 35
    array-length v2, p1

    const/4 v3, 0x0

    .line 36
    invoke-static {p1, v3, v2, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 37
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgn;->zzbqa:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v4

    .line 38
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt p2, v2, :cond_6c

    if-eqz p1, :cond_6c

    .line 40
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v6

    sub-long/2addr v4, v0

    .line 43
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_36

    const/4 v3, 0x1

    :cond_36
    const/16 v0, 0x6c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Decoded image w: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " h:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bytes: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " time: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " on ui thread: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 44
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    :cond_6c
    return-object p1
.end method


# virtual methods
.method public final zza(Ljava/lang/String;DZ)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DZ)",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbag;->zzev(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcgq;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzcgq;-><init>(Lcom/google/android/gms/internal/ads/zzcgn;DZ)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgn;->executor:Ljava/util/concurrent/Executor;

    .line 8
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdvu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
