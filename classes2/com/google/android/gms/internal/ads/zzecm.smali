.class final synthetic Lcom/google/android/gms/internal/ads/zzecm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# static fields
.field static final synthetic zzhwk:[I

.field static final synthetic zzhwl:[I

.field static final synthetic zzhwm:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeec;->values()[Lcom/google/android/gms/internal/ads/zzeec;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/zzecm;->zzhwm:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/google/android/gms/internal/ads/zzecm;->zzhwm:[I

    sget-object v2, Lcom/google/android/gms/internal/ads/zzeec;->zzhxs:Lcom/google/android/gms/internal/ads/zzeec;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeec;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v1, 0x2

    :try_start_15
    sget-object v2, Lcom/google/android/gms/internal/ads/zzecm;->zzhwm:[I

    sget-object v3, Lcom/google/android/gms/internal/ads/zzeec;->zzhxu:Lcom/google/android/gms/internal/ads/zzeec;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeec;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    :catch_1f
    const/4 v2, 0x3

    :try_start_20
    sget-object v3, Lcom/google/android/gms/internal/ads/zzecm;->zzhwm:[I

    sget-object v4, Lcom/google/android/gms/internal/ads/zzeec;->zzhxt:Lcom/google/android/gms/internal/ads/zzeec;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzeec;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_2a} :catch_2a

    .line 2
    :catch_2a
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeeq;->values()[Lcom/google/android/gms/internal/ads/zzeeq;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/google/android/gms/internal/ads/zzecm;->zzhwl:[I

    :try_start_33
    sget-object v3, Lcom/google/android/gms/internal/ads/zzecm;->zzhwl:[I

    sget-object v4, Lcom/google/android/gms/internal/ads/zzeeq;->zzhyp:Lcom/google/android/gms/internal/ads/zzeeq;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzeeq;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3d
    sget-object v3, Lcom/google/android/gms/internal/ads/zzecm;->zzhwl:[I

    sget-object v4, Lcom/google/android/gms/internal/ads/zzeeq;->zzhyq:Lcom/google/android/gms/internal/ads/zzeeq;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzeeq;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_47} :catch_47

    :catch_47
    :try_start_47
    sget-object v3, Lcom/google/android/gms/internal/ads/zzecm;->zzhwl:[I

    sget-object v4, Lcom/google/android/gms/internal/ads/zzeeq;->zzhyr:Lcom/google/android/gms/internal/ads/zzeeq;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzeeq;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_51} :catch_51

    .line 3
    :catch_51
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeer;->values()[Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/google/android/gms/internal/ads/zzecm;->zzhwk:[I

    :try_start_5a
    sget-object v3, Lcom/google/android/gms/internal/ads/zzecm;->zzhwk:[I

    sget-object v4, Lcom/google/android/gms/internal/ads/zzeer;->zzhyw:Lcom/google/android/gms/internal/ads/zzeer;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzeer;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_64} :catch_64

    :catch_64
    :try_start_64
    sget-object v0, Lcom/google/android/gms/internal/ads/zzecm;->zzhwk:[I

    sget-object v3, Lcom/google/android/gms/internal/ads/zzeer;->zzhyy:Lcom/google/android/gms/internal/ads/zzeer;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeer;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_6e} :catch_6e

    :catch_6e
    :try_start_6e
    sget-object v0, Lcom/google/android/gms/internal/ads/zzecm;->zzhwk:[I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzeer;->zzhyz:Lcom/google/android/gms/internal/ads/zzeer;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeer;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_78} :catch_78

    :catch_78
    return-void
.end method
