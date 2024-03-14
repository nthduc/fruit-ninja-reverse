.class final Lcom/google/android/gms/internal/ads/zzdxq$zzc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdxq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzc"
.end annotation


# static fields
.field static final zzhrx:Lcom/google/android/gms/internal/ads/zzdxq$zzc;


# instance fields
.field final exception:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdxq$zzc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdxq$zzc$1;

    const-string v2, "Failure occurred while trying to finish a future."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzdxq$zzc$1;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdxq$zzc;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdxq$zzc;->zzhrx:Lcom/google/android/gms/internal/ads/zzdxq$zzc;

    return-void
.end method

.method constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwd;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxq$zzc;->exception:Ljava/lang/Throwable;

    return-void
.end method
