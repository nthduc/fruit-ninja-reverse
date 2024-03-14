.class final synthetic Lcom/google/android/gms/internal/ads/zzdak;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgtv:Lcom/google/android/gms/internal/ads/zzdai;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdai;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdak;->zzgtv:Lcom/google/android/gms/internal/ads/zzdai;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdak;->zzgtv:Lcom/google/android/gms/internal/ads/zzdai;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdai;->zzard()V

    return-void
.end method
