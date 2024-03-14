.class final Lcom/google/android/gms/internal/firebase_auth/zzld;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private zza:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic zzb:I

.field private final synthetic zzc:Lcom/google/android/gms/internal/firebase_auth/zzla;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzla;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzld;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzla;

    iput p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzld;->zzb:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzld;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzla;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzla;->zza(Lcom/google/android/gms/internal/firebase_auth/zzla;)Lcom/google/android/gms/internal/firebase_auth/zziy;

    move-result-object p1

    iget p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzld;->zzb:I

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zziy;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzld;->zza:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public final synthetic add(Ljava/lang/Object;)V
    .registers 2

    .line 8
    check-cast p1, Ljava/lang/String;

    .line 9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final hasNext()Z
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzld;->zza:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final hasPrevious()Z
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzld;->zza:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzld;->zza:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final nextIndex()I
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzld;->zza:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public final synthetic previous()Ljava/lang/Object;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzld;->zza:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final previousIndex()I
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzld;->zza:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public final remove()V
    .registers 2

    .line 7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final synthetic set(Ljava/lang/Object;)V
    .registers 2

    .line 10
    check-cast p1, Ljava/lang/String;

    .line 11
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
