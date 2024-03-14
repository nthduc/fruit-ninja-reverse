.class final synthetic Lcom/google/android/gms/internal/ads/zzawr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaxe;


# instance fields
.field private final zzdgt:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawr;->zzdgt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzbiq;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawr;->zzdgt:Ljava/lang/String;

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbiq;->beginAdUnitExposure(Ljava/lang/String;)V

    return-void
.end method
