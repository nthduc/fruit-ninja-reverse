.class final synthetic Lcom/google/android/gms/internal/ads/zzcrf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdya;


# instance fields
.field private final zzglg:Lcom/google/android/gms/internal/ads/zzcqv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcqv;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrf;->zzglg:Lcom/google/android/gms/internal/ads/zzcqv;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 2

    .line 1
    check-cast p1, Ljava/io/InputStream;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdpc;->zzf(Ljava/io/InputStream;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
