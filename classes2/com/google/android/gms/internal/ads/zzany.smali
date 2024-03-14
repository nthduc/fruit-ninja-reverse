.class public final Lcom/google/android/gms/internal/ads/zzany;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationAdRequest;


# instance fields
.field private final zzado:Ljava/lang/String;

.field private final zzchc:I

.field private final zzchn:Z

.field private final zzdlk:I

.field private final zzdll:I

.field private final zzmx:Ljava/util/Date;

.field private final zzmz:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzna:Z

.field private final zznb:Landroid/location/Location;


# direct methods
.method public constructor <init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZILjava/lang/String;)V
    .registers 10
    .param p1    # Ljava/util/Date;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Set;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/location/Location;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/location/Location;",
            "ZIZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzany;->zzmx:Ljava/util/Date;

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzany;->zzchc:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzany;->zzmz:Ljava/util/Set;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzany;->zznb:Landroid/location/Location;

    .line 6
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzany;->zzna:Z

    .line 7
    iput p6, p0, Lcom/google/android/gms/internal/ads/zzany;->zzdlk:I

    .line 8
    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzany;->zzchn:Z

    .line 9
    iput p8, p0, Lcom/google/android/gms/internal/ads/zzany;->zzdll:I

    .line 10
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzany;->zzado:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getBirthday()Ljava/util/Date;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzany;->zzmx:Ljava/util/Date;

    return-object v0
.end method

.method public final getGender()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzany;->zzchc:I

    return v0
.end method

.method public final getKeywords()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzany;->zzmz:Ljava/util/Set;

    return-object v0
.end method

.method public final getLocation()Landroid/location/Location;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzany;->zznb:Landroid/location/Location;

    return-object v0
.end method

.method public final isDesignedForFamilies()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 18
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzany;->zzchn:Z

    return v0
.end method

.method public final isTesting()Z
    .registers 2

    .line 16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzany;->zzna:Z

    return v0
.end method

.method public final taggedForChildDirectedTreatment()I
    .registers 2

    .line 17
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzany;->zzdlk:I

    return v0
.end method
