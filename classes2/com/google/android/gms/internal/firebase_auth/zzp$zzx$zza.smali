.class public final Lcom/google/android/gms/internal/firebase_auth/zzp$zzx$zza;
.super Lcom/google/android/gms/internal/firebase_auth/zzif$zza;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzjp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_auth/zzp$zzx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_auth/zzif$zza<",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zzx;",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zzx$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_auth/zzjp;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzx;->zzb()Lcom/google/android/gms/internal/firebase_auth/zzp$zzx;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzif;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzo;)V
    .registers 2

    .line 39
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzx$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/firebase_auth/zzaa;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzx$zza;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzx$zza;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzx;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzx;->zza(Lcom/google/android/gms/internal/firebase_auth/zzp$zzx;Lcom/google/android/gms/internal/firebase_auth/zzaa;)V

    return-object p0
.end method

.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzx$zza;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzx$zza;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzx;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzx;->zza(Lcom/google/android/gms/internal/firebase_auth/zzp$zzx;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzx$zza;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzx$zza;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzx;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzx;->zzb(Lcom/google/android/gms/internal/firebase_auth/zzp$zzx;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzx$zza;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzx$zza;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzx;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzx;->zzc(Lcom/google/android/gms/internal/firebase_auth/zzp$zzx;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzx$zza;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzx$zza;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzx;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzx;->zzd(Lcom/google/android/gms/internal/firebase_auth/zzp$zzx;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zze(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzx$zza;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzx$zza;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzx;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzx;->zze(Lcom/google/android/gms/internal/firebase_auth/zzp$zzx;Ljava/lang/String;)V

    return-object p0
.end method
