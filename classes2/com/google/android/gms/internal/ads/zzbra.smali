.class final synthetic Lcom/google/android/gms/internal/ads/zzbra;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdya;


# instance fields
.field private final zzfsa:Lcom/google/android/gms/internal/ads/zzbqv;

.field private final zzfsb:Lcom/google/android/gms/internal/ads/zzdyr;

.field private final zzfsc:Lcom/google/android/gms/internal/ads/zzdzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbqv;Lcom/google/android/gms/internal/ads/zzdyr;Lcom/google/android/gms/internal/ads/zzdzc;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbra;->zzfsa:Lcom/google/android/gms/internal/ads/zzbqv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbra;->zzfsb:Lcom/google/android/gms/internal/ads/zzdyr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbra;->zzfsc:Lcom/google/android/gms/internal/ads/zzdzc;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbra;->zzfsa:Lcom/google/android/gms/internal/ads/zzbqv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbra;->zzfsb:Lcom/google/android/gms/internal/ads/zzdyr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbra;->zzfsc:Lcom/google/android/gms/internal/ads/zzdzc;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbqo;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzbqv;->zza(Lcom/google/android/gms/internal/ads/zzdyr;Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzbqo;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
