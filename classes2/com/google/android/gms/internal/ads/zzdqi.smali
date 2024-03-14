.class public final Lcom/google/android/gms/internal/ads/zzdqi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum zzhig:I = 0x1

.field public static final enum zzhih:I = 0x2

.field public static final enum zzhii:I = 0x3

.field private static final synthetic zzhij:[I

.field public static final enum zzhik:I

.field private static final synthetic zzhil:[I

.field public static final enum zzhim:I

.field public static final enum zzhin:I

.field public static final enum zzhio:I

.field private static final synthetic zzhip:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x3

    new-array v1, v0, [I

    sget v2, Lcom/google/android/gms/internal/ads/zzdqi;->zzhig:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/google/android/gms/internal/ads/zzdqi;->zzhih:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lcom/google/android/gms/internal/ads/zzdqi;->zzhii:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sput-object v1, Lcom/google/android/gms/internal/ads/zzdqi;->zzhij:[I

    sput v4, Lcom/google/android/gms/internal/ads/zzdqi;->zzhik:I

    new-array v1, v4, [I

    sget v2, Lcom/google/android/gms/internal/ads/zzdqi;->zzhik:I

    aput v2, v1, v3

    sput-object v1, Lcom/google/android/gms/internal/ads/zzdqi;->zzhil:[I

    sput v4, Lcom/google/android/gms/internal/ads/zzdqi;->zzhim:I

    sput v5, Lcom/google/android/gms/internal/ads/zzdqi;->zzhin:I

    sput v0, Lcom/google/android/gms/internal/ads/zzdqi;->zzhio:I

    new-array v0, v0, [I

    sget v1, Lcom/google/android/gms/internal/ads/zzdqi;->zzhim:I

    aput v1, v0, v3

    sget v1, Lcom/google/android/gms/internal/ads/zzdqi;->zzhin:I

    aput v1, v0, v4

    sget v1, Lcom/google/android/gms/internal/ads/zzdqi;->zzhio:I

    aput v1, v0, v5

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdqi;->zzhip:[I

    return-void
.end method

.method public static zzauo()[I
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdqi;->zzhij:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static zzaup()[I
    .registers 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdqi;->zzhil:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
