.class final Lcom/google/android/gms/internal/ads/zzely;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# static fields
.field private static final zzimi:Lcom/google/android/gms/internal/ads/zzely;


# instance fields
.field private final zzimj:Lcom/google/android/gms/internal/ads/zzemi;

.field private final zzimk:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzemf<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/ads/zzely;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzely;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzely;->zzimi:Lcom/google/android/gms/internal/ads/zzely;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzely;->zzimk:Ljava/util/concurrent/ConcurrentMap;

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/zzela;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzela;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzely;->zzimj:Lcom/google/android/gms/internal/ads/zzemi;

    return-void
.end method

.method public static zzbic()Lcom/google/android/gms/internal/ads/zzely;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzely;->zzimi:Lcom/google/android/gms/internal/ads/zzely;

    return-object v0
.end method


# virtual methods
.method public final zzaw(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzemf;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/ads/zzemf<",
            "TT;>;"
        }
    .end annotation

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzely;->zzh(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzemf;

    move-result-object p1

    return-object p1
.end method

.method public final zzh(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzemf;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/ads/zzemf<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "messageType"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzekb;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzely;->zzimk:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzemf;

    if-nez v1, :cond_28

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzely;->zzimj:Lcom/google/android/gms/internal/ads/zzemi;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzemi;->zzg(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzemf;

    move-result-object v1

    .line 7
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzekb;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "schema"

    .line 8
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzekb;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzely;->zzimk:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzemf;

    if-eqz p1, :cond_28

    move-object v1, p1

    :cond_28
    return-object v1
.end method
