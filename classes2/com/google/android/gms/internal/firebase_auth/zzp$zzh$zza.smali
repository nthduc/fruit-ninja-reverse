.class public final Lcom/google/android/gms/internal/firebase_auth/zzp$zzh$zza;
.super Lcom/google/android/gms/internal/firebase_auth/zzif$zza;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzjp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_auth/zzif$zza<",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zzh$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_auth/zzjp;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzb()Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzif;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzo;)V
    .registers 2

    .line 81
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/firebase_auth/zzgj;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzh$zza;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh$zza;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zza(Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;Lcom/google/android/gms/internal/firebase_auth/zzgj;)V

    return-object p0
.end method

.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzh$zza;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh$zza;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zza(Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zza(Z)Lcom/google/android/gms/internal/firebase_auth/zzp$zzh$zza;
    .registers 3

    .line 52
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb:Z

    if-eqz v0, :cond_a

    .line 53
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb:Z

    .line 55
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh$zza;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zza(Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;Z)V

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzh$zza;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh$zza;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzb(Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzb(Z)Lcom/google/android/gms/internal/firebase_auth/zzp$zzh$zza;
    .registers 3

    .line 64
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb:Z

    if-eqz v0, :cond_a

    .line 65
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb()V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb:Z

    .line 67
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh$zza;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzb(Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;Z)V

    return-object p0
.end method

.method public final zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzh$zza;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh$zza;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzc(Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzh$zza;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh$zza;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzd(Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zze(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzh$zza;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh$zza;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zze(Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzh$zza;
    .registers 3

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
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh$zza;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzf(Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzh$zza;
    .registers 3

    .line 46
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb:Z

    if-eqz v0, :cond_a

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb:Z

    .line 49
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh$zza;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzg(Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzh$zza;
    .registers 3

    .line 58
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb:Z

    if-eqz v0, :cond_a

    .line 59
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb:Z

    .line 61
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh$zza;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzh(Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzh$zza;
    .registers 3

    .line 70
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb:Z

    if-eqz v0, :cond_a

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb()V

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb:Z

    .line 73
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh$zza;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzi(Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzh$zza;
    .registers 3

    .line 76
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb:Z

    if-eqz v0, :cond_a

    .line 77
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb()V

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb:Z

    .line 79
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh$zza;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzj(Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;Ljava/lang/String;)V

    return-object p0
.end method
