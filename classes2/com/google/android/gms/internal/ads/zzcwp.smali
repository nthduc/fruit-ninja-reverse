.class final synthetic Lcom/google/android/gms/internal/ads/zzcwp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdya;


# instance fields
.field private final zzfqn:Lcom/google/android/gms/internal/ads/zzdnv;

.field private final zzgcx:Lcom/google/android/gms/internal/ads/zzdog;

.field private final zzgqe:Lcom/google/android/gms/internal/ads/zzcwq;

.field private final zzgqf:Lcom/google/android/gms/internal/ads/zzcta;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcwq;Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzcta;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwp;->zzgqe:Lcom/google/android/gms/internal/ads/zzcwq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcwp;->zzgcx:Lcom/google/android/gms/internal/ads/zzdog;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcwp;->zzfqn:Lcom/google/android/gms/internal/ads/zzdnv;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcwp;->zzgqf:Lcom/google/android/gms/internal/ads/zzcta;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwp;->zzgqe:Lcom/google/android/gms/internal/ads/zzcwq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcwp;->zzgcx:Lcom/google/android/gms/internal/ads/zzdog;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcwp;->zzfqn:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcwp;->zzgqf:Lcom/google/android/gms/internal/ads/zzcta;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzcwq;->zza(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzcta;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
