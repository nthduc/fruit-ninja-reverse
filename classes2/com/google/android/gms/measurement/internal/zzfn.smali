.class public final Lcom/google/android/gms/measurement/internal/zzfn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.1"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzfo;

.field private final zzb:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfo;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfn;->zza:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfn;->zzb:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzfn;)Ljava/lang/String;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfn;->zzb:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    if-nez p2, :cond_14

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfn;->zza:Lcom/google/android/gms/measurement/internal/zzfo;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfo;->zza:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p1

    const-string p2, "Install Referrer connection returned with null binder"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_14
    :try_start_14
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/zzd;

    move-result-object p1

    if-nez p1, :cond_2c

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfn;->zza:Lcom/google/android/gms/measurement/internal/zzfo;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfo;->zza:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p1

    const-string p2, "Install Referrer Service implementation was not found"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    return-void

    .line 13
    :cond_2c
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfn;->zza:Lcom/google/android/gms/measurement/internal/zzfo;

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzfo;->zza:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p2

    const-string v0, "Install Referrer Service connected"

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfn;->zza:Lcom/google/android/gms/measurement/internal/zzfo;

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzfo;->zza:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 15
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzq()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-direct {v0, p0, p1, p0}, Lcom/google/android/gms/measurement/internal/zzfq;-><init>(Lcom/google/android/gms/measurement/internal/zzfn;Lcom/google/android/gms/internal/measurement/zzd;Landroid/content/ServiceConnection;)V

    .line 16
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/Runnable;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_4d} :catch_4e

    return-void

    :catch_4e
    move-exception p1

    .line 19
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfn;->zza:Lcom/google/android/gms/measurement/internal/zzfo;

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzfo;->zza:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p2

    const-string v0, "Exception occurred while calling Install Referrer API"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 21
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfn;->zza:Lcom/google/android/gms/measurement/internal/zzfo;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfo;->zza:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p1

    const-string v0, "Install Referrer Service disconnected"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    return-void
.end method
