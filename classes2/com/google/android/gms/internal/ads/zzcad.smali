.class final synthetic Lcom/google/android/gms/internal/ads/zzcad;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbyt;


# instance fields
.field private final zzfwl:Lcom/google/android/gms/internal/ads/zzqr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzqr;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcad;->zzfwl:Lcom/google/android/gms/internal/ads/zzqr;

    return-void
.end method


# virtual methods
.method public final zzp(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcad;->zzfwl:Lcom/google/android/gms/internal/ads/zzqr;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzqu;

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzqu;->zza(Lcom/google/android/gms/internal/ads/zzqr;)V

    return-void
.end method
