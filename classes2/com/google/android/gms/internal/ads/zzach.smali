.class final synthetic Lcom/google/android/gms/internal/ads/zzach;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# static fields
.field static final synthetic zzczu:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzack;->zzrz()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/zzach;->zzczu:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/google/android/gms/internal/ads/zzach;->zzczu:[I

    sget v2, Lcom/google/android/gms/internal/ads/zzack;->zzczw:I

    sub-int/2addr v2, v0

    aput v0, v1, v2
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_11} :catch_11

    :catch_11
    :try_start_11
    sget-object v1, Lcom/google/android/gms/internal/ads/zzach;->zzczu:[I

    sget v2, Lcom/google/android/gms/internal/ads/zzack;->zzczx:I

    sub-int/2addr v2, v0

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lcom/google/android/gms/internal/ads/zzach;->zzczu:[I

    sget v2, Lcom/google/android/gms/internal/ads/zzack;->zzczy:I

    sub-int/2addr v2, v0

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_21} :catch_21

    :catch_21
    :try_start_21
    sget-object v1, Lcom/google/android/gms/internal/ads/zzach;->zzczu:[I

    sget v2, Lcom/google/android/gms/internal/ads/zzack;->zzczz:I

    sub-int/2addr v2, v0

    const/4 v0, 0x4

    aput v0, v1, v2
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_29} :catch_29

    :catch_29
    return-void
.end method
