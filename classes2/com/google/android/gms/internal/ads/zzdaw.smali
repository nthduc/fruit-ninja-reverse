.class final synthetic Lcom/google/android/gms/internal/ads/zzdaw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvu;


# instance fields
.field private final zzebh:Landroid/net/Uri;

.field private final zzguc:Lcom/google/android/gms/internal/ads/zzdaq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdaq;Landroid/net/Uri;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zzguc:Lcom/google/android/gms/internal/ads/zzdaq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zzebh:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zzebh:Landroid/net/Uri;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzdaq;->zzc(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
