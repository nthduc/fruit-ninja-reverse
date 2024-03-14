.class public final Lcom/google/android/gms/internal/ads/zzdod;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private zzheo:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/zzdoc;->zzheq:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdod;->zzheo:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdod;)I
    .registers 1

    .line 9
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzdod;->zzheo:I

    return p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdob;)Lcom/google/android/gms/internal/ads/zzdod;
    .registers 2

    .line 5
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzdob;->zzheo:I

    .line 6
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdod;->zzheo:I

    return-object p0
.end method

.method public final zzeb(I)Lcom/google/android/gms/internal/ads/zzdod;
    .registers 2

    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdod;->zzheo:I

    return-object p0
.end method
