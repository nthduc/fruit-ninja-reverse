.class final Lcom/google/android/gms/internal/ads/zzqw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzrb;


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic zzym:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzqt;Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqw;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzym:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzym:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method
