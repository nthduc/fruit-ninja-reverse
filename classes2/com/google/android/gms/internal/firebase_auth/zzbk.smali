.class public final Lcom/google/android/gms/internal/firebase_auth/zzbk;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private zza:[Ljava/lang/Object;

.field private zzb:I

.field private zzc:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase_auth/zzbk;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x8

    .line 4
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbk;->zza:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbk;->zzb:I

    .line 6
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbk;->zzc:Z

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzbk;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/android/gms/internal/firebase_auth/zzbk<",
            "TK;TV;>;"
        }
    .end annotation

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbk;->zzb:I

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x1

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbk;->zza:[Ljava/lang/Object;

    array-length v2, v1

    if-le v0, v2, :cond_34

    .line 10
    array-length v2, v1

    if-ltz v0, :cond_2c

    shr-int/lit8 v3, v2, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_1d

    add-int/lit8 v0, v0, -0x1

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v2, v0, 0x1

    :cond_1d
    if-gez v2, :cond_22

    const v2, 0x7fffffff

    .line 20
    :cond_22
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbk;->zza:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbk;->zzc:Z

    goto :goto_34

    .line 13
    :cond_2c
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "cannot store more than MAX_VALUE elements"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 22
    :cond_34
    :goto_34
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzbf;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbk;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbk;->zzb:I

    mul-int/lit8 v2, v1, 0x2

    aput-object p1, v0, v2

    mul-int/lit8 p1, v1, 0x2

    add-int/lit8 p1, p1, 0x1

    .line 24
    aput-object p2, v0, p1

    add-int/lit8 v1, v1, 0x1

    .line 25
    iput v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbk;->zzb:I

    return-object p0
.end method

.method public final zza()Lcom/google/android/gms/internal/firebase_auth/zzbl;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase_auth/zzbl<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbk;->zzc:Z

    .line 28
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbk;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbk;->zza:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzbp;->zza(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzbp;

    move-result-object v0

    return-object v0
.end method
