.class final Lcom/google/android/gms/internal/measurement/zzdy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@17.4.1"


# instance fields
.field public zza:I

.field public zzb:J

.field public zzc:Ljava/lang/Object;

.field public final zzd:Lcom/google/android/gms/internal/measurement/zzev;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzev;->zza()Lcom/google/android/gms/internal/measurement/zzev;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdy;->zzd:Lcom/google/android/gms/internal/measurement/zzev;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzev;)V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzdy;->zzd:Lcom/google/android/gms/internal/measurement/zzev;

    return-void

    .line 6
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method