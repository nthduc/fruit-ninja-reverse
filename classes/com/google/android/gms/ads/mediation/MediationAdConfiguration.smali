.class public Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/mediation/MediationAdConfiguration$TagForChildDirectedTreatment;
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field public static final TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE:I = 0x0

.field public static final TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE:I = 0x1

.field public static final TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED:I = -0x1


# instance fields
.field private final zzado:Ljava/lang/String;

.field private final zzdlk:I

.field private final zzdmk:Ljava/lang/String;

.field private final zzera:Ljava/lang/String;

.field private final zzerb:Landroid/os/Bundle;

.field private final zzerc:Landroid/os/Bundle;

.field private final zzerd:I

.field private final zzna:Z

.field private final zznb:Landroid/location/Location;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p6    # Landroid/location/Location;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzera:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzerb:Landroid/os/Bundle;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzerc:Landroid/os/Bundle;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzvr:Landroid/content/Context;

    .line 6
    iput-boolean p5, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzna:Z

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zznb:Landroid/location/Location;

    .line 8
    iput p7, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzdlk:I

    .line 9
    iput p8, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzerd:I

    .line 10
    iput-object p9, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzado:Ljava/lang/String;

    .line 11
    iput-object p10, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzdmk:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBidResponse()Ljava/lang/String;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzera:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzvr:Landroid/content/Context;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zznb:Landroid/location/Location;

    return-object v0
.end method

.method public getMaxAdContentRating()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzado:Ljava/lang/String;

    return-object v0
.end method

.method public getMediationExtras()Landroid/os/Bundle;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzerc:Landroid/os/Bundle;

    return-object v0
.end method

.method public getServerParameters()Landroid/os/Bundle;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzerb:Landroid/os/Bundle;

    return-object v0
.end method

.method public getWatermark()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzdmk:Ljava/lang/String;

    return-object v0
.end method

.method public isTestRequest()Z
    .registers 2

    .line 19
    iget-boolean v0, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzna:Z

    return v0
.end method

.method public taggedForChildDirectedTreatment()I
    .registers 2

    .line 18
    iget v0, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzdlk:I

    return v0
.end method

.method public taggedForUnderAgeTreatment()I
    .registers 2

    .line 20
    iget v0, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzerd:I

    return v0
.end method
