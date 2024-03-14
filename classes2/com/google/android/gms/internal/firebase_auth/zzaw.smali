.class final Lcom/google/android/gms/internal/firebase_auth/zzaw;
.super Lcom/google/android/gms/internal/firebase_auth/zzbb;
.source "com.google.firebase:firebase-auth@@19.3.1"


# instance fields
.field private final synthetic zzb:Lcom/google/android/gms/internal/firebase_auth/zzax;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzax;Lcom/google/android/gms/internal/firebase_auth/zzau;Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzaw;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzax;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzbb;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzau;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method final zza(I)I
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzaw;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzax;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase_auth/zzax;->zza:Lcom/google/android/gms/internal/firebase_auth/zzaf;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzaw;->zza:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/firebase_auth/zzaf;->zza(Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method

.method final zzb(I)I
    .registers 2

    add-int/lit8 p1, p1, 0x1

    return p1
.end method
