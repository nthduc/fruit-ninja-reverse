.class final Lcom/google/android/gms/internal/ads/zzdlp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/internal/ads/zzbtn<",
        "+",
        "Lcom/google/android/gms/internal/ads/zzbqo;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzhbq:Lcom/google/android/gms/internal/ads/zzdlx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdlx<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final zzhbu:Lcom/google/android/gms/internal/ads/zzdpz;

.field private final zzhcb:Lcom/google/android/gms/internal/ads/zzdlu;

.field private zzhcc:Lcom/google/android/gms/internal/ads/zzdlt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdpz;Lcom/google/android/gms/internal/ads/zzdlu;Lcom/google/android/gms/internal/ads/zzdlx;Ljava/util/concurrent/Executor;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdpz;",
            "Lcom/google/android/gms/internal/ads/zzdlu;",
            "Lcom/google/android/gms/internal/ads/zzdlx<",
            "TR;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlp;->zzhbu:Lcom/google/android/gms/internal/ads/zzdpz;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdlp;->zzhcb:Lcom/google/android/gms/internal/ads/zzdlu;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdlp;->zzhbq:Lcom/google/android/gms/internal/ads/zzdlx;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdlp;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdlp;Lcom/google/android/gms/internal/ads/zzdlt;)Lcom/google/android/gms/internal/ads/zzdlt;
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlp;->zzhcc:Lcom/google/android/gms/internal/ads/zzdlt;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdlp;)Lcom/google/android/gms/internal/ads/zzdqj;
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdlp;->zzatb()Lcom/google/android/gms/internal/ads/zzdqj;

    move-result-object p0

    return-object p0
.end method

.method private final zzatb()Lcom/google/android/gms/internal/ads/zzdqj;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlp;->zzhbq:Lcom/google/android/gms/internal/ads/zzdlx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdlp;->zzhcb:Lcom/google/android/gms/internal/ads/zzdlu;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdlx;->zzc(Lcom/google/android/gms/internal/ads/zzdlu;)Lcom/google/android/gms/internal/ads/zzbtq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbtq;->zzaey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbtn;

    .line 25
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbtn;->zzafs()Lcom/google/android/gms/internal/ads/zzdok;

    move-result-object v0

    .line 26
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdok;->zzhfa:Lcom/google/android/gms/internal/ads/zzvg;

    .line 27
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzdok;->zzhfb:Ljava/lang/String;

    .line 28
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdok;->zzhfe:Lcom/google/android/gms/internal/ads/zzvs;

    .line 29
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdlp;->zzhbu:Lcom/google/android/gms/internal/ads/zzdpz;

    invoke-interface {v3, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdpz;->zza(Lcom/google/android/gms/internal/ads/zzvg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvs;)Lcom/google/android/gms/internal/ads/zzdqj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdlp;)Lcom/google/android/gms/internal/ads/zzdlt;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdlp;->zzhcc:Lcom/google/android/gms/internal/ads/zzdlt;

    return-object p0
.end method


# virtual methods
.method public final zzata()Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzdlt;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlp;->zzhcc:Lcom/google/android/gms/internal/ads/zzdlt;

    if-eqz v0, :cond_9

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0

    .line 10
    :cond_9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzada;->zzdca:Lcom/google/android/gms/internal/ads/zzaci;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaci;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdlt;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdlp;->zzatb()Lcom/google/android/gms/internal/ads/zzdqj;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzdlt;-><init>(Lcom/google/android/gms/internal/ads/zzatc;Lcom/google/android/gms/internal/ads/zzdqj;Lcom/google/android/gms/internal/ads/zzdlr;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlp;->zzhcc:Lcom/google/android/gms/internal/ads/zzdlt;

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlp;->zzhcc:Lcom/google/android/gms/internal/ads/zzdlt;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    goto :goto_73

    .line 13
    :cond_2a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlp;->zzhbq:Lcom/google/android/gms/internal/ads/zzdlx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdlp;->zzhcb:Lcom/google/android/gms/internal/ads/zzdlu;

    .line 14
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdlx;->zzc(Lcom/google/android/gms/internal/ads/zzdlu;)Lcom/google/android/gms/internal/ads/zzbtq;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdlf;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdlp;->zzhbu:Lcom/google/android/gms/internal/ads/zzdpz;

    .line 15
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdpz;->zzaty()Lcom/google/android/gms/internal/ads/zzdqg;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdqg;->zzhib:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzdlf;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbtq;->zza(Lcom/google/android/gms/internal/ads/zzdlf;)Lcom/google/android/gms/internal/ads/zzbtq;

    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbtq;->zzaey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbtn;

    .line 18
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbtn;->zzaev()Lcom/google/android/gms/internal/ads/zzbrl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdlp;->zzhbu:Lcom/google/android/gms/internal/ads/zzdpz;

    .line 19
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdpz;->zzaty()Lcom/google/android/gms/internal/ads/zzdqg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbrl;->zza(Lcom/google/android/gms/internal/ads/zzdqg;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyl;->zzg(Lcom/google/android/gms/internal/ads/zzdzc;)Lcom/google/android/gms/internal/ads/zzdyl;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdlq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdlq;-><init>(Lcom/google/android/gms/internal/ads/zzdlp;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdlp;->executor:Ljava/util/concurrent/Executor;

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdyl;->zza(Lcom/google/android/gms/internal/ads/zzdvu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdyl;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/ads/zzcqm;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdlr;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzdlr;-><init>(Lcom/google/android/gms/internal/ads/zzdlp;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdlp;->executor:Ljava/util/concurrent/Executor;

    .line 22
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdyl;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdvu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdyl;

    move-result-object v0

    .line 23
    :goto_73
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdlo;->zzdwz:Lcom/google/android/gms/internal/ads/zzdvu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdlp;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdvu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0
.end method
