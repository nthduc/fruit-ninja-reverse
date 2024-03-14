.class final Lcom/google/android/gms/internal/firebase_auth/zzag;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum zza:I = 0x1

.field public static final enum zzb:I = 0x2

.field public static final enum zzc:I = 0x3

.field public static final enum zzd:I = 0x4

.field private static final synthetic zze:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    .line 6
    new-array v0, v0, [I

    sget v1, Lcom/google/android/gms/internal/firebase_auth/zzag;->zza:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/google/android/gms/internal/firebase_auth/zzag;->zzb:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/google/android/gms/internal/firebase_auth/zzag;->zzc:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/google/android/gms/internal/firebase_auth/zzag;->zzd:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzag;->zze:[I

    return-void
.end method

.method public static zza()[I
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzag;->zze:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
