.class final synthetic Lcom/google/android/gms/internal/ads/zzdfb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzgwz:Lcom/google/android/gms/internal/ads/zzdey;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdey;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfb;->zzgwz:Lcom/google/android/gms/internal/ads/zzdey;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfb;->zzgwz:Lcom/google/android/gms/internal/ads/zzdey;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdey;->zzars()Lcom/google/android/gms/internal/ads/zzdez;

    move-result-object v0

    return-object v0
.end method
