.class final Lcom/google/android/gms/internal/firebase_auth/zzgu;
.super Lcom/google/android/gms/internal/firebase_auth/zzgw;
.source "com.google.firebase:firebase-auth@@19.3.1"


# instance fields
.field private zza:I

.field private final zzb:I

.field private final synthetic zzc:Lcom/google/android/gms/internal/firebase_auth/zzgv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzgv;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzgu;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzgv;

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzgw;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzgu;->zza:I

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzgu;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzgv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzgv;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzgu;->zzb:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzgu;->zza:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzgu;->zzb:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zza()B
    .registers 3

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzgu;->zza:I

    .line 6
    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzgu;->zzb:I

    if-ge v0, v1, :cond_11

    add-int/lit8 v1, v0, 0x1

    .line 8
    iput v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzgu;->zza:I

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzgu;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzgv;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzgv;->zzb(I)B

    move-result v0

    return v0

    .line 7
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
