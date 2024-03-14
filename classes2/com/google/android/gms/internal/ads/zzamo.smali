.class final synthetic Lcom/google/android/gms/internal/ads/zzamo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvu;


# instance fields
.field private final zzdgt:Ljava/lang/String;

.field private final zzdgv:Lcom/google/android/gms/internal/ads/zzahq;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzdgt:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzdgv:Lcom/google/android/gms/internal/ads/zzahq;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzdgt:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzdgv:Lcom/google/android/gms/internal/ads/zzahq;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzalp;

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzalp;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    return-object p1
.end method
