.class final Lcom/google/android/gms/internal/measurement/zzal;
.super Lcom/google/android/gms/internal/measurement/zzac$zza;
.source "com.google.android.gms:play-services-measurement-sdk-api@@17.4.1"


# instance fields
.field private final synthetic zzc:Lcom/google/android/gms/internal/measurement/zzac;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzac;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzal;->zzc:Lcom/google/android/gms/internal/measurement/zzac;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzac$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzac;)V

    return-void
.end method


# virtual methods
.method final zza()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzal;->zzc:Lcom/google/android/gms/internal/measurement/zzac;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzac;->zzc(Lcom/google/android/gms/internal/measurement/zzac;)Lcom/google/android/gms/internal/measurement/zzr;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zzal;->zza:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzr;->resetAnalyticsData(J)V

    return-void
.end method
