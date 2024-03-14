.class public final Lcom/google/android/gms/internal/ads/zzdbl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdya;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdya<",
        "Lcom/google/android/gms/internal/ads/zzatc;",
        "Lcom/google/android/gms/internal/ads/zzdbm;",
        ">;"
    }
.end annotation


# instance fields
.field private executor:Ljava/util/concurrent/Executor;

.field private zzguu:Lcom/google/android/gms/internal/ads/zzcpc;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcpc;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbl;->executor:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdbl;->zzguu:Lcom/google/android/gms/internal/ads/zzcpc;

    return-void
.end method


# virtual methods
.method public final synthetic zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/zzatc;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbl;->zzguu:Lcom/google/android/gms/internal/ads/zzcpc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcpc;->zzg(Lcom/google/android/gms/internal/ads/zzatc;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdbk;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzdbk;-><init>(Lcom/google/android/gms/internal/ads/zzatc;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbl;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
