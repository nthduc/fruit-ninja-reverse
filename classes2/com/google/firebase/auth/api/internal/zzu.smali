.class final Lcom/google/firebase/auth/api/internal/zzu;
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

.field private final synthetic zzc:Lcom/google/android/gms/internal/firebase_auth/zzfy;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/android/gms/internal/firebase_auth/zzfy;Lcom/google/firebase/auth/api/internal/zzeg;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/firebase/auth/api/internal/zzu;->zzb:Lcom/google/firebase/auth/api/internal/zza;

    iput-object p2, p0, Lcom/google/firebase/auth/api/internal/zzu;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzfy;

    iput-object p3, p0, Lcom/google/firebase/auth/api/internal/zzu;->zza:Lcom/google/firebase/auth/api/internal/zzeg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .registers 5

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzff;

    .line 6
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzu;->zzb:Lcom/google/firebase/auth/api/internal/zza;

    invoke-static {v0}, Lcom/google/firebase/auth/api/internal/zza;->zza(Lcom/google/firebase/auth/api/internal/zza;)Lcom/google/firebase/auth/api/internal/zzar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/api/internal/zzar;->zza()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 7
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzu;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzfy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzc(Z)Lcom/google/android/gms/internal/firebase_auth/zzfy;

    .line 8
    :cond_14
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzu;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzfy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzd()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfy;

    .line 10
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zzu;->zzb:Lcom/google/firebase/auth/api/internal/zza;

    invoke-static {p1}, Lcom/google/firebase/auth/api/internal/zza;->zzb(Lcom/google/firebase/auth/api/internal/zza;)Lcom/google/firebase/auth/api/internal/zzfn;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzu;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzfy;

    new-instance v2, Lcom/google/firebase/auth/api/internal/zzt;

    invoke-direct {v2, p0, p0}, Lcom/google/firebase/auth/api/internal/zzt;-><init>(Lcom/google/firebase/auth/api/internal/zzu;Lcom/google/firebase/auth/api/internal/zzfp;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/firebase/auth/api/internal/zzfn;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/firebase_auth/zzfy;Lcom/google/firebase/auth/api/internal/zzfp;)V

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
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzu;->zza:Lcom/google/firebase/auth/api/internal/zzeg;

    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzeg;->zza(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
