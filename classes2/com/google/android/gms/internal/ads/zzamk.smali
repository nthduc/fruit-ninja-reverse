.class public final Lcom/google/android/gms/internal/ads/zzamk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private zzdjb:Lcom/google/android/gms/internal/ads/zzakr;

.field private zzdjc:Lcom/google/android/gms/internal/ads/zzdzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzalp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzakr;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamk;->zzdjb:Lcom/google/android/gms/internal/ads/zzakr;

    return-void
.end method

.method private final zztq()V
    .registers 5

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamk;->zzdjc:Lcom/google/android/gms/internal/ads/zzdzc;

    if-nez v0, :cond_1f

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbcg;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamk;->zzdjc:Lcom/google/android/gms/internal/ads/zzdzc;

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamk;->zzdjb:Lcom/google/android/gms/internal/ads/zzakr;

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzakr;->zzb(Lcom/google/android/gms/internal/ads/zzeg;)Lcom/google/android/gms/internal/ads/zzali;

    move-result-object v1

    .line 11
    new-instance v2, Lcom/google/android/gms/internal/ads/zzamj;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzamj;-><init>(Lcom/google/android/gms/internal/ads/zzbcg;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzamm;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/zzamm;-><init>(Lcom/google/android/gms/internal/ads/zzbcg;)V

    .line 12
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbcn;->zza(Lcom/google/android/gms/internal/ads/zzbck;Lcom/google/android/gms/internal/ads/zzbci;)V

    :cond_1f
    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaly;Lcom/google/android/gms/internal/ads/zzalv;)Lcom/google/android/gms/internal/ads/zzamn;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaly<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/zzalv<",
            "TO;>;)",
            "Lcom/google/android/gms/internal/ads/zzamn<",
            "TI;TO;>;"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzamk;->zztq()V

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/zzamn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamk;->zzdjc:Lcom/google/android/gms/internal/ads/zzdzc;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzamn;-><init>(Lcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaly;Lcom/google/android/gms/internal/ads/zzalv;)V

    return-object v0
.end method

.method public final zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzahq<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzalp;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzamk;->zztq()V

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamk;->zzdjc:Lcom/google/android/gms/internal/ads/zzdzc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaml;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzaml;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 18
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeu:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 19
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamk;->zzdjc:Lcom/google/android/gms/internal/ads/zzdzc;

    return-void
.end method

.method public final zzd(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzahq<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzalp;",
            ">;)V"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamk;->zzdjc:Lcom/google/android/gms/internal/ads/zzdzc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzamo;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzamo;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 22
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeu:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 23
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdvu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamk;->zzdjc:Lcom/google/android/gms/internal/ads/zzdzc;

    return-void
.end method
