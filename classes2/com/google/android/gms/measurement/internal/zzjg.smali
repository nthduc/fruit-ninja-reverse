.class final Lcom/google/android/gms/measurement/internal/zzjg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Ljava/lang/String;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Z

.field private final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzm;

.field private final synthetic zze:Lcom/google/android/gms/internal/measurement/zzs;

.field private final synthetic zzf:Lcom/google/android/gms/measurement/internal/zzin;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzin;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzm;Lcom/google/android/gms/internal/measurement/zzs;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjg;->zzf:Lcom/google/android/gms/measurement/internal/zzin;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjg;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzjg;->zzb:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzjg;->zzc:Z

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzjg;->zzd:Lcom/google/android/gms/measurement/internal/zzm;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzjg;->zze:Lcom/google/android/gms/internal/measurement/zzs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjg;->zzf:Lcom/google/android/gms/measurement/internal/zzin;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzin;->zzd(Lcom/google/android/gms/measurement/internal/zzin;)Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v1

    if-nez v1, :cond_2c

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjg;->zzf:Lcom/google/android/gms/measurement/internal/zzin;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    const-string v2, "Failed to get user properties; not connected to service"

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjg;->zza:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzjg;->zzb:Ljava/lang/String;

    .line 7
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_20} :catch_4f
    .catchall {:try_start_5 .. :try_end_20} :catchall_4d

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjg;->zzf:Lcom/google/android/gms/measurement/internal/zzin;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzp()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjg;->zze:Lcom/google/android/gms/internal/measurement/zzs;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzko;->zza(Lcom/google/android/gms/internal/measurement/zzs;Landroid/os/Bundle;)V

    return-void

    .line 10
    :cond_2c
    :try_start_2c
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjg;->zza:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjg;->zzb:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/android/gms/measurement/internal/zzjg;->zzc:Z

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzjg;->zzd:Lcom/google/android/gms/measurement/internal/zzm;

    .line 11
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzel;->zza(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzm;)Ljava/util/List;

    move-result-object v1

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzko;->zza(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjg;->zzf:Lcom/google/android/gms/measurement/internal/zzin;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzin;->zze(Lcom/google/android/gms/measurement/internal/zzin;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_41} :catch_4f
    .catchall {:try_start_2c .. :try_end_41} :catchall_4d

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjg;->zzf:Lcom/google/android/gms/measurement/internal/zzin;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzp()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjg;->zze:Lcom/google/android/gms/internal/measurement/zzs;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzko;->zza(Lcom/google/android/gms/internal/measurement/zzs;Landroid/os/Bundle;)V

    return-void

    :catchall_4d
    move-exception v1

    goto :goto_6d

    :catch_4f
    move-exception v1

    .line 17
    :try_start_50
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjg;->zzf:Lcom/google/android/gms/measurement/internal/zzin;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v2

    const-string v3, "Failed to get user properties; remote exception"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzjg;->zza:Ljava/lang/String;

    .line 19
    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_61
    .catchall {:try_start_50 .. :try_end_61} :catchall_4d

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjg;->zzf:Lcom/google/android/gms/measurement/internal/zzin;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzp()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjg;->zze:Lcom/google/android/gms/internal/measurement/zzs;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzko;->zza(Lcom/google/android/gms/internal/measurement/zzs;Landroid/os/Bundle;)V

    return-void

    .line 22
    :goto_6d
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjg;->zzf:Lcom/google/android/gms/measurement/internal/zzin;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzp()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjg;->zze:Lcom/google/android/gms/internal/measurement/zzs;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzko;->zza(Lcom/google/android/gms/internal/measurement/zzs;Landroid/os/Bundle;)V

    .line 23
    throw v1
.end method
