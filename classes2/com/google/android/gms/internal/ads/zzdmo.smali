.class final synthetic Lcom/google/android/gms/internal/ads/zzdmo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdlk;


# instance fields
.field private final zzfvm:Lcom/google/android/gms/internal/ads/zzvp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzvp;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmo;->zzfvm:Lcom/google/android/gms/internal/ads/zzvp;

    return-void
.end method


# virtual methods
.method public final zzq(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmo;->zzfvm:Lcom/google/android/gms/internal/ads/zzvp;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzyi;

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzyi;->zza(Lcom/google/android/gms/internal/ads/zzvp;)V

    return-void
.end method
