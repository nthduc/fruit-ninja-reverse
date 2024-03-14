.class final Lcom/google/firebase/auth/api/internal/zzx;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/firebase/auth/api/internal/zzfp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/auth/api/internal/zzfp<",
        "Lcom/google/android/gms/internal/firebase_auth/zzga;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/firebase/auth/api/internal/zzeg;

.field private final synthetic zzb:Lcom/google/firebase/auth/api/internal/zza;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/firebase/auth/api/internal/zzeg;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/firebase/auth/api/internal/zzx;->zzb:Lcom/google/firebase/auth/api/internal/zza;

    iput-object p2, p0, Lcom/google/firebase/auth/api/internal/zzx;->zza:Lcom/google/firebase/auth/api/internal/zzeg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .registers 6

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzga;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzo()Z

    move-result v0

    if-nez v0, :cond_10

    .line 7
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzx;->zzb:Lcom/google/firebase/auth/api/internal/zza;

    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzx;->zza:Lcom/google/firebase/auth/api/internal/zzeg;

    invoke-static {v0, p1, v1, p0}, Lcom/google/firebase/auth/api/internal/zza;->zza(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/android/gms/internal/firebase_auth/zzga;Lcom/google/firebase/auth/api/internal/zzeg;Lcom/google/firebase/auth/api/internal/zzfq;)V

    return-void

    .line 9
    :cond_10
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzx;->zzb:Lcom/google/firebase/auth/api/internal/zza;

    invoke-static {v0}, Lcom/google/firebase/auth/api/internal/zza;->zza(Lcom/google/firebase/auth/api/internal/zza;)Lcom/google/firebase/auth/api/internal/zzar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/api/internal/zzar;->zzb()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 10
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzx;->zza:Lcom/google/firebase/auth/api/internal/zzeg;

    new-instance v1, Lcom/google/android/gms/internal/firebase_auth/zzej;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzn()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzm()Ljava/util/List;

    move-result-object v3

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzp()Lcom/google/firebase/auth/zzc;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/firebase_auth/zzej;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/google/firebase/auth/zzc;)V

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/api/internal/zzeg;->zza(Lcom/google/android/gms/internal/firebase_auth/zzej;)V

    return-void

    .line 15
    :cond_33
    invoke-static {}, Lcom/google/firebase/auth/api/internal/zza;->zza()Lcom/google/android/gms/common/logging/Logger;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Need to do multi-factor auth, but SDK does not support it."

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "REQUIRES_SECOND_FACTOR_AUTH"

    .line 16
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzx;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzaa;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzx;->zza:Lcom/google/firebase/auth/api/internal/zzeg;

    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzeg;->zza(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
