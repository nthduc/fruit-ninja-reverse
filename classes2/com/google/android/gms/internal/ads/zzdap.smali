.class final synthetic Lcom/google/android/gms/internal/ads/zzdap;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzguc:Lcom/google/android/gms/internal/ads/zzdaq;

.field private final zzgud:Ljava/util/List;

.field private final zzgue:Lcom/google/android/gms/dynamic/IObjectWrapper;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdaq;Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdap;->zzguc:Lcom/google/android/gms/internal/ads/zzdaq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdap;->zzgud:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdap;->zzgue:Lcom/google/android/gms/dynamic/IObjectWrapper;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdap;->zzguc:Lcom/google/android/gms/internal/ads/zzdaq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdap;->zzgud:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdap;->zzgue:Lcom/google/android/gms/dynamic/IObjectWrapper;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdaq;->zza(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
