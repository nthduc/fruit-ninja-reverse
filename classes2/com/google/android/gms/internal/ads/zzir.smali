.class final Lcom/google/android/gms/internal/ads/zzir;
.super Ljava/lang/Thread;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final synthetic zzalx:Landroid/media/AudioTrack;

.field private final synthetic zzaly:Lcom/google/android/gms/internal/ads/zzio;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzio;Landroid/media/AudioTrack;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzir;->zzaly:Lcom/google/android/gms/internal/ads/zzio;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzir;->zzalx:Landroid/media/AudioTrack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzir;->zzalx:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzir;->zzalx:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_14

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzir;->zzaly:Lcom/google/android/gms/internal/ads/zzio;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzio;->zza(Lcom/google/android/gms/internal/ads/zzio;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void

    :catchall_14
    move-exception v0

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzir;->zzaly:Lcom/google/android/gms/internal/ads/zzio;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzio;->zza(Lcom/google/android/gms/internal/ads/zzio;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 7
    throw v0
.end method
