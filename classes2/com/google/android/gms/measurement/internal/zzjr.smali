.class final Lcom/google/android/gms/measurement/internal/zzjr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:J

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzjs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjs;J)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjr;->zzb:Lcom/google/android/gms/measurement/internal/zzjs;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzjr;->zza:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjr;->zzb:Lcom/google/android/gms/measurement/internal/zzjs;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzjr;->zza:J

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzjs;->zza(Lcom/google/android/gms/measurement/internal/zzjs;J)V

    return-void
.end method
