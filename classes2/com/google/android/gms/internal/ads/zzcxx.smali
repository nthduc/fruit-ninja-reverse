.class final synthetic Lcom/google/android/gms/internal/ads/zzcxx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdrp;


# instance fields
.field private final zzfqn:Lcom/google/android/gms/internal/ads/zzdnv;

.field private final zzgcx:Lcom/google/android/gms/internal/ads/zzdog;

.field private final zzgqx:Lcom/google/android/gms/internal/ads/zzctc;

.field private final zzgrd:Lcom/google/android/gms/internal/ads/zzcxv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcxv;Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzctc;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzgrd:Lcom/google/android/gms/internal/ads/zzcxv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzgcx:Lcom/google/android/gms/internal/ads/zzdog;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzfqn:Lcom/google/android/gms/internal/ads/zzdnv;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzgqx:Lcom/google/android/gms/internal/ads/zzctc;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzgrd:Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzgcx:Lcom/google/android/gms/internal/ads/zzdog;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzfqn:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzgqx:Lcom/google/android/gms/internal/ads/zzctc;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzcxv;->zza(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzctc;Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
