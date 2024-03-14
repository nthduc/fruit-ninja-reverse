.class final Lcom/google/android/gms/internal/ads/zzamf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbck;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzbck<",
        "Lcom/google/android/gms/internal/ads/zzalp;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzdfq:Lcom/google/android/gms/internal/ads/zzbcg;

.field private final synthetic zzdit:Lcom/google/android/gms/internal/ads/zzali;

.field private final synthetic zzdiu:Ljava/lang/Object;

.field private final synthetic zzdiv:Lcom/google/android/gms/internal/ads/zzamg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzamg;Lcom/google/android/gms/internal/ads/zzali;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbcg;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamf;->zzdiv:Lcom/google/android/gms/internal/ads/zzamg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzamf;->zzdit:Lcom/google/android/gms/internal/ads/zzali;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzamf;->zzdiu:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzamf;->zzdfq:Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzh(Ljava/lang/Object;)V
    .registers 6

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzalp;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamf;->zzdiv:Lcom/google/android/gms/internal/ads/zzamg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamf;->zzdit:Lcom/google/android/gms/internal/ads/zzali;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzamf;->zzdiu:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzamf;->zzdfq:Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzamg;->zza(Lcom/google/android/gms/internal/ads/zzamg;Lcom/google/android/gms/internal/ads/zzali;Lcom/google/android/gms/internal/ads/zzalp;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbcg;)V

    return-void
.end method
