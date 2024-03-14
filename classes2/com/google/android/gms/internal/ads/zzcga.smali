.class final synthetic Lcom/google/android/gms/internal/ads/zzcga;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbhu;


# instance fields
.field private final zzeei:Ljava/util/Map;

.field private final zzgcb:Lcom/google/android/gms/internal/ads/zzcfu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcfu;Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcga;->zzgcb:Lcom/google/android/gms/internal/ads/zzcfu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcga;->zzeei:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zzai(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcga;->zzgcb:Lcom/google/android/gms/internal/ads/zzcfu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcga;->zzeei:Ljava/util/Map;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcfu;->zzb(Ljava/util/Map;Z)V

    return-void
.end method
