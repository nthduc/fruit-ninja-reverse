.class final synthetic Lcom/google/android/gms/internal/ads/zzdde;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzgwc:Lcom/google/android/gms/internal/ads/zzddf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzddf;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdde;->zzgwc:Lcom/google/android/gms/internal/ads/zzddf;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdde;->zzgwc:Lcom/google/android/gms/internal/ads/zzddf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzddf;->zzarn()Lcom/google/android/gms/internal/ads/zzddc;

    move-result-object v0

    return-object v0
.end method
