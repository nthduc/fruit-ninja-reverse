.class public final Lcom/google/firebase/auth/api/internal/zzar;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# instance fields
.field private final zza:Lcom/google/firebase/auth/api/internal/zzej;

.field private final zzb:Lcom/google/firebase/auth/api/internal/zzew;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/api/internal/zzej;Lcom/google/firebase/auth/api/internal/zzew;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/auth/api/internal/zzar;->zza:Lcom/google/firebase/auth/api/internal/zzej;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/auth/api/internal/zzar;->zzb:Lcom/google/firebase/auth/api/internal/zzew;

    return-void
.end method


# virtual methods
.method final zza()Z
    .registers 3

    .line 5
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzar;->zza:Lcom/google/firebase/auth/api/internal/zzej;

    invoke-interface {v0}, Lcom/google/firebase/auth/api/internal/zzej;->zza()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzar;->zzb:Lcom/google/firebase/auth/api/internal/zzew;

    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzar;->zza:Lcom/google/firebase/auth/api/internal/zzej;

    .line 6
    invoke-interface {v1}, Lcom/google/firebase/auth/api/internal/zzej;->zzd()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/api/internal/zzew;->zza(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method final zzb()Z
    .registers 3

    .line 9
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzar;->zza:Lcom/google/firebase/auth/api/internal/zzej;

    invoke-interface {v0}, Lcom/google/firebase/auth/api/internal/zzej;->zzb()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzar;->zzb:Lcom/google/firebase/auth/api/internal/zzew;

    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzar;->zza:Lcom/google/firebase/auth/api/internal/zzej;

    .line 10
    invoke-interface {v1}, Lcom/google/firebase/auth/api/internal/zzej;->zzc()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/api/internal/zzew;->zzb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method
