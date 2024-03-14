.class final Lcom/google/android/gms/measurement/internal/zziz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Z

.field private final synthetic zzb:Z

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzaq;

.field private final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzm;

.field private final synthetic zze:Ljava/lang/String;

.field private final synthetic zzf:Lcom/google/android/gms/measurement/internal/zzin;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzin;ZZLcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzm;Ljava/lang/String;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zziz;->zzf:Lcom/google/android/gms/measurement/internal/zzin;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zziz;->zza:Z

    iput-boolean p3, p0, Lcom/google/android/gms/measurement/internal/zziz;->zzb:Z

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zziz;->zzc:Lcom/google/android/gms/measurement/internal/zzaq;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zziz;->zzd:Lcom/google/android/gms/measurement/internal/zzm;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zziz;->zze:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziz;->zzf:Lcom/google/android/gms/measurement/internal/zzin;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzin;->zzd(Lcom/google/android/gms/measurement/internal/zzin;)Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    if-nez v0, :cond_18

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziz;->zzf:Lcom/google/android/gms/measurement/internal/zzin;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    const-string v1, "Discarding data. Failed to send event to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_18
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zziz;->zza:Z

    if-eqz v1, :cond_2c

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zziz;->zzf:Lcom/google/android/gms/measurement/internal/zzin;

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zziz;->zzb:Z

    if-eqz v2, :cond_24

    const/4 v2, 0x0

    goto :goto_26

    :cond_24
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zziz;->zzc:Lcom/google/android/gms/measurement/internal/zzaq;

    :goto_26
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zziz;->zzd:Lcom/google/android/gms/measurement/internal/zzm;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzin;->zza(Lcom/google/android/gms/measurement/internal/zzel;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzm;)V

    goto :goto_5e

    .line 8
    :cond_2c
    :try_start_2c
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zziz;->zze:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zziz;->zzc:Lcom/google/android/gms/measurement/internal/zzaq;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zziz;->zzd:Lcom/google/android/gms/measurement/internal/zzm;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzel;->zza(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzm;)V

    goto :goto_5e

    .line 10
    :cond_3c
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zziz;->zzc:Lcom/google/android/gms/measurement/internal/zzaq;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zziz;->zze:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zziz;->zzf:Lcom/google/android/gms/measurement/internal/zzin;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzet;->zzy()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzel;->zza(Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_4d} :catch_4e

    goto :goto_5e

    :catch_4e
    move-exception v0

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zziz;->zzf:Lcom/google/android/gms/measurement/internal/zzin;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    const-string v2, "Failed to send event to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    :goto_5e
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziz;->zzf:Lcom/google/android/gms/measurement/internal/zzin;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzin;->zze(Lcom/google/android/gms/measurement/internal/zzin;)V

    return-void
.end method
