.class final Lcom/google/android/gms/internal/ads/zzeik;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field public zziek:I

.field public zziel:J

.field public zziem:Ljava/lang/Object;

.field public final zzien:Lcom/google/android/gms/internal/ads/zzejm;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejm;->zzbft()Lcom/google/android/gms/internal/ads/zzejm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeik;->zzien:Lcom/google/android/gms/internal/ads/zzejm;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzejm;)V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeik;->zzien:Lcom/google/android/gms/internal/ads/zzejm;

    return-void

    .line 6
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method
