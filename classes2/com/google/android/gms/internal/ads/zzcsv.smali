.class public final Lcom/google/android/gms/internal/ads/zzcsv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field public final timestamp:J

.field public final url:Ljava/lang/String;

.field public final zzdtb:Ljava/lang/String;

.field public final zzgnn:I


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzcsv;->timestamp:J

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcsv;->zzdtb:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcsv;->url:Ljava/lang/String;

    .line 5
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzcsv;->zzgnn:I

    return-void
.end method
