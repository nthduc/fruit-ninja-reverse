.class public final Lcom/google/android/gms/internal/ads/zzdps;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Lcom/google/android/gms/internal/ads/zzayr;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzhgo:Lcom/google/android/gms/internal/ads/zzdpp;

.field private final zzhgq:Lcom/google/android/gms/internal/ads/zzeph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzdpn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdpp;Lcom/google/android/gms/internal/ads/zzeph;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdpp;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzdpn;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdps;->zzhgo:Lcom/google/android/gms/internal/ads/zzdpp;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdps;->zzhgq:Lcom/google/android/gms/internal/ads/zzeph;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzdpp;Lcom/google/android/gms/internal/ads/zzdpn;)Lcom/google/android/gms/internal/ads/zzayr;
    .registers 2

    .line 7
    iget-object p0, p1, Lcom/google/android/gms/internal/ads/zzdpn;->zzdzr:Lcom/google/android/gms/internal/ads/zzayr;

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 8
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzayr;

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzdpp;Lcom/google/android/gms/internal/ads/zzeph;)Lcom/google/android/gms/internal/ads/zzdps;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdpp;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzdpn;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzdps;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdps;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdps;-><init>(Lcom/google/android/gms/internal/ads/zzdpp;Lcom/google/android/gms/internal/ads/zzeph;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdps;->zzhgo:Lcom/google/android/gms/internal/ads/zzdpp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdps;->zzhgq:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdpn;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdps;->zza(Lcom/google/android/gms/internal/ads/zzdpp;Lcom/google/android/gms/internal/ads/zzdpn;)Lcom/google/android/gms/internal/ads/zzayr;

    move-result-object v0

    return-object v0
.end method
