.class final synthetic Lcom/google/android/gms/internal/ads/zzddt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzgwn:Lcom/google/android/gms/internal/ads/zzddq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzddq;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzddt;->zzgwn:Lcom/google/android/gms/internal/ads/zzddq;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddt;->zzgwn:Lcom/google/android/gms/internal/ads/zzddq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzddq;->zzarp()Lcom/google/android/gms/internal/ads/zzddr;

    move-result-object v0

    return-object v0
.end method
