.class final Lcom/google/android/gms/internal/ads/zzale;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbck;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzbck<",
        "Lcom/google/android/gms/internal/ads/zzaki;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzdht:Lcom/google/android/gms/internal/ads/zzakr;

.field private final synthetic zzdhv:Lcom/google/android/gms/internal/ads/zzalm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzakr;Lcom/google/android/gms/internal/ads/zzalm;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzale;->zzdht:Lcom/google/android/gms/internal/ads/zzakr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzale;->zzdhv:Lcom/google/android/gms/internal/ads/zzalm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzh(Ljava/lang/Object;)V
    .registers 4

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaki;

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzale;->zzdht:Lcom/google/android/gms/internal/ads/zzakr;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakr;->zza(Lcom/google/android/gms/internal/ads/zzakr;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 4
    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzale;->zzdht:Lcom/google/android/gms/internal/ads/zzakr;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzakr;->zza(Lcom/google/android/gms/internal/ads/zzakr;I)I

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzale;->zzdht:Lcom/google/android/gms/internal/ads/zzakr;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakr;->zzb(Lcom/google/android/gms/internal/ads/zzakr;)Lcom/google/android/gms/internal/ads/zzalm;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzale;->zzdhv:Lcom/google/android/gms/internal/ads/zzalm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzale;->zzdht:Lcom/google/android/gms/internal/ads/zzakr;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakr;->zzb(Lcom/google/android/gms/internal/ads/zzakr;)Lcom/google/android/gms/internal/ads/zzalm;

    move-result-object v1

    if-eq v0, v1, :cond_2f

    const-string v0, "New JS engine is loaded, marking previous one as destroyable."

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzale;->zzdht:Lcom/google/android/gms/internal/ads/zzakr;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakr;->zzb(Lcom/google/android/gms/internal/ads/zzakr;)Lcom/google/android/gms/internal/ads/zzalm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzalm;->zztm()V

    .line 8
    :cond_2f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzale;->zzdht:Lcom/google/android/gms/internal/ads/zzakr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzale;->zzdhv:Lcom/google/android/gms/internal/ads/zzalm;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzakr;->zza(Lcom/google/android/gms/internal/ads/zzakr;Lcom/google/android/gms/internal/ads/zzalm;)Lcom/google/android/gms/internal/ads/zzalm;

    .line 9
    monitor-exit p1

    return-void

    :catchall_38
    move-exception v0

    monitor-exit p1
    :try_end_3a
    .catchall {:try_start_9 .. :try_end_3a} :catchall_38

    throw v0
.end method
