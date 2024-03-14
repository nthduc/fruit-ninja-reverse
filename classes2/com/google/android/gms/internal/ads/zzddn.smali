.class final synthetic Lcom/google/android/gms/internal/ads/zzddn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgu;


# instance fields
.field private final zzgwf:Lcom/google/android/gms/internal/ads/zzddk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzddk;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzddn;->zzgwf:Lcom/google/android/gms/internal/ads/zzddk;

    return-void
.end method


# virtual methods
.method public final zzs(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddn;->zzgwf:Lcom/google/android/gms/internal/ads/zzddk;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzddk;->zzp(Landroid/os/Bundle;)V

    return-void
.end method
