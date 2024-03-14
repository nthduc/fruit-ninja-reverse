.class public final Lcom/google/android/gms/internal/ads/zzcos;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Lcom/google/android/gms/internal/ads/zzdzc<",
        "Ljava/lang/String;",
        ">;>;"
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

.field private final zzfqv:Lcom/google/android/gms/internal/ads/zzeph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzdsi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzdsi;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcos;->zzfqv:Lcom/google/android/gms/internal/ads/zzeph;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcos;->zzesu:Lcom/google/android/gms/internal/ads/zzeph;

    return-void
.end method

.method public static zzap(Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;)Lcom/google/android/gms/internal/ads/zzcos;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzdsi;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzcos;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcos;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzcos;-><init>(Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 5

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcos;->zzfqv:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdsi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcos;->zzesu:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkt()Lcom/google/android/gms/internal/ads/zzazd;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzazd;->zzbh(Landroid/content/Context;)Landroid/webkit/CookieManager;

    move-result-object v1

    .line 10
    sget-object v2, Lcom/google/android/gms/internal/ads/zzdsf;->zzhle:Lcom/google/android/gms/internal/ads/zzdsf;

    .line 11
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzdru;->zzu(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdry;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcoo;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzcoo;-><init>(Landroid/webkit/CookieManager;)V

    .line 12
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzdry;->zzc(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    .line 13
    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzdsa;->zza(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v0

    const-class v1, Ljava/lang/Exception;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcon;->zzgjj:Lcom/google/android/gms/internal/ads/zzdrp;

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdsa;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdrp;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsa;->zzavs()Lcom/google/android/gms/internal/ads/zzdrr;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 16
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdzc;

    return-object v0
.end method
