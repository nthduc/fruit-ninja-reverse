.class abstract Lcom/google/android/gms/internal/firebase_auth/zzbc;
.super Lcom/google/android/gms/internal/firebase_auth/zzbu;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/firebase_auth/zzbu<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final zza:I

.field private zzb:I


# direct methods
.method protected constructor <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzbu;-><init>()V

    .line 2
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzav;->zzb(II)I

    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbc;->zza:I

    .line 4
    iput p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzbc;->zzb:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbc;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbc;->zza:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPrevious()Z
    .registers 2

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbc;->zzb:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzbc;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbc;->zzb:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbc;->zzb:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase_auth/zzbc;->zza(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 8
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextIndex()I
    .registers 2

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbc;->zzb:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzbc;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 14
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbc;->zzb:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbc;->zzb:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase_auth/zzbc;->zza(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 13
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final previousIndex()I
    .registers 2

    .line 15
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbc;->zzb:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected abstract zza(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method
