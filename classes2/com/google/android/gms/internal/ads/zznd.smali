.class final Lcom/google/android/gms/internal/ads/zznd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zznc;


# instance fields
.field private final synthetic zzbfc:I

.field private final synthetic zzbfd:Lcom/google/android/gms/internal/ads/zzne;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzne;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznd;->zzbfd:Lcom/google/android/gms/internal/ads/zzne;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zznd;->zzbfc:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzhy;Ljava/lang/Object;)V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznd;->zzbfd:Lcom/google/android/gms/internal/ads/zzne;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zznd;->zzbfc:I

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzne;->zza(Lcom/google/android/gms/internal/ads/zzne;ILcom/google/android/gms/internal/ads/zzhy;Ljava/lang/Object;)V

    return-void
.end method
