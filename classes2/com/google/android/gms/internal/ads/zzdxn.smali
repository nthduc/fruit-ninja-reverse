.class public final Lcom/google/android/gms/internal/ads/zzdxn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.4.0"


# static fields
.field private static final zzhro:[B

.field private static final zzhrp:[I

.field private static final zzhrq:[I

.field private static final zzhrr:[I

.field private static zzhrs:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x21

    .line 8
    new-array v0, v0, [B

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdxn;->zzhro:[B

    const/16 v0, 0xa

    .line 9
    new-array v1, v0, [I

    fill-array-data v1, :array_42

    sput-object v1, Lcom/google/android/gms/internal/ads/zzdxn;->zzhrp:[I

    .line 10
    new-array v0, v0, [I

    fill-array-data v0, :array_5a

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdxn;->zzhrq:[I

    const/16 v0, 0xd

    .line 11
    new-array v0, v0, [I

    fill-array-data v0, :array_72

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdxn;->zzhrr:[I

    const/16 v0, 0x11

    .line 12
    new-array v0, v0, [I

    fill-array-data v0, :array_90

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdxn;->zzhrs:[I

    return-void

    :array_2c
    .array-data 1
        0x9t
        0x9t
        0x9t
        0x8t
        0x8t
        0x8t
        0x7t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_42
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data

    :array_5a
    .array-data 4
        0x3
        0x1f
        0x13c
        0xc5a
        0x7b86
        0x4d343
        0x3040a5
        0x1e28678
        0x12d940b6
        0x7fffffff
    .end array-data

    :array_72
    .array-data 4
        0x1
        0x1
        0x2
        0x6
        0x18
        0x78
        0x2d0
        0x13b0
        0x9d80
        0x58980
        0x375f00
        0x2611500
        0x1c8cfc00
    .end array-data

    :array_90
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x10000
        0x929
        0x1dd
        0xc1
        0x6e
        0x4b
        0x3a
        0x31
        0x2b
        0x27
        0x25
        0x23
        0x22
        0x22
        0x21
    .end array-data
.end method

.method public static zzx(II)I
    .registers 5

    int-to-long p0, p0

    const/4 v0, 0x1

    shl-long/2addr p0, v0

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-lez v2, :cond_e

    const p0, 0x7fffffff

    return p0

    :cond_e
    const-wide/32 v0, -0x80000000

    cmp-long v2, p0, v0

    if-gez v2, :cond_18

    const/high16 p0, -0x80000000

    return p0

    :cond_18
    long-to-int p1, p0

    return p1
.end method
