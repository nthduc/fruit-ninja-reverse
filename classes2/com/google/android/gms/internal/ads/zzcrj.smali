.class public final Lcom/google/android/gms/internal/ads/zzcrj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# static fields
.field public static final zzglm:Lcom/google/android/gms/internal/ads/zzaly;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaly<",
            "Lcom/google/android/gms/internal/ads/zzcrj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zzglj:Lcom/google/android/gms/internal/ads/zzcrq;

.field public final zzglk:Lorg/json/JSONObject;

.field public final zzgll:Lcom/google/android/gms/internal/ads/zzati;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcrm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcrm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcrj;->zzglm:Lcom/google/android/gms/internal/ads/zzaly;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcrq;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzati;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrj;->zzglj:Lcom/google/android/gms/internal/ads/zzcrq;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcrj;->zzglk:Lorg/json/JSONObject;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcrj;->zzgll:Lcom/google/android/gms/internal/ads/zzati;

    return-void
.end method
