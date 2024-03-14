.class final Lcom/google/android/gms/internal/ads/zzaqe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic zzdmw:Lcom/google/android/gms/internal/ads/zzaqc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaqc;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqe;->zzdmw:Lcom/google/android/gms/internal/ads/zzaqc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqe;->zzdmw:Lcom/google/android/gms/internal/ads/zzaqc;

    const-string p2, "Operation denied by user."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzaqn;->zzdx(Ljava/lang/String;)V

    return-void
.end method
