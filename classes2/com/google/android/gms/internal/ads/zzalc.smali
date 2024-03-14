.class final Lcom/google/android/gms/internal/ads/zzalc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzdhr:Lcom/google/android/gms/internal/ads/zzaki;

.field private final synthetic zzdht:Lcom/google/android/gms/internal/ads/zzakr;

.field private final synthetic zzdhu:Lcom/google/android/gms/internal/ads/zzalm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzakr;Lcom/google/android/gms/internal/ads/zzalm;Lcom/google/android/gms/internal/ads/zzaki;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzdht:Lcom/google/android/gms/internal/ads/zzakr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzdhu:Lcom/google/android/gms/internal/ads/zzalm;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzdhr:Lcom/google/android/gms/internal/ads/zzaki;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzdht:Lcom/google/android/gms/internal/ads/zzakr;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakr;->zza(Lcom/google/android/gms/internal/ads/zzakr;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzdhu:Lcom/google/android/gms/internal/ads/zzalm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbcn;->getStatus()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_34

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzdhu:Lcom/google/android/gms/internal/ads/zzalm;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbcn;->getStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    goto :goto_34

    .line 6
    :cond_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzdhu:Lcom/google/android/gms/internal/ads/zzalm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbcn;->reject()V

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbbz;->zzeet:Lcom/google/android/gms/internal/ads/zzdzb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzdhr:Lcom/google/android/gms/internal/ads/zzaki;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzalb;->zzb(Lcom/google/android/gms/internal/ads/zzaki;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzdzb;->execute(Ljava/lang/Runnable;)V

    const-string v1, "Could not receive loaded message in a timely manner. Rejecting."

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    .line 9
    monitor-exit v0

    return-void

    .line 5
    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    :catchall_36
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_36

    throw v1
.end method
