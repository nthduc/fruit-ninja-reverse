.class final synthetic Lcom/google/android/gms/internal/ads/zzcke;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahq;


# instance fields
.field private final zzgci:Lcom/google/android/gms/internal/ads/zzbgj;

.field private final zzgfm:Lcom/google/android/gms/internal/ads/zzcjv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcjv;Lcom/google/android/gms/internal/ads/zzbgj;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcke;->zzgfm:Lcom/google/android/gms/internal/ads/zzcjv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcke;->zzgci:Lcom/google/android/gms/internal/ads/zzbgj;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcke;->zzgfm:Lcom/google/android/gms/internal/ads/zzcjv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcke;->zzgci:Lcom/google/android/gms/internal/ads/zzbgj;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzcjv;->zza(Lcom/google/android/gms/internal/ads/zzbgj;Lcom/google/android/gms/internal/ads/zzbgj;Ljava/util/Map;)V

    return-void
.end method
