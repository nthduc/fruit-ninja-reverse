.class public final Lcom/google/android/gms/internal/ads/zzdoc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum zzhep:I = 0x1

.field public static final enum zzheq:I = 0x2

.field public static final enum zzher:I = 0x3

.field private static final synthetic zzhes:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    .line 5
    new-array v0, v0, [I

    sget v1, Lcom/google/android/gms/internal/ads/zzdoc;->zzhep:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/google/android/gms/internal/ads/zzdoc;->zzheq:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/google/android/gms/internal/ads/zzdoc;->zzher:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdoc;->zzhes:[I

    return-void
.end method

.method public static zzatg()[I
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdoc;->zzhes:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
