.class public final Lcom/google/android/gms/internal/ads/zzcyy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzgij:Lcom/google/android/gms/internal/ads/zzcku;

.field private final zzgsc:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaph;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcku;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyy;->zzgsc:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyy;->zzgij:Lcom/google/android/gms/internal/ads/zzcku;

    return-void
.end method


# virtual methods
.method public final zzgo(Ljava/lang/String;)V
    .registers 4

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyy;->zzgij:Lcom/google/android/gms/internal/ads/zzcku;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcku;->zzdk(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaph;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcyy;->zzgsc:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p1

    const-string v0, "Couldn\'t create RTB adapter : "

    .line 9
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzgp(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaph;
    .registers 3
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyy;->zzgsc:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyy;->zzgsc:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaph;

    return-object p1

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method
