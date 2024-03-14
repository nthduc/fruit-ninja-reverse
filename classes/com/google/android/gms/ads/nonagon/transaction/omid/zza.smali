.class final synthetic Lcom/google/android/gms/ads/nonagon/transaction/omid/zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# static fields
.field static final synthetic zzhfn:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidMediaType;->values()[Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidMediaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/ads/nonagon/transaction/omid/zza;->zzhfn:[I

    :try_start_9
    sget-object v0, Lcom/google/android/gms/ads/nonagon/transaction/omid/zza;->zzhfn:[I

    sget-object v1, Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidMediaType;->DISPLAY:Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidMediaType;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidMediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/google/android/gms/ads/nonagon/transaction/omid/zza;->zzhfn:[I

    sget-object v1, Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidMediaType;->VIDEO:Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidMediaType;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidMediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lcom/google/android/gms/ads/nonagon/transaction/omid/zza;->zzhfn:[I

    sget-object v1, Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidMediaType;->UNKNOWN:Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidMediaType;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidMediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    return-void
.end method
