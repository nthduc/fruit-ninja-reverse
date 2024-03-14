.class final Lcom/google/android/gms/internal/ads/zzcvk;
.super Lcom/google/android/gms/internal/ads/zzaoz;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private zzgoq:Lcom/google/android/gms/internal/ads/zzctc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzctc<",
            "Lcom/google/android/gms/internal/ads/zzaph;",
            "Lcom/google/android/gms/internal/ads/zzcuu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcvi;Lcom/google/android/gms/internal/ads/zzctc;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzctc<",
            "Lcom/google/android/gms/internal/ads/zzaph;",
            "Lcom/google/android/gms/internal/ads/zzcuu;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaoz;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvk;->zzgoq:Lcom/google/android/gms/internal/ads/zzctc;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcvi;Lcom/google/android/gms/internal/ads/zzctc;Lcom/google/android/gms/internal/ads/zzcvh;)V
    .registers 4

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcvk;-><init>(Lcom/google/android/gms/internal/ads/zzcvi;Lcom/google/android/gms/internal/ads/zzctc;)V

    return-void
.end method


# virtual methods
.method public final zzdq(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvk;->zzgoq:Lcom/google/android/gms/internal/ads/zzctc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzctc;->zzgns:Lcom/google/android/gms/internal/ads/zzbvp;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcuu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcuu;->zzc(ILjava/lang/String;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzva;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvk;->zzgoq:Lcom/google/android/gms/internal/ads/zzctc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzctc;->zzgns:Lcom/google/android/gms/internal/ads/zzbvp;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcuu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcuu;->zzc(Lcom/google/android/gms/internal/ads/zzva;)V

    return-void
.end method

.method public final zzul()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvk;->zzgoq:Lcom/google/android/gms/internal/ads/zzctc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzctc;->zzgns:Lcom/google/android/gms/internal/ads/zzbvp;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcuu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcuu;->onAdLoaded()V

    return-void
.end method
