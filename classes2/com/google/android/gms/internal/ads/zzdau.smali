.class final synthetic Lcom/google/android/gms/internal/ads/zzdau;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdya;


# instance fields
.field private final zzguc:Lcom/google/android/gms/internal/ads/zzdaq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdaq;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdau;->zzguc:Lcom/google/android/gms/internal/ads/zzdaq;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdau;->zzguc:Lcom/google/android/gms/internal/ads/zzdaq;

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdaq;->zzl(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
