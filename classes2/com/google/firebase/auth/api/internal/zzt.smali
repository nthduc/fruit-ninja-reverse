.class final Lcom/google/firebase/auth/api/internal/zzt;
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
.field private final synthetic zza:Lcom/google/firebase/auth/api/internal/zzfp;

.field private final synthetic zzb:Lcom/google/firebase/auth/api/internal/zzu;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/api/internal/zzu;Lcom/google/firebase/auth/api/internal/zzfp;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/firebase/auth/api/internal/zzt;->zzb:Lcom/google/firebase/auth/api/internal/zzu;

    iput-object p2, p0, Lcom/google/firebase/auth/api/internal/zzt;->zza:Lcom/google/firebase/auth/api/internal/zzfp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .registers 4

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzga;

    .line 5
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzt;->zzb:Lcom/google/firebase/auth/api/internal/zzu;

    iget-object v0, v0, Lcom/google/firebase/auth/api/internal/zzu;->zzb:Lcom/google/firebase/auth/api/internal/zza;

    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzt;->zzb:Lcom/google/firebase/auth/api/internal/zzu;

    iget-object v1, v1, Lcom/google/firebase/auth/api/internal/zzu;->zza:Lcom/google/firebase/auth/api/internal/zzeg;

    invoke-static {v0, p1, v1, p0}, Lcom/google/firebase/auth/api/internal/zza;->zza(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/android/gms/internal/firebase_auth/zzga;Lcom/google/firebase/auth/api/internal/zzeg;Lcom/google/firebase/auth/api/internal/zzfq;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzt;->zza:Lcom/google/firebase/auth/api/internal/zzfp;

    invoke-interface {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfp;->zza(Ljava/lang/String;)V

    return-void
.end method
