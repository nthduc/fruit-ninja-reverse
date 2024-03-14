.class final Lcom/google/android/gms/internal/ads/zzrj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzbtd:Landroid/view/View;

.field private final synthetic zzbte:Lcom/google/android/gms/internal/ads/zzrk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzrk;Landroid/view/View;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzbte:Lcom/google/android/gms/internal/ads/zzrk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzbtd:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzbte:Lcom/google/android/gms/internal/ads/zzrk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrj;->zzbtd:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzrk;->zzj(Landroid/view/View;)V

    return-void
.end method
