.class public final Lcom/google/android/gms/internal/ads/zzdku;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdlv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/internal/ads/zzbtn<",
        "TAdT;>;AdT:",
        "Lcom/google/android/gms/internal/ads/zzbqo;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdlv<",
        "TR;",
        "Lcom/google/android/gms/internal/ads/zzdqk<",
        "TAdT;>;>;"
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private zzhbc:Lcom/google/android/gms/internal/ads/zzbtn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdze;->zzayh()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdku;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdlw;Lcom/google/android/gms/internal/ads/zzdlx;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdlw;",
            "Lcom/google/android/gms/internal/ads/zzdlx<",
            "TR;>;)",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzdqk<",
            "TAdT;>;>;"
        }
    .end annotation

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdlw;->zzhcf:Lcom/google/android/gms/internal/ads/zzdlu;

    .line 5
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzdlx;->zzc(Lcom/google/android/gms/internal/ads/zzdlu;)Lcom/google/android/gms/internal/ads/zzbtq;

    move-result-object p2

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdmd;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdmd;-><init>(Z)V

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzbtq;->zza(Lcom/google/android/gms/internal/ads/zzdmd;)Lcom/google/android/gms/internal/ads/zzbtq;

    .line 7
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbtq;->zzaey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzbtn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdku;->zzhbc:Lcom/google/android/gms/internal/ads/zzbtn;

    .line 8
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdku;->zzhbc:Lcom/google/android/gms/internal/ads/zzbtn;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbtn;->zzaev()Lcom/google/android/gms/internal/ads/zzbrl;

    move-result-object p2

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdqk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdqk;-><init>()V

    .line 10
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzdlw;->zzhce:Lcom/google/android/gms/internal/ads/zzatc;

    if-eqz v1, :cond_2d

    .line 11
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdlw;->zzhce:Lcom/google/android/gms/internal/ads/zzatc;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbrl;->zza(Lcom/google/android/gms/internal/ads/zzatc;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    goto :goto_31

    .line 12
    :cond_2d
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbrl;->zzajg()Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    .line 13
    :goto_31
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyl;->zzg(Lcom/google/android/gms/internal/ads/zzdzc;)Lcom/google/android/gms/internal/ads/zzdyl;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdkx;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzdkx;-><init>(Lcom/google/android/gms/internal/ads/zzdku;Lcom/google/android/gms/internal/ads/zzdqk;Lcom/google/android/gms/internal/ads/zzbrl;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdku;->executor:Ljava/util/concurrent/Executor;

    .line 14
    invoke-virtual {p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzdyl;->zzb(Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdyl;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdkw;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzdkw;-><init>(Lcom/google/android/gms/internal/ads/zzdqk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdku;->executor:Ljava/util/concurrent/Executor;

    .line 15
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdyl;->zza(Lcom/google/android/gms/internal/ads/zzdvu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdyl;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzasv()Ljava/lang/Object;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdku;->zzhbc:Lcom/google/android/gms/internal/ads/zzbtn;

    return-object v0
.end method
