.class final synthetic Lcom/google/android/gms/internal/ads/zzbmn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfns:Lcom/google/android/gms/internal/ads/zzbmo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbmo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmn;->zzfns:Lcom/google/android/gms/internal/ads/zzbmo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmn;->zzfns:Lcom/google/android/gms/internal/ads/zzbmo;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbmo;->zzfnt:Lcom/google/android/gms/internal/ads/zzbml;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbml;->zzb(Lcom/google/android/gms/internal/ads/zzbml;)Lcom/google/android/gms/internal/ads/zzbmu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbmu;->zzahf()V

    return-void
.end method
