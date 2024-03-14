.class final synthetic Lcom/google/android/gms/internal/ads/zzcxq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfqn:Lcom/google/android/gms/internal/ads/zzdnv;

.field private final zzgcx:Lcom/google/android/gms/internal/ads/zzdog;

.field private final zzgqw:Lcom/google/android/gms/internal/ads/zzcxn;

.field private final zzgqx:Lcom/google/android/gms/internal/ads/zzctc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcxn;Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzctc;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxq;->zzgqw:Lcom/google/android/gms/internal/ads/zzcxn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcxq;->zzgcx:Lcom/google/android/gms/internal/ads/zzdog;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcxq;->zzfqn:Lcom/google/android/gms/internal/ads/zzdnv;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcxq;->zzgqx:Lcom/google/android/gms/internal/ads/zzctc;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxq;->zzgqw:Lcom/google/android/gms/internal/ads/zzcxn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcxq;->zzgcx:Lcom/google/android/gms/internal/ads/zzdog;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcxq;->zzfqn:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcxq;->zzgqx:Lcom/google/android/gms/internal/ads/zzctc;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcxn;->zzgqr:Lcom/google/android/gms/internal/ads/zzcxl;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcxl;->zza(Lcom/google/android/gms/internal/ads/zzcxl;Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzctc;)V

    return-void
.end method
