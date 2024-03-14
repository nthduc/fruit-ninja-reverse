.class public final Lcom/google/android/gms/ads/formats/NativeAdOptions;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;,
        Lcom/google/android/gms/ads/formats/NativeAdOptions$AdChoicesPlacement;,
        Lcom/google/android/gms/ads/formats/NativeAdOptions$NativeMediaAspectRatio;
    }
.end annotation


# static fields
.field public static final ADCHOICES_BOTTOM_LEFT:I = 0x3

.field public static final ADCHOICES_BOTTOM_RIGHT:I = 0x2

.field public static final ADCHOICES_TOP_LEFT:I = 0x0

.field public static final ADCHOICES_TOP_RIGHT:I = 0x1

.field public static final NATIVE_MEDIA_ASPECT_RATIO_ANY:I = 0x1

.field public static final NATIVE_MEDIA_ASPECT_RATIO_LANDSCAPE:I = 0x2

.field public static final NATIVE_MEDIA_ASPECT_RATIO_PORTRAIT:I = 0x3

.field public static final NATIVE_MEDIA_ASPECT_RATIO_SQUARE:I = 0x4

.field public static final NATIVE_MEDIA_ASPECT_RATIO_UNKNOWN:I = 0x0

.field public static final ORIENTATION_ANY:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ORIENTATION_LANDSCAPE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ORIENTATION_PORTRAIT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final zzbnm:Z

.field private final zzbnn:I

.field private final zzbno:I

.field private final zzbnp:Z

.field private final zzbnq:I

.field private final zzbnr:Lcom/google/android/gms/ads/VideoOptions;

.field private final zzbns:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zza(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zzbnm:Z

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzb(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zzbnn:I

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzc(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zzbno:I

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzd(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zzbnp:Z

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zze(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zzbnq:I

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzf(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)Lcom/google/android/gms/ads/VideoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zzbnr:Lcom/google/android/gms/ads/VideoOptions;

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzg(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zzbns:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;Lcom/google/android/gms/ads/formats/zza;)V
    .registers 3

    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;-><init>(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)V

    return-void
.end method


# virtual methods
.method public final getAdChoicesPlacement()I
    .registers 2

    .line 14
    iget v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zzbnq:I

    return v0
.end method

.method public final getImageOrientation()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11
    iget v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zzbnn:I

    return v0
.end method

.method public final getMediaAspectRatio()I
    .registers 2

    .line 12
    iget v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zzbno:I

    return v0
.end method

.method public final getVideoOptions()Lcom/google/android/gms/ads/VideoOptions;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zzbnr:Lcom/google/android/gms/ads/VideoOptions;

    return-object v0
.end method

.method public final shouldRequestMultipleImages()Z
    .registers 2

    .line 13
    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zzbnp:Z

    return v0
.end method

.method public final shouldReturnUrlsForImageAssets()Z
    .registers 2

    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zzbnm:Z

    return v0
.end method

.method public final zzjt()Z
    .registers 2

    .line 16
    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zzbns:Z

    return v0
.end method
