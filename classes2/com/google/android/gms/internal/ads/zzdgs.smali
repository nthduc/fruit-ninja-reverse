.class final Lcom/google/android/gms/internal/ads/zzdgs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum zzgya:I = 0x1

.field public static final enum zzgyb:I = 0x2

.field public static final enum zzgyc:I = 0x3

.field private static final synthetic zzgyd:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    .line 5
    new-array v0, v0, [I

    sget v1, Lcom/google/android/gms/internal/ads/zzdgs;->zzgya:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/google/android/gms/internal/ads/zzdgs;->zzgyb:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/google/android/gms/internal/ads/zzdgs;->zzgyc:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdgs;->zzgyd:[I

    return-void
.end method

.method public static zzasa()[I
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdgs;->zzgyd:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
