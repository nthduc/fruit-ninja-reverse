.class public final Lcom/google/android/gms/internal/ads/zzamn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdya;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdya<",
        "TI;TO;>;"
    }
.end annotation


# instance fields
.field private final zzdiw:Lcom/google/android/gms/internal/ads/zzalv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzalv<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final zzdix:Lcom/google/android/gms/internal/ads/zzaly;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaly<",
            "TI;>;"
        }
    .end annotation
.end field

.field private final zzdiy:Ljava/lang/String;

.field private final zzdjc:Lcom/google/android/gms/internal/ads/zzdzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzalp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaly;Lcom/google/android/gms/internal/ads/zzalv;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzalp;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaly<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/zzalv<",
            "TO;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzdjc:Lcom/google/android/gms/internal/ads/zzdzc;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzdiy:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzdix:Lcom/google/android/gms/internal/ads/zzaly;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzdiw:Lcom/google/android/gms/internal/ads/zzalv;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzamn;)Lcom/google/android/gms/internal/ads/zzalv;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzdiw:Lcom/google/android/gms/internal/ads/zzalv;

    return-object p0
.end method


# virtual methods
.method final synthetic zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzalp;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbcg;-><init>()V

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzayu;->zzxs()Ljava/lang/String;

    move-result-object v1

    .line 15
    sget-object v2, Lcom/google/android/gms/internal/ads/zzagx;->zzdfg:Lcom/google/android/gms/internal/ads/zzahw;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzamp;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzamp;-><init>(Lcom/google/android/gms/internal/ads/zzamn;Lcom/google/android/gms/internal/ads/zzbcg;)V

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzahw;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahy;)V

    .line 16
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "id"

    .line 17
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzdix:Lcom/google/android/gms/internal/ads/zzaly;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzaly;->zzj(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "args"

    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzdiy:Ljava/lang/String;

    invoke-interface {p2, p1, v2}, Lcom/google/android/gms/internal/ads/zzalp;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "TO;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzdjc:Lcom/google/android/gms/internal/ads/zzdzc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzamq;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzamq;-><init>(Lcom/google/android/gms/internal/ads/zzamn;Ljava/lang/Object;)V

    .line 9
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeu:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 10
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
