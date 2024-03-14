.class final synthetic Lcom/google/android/gms/internal/ads/zzcfg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgbg:Lcom/google/android/gms/internal/ads/zzcfe;

.field private final zzgbn:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcfe;Landroid/view/ViewGroup;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfg;->zzgbg:Lcom/google/android/gms/internal/ads/zzcfe;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfg;->zzgbn:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfg;->zzgbg:Lcom/google/android/gms/internal/ads/zzcfe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfg;->zzgbn:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcfe;->zzb(Landroid/view/ViewGroup;)V

    return-void
.end method
