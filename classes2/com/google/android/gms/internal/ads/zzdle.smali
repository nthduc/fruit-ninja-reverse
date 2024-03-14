.class public final Lcom/google/android/gms/internal/ads/zzdle;
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
        "Lcom/google/android/gms/internal/ads/zzdli<",
        "TAdT;>;>;"
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzhbu:Lcom/google/android/gms/internal/ads/zzdpz;

.field private zzhbv:Lcom/google/android/gms/internal/ads/zzdyr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdyr<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdpz;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdlj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdlj;-><init>(Lcom/google/android/gms/internal/ads/zzdle;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdle;->zzhbv:Lcom/google/android/gms/internal/ads/zzdyr;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdle;->zzhbu:Lcom/google/android/gms/internal/ads/zzdpz;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdle;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdlw;Lcom/google/android/gms/internal/ads/zzdlx;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdlw;",
            "Lcom/google/android/gms/internal/ads/zzdlx<",
            "TR;>;)",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzdli<",
            "TAdT;>;>;"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdlp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdle;->zzhbu:Lcom/google/android/gms/internal/ads/zzdpz;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzdlw;->zzhcf:Lcom/google/android/gms/internal/ads/zzdlu;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdle;->executor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2, p2, v3}, Lcom/google/android/gms/internal/ads/zzdlp;-><init>(Lcom/google/android/gms/internal/ads/zzdpz;Lcom/google/android/gms/internal/ads/zzdlu;Lcom/google/android/gms/internal/ads/zzdlx;Ljava/util/concurrent/Executor;)V

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlp;->zzata()Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyl;->zzg(Lcom/google/android/gms/internal/ads/zzdzc;)Lcom/google/android/gms/internal/ads/zzdyl;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdlh;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdlh;-><init>(Lcom/google/android/gms/internal/ads/zzdle;Lcom/google/android/gms/internal/ads/zzdlw;Lcom/google/android/gms/internal/ads/zzdlx;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdle;->executor:Ljava/util/concurrent/Executor;

    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdyl;->zzb(Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdyl;

    move-result-object p1

    const-class p2, Ljava/lang/Exception;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdlg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdlg;-><init>(Lcom/google/android/gms/internal/ads/zzdle;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdle;->executor:Ljava/util/concurrent/Executor;

    .line 10
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzdyl;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdvu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdyl;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzdlw;Lcom/google/android/gms/internal/ads/zzdlx;Lcom/google/android/gms/internal/ads/zzdlt;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzdlt;->zzhbs:Lcom/google/android/gms/internal/ads/zzdqj;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzdlt;->zzgkg:Lcom/google/android/gms/internal/ads/zzatc;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 16
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdle;->zzhbu:Lcom/google/android/gms/internal/ads/zzdpz;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzdpz;->zza(Lcom/google/android/gms/internal/ads/zzdqj;)Lcom/google/android/gms/internal/ads/zzdqk;

    move-result-object v2

    goto :goto_f

    :cond_e
    move-object v2, v1

    :goto_f
    if-nez v0, :cond_16

    .line 20
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1

    :cond_16
    if-eqz v2, :cond_35

    if-eqz p3, :cond_35

    .line 22
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdlw;->zzhcf:Lcom/google/android/gms/internal/ads/zzdlu;

    .line 23
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzdlx;->zzc(Lcom/google/android/gms/internal/ads/zzdlu;)Lcom/google/android/gms/internal/ads/zzbtq;

    move-result-object p1

    .line 24
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbtq;->zzaey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbtn;

    .line 25
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbtn;->zzaev()Lcom/google/android/gms/internal/ads/zzbrl;

    move-result-object p1

    .line 26
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzbrl;->zzc(Lcom/google/android/gms/internal/ads/zzatc;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdle;->zzhbv:Lcom/google/android/gms/internal/ads/zzdyr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdle;->executor:Ljava/util/concurrent/Executor;

    .line 27
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdyr;Ljava/util/concurrent/Executor;)V

    .line 28
    :cond_35
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdli;

    invoke-direct {p1, v0, p3, v2}, Lcom/google/android/gms/internal/ads/zzdli;-><init>(Lcom/google/android/gms/internal/ads/zzdqj;Lcom/google/android/gms/internal/ads/zzatc;Lcom/google/android/gms/internal/ads/zzdqk;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zzasv()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
