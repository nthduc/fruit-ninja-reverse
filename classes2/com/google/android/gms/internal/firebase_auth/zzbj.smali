.class final Lcom/google/android/gms/internal/firebase_auth/zzbj;
.super Lcom/google/android/gms/internal/firebase_auth/zzbc;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/firebase_auth/zzbc<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase_auth/zzbg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzbg<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzbg;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase_auth/zzbg<",
            "TE;>;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzbg;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/firebase_auth/zzbc;-><init>(II)V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbj;->zza:Lcom/google/android/gms/internal/firebase_auth/zzbg;

    return-void
.end method


# virtual methods
.method protected final zza(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbj;->zza:Lcom/google/android/gms/internal/firebase_auth/zzbg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzbg;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
