.class final Lcom/google/android/gms/internal/ads/zzwl;
.super Lcom/google/android/gms/internal/ads/zzwn;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzwn<",
        "Lcom/google/android/gms/internal/ads/zzael;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzcij:Lcom/google/android/gms/internal/ads/zzvx;

.field private final synthetic zzciu:Landroid/view/View;

.field private final synthetic zzciv:Ljava/util/HashMap;

.field private final synthetic zzciw:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzvx;Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzcij:Lcom/google/android/gms/internal/ads/zzvx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzciu:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzciv:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzciw:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwn;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzxp;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzciu:Landroid/view/View;

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzciv:Ljava/util/HashMap;

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzciw:Ljava/util/HashMap;

    .line 13
    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    .line 14
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzxp;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzael;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic zzpp()Ljava/lang/Object;
    .registers 3

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzciu:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "native_ad_view_holder_delegate"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzvx;->zzb(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzzv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzzv;-><init>()V

    return-object v0
.end method

.method public final synthetic zzpq()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzcij:Lcom/google/android/gms/internal/ads/zzvx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzvx;->zze(Lcom/google/android/gms/internal/ads/zzvx;)Lcom/google/android/gms/internal/ads/zzagh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzciu:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzciv:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzciw:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzagh;->zzb(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/google/android/gms/internal/ads/zzael;

    move-result-object v0

    return-object v0
.end method
