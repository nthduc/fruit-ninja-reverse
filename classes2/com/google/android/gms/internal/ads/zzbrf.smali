.class public final Lcom/google/android/gms/internal/ads/zzbrf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Lcom/google/android/gms/internal/ads/zzdnw;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfsf:Lcom/google/android/gms/internal/ads/zzbre;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbre;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbrf;->zzfsf:Lcom/google/android/gms/internal/ads/zzbre;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzbre;)Lcom/google/android/gms/internal/ads/zzbrf;
    .registers 2

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbrf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbrf;-><init>(Lcom/google/android/gms/internal/ads/zzbre;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrf;->zzfsf:Lcom/google/android/gms/internal/ads/zzbre;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbre;->zzaje()Lcom/google/android/gms/internal/ads/zzdnw;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdnw;

    return-object v0
.end method
