.class final Lcom/google/android/gms/internal/ads/zzaim;
.super Lcom/google/android/gms/internal/ads/zzaif;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final synthetic zzbvs:Lcom/google/android/gms/internal/ads/zzbcg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaij;Lcom/google/android/gms/internal/ads/zzbcg;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaim;->zzbvs:Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaif;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/ParcelFileDescriptor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaim;->zzbvs:Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->set(Ljava/lang/Object;)Z

    return-void
.end method
