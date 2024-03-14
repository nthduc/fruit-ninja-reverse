.class final synthetic Lcom/google/android/gms/internal/ads/zzdne;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgte:Lcom/google/android/gms/internal/ads/zzva;

.field private final zzhcu:Lcom/google/android/gms/internal/ads/zzdnc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdnc;Lcom/google/android/gms/internal/ads/zzva;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdne;->zzhcu:Lcom/google/android/gms/internal/ads/zzdnc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdne;->zzgte:Lcom/google/android/gms/internal/ads/zzva;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdne;->zzhcu:Lcom/google/android/gms/internal/ads/zzdnc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdne;->zzgte:Lcom/google/android/gms/internal/ads/zzva;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnc;->zzhct:Lcom/google/android/gms/internal/ads/zzdnb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdnb;->zza(Lcom/google/android/gms/internal/ads/zzdnb;)Lcom/google/android/gms/internal/ads/zzdmc;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdmc;->zzk(Lcom/google/android/gms/internal/ads/zzva;)V

    return-void
.end method
