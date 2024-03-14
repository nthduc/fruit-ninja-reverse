.class final Lcom/google/firebase/auth/api/internal/zze;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/firebase/auth/api/internal/zzfp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/auth/api/internal/zzfp<",
        "Lcom/google/android/gms/internal/firebase_auth/zzgh;",
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
    iput-object p1, p0, Lcom/google/firebase/auth/api/internal/zze;->zzb:Lcom/google/firebase/auth/api/internal/zza;

    iput-object p2, p0, Lcom/google/firebase/auth/api/internal/zze;->zza:Lcom/google/firebase/auth/api/internal/zzeg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .registers 10

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzgh;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzgh;->zzg()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    .line 7
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zze;->zzb:Lcom/google/firebase/auth/api/internal/zza;

    invoke-static {v0}, Lcom/google/firebase/auth/api/internal/zza;->zza(Lcom/google/firebase/auth/api/internal/zza;)Lcom/google/firebase/auth/api/internal/zzar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/api/internal/zzar;->zzb()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 8
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zze;->zza:Lcom/google/firebase/auth/api/internal/zzeg;

    new-instance v1, Lcom/google/android/gms/internal/firebase_auth/zzej;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzgh;->zzf()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzgh;->zze()Ljava/util/List;

    move-result-object p1

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/google/android/gms/internal/firebase_auth/zzej;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/google/firebase/auth/zzc;)V

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/api/internal/zzeg;->zza(Lcom/google/android/gms/internal/firebase_auth/zzej;)V

    return-void

    .line 12
    :cond_29
    invoke-static {}, Lcom/google/firebase/auth/api/internal/zza;->zza()Lcom/google/android/gms/common/logging/Logger;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Need to do multi-factor auth, but SDK does not support it."

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "REQUIRES_SECOND_FACTOR_AUTH"

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zze;->zza(Ljava/lang/String;)V

    return-void

    .line 15
    :cond_3a
    new-instance v2, Lcom/google/android/gms/internal/firebase_auth/zzff;

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzgh;->zzc()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzgh;->zzb()Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzgh;->zzd()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v4, "Bearer"

    invoke-direct {v2, v0, v3, p1, v4}, Lcom/google/android/gms/internal/firebase_auth/zzff;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zze;->zzb:Lcom/google/firebase/auth/api/internal/zza;

    const/4 p1, 0x0

    const/4 v3, 0x0

    .line 20
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/firebase/auth/api/internal/zze;->zza:Lcom/google/firebase/auth/api/internal/zzeg;

    move-object v1, v2

    move-object v2, p1

    move-object v7, p0

    .line 21
    invoke-static/range {v0 .. v7}, Lcom/google/firebase/auth/api/internal/zza;->zza(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/android/gms/internal/firebase_auth/zzff;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/firebase/auth/zzc;Lcom/google/firebase/auth/api/internal/zzeg;Lcom/google/firebase/auth/api/internal/zzfq;)V

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
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zze;->zza:Lcom/google/firebase/auth/api/internal/zzeg;

    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzeg;->zza(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
