.class final Lcom/google/firebase/auth/api/internal/zzs;
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

.field final synthetic zzb:Lcom/google/firebase/auth/api/internal/zza;

.field private final synthetic zzc:Lcom/google/android/gms/internal/firebase_auth/zzgg;

.field private final synthetic zzd:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/android/gms/internal/firebase_auth/zzgg;Landroid/content/Context;Lcom/google/firebase/auth/api/internal/zzeg;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/firebase/auth/api/internal/zzs;->zzb:Lcom/google/firebase/auth/api/internal/zza;

    iput-object p2, p0, Lcom/google/firebase/auth/api/internal/zzs;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzgg;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/firebase/auth/api/internal/zzs;->zzd:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/firebase/auth/api/internal/zzs;->zza:Lcom/google/firebase/auth/api/internal/zzeg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .registers 5

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzff;

    .line 6
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzs;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzgg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzd()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzgg;->zza(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zzs;->zzb:Lcom/google/firebase/auth/api/internal/zza;

    invoke-static {p1}, Lcom/google/firebase/auth/api/internal/zza;->zzb(Lcom/google/firebase/auth/api/internal/zza;)Lcom/google/firebase/auth/api/internal/zzfn;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzs;->zzd:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzs;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzgg;

    new-instance v2, Lcom/google/firebase/auth/api/internal/zzr;

    invoke-direct {v2, p0, p0}, Lcom/google/firebase/auth/api/internal/zzr;-><init>(Lcom/google/firebase/auth/api/internal/zzs;Lcom/google/firebase/auth/api/internal/zzfp;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/firebase/auth/api/internal/zzfn;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/firebase_auth/zzgg;Lcom/google/firebase/auth/api/internal/zzfp;)V

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
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzs;->zza:Lcom/google/firebase/auth/api/internal/zzeg;

    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzeg;->zza(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
