.class final synthetic Lcom/google/android/gms/internal/ads/zzctr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvu;


# instance fields
.field private final zzgoi:Lcom/google/android/gms/internal/ads/zzbnk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbnk;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctr;->zzgoi:Lcom/google/android/gms/internal/ads/zzbnk;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzctr;->zzgoi:Lcom/google/android/gms/internal/ads/zzbnk;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbnk;->zzafv()Lcom/google/android/gms/internal/ads/zzbnv;

    move-result-object p1

    return-object p1
.end method
