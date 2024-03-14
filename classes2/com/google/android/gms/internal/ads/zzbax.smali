.class public final Lcom/google/android/gms/internal/ads/zzbax;
.super Lcom/google/android/gms/internal/ads/zzayl;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final url:Ljava/lang/String;

.field private final zzedh:Lcom/google/android/gms/internal/ads/zzbbu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzayu;->zzs(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcom/google/android/gms/internal/ads/zzbax;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayl;-><init>()V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbu;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzbbu;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzedh:Lcom/google/android/gms/internal/ads/zzbbu;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbax;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzvb()V
    .registers 3

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzedh:Lcom/google/android/gms/internal/ads/zzbbu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbax;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbu;->zzes(Ljava/lang/String;)V

    return-void
.end method
