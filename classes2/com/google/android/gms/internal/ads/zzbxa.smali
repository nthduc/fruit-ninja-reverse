.class final synthetic Lcom/google/android/gms/internal/ads/zzbxa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbxt;


# instance fields
.field private final zzdgm:Ljava/lang/String;

.field private final zzdgt:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxa;->zzdgt:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbxa;->zzdgm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzq(Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxa;->zzdgt:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbxa;->zzdgm:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzczr;

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzczr;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
