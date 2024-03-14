.class final Lcom/google/android/gms/internal/ads/zzaij;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdya;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdya<",
        "Lcom/google/android/gms/internal/ads/zzaii;",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzdfw:Lcom/google/android/gms/internal/ads/zzaic;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaik;Lcom/google/android/gms/internal/ads/zzaic;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaij;->zzdfw:Lcom/google/android/gms/internal/ads/zzaic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaii;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbcg;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaij;->zzdfw:Lcom/google/android/gms/internal/ads/zzaic;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaim;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzaim;-><init>(Lcom/google/android/gms/internal/ads/zzaij;Lcom/google/android/gms/internal/ads/zzbcg;)V

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzaii;->zza(Lcom/google/android/gms/internal/ads/zzaic;Lcom/google/android/gms/internal/ads/zzaig;)V

    return-object v0
.end method
