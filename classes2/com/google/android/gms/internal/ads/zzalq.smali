.class final synthetic Lcom/google/android/gms/internal/ads/zzalq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdif:Lcom/google/android/gms/internal/ads/zzaln;

.field private final zzdig:Lcom/google/android/gms/internal/ads/zzaki;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaln;Lcom/google/android/gms/internal/ads/zzaki;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalq;->zzdif:Lcom/google/android/gms/internal/ads/zzaln;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzalq;->zzdig:Lcom/google/android/gms/internal/ads/zzaki;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalq;->zzdif:Lcom/google/android/gms/internal/ads/zzaln;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzalq;->zzdig:Lcom/google/android/gms/internal/ads/zzaki;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaln;->zzdie:Lcom/google/android/gms/internal/ads/zzalm;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzalm;->zza(Lcom/google/android/gms/internal/ads/zzalm;)Lcom/google/android/gms/internal/ads/zzbad;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbad;->zzh(Ljava/lang/Object;)V

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaki;->destroy()V

    return-void
.end method
