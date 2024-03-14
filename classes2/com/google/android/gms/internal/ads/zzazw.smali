.class final Lcom/google/android/gms/internal/ads/zzazw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic zzeca:Lcom/google/android/gms/internal/ads/zzazx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzazx;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazw;->zzeca:Lcom/google/android/gms/internal/ads/zzazx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzazw;->zzeca:Lcom/google/android/gms/internal/ads/zzazx;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzazx;->val$context:Landroid/content/Context;

    const-string p2, "https://support.google.com/dfp_premium/answer/7160685#push"

    .line 3
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzayu;->zza(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
