.class final synthetic Lcom/google/android/gms/internal/ads/zzdsb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdya;


# instance fields
.field private final zzhkf:Lcom/google/android/gms/internal/ads/zzdrp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdrp;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsb;->zzhkf:Lcom/google/android/gms/internal/ads/zzdrp;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsb;->zzhkf:Lcom/google/android/gms/internal/ads/zzdrp;

    check-cast p1, Ljava/lang/Throwable;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdrp;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
