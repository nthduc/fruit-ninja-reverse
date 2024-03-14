.class final Lcom/google/android/gms/internal/ads/zzala;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzahq<",
        "Lcom/google/android/gms/internal/ads/zzalp;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzdhr:Lcom/google/android/gms/internal/ads/zzaki;

.field private final synthetic zzdht:Lcom/google/android/gms/internal/ads/zzakr;

.field private final synthetic zzdhu:Lcom/google/android/gms/internal/ads/zzalm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzakr;Lcom/google/android/gms/internal/ads/zzalm;Lcom/google/android/gms/internal/ads/zzaki;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzala;->zzdht:Lcom/google/android/gms/internal/ads/zzakr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzala;->zzdhu:Lcom/google/android/gms/internal/ads/zzalm;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzala;->zzdhr:Lcom/google/android/gms/internal/ads/zzaki;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 4

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzalp;

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzala;->zzdht:Lcom/google/android/gms/internal/ads/zzakr;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakr;->zza(Lcom/google/android/gms/internal/ads/zzakr;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 4
    :try_start_9
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzala;->zzdhu:Lcom/google/android/gms/internal/ads/zzalm;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbcn;->getStatus()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_42

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzala;->zzdhu:Lcom/google/android/gms/internal/ads/zzalm;

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbcn;->getStatus()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1c

    goto :goto_42

    .line 7
    :cond_1c
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzala;->zzdht:Lcom/google/android/gms/internal/ads/zzakr;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzakr;->zza(Lcom/google/android/gms/internal/ads/zzakr;I)I

    .line 8
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzala;->zzdht:Lcom/google/android/gms/internal/ads/zzakr;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzakr;->zzc(Lcom/google/android/gms/internal/ads/zzakr;)Lcom/google/android/gms/internal/ads/zzbad;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzala;->zzdhr:Lcom/google/android/gms/internal/ads/zzaki;

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzh(Ljava/lang/Object;)V

    .line 9
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzala;->zzdhu:Lcom/google/android/gms/internal/ads/zzalm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzala;->zzdhr:Lcom/google/android/gms/internal/ads/zzaki;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzbcn;->zzm(Ljava/lang/Object;)V

    .line 10
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzala;->zzdht:Lcom/google/android/gms/internal/ads/zzakr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzala;->zzdhu:Lcom/google/android/gms/internal/ads/zzalm;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzakr;->zza(Lcom/google/android/gms/internal/ads/zzakr;Lcom/google/android/gms/internal/ads/zzalm;)Lcom/google/android/gms/internal/ads/zzalm;

    const-string p2, "Successfully loaded JS Engine."

    .line 11
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    .line 12
    monitor-exit p1

    return-void

    .line 6
    :cond_42
    :goto_42
    monitor-exit p1

    return-void

    :catchall_44
    move-exception p2

    .line 12
    monitor-exit p1
    :try_end_46
    .catchall {:try_start_9 .. :try_end_46} :catchall_44

    throw p2
.end method
