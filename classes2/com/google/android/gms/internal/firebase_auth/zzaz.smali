.class final Lcom/google/android/gms/internal/firebase_auth/zzaz;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzba;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/firebase_auth/zzal;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzal;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzaz;->zza:Lcom/google/android/gms/internal/firebase_auth/zzal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/firebase_auth/zzau;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .registers 5

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzaz;->zza:Lcom/google/android/gms/internal/firebase_auth/zzal;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/firebase_auth/zzal;->zza(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/firebase_auth/zzam;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/google/android/gms/internal/firebase_auth/zzay;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzay;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzaz;Lcom/google/android/gms/internal/firebase_auth/zzau;Ljava/lang/CharSequence;Lcom/google/android/gms/internal/firebase_auth/zzam;)V

    return-object v1
.end method
