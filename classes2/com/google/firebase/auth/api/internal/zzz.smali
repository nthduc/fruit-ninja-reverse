.class final Lcom/google/firebase/auth/api/internal/zzz;
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

.field private final synthetic zzc:Lcom/google/firebase/auth/api/internal/zzaa;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/api/internal/zzaa;Lcom/google/firebase/auth/api/internal/zzfp;Lcom/google/android/gms/internal/firebase_auth/zzff;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/firebase/auth/api/internal/zzz;->zzc:Lcom/google/firebase/auth/api/internal/zzaa;

    iput-object p2, p0, Lcom/google/firebase/auth/api/internal/zzz;->zza:Lcom/google/firebase/auth/api/internal/zzfp;

    iput-object p3, p0, Lcom/google/firebase/auth/api/internal/zzz;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .registers 5

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzeu;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzeu;->zzb()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_20

    .line 9
    :cond_f
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzz;->zzc:Lcom/google/firebase/auth/api/internal/zzaa;

    iget-object v0, v0, Lcom/google/firebase/auth/api/internal/zzaa;->zza:Lcom/google/firebase/auth/api/internal/zzeg;

    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzz;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzff;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzew;

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/auth/api/internal/zzeg;->zza(Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/android/gms/internal/firebase_auth/zzew;)V

    return-void

    .line 7
    :cond_20
    :goto_20
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zzz;->zza:Lcom/google/firebase/auth/api/internal/zzfp;

    const-string v0, "No users"

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
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzz;->zza:Lcom/google/firebase/auth/api/internal/zzfp;

    invoke-interface {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfp;->zza(Ljava/lang/String;)V

    return-void
.end method
