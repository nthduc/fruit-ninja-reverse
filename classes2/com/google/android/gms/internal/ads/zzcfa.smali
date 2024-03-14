.class public final Lcom/google/android/gms/internal/ads/zzcfa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Lcom/google/android/gms/internal/ads/zzcei;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgar:Lcom/google/android/gms/internal/ads/zzceu;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzceu;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfa;->zzgar:Lcom/google/android/gms/internal/ads/zzceu;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzceu;)Lcom/google/android/gms/internal/ads/zzcfa;
    .registers 2

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcfa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcfa;-><init>(Lcom/google/android/gms/internal/ads/zzceu;)V

    return-object v0
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzceu;)Lcom/google/android/gms/internal/ads/zzcei;
    .registers 2

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzceu;->zzamy()Lcom/google/android/gms/internal/ads/zzcei;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzcei;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfa;->zzgar:Lcom/google/android/gms/internal/ads/zzceu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcfa;->zzc(Lcom/google/android/gms/internal/ads/zzceu;)Lcom/google/android/gms/internal/ads/zzcei;

    move-result-object v0

    return-object v0
.end method
