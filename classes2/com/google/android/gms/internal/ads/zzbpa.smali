.class public final Lcom/google/android/gms/internal/ads/zzbpa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Lcom/google/android/gms/internal/ads/zzdnu;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfqp:Lcom/google/android/gms/internal/ads/zzbot;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbot;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpa;->zzfqp:Lcom/google/android/gms/internal/ads/zzbot;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzbot;)Lcom/google/android/gms/internal/ads/zzdnu;
    .registers 2

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbot;->zzaik()Lcom/google/android/gms/internal/ads/zzdnu;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdnu;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpa;->zzfqp:Lcom/google/android/gms/internal/ads/zzbot;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbpa;->zzc(Lcom/google/android/gms/internal/ads/zzbot;)Lcom/google/android/gms/internal/ads/zzdnu;

    move-result-object v0

    return-object v0
.end method
