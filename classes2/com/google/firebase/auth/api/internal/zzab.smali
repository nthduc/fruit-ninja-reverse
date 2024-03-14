.class final Lcom/google/firebase/auth/api/internal/zzab;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/firebase/auth/api/internal/zzfp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/auth/api/internal/zzfp<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/firebase/auth/api/internal/zzfp;

.field private final synthetic zzb:Lcom/google/firebase/auth/api/internal/zzac;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/api/internal/zzac;Lcom/google/firebase/auth/api/internal/zzfp;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/firebase/auth/api/internal/zzab;->zzb:Lcom/google/firebase/auth/api/internal/zzac;

    iput-object p2, p0, Lcom/google/firebase/auth/api/internal/zzab;->zza:Lcom/google/firebase/auth/api/internal/zzfp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .registers 2

    .line 4
    check-cast p1, Ljava/lang/Void;

    .line 5
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zzab;->zzb:Lcom/google/firebase/auth/api/internal/zzac;

    iget-object p1, p1, Lcom/google/firebase/auth/api/internal/zzac;->zza:Lcom/google/firebase/auth/api/internal/zzeg;

    invoke-virtual {p1}, Lcom/google/firebase/auth/api/internal/zzeg;->zza()V

    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzab;->zza:Lcom/google/firebase/auth/api/internal/zzfp;

    invoke-interface {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfp;->zza(Ljava/lang/String;)V

    return-void
.end method
