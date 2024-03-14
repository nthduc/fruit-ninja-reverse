.class final Lcom/google/android/gms/internal/ads/zzvy;
.super Lcom/google/android/gms/internal/ads/zzwn;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzwn<",
        "Lcom/google/android/gms/internal/ads/zzaqy;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic zzcij:Lcom/google/android/gms/internal/ads/zzvx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzvx;Landroid/app/Activity;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzcij:Lcom/google/android/gms/internal/ads/zzvx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvy;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwn;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzxp;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzxp;->zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzaqy;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic zzpp()Ljava/lang/Object;
    .registers 3

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->val$activity:Landroid/app/Activity;

    const-string v1, "ad_overlay"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzvx;->zzb(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic zzpq()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzcij:Lcom/google/android/gms/internal/ads/zzvx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzvx;->zzg(Lcom/google/android/gms/internal/ads/zzvx;)Lcom/google/android/gms/internal/ads/zzaqz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvy;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaqz;->zzc(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzaqy;

    move-result-object v0

    return-object v0
.end method
