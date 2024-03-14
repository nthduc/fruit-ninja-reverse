.class public final Lcom/google/android/gms/internal/ads/zzccy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Lcom/google/android/gms/internal/ads/zzccw;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfxk:Lcom/google/android/gms/internal/ads/zzccw;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzccw;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccy;->zzfxk:Lcom/google/android/gms/internal/ads/zzccw;

    return-void
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzccw;)Lcom/google/android/gms/internal/ads/zzccy;
    .registers 2

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzccy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzccy;-><init>(Lcom/google/android/gms/internal/ads/zzccw;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccy;->zzfxk:Lcom/google/android/gms/internal/ads/zzccw;

    if-eqz v0, :cond_d

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzccw;

    return-object v0

    :cond_d
    const/4 v0, 0x0

    throw v0
.end method
