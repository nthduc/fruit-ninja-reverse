.class final Lcom/google/android/gms/internal/ads/zzack;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum zzczw:I = 0x1

.field public static final enum zzczx:I = 0x2

.field public static final enum zzczy:I = 0x3

.field public static final enum zzczz:I = 0x4

.field private static final synthetic zzdaa:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    .line 6
    new-array v0, v0, [I

    sget v1, Lcom/google/android/gms/internal/ads/zzack;->zzczw:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/google/android/gms/internal/ads/zzack;->zzczx:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/google/android/gms/internal/ads/zzack;->zzczy:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/google/android/gms/internal/ads/zzack;->zzczz:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/gms/internal/ads/zzack;->zzdaa:[I

    return-void
.end method

.method public static zzrz()[I
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzack;->zzdaa:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
