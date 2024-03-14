.class public final Lcom/google/android/gms/internal/ads/zzcpy;
.super Lcom/google/android/gms/internal/ads/zzasz;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final synthetic zzgkj:Lcom/google/android/gms/internal/ads/zzcpv;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzcpv;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpy;->zzgkj:Lcom/google/android/gms/internal/ads/zzcpv;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzasz;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzazy;)V
    .registers 5

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpy;->zzgkj:Lcom/google/android/gms/internal/ads/zzcpv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcpv;->zzdja:Lcom/google/android/gms/internal/ads/zzbcg;

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbab;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzazy;->zzacm:Ljava/lang/String;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzazy;->errorCode:I

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzbab;-><init>(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final zzb(Landroid/os/ParcelFileDescriptor;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpy;->zzgkj:Lcom/google/android/gms/internal/ads/zzcpv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcpv;->zzdja:Lcom/google/android/gms/internal/ads/zzbcg;

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->set(Ljava/lang/Object;)Z

    return-void
.end method
