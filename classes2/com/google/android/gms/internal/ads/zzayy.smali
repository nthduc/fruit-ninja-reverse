.class final Lcom/google/android/gms/internal/ads/zzayy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbbl;


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic zzebi:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzayu;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzayy;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzayy;->zzebi:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzes(Ljava/lang/String;)V
    .registers 4

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayy;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayy;->zzebi:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzayu;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
