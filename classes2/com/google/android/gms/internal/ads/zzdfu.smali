.class final synthetic Lcom/google/android/gms/internal/ads/zzdfu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgu;


# instance fields
.field private final zzgxg:Lcom/google/android/gms/internal/ads/zzdfv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdfv;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfu;->zzgxg:Lcom/google/android/gms/internal/ads/zzdfv;

    return-void
.end method


# virtual methods
.method public final zzs(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfu;->zzgxg:Lcom/google/android/gms/internal/ads/zzdfv;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdfv;->zzq(Landroid/os/Bundle;)V

    return-void
.end method
