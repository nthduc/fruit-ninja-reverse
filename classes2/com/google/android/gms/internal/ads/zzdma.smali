.class public final Lcom/google/android/gms/internal/ads/zzdma;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Lcom/google/android/gms/internal/ads/zzdlv<",
        "Lcom/google/android/gms/internal/ads/zzcjj;",
        "Lcom/google/android/gms/internal/ads/zzcjg;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final zzesu:Lcom/google/android/gms/internal/ads/zzeph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final zzeuw:Lcom/google/android/gms/internal/ads/zzeph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzdpw;",
            ">;"
        }
    .end annotation
.end field

.field private final zzeux:Lcom/google/android/gms/internal/ads/zzeph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzdqo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzdpw;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzdqo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdma;->zzesu:Lcom/google/android/gms/internal/ads/zzeph;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdma;->zzeuw:Lcom/google/android/gms/internal/ads/zzeph;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdma;->zzeux:Lcom/google/android/gms/internal/ads/zzeph;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 7

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdma;->zzesu:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdma;->zzeuw:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdpw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdma;->zzeux:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdqo;

    .line 9
    sget-object v3, Lcom/google/android/gms/internal/ads/zzabb;->zzcwr:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v3

    .line 11
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_57

    .line 12
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdku;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzdku;-><init>()V

    .line 13
    sget-object v4, Lcom/google/android/gms/internal/ads/zzdqf;->zzhhp:Lcom/google/android/gms/internal/ads/zzdqf;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzdld;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/ads/zzdld;-><init>(Lcom/google/android/gms/internal/ads/zzdlv;)V

    .line 14
    invoke-virtual {v2, v4, v0, v1, v5}, Lcom/google/android/gms/internal/ads/zzdqo;->zza(Lcom/google/android/gms/internal/ads/zzdqf;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdpw;Lcom/google/android/gms/internal/ads/zzdqv;)Lcom/google/android/gms/internal/ads/zzdqn;

    move-result-object v0

    .line 15
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdkz;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdlm;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdln;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzdln;-><init>()V

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzdlm;-><init>(Lcom/google/android/gms/internal/ads/zzdlv;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdle;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdqn;->zzhbu:Lcom/google/android/gms/internal/ads/zzdpz;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzbbz;->zzeep:Lcom/google/android/gms/internal/ads/zzdzb;

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdle;-><init>(Lcom/google/android/gms/internal/ads/zzdpz;Ljava/util/concurrent/Executor;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdqn;->zzhiu:Lcom/google/android/gms/internal/ads/zzdqs;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbbz;->zzeep:Lcom/google/android/gms/internal/ads/zzdzb;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/android/gms/internal/ads/zzdkz;-><init>(Lcom/google/android/gms/internal/ads/zzdlv;Lcom/google/android/gms/internal/ads/zzdlv;Lcom/google/android/gms/internal/ads/zzdqs;Ljava/util/concurrent/Executor;)V

    goto :goto_5c

    .line 16
    :cond_57
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdln;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzdln;-><init>()V

    :goto_5c
    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 17
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdlv;

    return-object v0
.end method
