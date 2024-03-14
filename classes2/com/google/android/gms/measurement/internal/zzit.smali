.class final Lcom/google/android/gms/measurement/internal/zzit;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzm;

.field private final synthetic zzb:Lcom/google/android/gms/internal/measurement/zzs;

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzin;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzin;Lcom/google/android/gms/measurement/internal/zzm;Lcom/google/android/gms/internal/measurement/zzs;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzit;->zzc:Lcom/google/android/gms/measurement/internal/zzin;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzit;->zza:Lcom/google/android/gms/measurement/internal/zzm;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzit;->zzb:Lcom/google/android/gms/internal/measurement/zzs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    const-string v0, "Failed to get app instance id"

    const/4 v1, 0x0

    .line 3
    :try_start_3
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzit;->zzc:Lcom/google/android/gms/measurement/internal/zzin;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzin;->zzd(Lcom/google/android/gms/measurement/internal/zzin;)Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v2

    if-nez v2, :cond_24

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzit;->zzc:Lcom/google/android/gms/measurement/internal/zzin;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_18} :catch_53
    .catchall {:try_start_3 .. :try_end_18} :catchall_51

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzit;->zzc:Lcom/google/android/gms/measurement/internal/zzin;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzp()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzit;->zzb:Lcom/google/android/gms/internal/measurement/zzs;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzko;->zza(Lcom/google/android/gms/internal/measurement/zzs;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_24
    :try_start_24
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzit;->zza:Lcom/google/android/gms/measurement/internal/zzm;

    invoke-interface {v2, v3}, Lcom/google/android/gms/measurement/internal/zzel;->zzc(Lcom/google/android/gms/measurement/internal/zzm;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 10
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzit;->zzc:Lcom/google/android/gms/measurement/internal/zzin;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzf()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 11
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzit;->zzc:Lcom/google/android/gms/measurement/internal/zzin;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzs()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzff;->zzj:Lcom/google/android/gms/measurement/internal/zzfl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zza(Ljava/lang/String;)V

    .line 12
    :cond_40
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzit;->zzc:Lcom/google/android/gms/measurement/internal/zzin;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzin;->zze(Lcom/google/android/gms/measurement/internal/zzin;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_45} :catch_53
    .catchall {:try_start_24 .. :try_end_45} :catchall_51

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzit;->zzc:Lcom/google/android/gms/measurement/internal/zzin;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzp()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzit;->zzb:Lcom/google/android/gms/internal/measurement/zzs;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzko;->zza(Lcom/google/android/gms/internal/measurement/zzs;Ljava/lang/String;)V

    return-void

    :catchall_51
    move-exception v0

    goto :goto_6d

    :catch_53
    move-exception v2

    .line 16
    :try_start_54
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzit;->zzc:Lcom/google/android/gms/measurement/internal/zzin;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_61
    .catchall {:try_start_54 .. :try_end_61} :catchall_51

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzit;->zzc:Lcom/google/android/gms/measurement/internal/zzin;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzp()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzit;->zzb:Lcom/google/android/gms/internal/measurement/zzs;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzko;->zza(Lcom/google/android/gms/internal/measurement/zzs;Ljava/lang/String;)V

    return-void

    .line 19
    :goto_6d
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzit;->zzc:Lcom/google/android/gms/measurement/internal/zzin;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzp()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzit;->zzb:Lcom/google/android/gms/internal/measurement/zzs;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzko;->zza(Lcom/google/android/gms/internal/measurement/zzs;Ljava/lang/String;)V

    .line 20
    throw v0
.end method
