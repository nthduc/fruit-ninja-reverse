.class final Lcom/google/firebase/auth/api/internal/zzaa;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/firebase/auth/api/internal/zzfp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/auth/api/internal/zzfp<",
        "Lcom/google/android/gms/internal/firebase_auth/zzff;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/firebase/auth/api/internal/zzeg;

.field private final synthetic zzb:Lcom/google/firebase/auth/api/internal/zza;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/firebase/auth/api/internal/zzeg;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/firebase/auth/api/internal/zzaa;->zzb:Lcom/google/firebase/auth/api/internal/zza;

    iput-object p2, p0, Lcom/google/firebase/auth/api/internal/zzaa;->zza:Lcom/google/firebase/auth/api/internal/zzeg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .registers 5

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzff;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzd()Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/firebase_auth/zzev;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzev;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzaa;->zzb:Lcom/google/firebase/auth/api/internal/zza;

    invoke-static {v0}, Lcom/google/firebase/auth/api/internal/zza;->zzb(Lcom/google/firebase/auth/api/internal/zza;)Lcom/google/firebase/auth/api/internal/zzfn;

    move-result-object v0

    new-instance v2, Lcom/google/firebase/auth/api/internal/zzz;

    invoke-direct {v2, p0, p0, p1}, Lcom/google/firebase/auth/api/internal/zzz;-><init>(Lcom/google/firebase/auth/api/internal/zzaa;Lcom/google/firebase/auth/api/internal/zzfp;Lcom/google/android/gms/internal/firebase_auth/zzff;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/auth/api/internal/zzfn;->zza(Lcom/google/android/gms/internal/firebase_auth/zzev;Lcom/google/firebase/auth/api/internal/zzfp;)V

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
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzaa;->zza:Lcom/google/firebase/auth/api/internal/zzeg;

    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzeg;->zza(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
