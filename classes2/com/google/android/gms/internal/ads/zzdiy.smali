.class public final Lcom/google/android/gms/internal/ads/zzdiy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzgkg:Lcom/google/android/gms/internal/ads/zzatc;

.field private final zzgls:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzatc;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdiy;->zzgkg:Lcom/google/android/gms/internal/ads/zzatc;

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzdiy;->zzgls:I

    return-void
.end method


# virtual methods
.method public final zzasf()Ljava/lang/String;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdiy;->zzgkg:Lcom/google/android/gms/internal/ads/zzatc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzatc;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final zzasg()Ljava/lang/String;
    .registers 3

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdiy;->zzgkg:Lcom/google/android/gms/internal/ads/zzatc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzatc;->zzdty:Landroid/os/Bundle;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzash()Landroid/content/pm/PackageInfo;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdiy;->zzgkg:Lcom/google/android/gms/internal/ads/zzatc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzatc;->zzdqs:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public final zzasi()Z
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdiy;->zzgkg:Lcom/google/android/gms/internal/ads/zzatc;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzatc;->zzdtz:Z

    return v0
.end method

.method public final zzasj()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdiy;->zzgkg:Lcom/google/android/gms/internal/ads/zzatc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzatc;->zzdrc:Ljava/util/List;

    return-object v0
.end method

.method public final zzask()Landroid/content/pm/ApplicationInfo;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdiy;->zzgkg:Lcom/google/android/gms/internal/ads/zzatc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzatc;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public final zzasl()Ljava/lang/String;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdiy;->zzgkg:Lcom/google/android/gms/internal/ads/zzatc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzatc;->zzdua:Ljava/lang/String;

    return-object v0
.end method

.method public final zzasm()I
    .registers 2

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdiy;->zzgls:I

    return v0
.end method
