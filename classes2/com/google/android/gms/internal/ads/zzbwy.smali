.class final synthetic Lcom/google/android/gms/internal/ads/zzbwy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbxt;


# static fields
.field static final zzfve:Lcom/google/android/gms/internal/ads/zzbxt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbwy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbwy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbwy;->zzfve:Lcom/google/android/gms/internal/ads/zzbxt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzq(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzczs;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzczs;->onAdClicked()V

    return-void
.end method
