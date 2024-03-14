.class final Lcom/google/firebase/auth/api/internal/zzj;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/firebase/auth/api/internal/zzfp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/auth/api/internal/zzfp<",
        "Lcom/google/android/gms/internal/firebase_auth/zzfc;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/firebase/auth/api/internal/zzeg;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/firebase/auth/api/internal/zzeg;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/google/firebase/auth/api/internal/zzj;->zza:Lcom/google/firebase/auth/api/internal/zzeg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .registers 3

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzfc;

    .line 6
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zzj;->zza:Lcom/google/firebase/auth/api/internal/zzeg;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/firebase/auth/api/internal/zzeg;->zza(Lcom/google/android/gms/internal/firebase_auth/zzfm;)V

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
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzj;->zza:Lcom/google/firebase/auth/api/internal/zzeg;

    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzeg;->zza(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
