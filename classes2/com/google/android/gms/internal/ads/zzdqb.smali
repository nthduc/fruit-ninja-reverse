.class final synthetic Lcom/google/android/gms/internal/ads/zzdqb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# static fields
.field static final synthetic zzhhd:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdqi;->zzauo()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdqb;->zzhhd:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdqb;->zzhhd:[I

    sget v2, Lcom/google/android/gms/internal/ads/zzdqi;->zzhig:I

    sub-int/2addr v2, v0

    aput v0, v1, v2
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_11} :catch_11

    :catch_11
    :try_start_11
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdqb;->zzhhd:[I

    sget v2, Lcom/google/android/gms/internal/ads/zzdqi;->zzhih:I

    sub-int/2addr v2, v0

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdqb;->zzhhd:[I

    sget v2, Lcom/google/android/gms/internal/ads/zzdqi;->zzhii:I

    sub-int/2addr v2, v0

    const/4 v0, 0x3

    aput v0, v1, v2
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_21} :catch_21

    :catch_21
    return-void
.end method
