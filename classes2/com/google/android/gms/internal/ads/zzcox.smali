.class public final Lcom/google/android/gms/internal/ads/zzcox;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Lcom/google/android/gms/internal/ads/zzcpt;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzesu:Lcom/google/android/gms/internal/ads/zzeph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzeph;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcox;->zzesu:Lcom/google/android/gms/internal/ads/zzeph;

    return-void
.end method

.method public static zzad(Lcom/google/android/gms/internal/ads/zzeph;)Lcom/google/android/gms/internal/ads/zzcox;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzcox;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcox;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcox;-><init>(Lcom/google/android/gms/internal/ads/zzeph;)V

    return-object v0
.end method

.method public static zzcg(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcpt;
    .registers 2

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcpt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcpt;-><init>(Landroid/content/Context;)V

    const-string p0, "Cannot return null from a non-@Nullable @Provides method"

    .line 7
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzcpt;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcox;->zzesu:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcox;->zzcg(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcpt;

    move-result-object v0

    return-object v0
.end method
