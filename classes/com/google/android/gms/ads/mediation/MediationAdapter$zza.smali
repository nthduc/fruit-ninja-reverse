.class public final Lcom/google/android/gms/ads/mediation/MediationAdapter$zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/mediation/MediationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private zzere:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzadg()Landroid/os/Bundle;
    .registers 4

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5
    iget v1, p0, Lcom/google/android/gms/ads/mediation/MediationAdapter$zza;->zzere:I

    const-string v2, "capabilities"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final zzdv(I)Lcom/google/android/gms/ads/mediation/MediationAdapter$zza;
    .registers 2

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/google/android/gms/ads/mediation/MediationAdapter$zza;->zzere:I

    return-object p0
.end method
