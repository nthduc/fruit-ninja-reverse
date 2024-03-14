.class final synthetic Lcom/google/android/gms/internal/ads/zzdse;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzhkk:Lcom/google/android/gms/internal/ads/zzdsa;

.field private final zzhkl:Lcom/google/android/gms/internal/ads/zzdrr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdsa;Lcom/google/android/gms/internal/ads/zzdrr;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdse;->zzhkk:Lcom/google/android/gms/internal/ads/zzdsa;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdse;->zzhkl:Lcom/google/android/gms/internal/ads/zzdrr;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdse;->zzhkk:Lcom/google/android/gms/internal/ads/zzdsa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdse;->zzhkl:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdsa;->zzhkd:Lcom/google/android/gms/internal/ads/zzdru;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdru;->zzc(Lcom/google/android/gms/internal/ads/zzdru;)Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdsg;->zzb(Lcom/google/android/gms/internal/ads/zzdrr;)V

    return-void
.end method
