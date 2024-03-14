.class public final Lcom/google/android/gms/internal/ads/zzdvc;
.super Ljava/lang/Exception;
.source "com.google.android.gms:play-services-gass@@19.4.0"


# instance fields
.field private final zzhop:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdvc;->zzhop:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .registers 3

    .line 4
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdvc;->zzhop:I

    return-void
.end method


# virtual methods
.method public final zzaxb()I
    .registers 2

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdvc;->zzhop:I

    return v0
.end method
