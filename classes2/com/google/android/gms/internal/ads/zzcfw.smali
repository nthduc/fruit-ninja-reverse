.class final synthetic Lcom/google/android/gms/internal/ads/zzcfw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahq;


# instance fields
.field private final zzgcb:Lcom/google/android/gms/internal/ads/zzcfu;

.field private final zzgcf:Landroid/view/WindowManager;

.field private final zzgcg:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcfu;Landroid/view/WindowManager;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfw;->zzgcb:Lcom/google/android/gms/internal/ads/zzcfu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfw;->zzgcf:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcfw;->zzgcg:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfw;->zzgcb:Lcom/google/android/gms/internal/ads/zzcfu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfw;->zzgcf:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcfw;->zzgcg:Landroid/view/View;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzcfu;->zza(Landroid/view/WindowManager;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbgj;Ljava/util/Map;)V

    return-void
.end method
