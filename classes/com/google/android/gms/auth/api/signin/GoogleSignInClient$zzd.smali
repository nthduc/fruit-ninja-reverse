.class final Lcom/google/android/gms/auth/api/signin/GoogleSignInClient$zzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@18.1.0"


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum zzbt:I = 0x1

.field public static final enum zzbu:I = 0x2

.field public static final enum zzbv:I = 0x3

.field public static final enum zzbw:I = 0x4

.field private static final synthetic zzbx:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    .line 6
    new-array v0, v0, [I

    sget v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient$zzd;->zzbt:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient$zzd;->zzbu:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient$zzd;->zzbv:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient$zzd;->zzbw:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient$zzd;->zzbx:[I

    return-void
.end method

.method public static zzi()[I
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient$zzd;->zzbx:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
