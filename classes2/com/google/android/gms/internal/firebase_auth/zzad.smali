.class final synthetic Lcom/google/android/gms/internal/firebase_auth/zzad;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# static fields
.field static final synthetic zza:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzag;->zza()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzad;->zza:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/google/android/gms/internal/firebase_auth/zzad;->zza:[I

    sget v2, Lcom/google/android/gms/internal/firebase_auth/zzag;->zzc:I

    sub-int/2addr v2, v0

    aput v0, v1, v2
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_11} :catch_11

    :catch_11
    :try_start_11
    sget-object v1, Lcom/google/android/gms/internal/firebase_auth/zzad;->zza:[I

    sget v2, Lcom/google/android/gms/internal/firebase_auth/zzag;->zza:I

    sub-int/2addr v2, v0

    const/4 v0, 0x2

    aput v0, v1, v2
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_19} :catch_19

    :catch_19
    return-void
.end method
