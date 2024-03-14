.class final Lcom/google/firebase/auth/api/internal/zzy;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/firebase/auth/api/internal/zzfp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/auth/api/internal/zzfp<",
        "Lcom/google/android/gms/internal/firebase_auth/zzeu;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/firebase/auth/api/internal/zzfp;

.field private final synthetic zzb:Lcom/google/android/gms/internal/firebase_auth/zzff;

.field private final synthetic zzc:Lcom/google/firebase/auth/api/internal/zzv;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/api/internal/zzv;Lcom/google/firebase/auth/api/internal/zzfp;Lcom/google/android/gms/internal/firebase_auth/zzff;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/firebase/auth/api/internal/zzy;->zzc:Lcom/google/firebase/auth/api/internal/zzv;

    iput-object p2, p0, Lcom/google/firebase/auth/api/internal/zzy;->zza:Lcom/google/firebase/auth/api/internal/zzfp;

    iput-object p3, p0, Lcom/google/firebase/auth/api/internal/zzy;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .registers 8

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzeu;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzeu;->zzb()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3d

    .line 7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_3d

    :cond_f
    const/4 v0, 0x0

    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/firebase_auth/zzew;

    .line 10
    new-instance v4, Lcom/google/android/gms/internal/firebase_auth/zzfs;

    invoke-direct {v4}, Lcom/google/android/gms/internal/firebase_auth/zzfs;-><init>()V

    .line 11
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zzy;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzff;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzd()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfs;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzy;->zzc:Lcom/google/firebase/auth/api/internal/zzv;

    iget-object v0, v0, Lcom/google/firebase/auth/api/internal/zzv;->zza:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfs;

    .line 14
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zzy;->zzc:Lcom/google/firebase/auth/api/internal/zzv;

    iget-object v0, p1, Lcom/google/firebase/auth/api/internal/zzv;->zzc:Lcom/google/firebase/auth/api/internal/zza;

    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zzy;->zzc:Lcom/google/firebase/auth/api/internal/zzv;

    iget-object v1, p1, Lcom/google/firebase/auth/api/internal/zzv;->zzb:Lcom/google/firebase/auth/api/internal/zzeg;

    iget-object v2, p0, Lcom/google/firebase/auth/api/internal/zzy;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzff;

    iget-object v5, p0, Lcom/google/firebase/auth/api/internal/zzy;->zza:Lcom/google/firebase/auth/api/internal/zzfp;

    invoke-static/range {v0 .. v5}, Lcom/google/firebase/auth/api/internal/zza;->zza(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/firebase/auth/api/internal/zzeg;Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/android/gms/internal/firebase_auth/zzew;Lcom/google/android/gms/internal/firebase_auth/zzfs;Lcom/google/firebase/auth/api/internal/zzfq;)V

    return-void

    .line 8
    :cond_3d
    :goto_3d
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zzy;->zza:Lcom/google/firebase/auth/api/internal/zzfp;

    const-string v0, "No users."

    invoke-interface {p1, v0}, Lcom/google/firebase/auth/api/internal/zzfp;->zza(Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzy;->zzc:Lcom/google/firebase/auth/api/internal/zzv;

    iget-object v0, v0, Lcom/google/firebase/auth/api/internal/zzv;->zzb:Lcom/google/firebase/auth/api/internal/zzeg;

    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzeg;->zza(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
