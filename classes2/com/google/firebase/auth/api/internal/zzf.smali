.class final Lcom/google/firebase/auth/api/internal/zzf;
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
.field private final synthetic zza:Lcom/google/firebase/auth/api/internal/zzfq;

.field private final synthetic zzb:Lcom/google/firebase/auth/api/internal/zzeg;

.field private final synthetic zzc:Lcom/google/android/gms/internal/firebase_auth/zzff;

.field private final synthetic zzd:Lcom/google/android/gms/internal/firebase_auth/zzfs;

.field private final synthetic zze:Lcom/google/firebase/auth/api/internal/zza;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/firebase/auth/api/internal/zzfq;Lcom/google/firebase/auth/api/internal/zzeg;Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/android/gms/internal/firebase_auth/zzfs;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/google/firebase/auth/api/internal/zzf;->zze:Lcom/google/firebase/auth/api/internal/zza;

    iput-object p2, p0, Lcom/google/firebase/auth/api/internal/zzf;->zza:Lcom/google/firebase/auth/api/internal/zzfq;

    iput-object p3, p0, Lcom/google/firebase/auth/api/internal/zzf;->zzb:Lcom/google/firebase/auth/api/internal/zzeg;

    iput-object p4, p0, Lcom/google/firebase/auth/api/internal/zzf;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzff;

    iput-object p5, p0, Lcom/google/firebase/auth/api/internal/zzf;->zzd:Lcom/google/android/gms/internal/firebase_auth/zzfs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .registers 9

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzeu;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzeu;->zzb()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_25

    .line 8
    :cond_f
    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzf;->zze:Lcom/google/firebase/auth/api/internal/zza;

    iget-object v2, p0, Lcom/google/firebase/auth/api/internal/zzf;->zzb:Lcom/google/firebase/auth/api/internal/zzeg;

    iget-object v3, p0, Lcom/google/firebase/auth/api/internal/zzf;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzff;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/internal/firebase_auth/zzew;

    iget-object v5, p0, Lcom/google/firebase/auth/api/internal/zzf;->zzd:Lcom/google/android/gms/internal/firebase_auth/zzfs;

    iget-object v6, p0, Lcom/google/firebase/auth/api/internal/zzf;->zza:Lcom/google/firebase/auth/api/internal/zzfq;

    invoke-static/range {v1 .. v6}, Lcom/google/firebase/auth/api/internal/zza;->zza(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/firebase/auth/api/internal/zzeg;Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/android/gms/internal/firebase_auth/zzew;Lcom/google/android/gms/internal/firebase_auth/zzfs;Lcom/google/firebase/auth/api/internal/zzfq;)V

    return-void

    .line 7
    :cond_25
    :goto_25
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zzf;->zza:Lcom/google/firebase/auth/api/internal/zzfq;

    const-string v0, "No users"

    invoke-interface {p1, v0}, Lcom/google/firebase/auth/api/internal/zzfq;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzf;->zza:Lcom/google/firebase/auth/api/internal/zzfq;

    invoke-interface {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfq;->zza(Ljava/lang/String;)V

    return-void
.end method
