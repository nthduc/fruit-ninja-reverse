.class final synthetic Lcom/google/android/gms/internal/ads/zzeaa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# static fields
.field static final synthetic zzhub:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzefv;->values()[Lcom/google/android/gms/internal/ads/zzefv;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeaa;->zzhub:[I

    :try_start_9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeaa;->zzhub:[I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzefv;->zziba:Lcom/google/android/gms/internal/ads/zzefv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzefv;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeaa;->zzhub:[I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzefv;->zzibc:Lcom/google/android/gms/internal/ads/zzefv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzefv;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeaa;->zzhub:[I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzefv;->zziaz:Lcom/google/android/gms/internal/ads/zzefv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzefv;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2a
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeaa;->zzhub:[I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzefv;->zzibb:Lcom/google/android/gms/internal/ads/zzefv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzefv;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_35

    :catch_35
    return-void
.end method