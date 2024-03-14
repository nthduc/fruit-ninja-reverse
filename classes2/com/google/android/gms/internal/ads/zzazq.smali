.class final synthetic Lcom/google/android/gms/internal/ads/zzazq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final zzdgm:Ljava/lang/String;

.field private final zzebn:Lcom/google/android/gms/internal/ads/zzazp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzazp;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazq;->zzebn:Lcom/google/android/gms/internal/ads/zzazp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzazq;->zzdgm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazq;->zzebn:Lcom/google/android/gms/internal/ads/zzazp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazq;->zzdgm:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzazp;->zza(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
