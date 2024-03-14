.class public final Lcom/google/android/gms/internal/ads/zzcjs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzany()Lcom/google/android/gms/internal/ads/zzcjs;
    .registers 1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcjr;->zzanx()Lcom/google/android/gms/internal/ads/zzcjs;

    move-result-object v0

    return-object v0
.end method

.method public static zzanz()Ljava/lang/String;
    .registers 2

    const-string v0, "rewarded"

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcjs;->zzanz()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
