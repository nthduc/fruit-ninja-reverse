.class public final Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;
.super Lcom/google/android/gms/internal/measurement/zzfi$zzb;
.source "com.google.android.gms:play-services-measurement@@17.4.1"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzgv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzbw$zzk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzfi$zzb<",
        "Lcom/google/android/gms/internal/measurement/zzbw$zzk;",
        "Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzgv;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbw$zzk;->zzk()Lcom/google/android/gms/internal/measurement/zzbw$zzk;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;-><init>(Lcom/google/android/gms/internal/measurement/zzfi;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzbx;)V
    .registers 2

    .line 51
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;
    .registers 2

    .line 22
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzb:Z

    if-eqz v0, :cond_a

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzq()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzb:Z

    .line 25
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbw$zzk;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzbw$zzk;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzk;)V

    return-object p0
.end method

.method public final zza(D)Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;
    .registers 4

    .line 40
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzb:Z

    if-eqz v0, :cond_a

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzq()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzb:Z

    .line 43
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbw$zzk;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzbw$zzk;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzk;D)V

    return-object p0
.end method

.method public final zza(J)Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;
    .registers 4

    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzb:Z

    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzq()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzb:Z

    .line 7
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbw$zzk;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzbw$zzk;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzk;J)V

    return-object p0
.end method

.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;
    .registers 3

    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzb:Z

    if-eqz v0, :cond_a

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzq()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzb:Z

    .line 13
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbw$zzk;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzbw$zzk;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzk;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;
    .registers 2

    .line 34
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzb:Z

    if-eqz v0, :cond_a

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzq()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzb:Z

    .line 37
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbw$zzk;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzbw$zzk;->zzb(Lcom/google/android/gms/internal/measurement/zzbw$zzk;)V

    return-object p0
.end method

.method public final zzb(J)Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;
    .registers 4

    .line 28
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzb:Z

    if-eqz v0, :cond_a

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzq()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzb:Z

    .line 31
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbw$zzk;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzbw$zzk;->zzb(Lcom/google/android/gms/internal/measurement/zzbw$zzk;J)V

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;
    .registers 3

    .line 16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzb:Z

    if-eqz v0, :cond_a

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzq()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzb:Z

    .line 19
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbw$zzk;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzbw$zzk;->zzb(Lcom/google/android/gms/internal/measurement/zzbw$zzk;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;
    .registers 2

    .line 46
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzb:Z

    if-eqz v0, :cond_a

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzq()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzb:Z

    .line 49
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbw$zzk;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzbw$zzk;->zzc(Lcom/google/android/gms/internal/measurement/zzbw$zzk;)V

    return-object p0
.end method
