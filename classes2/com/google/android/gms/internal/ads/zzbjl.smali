.class public final Lcom/google/android/gms/internal/ads/zzbjl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Lcom/google/android/gms/internal/ads/zzbbx;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzesn:Lcom/google/android/gms/internal/ads/zzbja;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbja;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjl;->zzesn:Lcom/google/android/gms/internal/ads/zzbja;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzbja;)Lcom/google/android/gms/internal/ads/zzbbx;
    .registers 2

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbja;->zzaed()Lcom/google/android/gms/internal/ads/zzbbx;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbx;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjl;->zzesn:Lcom/google/android/gms/internal/ads/zzbja;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbjl;->zzb(Lcom/google/android/gms/internal/ads/zzbja;)Lcom/google/android/gms/internal/ads/zzbbx;

    move-result-object v0

    return-object v0
.end method
