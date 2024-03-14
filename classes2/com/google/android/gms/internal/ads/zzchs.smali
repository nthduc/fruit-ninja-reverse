.class public final Lcom/google/android/gms/internal/ads/zzchs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzfoc:Ljava/util/concurrent/Executor;

.field private final zzfxz:Lcom/google/android/gms/internal/ads/zzcae;

.field private final zzgdy:Lcom/google/android/gms/internal/ads/zzbnd;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbnd;Lcom/google/android/gms/internal/ads/zzcae;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchs;->zzfoc:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzchs;->zzfxz:Lcom/google/android/gms/internal/ads/zzcae;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzchs;->zzgdy:Lcom/google/android/gms/internal/ads/zzbnd;

    return-void
.end method


# virtual methods
.method final synthetic zzf(Lcom/google/android/gms/internal/ads/zzbgj;Ljava/util/Map;)V
    .registers 3

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchs;->zzgdy:Lcom/google/android/gms/internal/ads/zzbnd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbnd;->disable()V

    return-void
.end method

.method final synthetic zzg(Lcom/google/android/gms/internal/ads/zzbgj;Ljava/util/Map;)V
    .registers 3

    .line 18
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchs;->zzgdy:Lcom/google/android/gms/internal/ads/zzbnd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbnd;->enable()V

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzbgj;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchs;->zzfxz:Lcom/google/android/gms/internal/ads/zzcae;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcae;->zzv(Landroid/view/View;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchs;->zzfxz:Lcom/google/android/gms/internal/ads/zzcae;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzchr;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzchr;-><init>(Lcom/google/android/gms/internal/ads/zzbgj;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzchs;->zzfoc:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbyr;->zza(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchs;->zzfxz:Lcom/google/android/gms/internal/ads/zzcae;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzchu;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzchu;-><init>(Lcom/google/android/gms/internal/ads/zzbgj;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzchs;->zzfoc:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbyr;->zza(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchs;->zzfxz:Lcom/google/android/gms/internal/ads/zzcae;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchs;->zzgdy:Lcom/google/android/gms/internal/ads/zzbnd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzchs;->zzfoc:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbyr;->zza(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchs;->zzgdy:Lcom/google/android/gms/internal/ads/zzbnd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbnd;->zzg(Lcom/google/android/gms/internal/ads/zzbgj;)V

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcht;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcht;-><init>(Lcom/google/android/gms/internal/ads/zzchs;)V

    const-string v1, "/trackActiveViewUnit"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzchw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzchw;-><init>(Lcom/google/android/gms/internal/ads/zzchs;)V

    const-string v1, "/untrackActiveViewUnit"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    return-void
.end method
