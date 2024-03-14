.class final Lcom/google/android/gms/internal/ads/zzaqh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic zzdns:Ljava/lang/String;

.field private final synthetic zzdnt:Ljava/lang/String;

.field private final synthetic zzdnu:Lcom/google/android/gms/internal/ads/zzaqi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaqi;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqh;->zzdnu:Lcom/google/android/gms/internal/ads/zzaqi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqh;->zzdns:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaqh;->zzdnt:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqh;->zzdnu:Lcom/google/android/gms/internal/ads/zzaqi;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaqi;->zza(Lcom/google/android/gms/internal/ads/zzaqi;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "download"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/DownloadManager;

    .line 4
    :try_start_e
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqh;->zzdns:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqh;->zzdnt:Ljava/lang/String;

    .line 5
    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v1, p2}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 6
    sget-object p2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v1, p2, v0}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkt()Lcom/google/android/gms/internal/ads/zzazd;

    .line 8
    invoke-virtual {v1}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    const/4 p2, 0x1

    .line 9
    invoke-virtual {v1, p2}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 12
    invoke-virtual {p1, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J
    :try_end_2d
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_2d} :catch_2e

    return-void

    .line 15
    :catch_2e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqh;->zzdnu:Lcom/google/android/gms/internal/ads/zzaqi;

    const-string p2, "Could not store picture."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzaqn;->zzdx(Ljava/lang/String;)V

    return-void
.end method
