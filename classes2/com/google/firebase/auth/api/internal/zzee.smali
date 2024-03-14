.class public final Lcom/google/firebase/auth/api/internal/zzee;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# static fields
.field private static zza:I = -0x1

.field private static zzb:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method static synthetic zza(I)I
    .registers 1

    .line 4
    sput p0, Lcom/google/firebase/auth/api/internal/zzee;->zza:I

    return p0
.end method

.method public static zza()Z
    .registers 1

    .line 1
    sget v0, Lcom/google/firebase/auth/api/internal/zzee;->zza:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic zzb()I
    .registers 1

    .line 2
    sget v0, Lcom/google/firebase/auth/api/internal/zzee;->zza:I

    return v0
.end method

.method static synthetic zzb(I)I
    .registers 1

    .line 5
    sput p0, Lcom/google/firebase/auth/api/internal/zzee;->zzb:I

    return p0
.end method

.method static synthetic zzc()I
    .registers 1

    .line 3
    sget v0, Lcom/google/firebase/auth/api/internal/zzee;->zzb:I

    return v0
.end method
