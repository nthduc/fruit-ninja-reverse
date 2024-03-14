.class public final Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;
.super Lcom/google/android/gms/internal/firebase_auth/zzif$zza;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzjp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_auth/zzif$zza<",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_auth/zzjp;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzb()Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzif;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzo;)V
    .registers 2

    .line 62
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/firebase_auth/zzv;",
            ">;)",
            "Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;"
        }
    .end annotation

    .line 40
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb:Z

    if-eqz v0, :cond_a

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb:Z

    .line 43
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zza(Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;
    .registers 3

    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb:Z

    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb:Z

    .line 7
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zza(Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zza(Z)Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;
    .registers 3

    .line 45
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb:Z

    if-eqz v0, :cond_a

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb:Z

    .line 48
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zza(Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;Z)V

    return-object p0
.end method

.method public final zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;"
        }
    .end annotation

    .line 51
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb:Z

    if-eqz v0, :cond_a

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb:Z

    .line 54
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzb(Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;
    .registers 3

    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb:Z

    if-eqz v0, :cond_a

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb:Z

    .line 13
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzb(Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;
    .registers 3

    .line 16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb:Z

    if-eqz v0, :cond_a

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb:Z

    .line 19
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzc(Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;
    .registers 3

    .line 22
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb:Z

    if-eqz v0, :cond_a

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb:Z

    .line 25
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzd(Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zze(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;
    .registers 3

    .line 28
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb:Z

    if-eqz v0, :cond_a

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb:Z

    .line 31
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zze(Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;
    .registers 3

    .line 34
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb:Z

    if-eqz v0, :cond_a

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb:Z

    .line 37
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzf(Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;
    .registers 3

    .line 57
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb:Z

    if-eqz v0, :cond_a

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb:Z

    .line 60
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzg(Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;Ljava/lang/String;)V

    return-object p0
.end method
