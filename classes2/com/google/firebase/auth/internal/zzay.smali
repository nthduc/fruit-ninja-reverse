.class final Lcom/google/firebase/auth/internal/zzay;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener;


# instance fields
.field private final synthetic zza:Lcom/google/firebase/auth/internal/zzaz;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/internal/zzaz;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzay;->zza:Lcom/google/firebase/auth/internal/zzaz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackgroundStateChanged(Z)V
    .registers 3

    if-eqz p1, :cond_e

    .line 3
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzay;->zza:Lcom/google/firebase/auth/internal/zzaz;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/firebase/auth/internal/zzaz;->zza(Lcom/google/firebase/auth/internal/zzaz;Z)Z

    .line 4
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzay;->zza:Lcom/google/firebase/auth/internal/zzaz;

    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzaz;->zza()V

    return-void

    .line 5
    :cond_e
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzay;->zza:Lcom/google/firebase/auth/internal/zzaz;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/firebase/auth/internal/zzaz;->zza(Lcom/google/firebase/auth/internal/zzaz;Z)Z

    .line 6
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzay;->zza:Lcom/google/firebase/auth/internal/zzaz;

    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzaz;->zza(Lcom/google/firebase/auth/internal/zzaz;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 7
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzay;->zza:Lcom/google/firebase/auth/internal/zzaz;

    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzaz;->zzb(Lcom/google/firebase/auth/internal/zzaz;)Lcom/google/firebase/auth/internal/zzac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzac;->zza()V

    :cond_25
    return-void
.end method
