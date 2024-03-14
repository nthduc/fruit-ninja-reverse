.class final synthetic Lcom/google/android/gms/internal/ads/zzchi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvu;


# instance fields
.field private final zzdgt:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchi;->zzdgt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchi;->zzdgt:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzadq;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzchh;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzchh;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzadq;)V

    return-object v1
.end method
