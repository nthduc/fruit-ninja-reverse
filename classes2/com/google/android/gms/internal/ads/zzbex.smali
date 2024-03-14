.class final synthetic Lcom/google/android/gms/internal/ads/zzbex;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzka;


# static fields
.field static final zzeld:Lcom/google/android/gms/internal/ads/zzka;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbex;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbex;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbex;->zzeld:Lcom/google/android/gms/internal/ads/zzka;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzgt()[Lcom/google/android/gms/internal/ads/zzjv;
    .registers 4

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzjv;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzlj;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzlj;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/android/gms/internal/ads/zzkl;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzkl;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/android/gms/internal/ads/zzlg;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzlg;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method
