.class final synthetic Lcom/google/android/gms/internal/ads/zzchq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbhu;


# instance fields
.field private final zzgci:Lcom/google/android/gms/internal/ads/zzbgj;

.field private final zzgdw:Lcom/google/android/gms/internal/ads/zzchj;

.field private final zzgdx:Lcom/google/android/gms/internal/ads/zzbch;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzchj;Lcom/google/android/gms/internal/ads/zzbgj;Lcom/google/android/gms/internal/ads/zzbch;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchq;->zzgdw:Lcom/google/android/gms/internal/ads/zzchj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzchq;->zzgci:Lcom/google/android/gms/internal/ads/zzbgj;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzchq;->zzgdx:Lcom/google/android/gms/internal/ads/zzbch;

    return-void
.end method


# virtual methods
.method public final zzai(Z)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchq;->zzgdw:Lcom/google/android/gms/internal/ads/zzchj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchq;->zzgci:Lcom/google/android/gms/internal/ads/zzbgj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzchq;->zzgdx:Lcom/google/android/gms/internal/ads/zzbch;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzchj;->zza(Lcom/google/android/gms/internal/ads/zzbgj;Lcom/google/android/gms/internal/ads/zzbch;Z)V

    return-void
.end method
