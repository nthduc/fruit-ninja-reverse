.class final synthetic Lcom/google/android/gms/internal/ads/zzazn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field private final zzebl:Lcom/google/android/gms/internal/ads/zzazk;

.field private final zzebm:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzazk;Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazn;->zzebl:Lcom/google/android/gms/internal/ads/zzazk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzazn;->zzebm:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazn;->zzebm:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzazk;->zza(Landroid/app/Activity;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
