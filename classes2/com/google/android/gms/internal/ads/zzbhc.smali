.class final synthetic Lcom/google/android/gms/internal/ads/zzbhc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzeei:Ljava/util/Map;

.field private final zzepy:Lcom/google/android/gms/internal/ads/zzbhd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbhd;Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhc;->zzepy:Lcom/google/android/gms/internal/ads/zzbhd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbhc;->zzeei:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhc;->zzepy:Lcom/google/android/gms/internal/ads/zzbhd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhc;->zzeei:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbhd;->zzk(Ljava/util/Map;)V

    return-void
.end method
