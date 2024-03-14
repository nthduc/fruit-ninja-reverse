.class final Lcom/google/android/gms/internal/ads/zzcvx;
.super Lcom/google/android/gms/internal/ads/zzape;
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

.field private final synthetic zzgps:Lcom/google/android/gms/internal/ads/zzcvv;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcvv;Lcom/google/android/gms/internal/ads/zzctc;)V
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
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvx;->zzgps:Lcom/google/android/gms/internal/ads/zzcvv;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzape;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvx;->zzgoq:Lcom/google/android/gms/internal/ads/zzctc;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcvv;Lcom/google/android/gms/internal/ads/zzctc;Lcom/google/android/gms/internal/ads/zzcvy;)V
    .registers 4

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcvx;-><init>(Lcom/google/android/gms/internal/ads/zzcvv;Lcom/google/android/gms/internal/ads/zzctc;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzanu;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvx;->zzgps:Lcom/google/android/gms/internal/ads/zzcvv;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcvv;->zza(Lcom/google/android/gms/internal/ads/zzcvv;Lcom/google/android/gms/internal/ads/zzanu;)Lcom/google/android/gms/internal/ads/zzanu;

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvx;->zzgoq:Lcom/google/android/gms/internal/ads/zzctc;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzctc;->zzgns:Lcom/google/android/gms/internal/ads/zzbvp;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcuu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcuu;->onAdLoaded()V

    return-void
.end method

.method public final zzdq(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvx;->zzgoq:Lcom/google/android/gms/internal/ads/zzctc;

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

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvx;->zzgoq:Lcom/google/android/gms/internal/ads/zzctc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzctc;->zzgns:Lcom/google/android/gms/internal/ads/zzbvp;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcuu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcuu;->zzc(Lcom/google/android/gms/internal/ads/zzva;)V

    return-void
.end method
