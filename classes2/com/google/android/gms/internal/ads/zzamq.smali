.class final synthetic Lcom/google/android/gms/internal/ads/zzamq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdya;


# instance fields
.field private final zzdje:Lcom/google/android/gms/internal/ads/zzamn;

.field private final zzdjf:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzamn;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzdje:Lcom/google/android/gms/internal/ads/zzamn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzdjf:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzdje:Lcom/google/android/gms/internal/ads/zzamn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzdjf:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzalp;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzamn;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzalp;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
