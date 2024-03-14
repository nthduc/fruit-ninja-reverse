.class public final Lcom/google/android/gms/internal/ads/zzamg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzalt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzalt<",
        "TI;TO;>;"
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final zzdis:Lcom/google/android/gms/internal/ads/zzakr;

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


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzakr;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaly;Lcom/google/android/gms/internal/ads/zzalv;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzakr;",
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
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamg;->zzdis:Lcom/google/android/gms/internal/ads/zzakr;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzamg;->zzdiy:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzamg;->zzdix:Lcom/google/android/gms/internal/ads/zzaly;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzamg;->zzdiw:Lcom/google/android/gms/internal/ads/zzalv;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzamg;)Lcom/google/android/gms/internal/ads/zzalv;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzamg;->zzdiw:Lcom/google/android/gms/internal/ads/zzalv;

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzali;Lcom/google/android/gms/internal/ads/zzalp;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbcg;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzali;",
            "Lcom/google/android/gms/internal/ads/zzalp;",
            "TI;",
            "Lcom/google/android/gms/internal/ads/zzbcg<",
            "TO;>;)V"
        }
    .end annotation

    .line 14
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzayu;->zzxs()Ljava/lang/String;

    move-result-object v0

    .line 15
    sget-object v1, Lcom/google/android/gms/internal/ads/zzagx;->zzdfg:Lcom/google/android/gms/internal/ads/zzahw;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzamh;

    invoke-direct {v2, p0, p1, p4}, Lcom/google/android/gms/internal/ads/zzamh;-><init>(Lcom/google/android/gms/internal/ads/zzamg;Lcom/google/android/gms/internal/ads/zzali;Lcom/google/android/gms/internal/ads/zzbcg;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzahw;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahy;)V

    .line 16
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    .line 17
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "args"

    .line 18
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzamg;->zzdix:Lcom/google/android/gms/internal/ads/zzaly;

    invoke-interface {v2, p3}, Lcom/google/android/gms/internal/ads/zzaly;->zzj(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzamg;->zzdiy:Ljava/lang/String;

    invoke-interface {p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzalp;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    return-void

    :catch_2c
    move-exception p2

    .line 22
    :try_start_2d
    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/ads/zzbcg;->setException(Ljava/lang/Throwable;)Z

    const-string p3, "Unable to invokeJavascript"

    .line 23
    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/zzayp;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_39

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzali;->release()V

    return-void

    :catchall_39
    move-exception p2

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzali;->release()V

    .line 27
    throw p2
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzamg;Lcom/google/android/gms/internal/ads/zzali;Lcom/google/android/gms/internal/ads/zzalp;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbcg;)V
    .registers 5

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzamg;->zza(Lcom/google/android/gms/internal/ads/zzali;Lcom/google/android/gms/internal/ads/zzalp;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbcg;)V

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
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

    .line 28
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzamg;->zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method

.method public final zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "TO;>;"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbcg;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamg;->zzdis:Lcom/google/android/gms/internal/ads/zzakr;

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzakr;->zzb(Lcom/google/android/gms/internal/ads/zzeg;)Lcom/google/android/gms/internal/ads/zzali;

    move-result-object v1

    .line 12
    new-instance v2, Lcom/google/android/gms/internal/ads/zzamf;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(Lcom/google/android/gms/internal/ads/zzamg;Lcom/google/android/gms/internal/ads/zzali;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbcg;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzami;

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzami;-><init>(Lcom/google/android/gms/internal/ads/zzamg;Lcom/google/android/gms/internal/ads/zzbcg;Lcom/google/android/gms/internal/ads/zzali;)V

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzbcn;->zza(Lcom/google/android/gms/internal/ads/zzbck;Lcom/google/android/gms/internal/ads/zzbci;)V

    return-object v0
.end method
